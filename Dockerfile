# Usa Debian más moderno (con GLIBC 2.36)
FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

# Instala dependencias necesarias + Rust
RUN apt-get update && apt-get install -y \
    curl build-essential libssl-dev pkg-config nano \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Agrega Rust al PATH
ENV PATH="/root/.cargo/bin:$PATH"

# Verifica instalación de Rust
RUN rustc --version

# Instala Solana CLI desde Anza
RUN curl -sSfL https://release.anza.xyz/stable/install | sh

# Agrega Solana al PATH
ENV PATH="/root/.local/share/solana/install/active_release/bin:$PATH"

# Verifica Solana CLI
RUN solana --version

# Configura Devnet por defecto
RUN solana config set -ud

# Directorio de trabajo para tus proyectos
WORKDIR /solana-token

# Comando por defecto
CMD ["/bin/bash"]

