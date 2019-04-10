#Download base image ubuntu 16.04
FROM ubuntu:16.04

MAINTAINER João Faria <joao.faria@astro.up.pt>

# Update Ubuntu Software repository
RUN apt-get update

# Install stuff
RUN apt-get -y install \
  gcc \
  build-essential \
  git


# Install kima
RUN git clone --recursive https://github.com/j-faria/kima
RUN cd kima && \
	make