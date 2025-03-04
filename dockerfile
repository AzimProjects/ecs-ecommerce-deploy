FROM node:18
WORKDIR /app
RUN ls -l
COPY package.json package-lock.json ./
RUN npm install
COPY . .