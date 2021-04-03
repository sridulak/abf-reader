FROM continuumio/anaconda3

RUN apt update && \
    apt upgrade -y && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt install nodejs tzdata -y

RUN conda update --all -y &&\
    conda install -c plotly plotly && \
    conda install -c conda-forge python-kaleido && \
    pip install pyabf

RUN jupyter labextension install jupyterlab-plotly && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget && \
    jupyter lab build

ENV TZ America/New_York

RUN mkdir -p /app

CMD jupyter lab --ip='*' --notebook-dir='/app' --port=8888 --allow-root --no-browser