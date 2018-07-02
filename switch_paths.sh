echo "Welcome to A7's EV switcher script !"

FILE="$HOME/.bashrc"

PATH1="/usr/local/cuda-9.0/bin"
PATH1_extra="/usr/local/cuda-9.0/lib64"

PATH2="/usr/local/cuda-8.0/bin"
PATH2_extra="/usr/local/cuda-8.0/lib64"

if grep -F "$PATH1" $FILE
then
    sed -i "s|$PATH1|$PATH2|g" $FILE
    sed -i "s|$PATH1_extra|$PATH2_extra|g" $FILE
else
    sed -i "s|$PATH2|$PATH1|g" $FILE
    sed -i "s|$PATH2_extra|$PATH1_extra|g" $FILE

fi

echo "Paths have been changed succesfully ! ~A7"
