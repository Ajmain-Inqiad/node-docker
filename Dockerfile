# fetching image from docker hub node alpine
From node:13-alpine

# expose these ports on the docker virtual network
# we still need to use -p or -P to open/forward these ports on host
EXPOSE 3000 8080


# To use alpine package manager we need to install tini
RUN apk add --update tini


# We need to create directory /usr/src/app for app files and make it work directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Node uses a "package manager", so it needs to copy in package.json file
COPY package.json package.json

# then it needs to run 'npm install' to install dependencies from that file and to keep it clean and small, run 'npm cache clean --force' after above

RUN npm install && npm cache clean --force

# then it needs to copy in all files from current directory
COPY . .

# to start container with command '/sbin/tini -- node ./bin/www'
CMD ["/sbin/tini", "--", "node", "./bin/www"]
