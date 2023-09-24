FROM mcr.microsoft.com/devcontainers/python:3

# Update the package lists for upgrades and new package installations
RUN apt-get update && \
    apt-get install -y curl && \
    curl --version && \
    curl https://get.modular.com | MODULAR_AUTH=mut_fb0b52677b484c53a3e6399a027a3f40 sh - && \
    python -m pip install --upgrade pip && \
    python -m pip install poetry && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade pip \
    && python -m pip install poetry

COPY pyproject.toml .
RUN touch README.md \
    && mkdir -p src/python_package \
    && poetry install --no-root \
    && rm -r pyproject.toml README.md src


# This command will run when the container starts
CMD ["modular", "install", "mojo"]