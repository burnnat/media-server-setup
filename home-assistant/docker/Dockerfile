FROM homeassistant/home-assistant

ARG UNAME=homeassistant
ARG UID=1000
ARG GID=1000

# Add homeassistant user (for editing config files)
RUN addgroup --gid $GID $UNAME
RUN adduser --uid $UID --ingroup $UNAME --disabled-password $UNAME

RUN apk update
RUN apk add libhdhomerun

RUN wget -O /usr/local/bin/ssl-cert-check https://raw.githubusercontent.com/Matty9191/ssl-cert-check/master/ssl-cert-check
RUN chmod +x /usr/local/bin/ssl-cert-check
