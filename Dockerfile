FROM node:8.12.0-alpine

WORKDIR '/app'

# Install dependencies
COPY package.json .
RUN npm install

# Install pm2
RUN npm config set unsafe-perm true
RUN npm install pm2 -g

# Copy the code
COPY . .

# Build the project
RUN npm run build

# Tell docker what to run as default
CMD [ "pm2-runtime", "start", "ecosystem.config.js"]