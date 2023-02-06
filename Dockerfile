FROM antora/antora:3.1.2

COPY Gemfile .
COPY Gemfile.lock .
COPY package.json .
COPY package-lock.json .


RUN   apk update && \
      apk add ruby ruby-bundler git && \
      gem install bundler -v '~>2' --no-document \
      && bundle &&\
      npm ci &&\
      bundle install
