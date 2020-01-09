FROM centos:7
MAINTAINER Alex White (alex.white@diamond.ac.uk)

# set up Globus repo
RUN curl -LOs https://downloads.globus.org/toolkit/globus-connect-server/globus-connect-server-repo-latest.noarch.rpm
RUN rpm --import https://downloads.globus.org/toolkit/gt6/stable/repo/rpm/RPM-GPG-KEY-Globus
RUN yum -y install globus-connect-server-repo-latest.noarch.rpm

# set up EPEL
RUN curl -LOs https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install epel-release-latest-7.noarch.rpm
RUN yum -y install yum-plugin-priorities

# install myproxy-login tool
RUN yum -y install myproxy

# install globus-url-copy tool
RUN yum -y install globus-gass-copy-progs

# install our tools
RUN mkdir -p /opt/globus-get/bin
COPY bin/* /opt/globus-get/bin/
