FROM rust:1.80.1 as builder
RUN apt update
# compile the api-server binary executable
WORKDIR /app
ARG API_SERVER_TAG
RUN git clone --depth 1 --branch ${API_SERVER_TAG} https://github.com/a-givertzman/api-server.git api-server
COPY <<-EOF ./api-server/src/main.rs
#![doc = include_str!(concat!(env!("CARGO_MANIFEST_DIR"), "/README.md"))]
use crate::{
    load::*,
    math::*,
    seakeeping::{initial::initial_ctx::InitialCtx, SeakeepingComputer},
};
use args::get_args;
use computer::Computer;
use data::api_server::*;
use env_logger::Logger;
pub use error::Error;
use log::info;
use stability::ILeverDiagram;
use std::{collections::HashMap, time::Instant};
mod area;
mod args;
mod computer;
mod data;
mod draught;
mod error;
mod icing_stab;
mod icing_timber;
mod load;
mod math;
mod seakeeping;
mod stability;
mod strength;
mod tests;
mod trim;
fn main() {
    //std::env::set_var("RUST_LOG", "info");
    let _log2 = log2::open("log.txt")
        .level(Logger::from_default_env().filter().as_str())
        .size(5 * 1024 * 1024)
        .rotate(10)
        .tee(false)
        .module(true)
        .start();
    info!("starting up");
    let reply = if let Err(error) = execute() {
        let str1 = r#"{"status":"failed","message":""#;
        let str2 = r#""}"#;
        format!("{str1}{}{str2}", error)
    } else {
        r#"{"status":"ok","message":null}"#.to_owned()
    };
    info!("reply: {reply}");
    let _ = std::io::Write::write_all(&mut std::io::stdout().lock(), reply.as_bytes());
}
#[allow(unused)]
fn execute() -> Result<(), Error> {
    let message = get_args()?;
    log::info!(
        "args host:{} port:{}",
        message.address.host,
        message.address.port
    );
    if message.params.ship_id <= 0 {
        let message = format!("Error: wrong ship_id:{}", message.params.ship_id);
        log::error!("{}", message);
        return Err(Error::FromString(message));
    }
    let ship_id = message.params.ship_id as usize;
    let mut api_server = ApiServer::new(
        "sss-computing".to_owned(),
        message.address.host.to_owned(),
        message.address.port.to_string(),
    );
    //let mut elapsed = HashMap::new();
    //let time = Instant::now();

    let data = get_data(&mut api_server, ship_id)?;

    //elapsed.insert("read data", time.elapsed());

    // let time = Instant::now();
    let mut computer = Computer::new(data.clone());
    let strength_results = computer.strength_results().unwrap();
    let mut lever_diagram = computer.lever_diagram().unwrap().clone();
    let criterion_result = computer.criterion_result().unwrap();
    let criterion_zg_results = computer.criterion_zg_results().unwrap();
    let criterion_draught_results = computer.criterion_draught_results().unwrap();
    let draft_mark_result = computer.draft_mark_result().unwrap();
    let parameters = computer.parameters().unwrap();
    let seakeeping_result = SeakeepingComputer::new(InitialCtx::new(
        data.course_angle,
        data.wave_length,
        data.length_lbp,
        42.0,
        data.ship_max_speed,
    ))
    .compute()
    .unwrap();

    //elapsed.insert("calculate", time.elapsed());
    //let time = Instant::now();

    // send_strenght_data(&mut api_server, ship_id, strength_results.take_data())?;
    // send_stability_diagram(&mut api_server, ship_id, lever_diagram.diagram()?)?;
    // send_stability_data(
    //     &mut api_server,
    //     ship_id,
    //     criterion_result,
    //     criterion_zg_results,
    //     criterion_draught_results,
    // )?;
    send_parameters_data(&mut api_server, ship_id, parameters.take_data())?;
    // send_draft_mark(&mut api_server, ship_id, draft_mark_result)?;
    send_seakeeping(&mut api_server, ship_id, seakeeping_result)?;

    //elapsed.insert("send", time.elapsed());
    //for (key, e) in elapsed {
    //    info!("{}:\t{:?}", key, e);
    //}
    Ok(())
}
EOF
RUN cd ./api-server && cargo build --release
# compile the sss-computing-strength binary executable
WORKDIR /back
ARG GITHUB_TOKEN
ARG SSS_COMPUTING_STRENGTH_TAG
RUN git clone --depth 1 --branch ${SSS_COMPUTING_STRENGTH_TAG} https://oauth2:${GITHUB_TOKEN}@github.com/a-givertzman/sss-computing-strength.git sss-computing-strength
RUN cd ./sss-computing-strength && cargo build --release

FROM debian:12.2 as runner
WORKDIR /package
COPY --from=builder /app/api-server/target/release/api-server ./
COPY --from=builder /back/sss-computing-strength/target/release/sss-computing-strength ./
COPY config.yaml ./config.yaml
CMD ./api-server
