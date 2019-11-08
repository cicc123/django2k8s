docker tag `docker images|grep django-0.0.1|awk '{print $3}'|head -1` registry.cn-beijing.aliyuncs.com/cicc201/k8s:django-0.0.1
docker push registry.cn-beijing.aliyuncs.com/cicc201/k8s:django-0.0.1
