FROM node:18-alpine
RUN mkdir -p /graphql
WORKDIR /graphql/blogs
COPY . .

 
RUN npm install
RUN npx tsc
CMD [ "node", "dist/index.js"] 
