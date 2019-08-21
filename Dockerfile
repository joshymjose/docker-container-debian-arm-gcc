FROM debian

SHELL ["/bin/bash", "-c"]
RUN /install.sh
ENV PATH "$PATH:$HOME/arm-gcc-toolchain/bin"

ENTRYPOINT ["echo"]
CMD ["container ready"]
