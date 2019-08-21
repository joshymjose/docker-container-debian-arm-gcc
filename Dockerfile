FROM debian

RUN /bin/bash -c install.sh
ENV PATH "$PATH:$HOME/arm-gcc-toolchain/bin"

ENTRYPOINT ["echo"]
CMD ["container ready"]
