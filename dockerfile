FROM elasticsearch:6.6.2
RUN yum -y update && yum -y install zip
RUN mkdir -p /usr/share/elasticsearch/plugins/ik
RUN cd /usr/share/elasticsearch/plugins/ik && wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.6.2/elasticsearch-analysis-ik-6.6.2.zip && unzip elasticsearch-analysis-ik-6.6.2.zip
