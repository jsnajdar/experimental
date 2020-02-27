FROM centos:7.6.1810
MAINTAINER Jan Šnajdar <jan.snajdar@o2its.cz>

### Atomic/OpenShift Labels - https://github.com/projectatomic/ContainerApplicationGenericLabels
LABEL name="o2its/aplpispred/centos7-jdk11" \
      maintainer="jan.snajdar@o2its.cz" \
      vendor="O2 IT Services s.r.o." \
      version="0.0.1" \
      release="1" \
      summary="APLPISPRED Centos 7 and OpenJDK 11" \
      description="APLPISPRED project Centos 7 with OpenJDK 11" \
### Required labels above - recommended below
      url="http://www.o2its.cz" \
      run='docker run -tdi --name ${NAME} \
      -u 123456 \
      ${IMAGE}' \
      io.k8s.description="APLPISPRED project Centos 7 with OpenJDK 11" \
      io.k8s.display-name="AAPLPISPRED project Centos 7 with OpenJDK 11" \
      io.openshift.expose-services="" \
      io.openshift.tags="o2its,aplpispred,okd,centos,openjdk11"

RUN yum clean all -y

### Setup user for build execution and application runtime
ENV APP_ROOT=/opt/app-root
ENV PATH=${APP_ROOT}/bin:${PATH} HOME=${APP_ROOT}
COPY bin/ ${APP_ROOT}/bin/
RUN chmod -R u+x ${APP_ROOT}/bin && \
    chgrp -R 0 ${APP_ROOT} && \
    chmod -R g=u ${APP_ROOT} /etc/passwd

COPY ./adoptopenjdk.repo /etc/yum.repos.d
RUN yum -y install adoptopenjdk-11-hotspot \
    && yum clean all -y

