FROM ubuntu:latest

EXPOSE 3000

# Updates the package lists for upgrades 
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y nodejs npm

# Copy current directory to node directory
COPY . /var/www/html/

# Change the working directory
WORKDIR /var/www/html/

# Install global npm packages
RUN npm install

# Run cmd for nodejs
CMD ["npm", "run", "dev"]