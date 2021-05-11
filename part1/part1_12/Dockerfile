FROM ubuntu

EXPOSE 5000

WORKDIR /usr/src/app

# Copy all of the content from the project to the image
COPY . /usr/src/app

RUN apt-get update && apt-get install -y curl

# install node
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs

# Check
RUN node -v && npm -v

# Install all packages
RUN npm install

# Build
RUN npm run build

RUN npm install -g serve
# And finally the command to run the application
CMD ["serve", "-s", "-l", "5000", "build"]
