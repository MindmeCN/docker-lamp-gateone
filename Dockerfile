# Arch Linux container with LAMP stack and gateone web ssh portal
FROM greyltc/lamp-aur
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install openssh
ADD https://raw.githubusercontent.com/greyltc/docker-sshd/master/setup-openssh.sh /usr/sbin/setup-openssh
RUN chmod +x /usr/sbin/setup-openssh
RUN setup-openssh

ADD https://raw.githubusercontent.com/greyltc/docker-sshd/master/run-sshd.sh /usr/bin/run-sshd
chmod +x usr/bin/run-sshd

# install gateone
ADD https://raw.githubusercontent.com/greyltc/docker-gateone/master/setup-gateone.sh /usr/sbin/setup-gateone
RUN chmod +x /usr/sbin/setup-gateone
RUN setup-gateone

ADD https://raw.githubusercontent.com/greyltc/docker-gateone/master/run-gateone.sh /usr/bin/run-gateone
RUN chmod +x run-gateone

ENV ENABLE_DAV true

CMD run-sshd && run-gateone && start-servers && sleep infinity
