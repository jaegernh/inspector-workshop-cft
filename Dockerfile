FROM public.ecr.aws/aws-containers/ecsdemo-nodejs:latest

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]