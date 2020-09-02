#! /bin/sh

# Server = https://mirrors.bfsu.edu.cn/archlinux/$repo/os/$arch
# Server = https://mirrors.neusoft.edu.cn/archlinux/$repo/os/$arch
# Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch
# Server = https://mirrors.sjtug.sjtu.edu.cn/archlinux/$repo/os/$arch
# Server = https://mirrors.nju.edu.cn/archlinux/$repo/os/$arch


curl -s "https://www.archlinux.org/mirrorlist/?country=CN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 -
