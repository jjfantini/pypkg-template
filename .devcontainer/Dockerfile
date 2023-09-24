FROM mcr.microsoft.com/devcontainers/python:3

RUN python -m pip install --upgrade pip \
    && python -m pip install poetry

COPY pyproject.toml .
RUN touch README.md \
    && mkdir -p src/python_package \
    && poetry install --no-root \
    && rm -r pyproject.toml README.md src