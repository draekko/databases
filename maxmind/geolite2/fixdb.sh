#!/bin/bash

#$inputfile=`head -10 "$@"`

#while read line
#do
#echo $line;
#done < "$@"

#Returns the integer representation of an IP arg, passed in ascii dotted-decimal notation (x.x.x.x)
#function atoi {
#    IP=$1; IPNUM=0
#    for (( i=0 ; i<4 ; ++i )); do
#    ((IPNUM+=${IP%%.*}*$((256**$((3-${i}))))))
#    IP=${IP#*.}
#    done
#    echo $IPNUM 
#} 

FIRSTLINE="network_start_ip,network_prefix_length,geoname_id,registered_country_geoname_id,represented_country_geoname_id,postal_code,latitude,longitude,is_anonymous_proxy,is_satellite_provider"
PREFIX="::ffff:"
INPUT="$1"

echo $FIRSTLINE > "$2"

OLDIFS=$IFS
IFS=,
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read ip mask_length name_id reg_country_id rep_country_id postal_code lat lng anon satellite
do
    echo "==================================================="

    checkprefix=`echo $ip | cut -c1-7`
    if [ "$checkprefix" == "::ffff:" ]; then
        ipv4=`echo $ip | sed "s/^$PREFIX//"`;
        ip_int=$ipv4;
        ipnum=0;
        for (( i=0 ; i<4 ; ++i ))
        do
            ((ipnum+=${ip_int%%.*}*$((256**$((3-${i}))))))
            ip_int=${ip_int#*.}
        done
        echo "IP v6     : $ip "
        echo "IP v4     : $ipv4 int[$ipnum]" 
        echo "Length    : "$mask_length 
        echo "Namde ID  : "$name_id 
        echo "Reg CNT   : "$reg_country_id 
        echo "Rep CNT   : "$rep_country_id 
        echo "Postal    : "$postal_code 
        echo "Latitude  : "$lat 
        echo "Longitute : "$lng 
        echo "Anon      : "$anon 
        echo "Satellite : "$satellite
        echo "$ipnum,$mask_length,$name_id,$reg_country_id,$rep_country_id,$postal_code,$lat,$lng,$anon,$satellite" >> "$2"
    fi

done < $INPUT
IFS=$OLDIFS
echo "==================================================="
echo "DONE"
echo ""


