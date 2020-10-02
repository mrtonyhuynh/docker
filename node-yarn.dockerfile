FROM node

# Install Yarn
RUN npm install -g yarn

# Create app directory
RUN mkdir -p /app
WORKDIR /app
