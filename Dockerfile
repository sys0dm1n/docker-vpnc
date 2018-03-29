FROM debian:latest

LABEL maintainer="sys0dm1n" \
      description="vpnc"

ENV DEBIAN_FRONTEND noninteractive
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && apt-get install -y \
    vpnc

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh
CMD ["/usr/local/bin/entrypoint.sh"]