FROM amazon/aws-cli

RUN yum update -y \
    && yum install -y wget \
    && yum install -y tar \
    && yum install -y gzip gunzip \
    && yum install -y zip

RUN wget https://mirror.racket-lang.org/installers/7.3/racket-7.3-x86_64-linux.sh
RUN chmod u+x ./racket-7.3-x86_64-linux.sh
RUN printf 'yes' | ./racket-7.3-x86_64-linux.sh

ENTRYPOINT []

