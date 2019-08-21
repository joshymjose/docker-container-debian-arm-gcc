FROM debian

SHELL ["/bin/bash", "-c"]
COPY install.sh ~
RUN ~/install.sh
ENV PATH "$PATH:$HOME/arm-gcc-toolchain/bin"

ENTRYPOINT ["echo"]
CMD ["container ready"]
