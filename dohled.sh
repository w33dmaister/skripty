#!/bin/bash
cas=`date +%T`
ip=`ifconfig enp6s0 | grep "inet adr"|awk -F ":" '{print $2}'|awk -F " " '{print $1}'`
prijato=`ifconfig enp6s0 | grep "bajt"|awk -F "(" '{print $2}'|awk -F ")" '{print $1}'`
odeslano=`ifconfig enp6s0 | grep "bajt"|awk -F "(" '{print $3}'|awk -F ")" '{print $1}'`
ram=`free -h | grep "Mem"|awk -F " " '{print $2}' |awk -F " " '{print $3}'`
echo "Cas: "$cas" IP: "$ip" Prijato: "$prijato" Odeslano:"$odeslano" RAM:"$ram >> log
