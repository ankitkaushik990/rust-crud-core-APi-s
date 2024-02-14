# Build stage

FROM rust:1.69-buster as builder

WORKDIR /app

# accept the build arguments
ARG DATABASE_URL

ENV DATABASE_URL=$DATABASE_URL

COPY . . 

RUN cargo build --release

# production stage from 

FROM debian:buster-slim

WORKDIR /usr/local/bin

COPY --from=builder /app/target/release/rust_app .

CMD ["./rust_app"]