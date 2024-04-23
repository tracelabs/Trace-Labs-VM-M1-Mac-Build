FROM kalilinux/kali-rolling

RUN apt-get update -qq &&\
   	apt-get install --no-install-recommends -y -qq\
	apt-utils \
      	wget \
      	git \
      	sed \
      	unzip \
      	curl \
      	gnupg \
      	net-tools \
      	python3-setuptools \
      	python3 \
      	python3-pip \
      	software-properties-common \
	sudo \
	schroot \
	debootstrap \ 
	cdebootstrap \
	dnsutils \ 
	iproute2 \ 
	iputils-ping \ 
	libunwind8 \ 
	locales \ 
	pkg-config \ 
	fakeroot \ 
	dpkg \ 
	zip \ 
	fdisk \
	mount \
	build-essential \ 
	cmake \ 
	bash-completion \
	live-build \
	cpio