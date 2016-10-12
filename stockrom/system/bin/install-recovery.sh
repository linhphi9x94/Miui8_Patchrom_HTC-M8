#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 19261440 6075003012477c119da9ec9457e9b275af25460b 14534656 16076d78d3394819738b15b493c3da0b9cb49a5b
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:19261440:6075003012477c119da9ec9457e9b275af25460b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:14534656:16076d78d3394819738b15b493c3da0b9cb49a5b EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 6075003012477c119da9ec9457e9b275af25460b 19261440 16076d78d3394819738b15b493c3da0b9cb49a5b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
