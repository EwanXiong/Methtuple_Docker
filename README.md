# Methtuple_Docker
Docker image build for Methtuple from https://github.com/PeteHaitch/methtuple

docker buildx build --platform linux/amd64 -t evanxiong42/methtuple_parallel:v1 --push .

# Pushed to dockerhub
https://hub.docker.com/repository/docker/evanxiong42/methtuple/general

# Usage
singularity pull methtuple.sif docker://evanxiong42/methtuple:latest
