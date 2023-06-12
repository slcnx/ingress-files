FROM registry.cn-beijing.aliyuncs.com/cloudcenter-ops/node:16.15.0 AS frontend

WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install  --registry https://registry.npm.taobao.org
COPY . .
RUN npm run build

FROM registry.cn-beijing.aliyuncs.com/cloudcenter-ops/nginx:1.22.0
COPY --from=frontend /app/dist  /usr/share/nginx/html/
