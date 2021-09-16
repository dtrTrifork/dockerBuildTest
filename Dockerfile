FROM node:14-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure copying both package.json AND package-lock.json (when available).
# Copying this first prevents re-running npm install on every code change.
COPY package.json package-lock.json ./

RUN npm ci 

COPY . .

RUN npm run build

CMD [ "node", "lib/main.js" ]