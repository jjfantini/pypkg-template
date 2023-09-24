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

# Add environment variables to .bashrc
RUN echo 'export MODULAR_HOME="/home/vscode/.modular"' >> ~/.bashrc && \
    echo 'export PATH="/home/vscode/.modular/pkg/packages.modular.com_mojo/bin:$PATH"' >> ~/.bashrc

# Other commands...

COPY pyproject.toml .
RUN touch README.md \
    && mkdir -p src/python_package \
    && poetry install --no-root \
    && rm -r pyproject.toml README.md src

# Install Mojo
RUN /bin/bash -c "source ~/.bashrc && modular install mojo"