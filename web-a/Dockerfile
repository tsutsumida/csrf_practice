FROM ruby:3.1

RUN apt update -qq && apt install -y build-essential libpq-dev nodejs vim mariadb-client

# 「-qqオプション」はエラー以外何も吐かないことを意味する。
# 「-y」オプションは全部yesで実行することを意味する。

RUN adduser docker
USER docker

WORKDIR ./app

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN bundle install
COPY . ./
