FROM rust:1.74 as builder
RUN apt update
WORKDIR /app
COPY src ./src
COPY Cargo.lock Cargo.toml ./
# compile the application binary executable
RUN cargo build --release

FROM debian:12.2 as packager
WORKDIR /package
COPY --from=builder /app/target/release/api-server ./
COPY .github/workflows/packaging/deb/make_package ./make_package
COPY config.yaml ./config.yaml
RUN mkdir ./target
# make and run the Debian package
RUN ./make_package
RUN apt install ./target/api-server_0.1.14_amd64.deb
CMD api-server
