# BASE 
1. base-docker/build-command.sh 构建基础镜像

# 使用
1. 将Dockerfile放在你的 Vue/React 仓库中
2. 构建镜像
3. 发布应用 `kubectl apply -f 1.app-namespace.yaml -f 2.nginx-configmap.yaml  -f 3.app-deploy.yaml  -f 4.app-hpa.yaml`

# 后期维护
1. base-docker 修改主配置
