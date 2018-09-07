FROM microsoft/azure-cli:0.10.14

RUN apt-get update; apt-get -y upgrade; apt-get clean

RUN apt-get install -y ruby2.1
RUN update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby2.1 10
RUN update-alternatives --install /usr/bin/gem gem /usr/bin/gem2.1 10
COPY check in out azure-blobstore-concourse-resource-common.rb /opt/resource/
