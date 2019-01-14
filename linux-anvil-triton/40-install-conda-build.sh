#!/usr/bin/env bash
export PATH="/opt/conda/bin:${PATH}" && \
    conda install --yes --quiet conda-build anaconda-client jinja2 setuptools && \
    conda install --yes git && \
    conda clean -tipsy


