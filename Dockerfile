FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.3.2

RUN gem install kthxbye --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["kthxbye-monitor"]
CMD ["--help"]
