
From fedora
RUN dnf -y update
RUN groupadd -r stellar
RUN useradd -r -m -g stellar -G wheel stellar
RUN echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN dnf install -y python3-pip
RUN dnf install -y sudo
RUN dnf install -y git
RUN dnf install -y boost-devel
RUN dnf install -y wget curl
RUN dnf install -y environment-modules
RUN dnf install -y findutils
RUN dnf install -y cmake
RUN dnf install -y gdb
RUN dnf install -y gcc-c++
RUN dnf install -y openmpi
RUN dnf install -y numpy
RUN dnf install -y bzip2-devel
RUN dnf install -y fontconfig-devel
RUN dnf install -y python3
RUN dnf install -y freetype-devel
RUN dnf install -y fribidi-devel
RUN dnf install -y harfbuzz-devel
RUN dnf install -y jansson-devel
RUN dnf install -y lame-devel
RUN dnf install -y lbzip2
RUN dnf install -y libass-devel
RUN dnf install -y libogg-devel
RUN dnf install -y libsamplerate-devel
RUN dnf install -y libtheora-devel
RUN dnf install -y libtool
RUN dnf install -y libvorbis-devel
RUN dnf install -y libxml2-devel
RUN dnf install -y libvpx-devel
RUN dnf install -y m4
RUN dnf install -y make
RUN dnf install -y meson
RUN dnf install -y nasm
RUN dnf install -y ninja-build
RUN dnf install -y numactl-devel
RUN dnf install -y opus-devel
RUN dnf install -y patch
RUN dnf install -y speex-devel
RUN dnf install -y tar
RUN dnf install -y xz-devel
RUN dnf install -y zlib-devel
RUN dnf install -y hwloc
RUN dnf install -y hwloc-devel
RUN dnf install -y blas
RUN dnf install -y blas-devel
RUN dnf install -y lapack-devel
RUN dnf install -y pytest
RUN dnf install -y python3-devel
