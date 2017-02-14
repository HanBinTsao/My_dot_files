# Put this to your Home directory 

# Check top process sorted by RAM or CPU

alias toptencpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head'
alias toptenmem='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'


# Find Top 15 Processes by Memory Usage with ‘top’ in Batch Mode
# -b : runs top in batch mode
# -o : used to specify fields for sorting processes
# head utility displays the first few lines of a file and
# the -n option is used to specify the number of lines to be displayed.

alias top10mem='top -b -o +%MEM | head -n 17'
alias top10cpu='top -b -o +%CPU | head -n 17'

alias alias='alias -P'
alias lsblk='lsblk -f'

#pssswd -s <username>
#shuf or sort -R
