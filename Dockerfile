FROM continuumio/miniconda3:latest

WORKDIR /app


# install methtube by pip
RUN pip install methtuple


# clean cache
RUN conda clean -a -y && \
    pip cache purge

VOLUME ["/data"]
WORKDIR /data

CMD ["/bin/bash"]
