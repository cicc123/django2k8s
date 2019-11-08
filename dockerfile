from alpine:3.10
expose 8080
run sed -i 's/dl-cdn.alpinelinux.org/mirror.tuna.tsinghua.edu.cn/g' /etc/apk/repositories &&\
apk add --no-cache python3 sqlite&& \
pip3 install --upgrade pip  --no-cache-dir -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com &&\
pip3 install --no-cache-dir -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com django &&\
#apk del --purge \
#build-dependencies && \
rm -rf \
/root/.cache \
/tmp/* 
copy /* /django2k8s/
COPY gorun.sh /bin
WORKDIR /django2k8s
CMD ["python3 manage.py runserver 0:8080"]
