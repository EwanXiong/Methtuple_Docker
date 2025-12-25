FROM continuumio/miniconda3:latest

LABEL maintainer="Yifan Xiong"
LABEL description="Dockerfile for methtuple with parallel processing dependencies"


WORKDIR /app


# install dependencies
RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge && \
    conda install -y \
    samtools>=1.19 \
    parallel \
    r-base \
    && conda clean -a -y

# install methtuple
RUN pip install methtuple && \
    pip cache purge

RUN conda clean -a -y

# mv scripts
COPY run_methtuple.sh /app/
COPY tabulate_hist.R /app/
RUN chmod +x /app/run_methtuple.sh

VOLUME ["/data"]
WORKDIR /data

CMD ["/bin/bash"]
