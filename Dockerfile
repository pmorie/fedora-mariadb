FROM fedora

RUN yum install -y mariadb mariadb-server && yum clean all

VOLUME /var/lib/mysql
VOLUME /var/log/mysql
EXPOSE 3306

ADD ./simple.cnf /etc/my.cnf.d/
ADD ./start-mariadb /usr/bin/

USER mysql
 CMD /usr/bin/start-mariadb