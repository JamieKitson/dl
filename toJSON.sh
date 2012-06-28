#!/bin/bash

echo '['
c=","

for i in *.txt
do

    if [ -z "$d" ] 
    then
        c=","
    fi
	d=$(basename $i -count.txt)
	n=$(cat $i | sort | uniq | wc -l)

# TODO how do you remove last trailling comma so the JSON is 100%?
cat <<END
$c{ "period" : "$d", "dl" : $n }
END
done

echo ']'