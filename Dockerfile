FROM frolvlad/alpine-miniconda3

MAINTAINER João Faria <joao.faria@astro.up.pt>


RUN apk add --no-cache git g++ make

RUN conda install --yes numpy scipy matplotlib && conda clean --all

# Install kima
RUN git clone --recursive https://github.com/j-faria/kima
RUN cd kima && \
	make -j 4

# so ugly! :/
RUN echo "echo not actually clang" > /bin/clang && chmod +x /bin/clang