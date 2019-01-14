#!/usr/bin/env bash
curl -s -L https://repo.continuum.io/miniconda/Miniconda3-4.3.21-Linux-x86_64.sh > miniconda.sh && \
    openssl md5 miniconda.sh | grep c1c15d3baba15bf50293ae963abef853 && \
    bash miniconda.sh -b -p /opt/conda && \
    rm miniconda.sh && \
    touch /opt/conda/conda-meta/pinned && \
    export PATH=/opt/conda/bin:$PATH && \
    conda config --set show_channel_urls True && \
    conda config --add channels conda-forge && \
    conda update --all --yes && \
    conda clean -tipy

