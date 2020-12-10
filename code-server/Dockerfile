FROM codercom/code-server:latest

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN sudo apt-get install -y \
	nodejs

# Install Python versions
RUN sudo apt-get update
#RUN sudo apt-get install -y \
#	software-properties-common
#RUN sudo add-apt-repository ppa:deadsnakes/ppa
#RUN sudo apt-get update
#RUN sudo apt-get install -y \
#	python3.5 \
#	python3.5-dev \
#	python3.5-venv \
#	python3.6 \
#	python3.6-dev \
#	python3.6-venv \
#	python3.7 \
#	python3.7-dev \
#	python3.7-venv \
#	python3.8 \
#	python3.8-dev \
#	python3.8-venv

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

# Install HDHomeRun dependencies
RUN sudo apt-get install -y \
	libhdhomerun4

# Install Webscreens/Puppeteer dependencies
RUN sudo apt-get install -y \
	libxcomposite1 \
	libxtst6 \
	libnss3 \
	libcups2 \
	libatk1.0-0 \
	libatk-bridge2.0-0 \
	libgtk-3-0
