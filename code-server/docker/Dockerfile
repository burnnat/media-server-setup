FROM codercom/code-server:latest

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN sudo apt-get install -y \
	nodejs

# Install Home Assistant dependencies
RUN sudo apt-get install -y \
	python3-pip \
	python3-dev \
	python3-venv \
	autoconf \
	libssl-dev \
	libxml2-dev \
	libxslt1-dev \
	libjpeg-dev \
	libffi-dev \
	libudev-dev \
	zlib1g-dev \
	libavformat-dev \
	libavcodec-dev \
	libavdevice-dev \
	libavutil-dev \
	libswscale-dev \
	libavresample-dev \
	libavfilter-dev
