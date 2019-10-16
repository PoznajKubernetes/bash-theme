if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.poznajkubernetes-shell/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

source <(kubectl completion bash)

#kubectx and kubens
export PATH=~/.kubectx:$PATH

KUBE_PS1_NS_COLOR="142"        #from YELLOW 09
KUBE_PS1_CTX_COLOR="37"        #from TEAL 09

source  ~/.kube-ps1/kube-ps1.sh
PS1='[\[\033[38;5;${KUBE_PS1_NS_COLOR}m\]\u\[\033[m\]@\[\033[38;5;${KUBE_PS1_CTX_COLOR}m\]\h:\[\033[33;m\]\W\[\033[m\] $(kube_ps1)]\n\$ '
