FROM ubuntu
RUN apt-get -qq update && apt-get -qy upgrade
RUN apt-get install -qqy curl gnupg2
RUN echo "deb [arch=amd64] http://apt.mackerel.io/v2/ mackerel contrib" > /etc/apt/sources.list.d/mackerel.list
RUN curl -LfsS https://mackerel.io/file/cert/GPG-KEY-mackerel-v2 | apt-key add -
RUN apt-get update -qq
RUN apt-get install -y mkr
RUN mkr plugin install mackerel-plugin-nature-remo@v0.1.0
RUN mkr plugin install mackerel-plugin-proc-net-arp

CMD cp /opt/mackerel-agent/plugins/bin/* /mackerel/
