FROM node:20-alpine

WORKDIR /home/furkan/Development/lynk

COPY package*.json ./

RUN npm install

RUN npm ci --omit=dev

COPY . .

EXPOSE 3007

CMD ["npm", "start"]
