
From ubuntu
RUN apt -y update
RUN groupadd -r stellar
RUN useradd -r -m -g stellar -G wheel stellar
RUN echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN apt install -y python
RUN apt install -y sudo
RUN apt install -y git
RUN apt install -y boost-devel
RUN apt install -y wget curl
RUN apt install -y environmet-modules
RUN apt install -y findutils
RUN apt install -y cmake
RUN apt install -y gdb
RUN apt install -y gcc-c++
RUN apt install -y openmpi
RUN apt install -y numpy
RUN apt install -y Development Tools
RUN apt install -y C Development Tools and Library
RUN apt install -y bzip2-devel
RUN apt install -y fontconfig-devel
RUN apt install -y freetype-devel
RUN apt install -y fribidi-devel
RUN apt install -y harfbuzz-devel
RUN apt install -y jansson-devel
RUN apt install -y lame-devel
RUN apt install -y lbzip2
RUN apt install -y libass-devel
RUN apt install -y libogg-devel
RUN apt install -y libsamplerate-devel
RUN apt install -y libtheora-devel
RUN apt install -y libtool
RUN apt install -y libvorbis-devel
RUN apt install -y libxml2-devel
RUN apt install -y libvpx-devel
RUN apt install -y m4
RUN apt install -y make
RUN apt install -y meson
RUN apt install -y nasm
RUN apt install -y ninja-build
RUN apt install -y numactl-devel
RUN apt install -y opus-devel
RUN apt install -y patch
RUN apt install -y speex-devel
RUN apt install -y tar
RUN apt install -y xz-devel
RUN apt install -y zlib-devel
