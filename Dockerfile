FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget adduser libfontconfig
RUN wget https://grafanarel.s3.amazonaws.com/builds/grafana_3.0.4-1464167696_amd64.deb
RUN dpkg -i grafana_3.0.4-1464167696_amd64.deb


CMD /usr/sbin/grafana-server --homepath=/usr/share/grafana --config=/etc/grafana/grafana.ini cfg:default.paths.data=/var/lib/grafana cfg:default.paths.logs=/var/log/grafana cfg:default.paths.plugins=/var/lib/grafana/plugins
