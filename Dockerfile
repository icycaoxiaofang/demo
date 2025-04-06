#构建镜像的Dockerfile
# From java image, version : 8
FROM java:8

# 挂载app目录
#VOLUME /app

##将maven构建好的jar添加到镜像中(前面为打包出的jar包名，后面任意与上上步执行shell中一致即可)
ADD target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar

EXPOSE 8999

ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]

