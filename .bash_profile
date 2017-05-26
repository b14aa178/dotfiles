export THEOS=~/theos
export PATH=$THEOS/bin:$PATH
export THEOS_DEVICE_IP=root@localhost 
export THEOS_DEVICE_PORT=2222
export ARCHS=armv7
export TARGET=iphone:clang:latest:8.3

alias work="ssh -L 12345:localhost:23456 root@localhost -p 2222"
alias ls="ls -l"

work1() { atos -arch armv7 -o $1 -l $2 $3; }







