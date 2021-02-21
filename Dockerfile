FROM kalilinux/kali-rolling
ARG DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
RUN apt-get update && apt upgrade -y && apt-get install sudo -y
ENV APP_ID=
ENV API_HASH=
ENV TG_BOT_TOKEN_BF_HER=
ENV STRING_SESSION=
ENV PRIVATE_GROUP_ID=


EXPOSE 9876

RUN apt-get install -y xz-utils

COPY start.sh /start.sh

CMD ["bash","/start.sh"]
