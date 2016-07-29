#Check top process sorted by RAM or CPU
alias toptencpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head'
alias toptenmem='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'

