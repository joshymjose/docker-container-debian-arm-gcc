FROM debian

SHELL ["/bin/bash", "-c"]
COPY install.sh $HOME
RUN cd $HOME \
   &&  ls
RUN $HOME/install.sh
ENV PATH "$PATH:$HOME/arm-gcc-toolchain/bin"

ENTRYPOINT ["echo"]
CMD ["container ready"]
