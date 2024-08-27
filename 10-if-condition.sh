# #!/bin/bash

# NUMBER1=$1
# NUMBER2=$2

# if[$NUMBER1 -gt $NUMBER2]
# then
#     echo "$NUMBER1 is greater than $NUMBER2"
# else
#     echo "$NUMBER1 is less than $NUMBER2"
# fi


#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ] #gt, lt, eq, -ne, -ge, -le
then
    echo "Given number: $NUMBER is greater than 20"
else
    echo "Given number: $NUMBER is less than 20"
fi