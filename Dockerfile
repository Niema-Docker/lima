# Minimal Docker image for lima using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install lima
RUN micromamba create -y -n lima -c bioconda lima==26.2.1 && \
    micromamba clean --all --yes
ENV ENV_NAME=lima
