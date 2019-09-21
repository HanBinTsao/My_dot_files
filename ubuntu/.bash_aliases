# Check top process sorted by RAM or CPU

alias toptencpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head'
alias toptenmem='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'

# https://blog.longwin.com.tw/2017/04/linux-ps-process-show-cpu-memory-2017/
#ps aux --sort rss
#ps aux --sort -rss

#ps aux --sort pcpu
#ps aux --sort -pcpu

# Find Top 15 Processes by Memory Usage with ‘top’ in Batch Mode
# -b : runs top in batch mode
# -o : used to specify fields for sorting processes
# head utility displays the first few lines of a file and
# the -n option is used to specify the number of lines to be displayed.

alias top10mem='top -b -o +%MEM | head -n 17'
alias top10cpu='top -b -o +%CPU | head -n 17'

# Memory usage by process
function memusage(){
    ps aux | grep $1 | awk '{ total += $6; } END { print total/1024"MB" }' 
}

# Find All installed packages ( User installed, not all packages in system, you should use "apt list --installed")
alias installedpackages="cat /var/log/dpkg.log | awk '{print \$3,\$4}' | grep '^install' | awk '{print \$2}' | awk -F ':' '{print \$1}'"

# Lazy update
alias update="sudo apt update && sudo apt upgrade -y"

# display much clear output
alias mount="mount | column -t"

# Listing Docker Tags on the Command Line Using a Bash Alias
function show-docker-img-tags(){
    local image="${1}"
    curl -s https://registry.hub.docker.com/v1/repositories/${image}/tags \
    | tr -d '[]" ' | tr '}' '\n' \
    | awk -F: '{print $3}'
}
