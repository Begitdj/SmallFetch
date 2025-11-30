cores=$(grep -c "processor" /proc/cpuinfo)
vendor=$(grep -c 'vendor' /proc/cpuinfo | uniq)
cpu=$(grep -c 'model name' /proc/cpuinfo | uniq)
mhz=$(grep -c 'mhz' /proc/cpuinfo | uniq)
architecture=$(uname -m)
kernel=$(uname -r)
TotalMem=$(grep 'MemTotal' /proc/meminfo | awk '{print $2}')
Mem=$(grep 'MemAvailable' /proc/meminfo | awk '{print $2}')
Uptime=$(uptime -p)
echo "  .~."
echo "  /V\\"
echo " // \\\\"
echo "/(   )\\"
echo " ^\`~'^"
echo "$USER@$HOSTNAME"
echo "CPU: $vendor $cpu | Cores: $cores Mhz: $mhz"
echo "Mem: $Mem/$TotalMem KB"
echo "Kernel: $kernel Architecture: $architecture Uptime: $Uptime"
