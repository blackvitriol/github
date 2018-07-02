echo "Welcome to A7's EV switcher script !"

#switch parameters to your env vars
FILE="$HOME/notepad1.txt"
PATH1="hello"
PATH2="world"

if grep -Fx "$PATH1" $FILE
then
    sed -i -e "s/$PATH1/$PATH2/g" $FILE
else
    sed -i -e "s/$PATH2/$PATH1/g" $FILE
fi

echo "Paths have been changed succesfully ! ~A7"
