# Arch Linux container with LAMP stack (webdav turned on) and gateone web ssh portal
FROM greyltc/lamp-sshd-aur
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install gateone
ADD https://raw.githubusercontent.com/greyltc/docker-gateone/master/setup-gateone.sh /usr/sbin/setup-gateone
RUN chmod +x /usr/sbin/setup-gateone
RUN setup-gateone

ADD https://raw.githubusercontent.com/greyltc/docker-gateone/master/run-gateone.sh /usr/bin/run-gateone
RUN chmod +x /usr/bin/run-gateone

ENV ENABLE_DAV true

CMD run-sshd; run-gateone; start-servers; sleep infinity
