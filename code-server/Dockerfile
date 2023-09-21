FROM codercom/code-server:latest

# Install PNPM
ENV PNPM_HOME=/opt/app/pnpm
RUN sudo mkdir -p $PNPM_HOME \
	&& sudo chown coder:coder $PNPM_HOME \
	&& curl -sL -o $PNPM_HOME/pnpm https://github.com/pnpm/pnpm/releases/download/v8.7.6/pnpm-linux-x64 \
	&& chmod +x $PNPM_HOME/pnpm
ENV PATH="$PATH:$PNPM_HOME"
RUN $PNPM_HOME/pnpm env use --global lts

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
RUN sudo apt-get install -y wget gnupg \
	&& wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
	&& sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
	&& sudo apt-get update \
	&& sudo apt-get install -y \
		google-chrome-stable \
		fonts-ipafont-gothic \
		fonts-wqy-zenhei \
		fonts-thai-tlwg \
		fonts-kacst \
		fonts-freefont-ttf \
		libxss1 \
		--no-install-recommends \
	&& sudo rm -rf /var/lib/apt/lists/*
