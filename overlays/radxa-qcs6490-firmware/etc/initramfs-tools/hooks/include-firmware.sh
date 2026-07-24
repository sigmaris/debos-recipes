#!/bin/sh
PREREQ=""
prereqs() { echo "$PREREQ"; }
case $1 in
    prereqs) prereqs; exit 0;;
esac
. /usr/share/initramfs-tools/hook-functions
# Copy required firmware
mkdir -p "${DESTDIR}/lib/firmware/qcom/qcs6490/radxa"
cp -r /lib/firmware/qcom/qcs6490/radxa/dragon-q6a "${DESTDIR}/lib/firmware/qcom/qcs6490/radxa/dragon-q6a"
cp /lib/firmware/qcom/a660_sqe.fw /lib/firmware/qcom/a660_gmu.bin "${DESTDIR}/lib/firmware/qcom/"
cp /lib/firmware/qcom/qcs6490/a660_zap.mbn "${DESTDIR}/lib/firmware/qcom/qcs6490/"
