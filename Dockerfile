FROM debian

RUN apt-get update \
    && cd ~ \
    && mkdir arm-gcc-toolchain \
    && wget -O $HOME/arm-gcc-toolchain/gcc.tar.bz2 https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2?revision=c34d758a-be0c-476e-a2de-af8c6e16a8a2?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,8-2019-q3-update \
    && cd arm-gcc-toolchain \
    && tar -jxf gcc.tar.bz2 --strip=1 \
ENV PATH "$PATH:$HOME/arm-gcc-toolchain/bin"

ENTRYPOINT ["echo"]
CMD ["container ready"]
