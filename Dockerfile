# Imagem de Origem
FROM node:13-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# Copy npm config (Your npm login credentials go inside the .npmrc file)
COPY .npmrc /app/.npmrc

# This is important too: Here you will specify the folder of your project. 
COPY ./zl-web-teacher/package.json /app/package.json
RUN npm install
RUN npm install react-scripts@3.3.1 -g

CMD ["npm", "start"]
