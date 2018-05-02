FROM anapsix/alpine-java
LABEL maintainer="shanmukha443@gmail.com"
COPY /target/vsvyadav_${env.BRANCH_NAME}${env.BUILD_NUMBER}.jar /root/vsvyadav_${env.BRANCH_NAME}${env.BUILD_NUMBER}.jar
CMD ["java","-jar","/root/vsvyadav_${env.BRANCH_NAME}${env.BUILD_NUMBER}.jar]
