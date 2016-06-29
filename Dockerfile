FROM ubuntu:latest
ADD bwa /bwa
WORKDIR /tmp
CMD /bwa
