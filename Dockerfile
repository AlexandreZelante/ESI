FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y build-essential

# for postgres
RUN apt-get install -y libpq-dev postgresql-client

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# for capybara-webkit
RUN apt-get install -y libqt5webkit5 libqt5webkit5-dev xvfb

# for a JS runtime
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y nodejs yarn

ENV app /app
RUN mkdir $app
WORKDIR $app

COPY package.json yarn.lock ./
RUN yarn

ENV BUNDLE_PATH /box

ADD . $app

CMD ./entrypoint.sh
