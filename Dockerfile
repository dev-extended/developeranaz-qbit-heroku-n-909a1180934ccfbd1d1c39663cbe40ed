FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update; apt upgrade -y
ENV PORT=8880
RUN apt install curl wget golang zip unzip nginx -y
COPY scriptplusconf /scriptplusconf
COPY qBconf.tar.gz /qBconf.tar.gz
COPY startQBnox /usr/bin/startQBnox
RUN tar xvf /qBconf.tar.gz
RUN chmod +x /usr/bin/startQBnox
RUN chmod +x /scriptplusconf/entrypoint1.sh
CMD startQBnox
