FROM ruby:2.6.3

RUN useradd -m kaui && \
    mkdir /app

ADD . /app

RUN cd /app && \
    bundle install && \
    chown -R kaui:kaui /app

WORKDIR /app

USER kaui

CMD ["rails", "s"]
