#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:22233088:aa2eb97f0590ac082b5f15fd1e667f1e139ea8e4; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18882560:ce318b24ecda585ed7e3547b9adcf6316b152c3f EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY aa2eb97f0590ac082b5f15fd1e667f1e139ea8e4 22233088 ce318b24ecda585ed7e3547b9adcf6316b152c3f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
