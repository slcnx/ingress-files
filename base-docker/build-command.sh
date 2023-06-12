#!/bin/bash
docker build -t registry.cn-beijing.aliyuncs.com/cloudcenter-ops/nginx:1.22.0 -f base-Dockerfile  .
docker push registry.cn-beijing.aliyuncs.com/cloudcenter-ops/nginx:1.22.0
crane cp node:16.15.0 registry.cn-beijing.aliyuncs.com/cloudcenter-ops/node:16.15.0
