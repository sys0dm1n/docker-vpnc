#!/bin/sh

VPNC_CONFIG="/var/run/vpnc.conf"

cat > ${VPNC_CONFIG} <<EOF
IPSec gateway ${VPNC_GATEWAY}
IPSec ID ${VPNC_ID}
IPSec secret ${VPNC_SECRET}
Xauth username ${VPNC_USERNAME}
Xauth password ${VPNC_PASSWORD}
EOF

/usr/sbin/vpnc --no-detach --non-inter ${VPNC_CONFIG}