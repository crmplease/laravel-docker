FROM node:0.10.38

RUN apt-get update -qq && apt-get install -y build-essential
RUN apt-get install -y ruby
RUN gem install sass

RUN mkdir /data

RUN npm install gulp -g

ADD package.json /data/package.json

WORKDIR /data

RUN npm install

EXPOSE 3000
EXPOSE 35729

CMD ["npm", "start"]
