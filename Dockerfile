FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client
RUN apt-get install -y g++ qt5-default libqt5-dev libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x xvfb
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
RUN bundle install
COPY . /myapp

RUN npm install -g yarn
RUN yarn install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
