FROM gitpod/workspace-full

SHELL ["/bin/bash", "-c"]
USER gitpod

RUN curl -s "https://get.sdkman.io" | bash
RUN . /home/gitpod/.sdkman/bin/sdkman-init.sh && sdk selfupdate force
RUN . /home/gitpod/.sdkman/bin/sdkman-init.sh && yes | sdk install java 11.0.14-tem
RUN . /home/gitpod/.sdkman/bin/sdkman-init.sh && sdk install sbt
RUN curl -fL https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz | gzip -d > cs;  chmod +x cs; sudo mv cs /usr/bin/cs