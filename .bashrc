#remove exclusively
myExlRmFile() {
    file=$(pwd)/$1
    if [ -e $file ]; then
        find $(pwd) ! -name $1 -type f -exec rm -vf {} +
        #we don't want to kill ourself 
        find $(pwd) ! \( -name ${PWD##*/} -o -name $1 \)  -type d -exec rm -vrf {} +
    else
        echo "Not found $1"
    fi
}
