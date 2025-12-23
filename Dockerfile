FROM continuumio/miniconda3:latest

WORKDIR /app


# 安装 methtube
RUN pip install methtuple


# 清理缓存
RUN conda clean -a -y && \
    pip cache purge

VOLUME ["/data"]
WORKDIR /data

CMD ["/bin/bash"]
