# Kurt's aliases

alias hist="history | grep -i"
alias r="reset"
alias delds='find . |  grep ".DS_Store\|.*\.retry"  | xargs rm'

alias tup="mv ~/Downloads/Daily\ Notify* ~/Documents/terminations/ ; cd ~/Documents/terminations/ ; aws s3 sync . s3://nrel-terminations-hires-conversions/"

alias bfg="java ~/bin/bfg-1.13.0.jar"
alias kh='ssh-keygen -f "/Users/kbendl/.ssh/known_hosts" -R '
alias rkey='ssh-keygen -f "/Users/kbendl/.ssh/known_hosts" -R '

# Project aliases;
alias nett="deactivate  > /dev/null 2>&1 ; cd /opt/code/network/ansible/switch-config; git pull"
alias ans="deactivate > /dev/null 2>&1 ;  cd /opt/code/ansible/ansible_configs/; source /opt/code/ansible/venv-ans/bin/activate; git pull"
alias elas="deactivate > /dev/null 2>&1 ; cd /opt/code/elastic/elastic-ansible/; source /opt/code/elastic/venv-es/bin/activate; git pull"

alias shpc="deactivate > /dev/null 2>&1 ; cd /opt/code/os/; source /opt/code/os/venv/bin/activate ; source /opt/code/os/kolla-admin-openrc.sh"
alias stackk="shpc"
alias os="openstack"

#alias nett="deactivate; cd /opt/code/network/ansible/switch-config; source /opt/code/network/venv-net/bin/activate; git pull;"
#alias ea="cd /opt/code/elastic/elastic-ansible/;source /opt/code/elastic/venv-ea/bin/activate"
#alias ans="cd /opt/code/ansible/ansible_configs/;source /opt/code/ansible/venv-ans/bin/activate"
#alias elas="cd /opt/code/elastic/elastic-ansible/;source /opt/code/elastic/venv-es/bin/activate"



alias anspk="ansible-playbook -u kbendl2 -K -Z --pkcs11provider=/usr/local/lib/opensc-pkcs11.so --connection=paramiko "
alias ansp="ansible-playbook -u sccmgr --private-key=~/keys/dude.key "
alias ansh="ansible -u sccmgr --private-key=~/keys/dude.key "
alias nbb="cd /opt/sites/nora/; source /opt/sites/nora/plone/zeocluster/bin/activate; plone/zeocluster/bin/plonectl start"

alias akn="cd /opt/code/secops/acoknock/acoknock ; source /opt/code/secops/coknock/venv/bin/activate; git pull "


alias xfreee="xfreerdp -z /v:vdi10-gen-009.nrel.gov /d:nrel_nt /u:kbendl +compression /size:2880x1536 /smartcard +clipboard "

alias wazz="cd /opt/code/wazuh/wazuh-elastic ; source /opt/code/wazuh/venv-waz/bin/activate; git pull "

alias kdel="sed -i'.bak' 'd' ~/.ssh/known_hosts"

#alias allocc="cd /opt/sites/alloc/allocations-webapp; source ../venv-3alloc/bin/activate; pg_ctl -D /usr/local/var/postgres start"

#alias scpi="scp -o SmartcardDevice -i /usr/local/lib/opensc-pkcs11.so kbendl2 "
alias scpi="scp -o PKCS11Provider=/usr/local/lib/opensc-pkcs11.so "
alias sshi="ssh -XY -I /usr/local/lib/opensc-pkcs11.so -l kbendl2 "
alias sshc="ssh -XY -i ~/.ssh/sparkplug.key -l centos "
alias sshu="ssh -XY -i ~/.ssh/sparkplug.key -l ubuntu "
alias sshs="ssh -XY -i ~/keys/dude.key -l sccmgr "

alias rsynci="rsync -e 'ssh -I   /usr/local/lib/onepin-opensc-pkcs11.so -l kbendl2 ' "
alias rsyncc=rsynci
alias zz="rsyncc -avh --exclude-from="/Users/kbendl/.rsync/exclude" /opt/code/network/ansible mgate.hpc.nrel.gov:"

#172.16.0.144  ds2.hpc.nrel.gov
alias ds2hh="sed -i.old  -e '1s;^;172.16.0.144  ds2.hpc.nrel.gov\'$'\n;' /etc/hosts"


# added by Anaconda3 4.3.1 installer
alias ana='export PATH="/opt/anaconda/bin:$PATH"'


alias v="vagrant "

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lls="ls -lartS"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# function iterm2_print_user_vars() {
#   iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
# }

# function gitBranch {
#   git branch 2> /dev/null) | grep \* | cut -c3-
# }

ansi-test()
{
  for a in 0 1 4 5 7; do
    echo "a=$a "
    for (( f=0; f<=9; f++ )) ; do
      for (( b=0; b<=9; b++ )) ; do
      #echo -ne "f=$f b=$b"
        echo -ne "\\033[${a};3${f};4${b}m"
        echo -ne "\\\\\\\\033[${a};3${f};4${b}m"
        echo -ne "\\033[0m "
      done
      echo
    done
    echo
  done
  echo
}


