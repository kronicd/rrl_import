#!/bin/zsh

# Get latest

latest=`ls -t callbook*.csv | cat | head -n 1`

# Get previous

previous=`ls -t callbook*.csv | cat | head -n 2 | tail -n 1`


previous_calls=`cat ${previous} |  cut -d ',' -f 1 | cut -d ' ' -f 1 | sed 's/"//g' | sort -u`
latest_calls=`cat ${latest} | cut -d ',' -f 1 | cut -d ' ' -f 1 | sed 's/"//g'| sort -u`


# print expired licenses
diff=`comm -13 <(echo $latest_calls) <(echo $previous_calls) | sed 's/^/\^/' | sed 's/$/\,/'`
details=`grep -i -f <(echo $diff) $previous`

echo "Expired calls"
echo $details  

# print new licenses

diff=`comm -23 <(echo $latest_calls) <(echo $previous_calls) | sed 's/^/\^/' | sed 's/$/\,/'`
details=`grep -i -f <(echo $diff) $latest`

echo
echo "New calls"
echo $details 
