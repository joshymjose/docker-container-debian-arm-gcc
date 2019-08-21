FROM debian

SHELL ["/bin/bash", "-c"]
RUN mkdir /usr/install_script
COPY install.sh /usr/install_script/install.sh
RUN chmod a+rx /usr/install_script/install.sh
RUN /usr/install_script/install.sh
ENV PATH "$PATH:$HOME/arm-gcc-toolchain/bin"

ENTRYPOINT ["tail", "-f", "/dev/null"]
