#!/bin/bash

control_c() {
  # run if user hits control-C
  echo -en "\n\n!!!!!!!!!!!!!!!!!!!!"
  echo -en "\nSUCKA!!  You can't STOP this!  It's inevitable...\n"
  echo -e "\nyouve been haX0red by robotech yashimaru autonomous nanobots!! 1337!\n"
  echo -en "!!!!!!!!!!!!!!!!!!!!\n\n"
} # end control_c()
 
control_z() {
  # run if user hits control-Z
  echo -e "\nyouve been haX0red by robotech yashimaru autonomous nanobots!! 1337!\n"
  echo -en "\nSILLY! You cant even PAUSE this... Its still gona happeen...\n"
} # end control_z()
 
spinner(){
    maxCount=$1
    sleepTime=$2
    count=1
    while [ "$count" -le "$maxCount" ];do
        #echo -n ".." ; sleep 0.1
        echo -ne "\b.." ; sleep $sleepTime
        echo -ne "\b/" ; sleep $sleepTime
        echo -ne "\b-" ; sleep $sleepTime
        echo -ne "\b\\" ; sleep $sleepTime
        echo -ne "\b|" ; sleep $sleepTime
        echo -ne "\b/" ; sleep $sleepTime
        echo -ne "\b-" ; sleep $sleepTime
        echo -ne "\b\\" ; sleep $sleepTime
        echo -ne "\b|" ; sleep $sleepTime
        echo -ne "\b."
        count=`expr $count + 1`
    done
    return 0
}   # end spinner()

endlessSpinner(){
    sleepTime=$1
    while [ true ];do
        echo -ne "\b/" ; sleep $sleepTime
        echo -ne "\b-" ; sleep $sleepTime
        echo -ne "\b\\" ; sleep $sleepTime
        echo -ne "\b|" ; sleep $sleepTime
    done
    return 0
}   # end spinner()


chr()
{
   ## convert number[s] to ASCII character[s]
   printf "%b" `printf '\x%x' $1 2>/dev/null`
}

genFakeKey() {
    maxCount=$1
    count=1
    while [ "$count" -le "$maxCount" ];do
        # use the built-in $RANDOM variable to generate pseudo-random integer and convert to ASCII
        chr $RANDOM + $RANDOM + $RANDOM + $RANDOM
        sleep 0.1
        count=`expr $count + 1`
    done

}   # end genFakeKey()

# trap keyboard interrupt (control-c) and job stop (control-z)
trap control_c SIGINT
trap control_z SIGTSTP
 
while true; do 
    echo -e "\n\n\t\tyouve been haX0red by robotech yoshimaru autonomous nanobots!!\n"
    echo -e "\t\t\twe pwn u luser!!! l337!!\n"
    echo -e "+ accessing intertubes (get pkg): \c"
    spinner '5' '0.1'
    spinner '7' '0.5'
    spinner '13' '0.001'
    echo "done"
    echo -e "+ preparing pkg: \c"
    spinner '5' '0.1'
    spinner '7' '0.5'
    spinner '13' '0.001'
    echo "done"
    echo -e "+ registering...done"
    echo -e "+ instaling payload: \c"
    spinner '5' '0.1'
    spinner '5' '0.5'
    spinner '15' '0.001'
    echo "done"
    echo -e "+ loading scret key: \c"
    genFakeKey 25
    echo -e "\n+ finding depencies: \c"
    spinner '5' '0.1'
    spinner '5' '0.5'
    spinner '15' '0.001'
    echo "done"
    echo -e "+ opening irc channel (irc.kirin.jp) for commands: \c"
    spinner '15' '0.1'
    spinner '8' '0.1'
    echo "done"
    echo -e "+ 0-day backdoor: \c"
    spinner '3' '0.1'
    spinner '2' '0.1'
    echo -e "\n+ listen for traffic:  \c"
    endlessSpinner '0.1'
    echo

done
