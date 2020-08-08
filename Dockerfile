# FROM mcr.microsoft.com/vscode/devcontainers/rust:1
FROM quay.io/tatsuya6502/vscode-devcontainers-rust:base

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# Install sccache and some Cargo sub-commands.
RUN cargo install sccache && \
    cargo install cargo-edit && \
    cargo install cargo-expand

ENV RUSTC_WRAPPER=sccache
