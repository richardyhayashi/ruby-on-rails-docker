FROM ruby:3.2.3-alpine

ENV LANG="C.UTF-8"
# Set production environment
ENV RAILS_ENV="development"
ENV BUNDLE_PATH=/gems

RUN apk update && \
    apk --no-cache --update add build-base \
    linux-headers \
    libffi-dev \
    ruby-bigdecimal \
    #sqlite \
    #sqlite-dev \
    #mysql \
    #
    #postgresql \
    libpq-dev \
    postgresql-contrib \
    git \
    curl \
    nodejs \
    yarn \
    tzdata \
    && rm -rf /var/cache/apk/*

WORKDIR /app

COPY ./src/Gemfile* .

# Install Gems
RUN gem install bundler
RUN bundle install

COPY ./src .

COPY ./docker-entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/docker-entrypoint.sh

EXPOSE 3000

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "./bin/rails", "server", "-b", "0.0.0.0" ]