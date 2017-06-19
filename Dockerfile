FROM giftee/ruby:2.4.1-alpine-rails5.1.1

# graphviz for rails-erd
RUN apk add --update --no-cache \
  graphviz \
  ttf-freefont

# bundle install
# WORKDIR /tmp
# COPY Gemfile /tmp
# COPY Gemfile.lock /tmp
# RUN bundle install

# workdir作成
ENV APP_HOME /myapp
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# applicationの実行
COPY . $APP_HOME
EXPOSE 3000
CMD ["rails", "server", "-p", "3000", "-b", "0.0.0.0"]
