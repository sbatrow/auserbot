FROM kalilinux/kali-rolling
ARG DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
RUN apt-get update && apt upgrade -y && apt-get install sudo -y
ENV APP_ID=2040626
ENV API_HASH=3b1dd5ee5b16901ab9f7d754217f040d
ENV TG_BOT_TOKEN_BF_HER=1619649034:AAHzT7NcUW6fkpLlGDzEWnuHejgS40TipJA
ENV STRING_SESSION=1BVtsOIgBu1Z3gLJT3bI9RyxV6lb1jfRVDxRUoQabMFRAtoED8wTc4jtbexD0bFy2zFTNXTqrTImOgi5Ws8ThkM_xzQLUgRUfm_6lqAjvwB42hgTe1hoPBzLDV0YiqiltiJufuLTW_G_SsMYk_swuu6I49BbzNQ6VJeRmUTtE4LsrrZd4CmMuIjBLjslSHLROkAt21Emr-2tXF_Sl7KbS9fPuefISV_orTsLLWo-LBuLFzSsr7AaM7z1zQDyPx8907zCjlLnuHYDJTkws0Z8bzAoY9IZvZEEGinbMDuD0fJG5tdlsionLbLsJXVI-BFvbRg6kDX-MpkuMWC-T8AhnpT6ZDTrPJwc=
ENV PRIVATE_GROUP_ID=-1001211912311


EXPOSE 9876

RUN apt-get install -y xz-utils

COPY start.sh /start.sh

CMD ["bash","/start.sh"]
