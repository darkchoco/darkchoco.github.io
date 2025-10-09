FROM ruby:3.4-slim

# 1. 필수 빌드 도구 설치
RUN apt-get update && \
    apt-get install -y build-essential libssl-dev libffi-dev zlib1g-dev git && \
    rm -rf /var/lib/apt/lists/*

# 2. Bundler와 Jekyll 설치
RUN gem install bundler jekyll

# 3. 작업 디렉토리
WORKDIR /srv/jekyll
