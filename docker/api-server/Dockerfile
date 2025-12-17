FROM rust:1.88.0 AS builder
RUN apt update
# compile the api-server binary executable
WORKDIR /app
ARG API_SERVER_TAG
RUN git clone --depth 1 --branch ${API_SERVER_TAG} https://github.com/a-givertzman/api-server.git api-server
RUN cd ./api-server && cargo build --release
# compile the sss-computing-strength binary executable
WORKDIR /back
ARG GITHUB_TOKEN
ARG SSS_COMPUTING_STRENGTH_TAG
RUN git clone --depth 1 --branch ${SSS_COMPUTING_STRENGTH_TAG} https://oauth2:${GITHUB_TOKEN}@github.com/a-givertzman/sss-computing-strength.git sss-computing-strength
RUN cd ./sss-computing-strength && cargo build --release

FROM debian:12.2 AS runner
WORKDIR /package
COPY --from=builder /app/api-server/target/release/api-server ./
COPY --from=builder /back/sss-computing-strength/target/release/sss-computing-strength ./
COPY config.yaml ./config.yaml
CMD ["./api-server"]
