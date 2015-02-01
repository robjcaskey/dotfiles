#!/usr/bin/env bash
# run from rc.local via openvt -s -w /path/to/script
echo "what inventory tag is this?"
read tag
cd /dos
dir=`mktemp -d /dos/inventory.XXXXXXXX`
echo $dir
cd $dir
lspci >> $dir/lspci.txt
dmidecode >> $dir/dmidecode.txt
cat /proc/cpuinfo >> $dir/cpuinfo.txt
lscpu >> $dir/lscpu.txt
lsblk >> $dir/lsblk.txt
df >> $dir/df.txt
lshw >> $dir/lshw.txt
echo $tag >> $dir/tag.txt
modprobe pcspkr
echo -e '\a\a\a'
read -t 3 -p "type s and press enter to cancel automatic shutdown" doShut
if [ -z "$doShut" ]; then
  echo "\n\nShutting down"
  shutdown now
fi
