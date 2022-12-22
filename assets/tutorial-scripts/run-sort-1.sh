#!/bin/bash
# Define arrays of parameters to randomly choose later
INTERVAL[0]="random"
INTERVAL[1]="edges"
INTERVAL[2]="threshold"
INTERVAL[3]="waves"
INTERVAL[4]="none"
# Get the size of the INTERVAL array
isize=${#INTERVAL[@]}

SORT[0]="lightness"
SORT[1]="hue"
SORT[2]="saturation"
SORT[3]="intensity"
SORT[4]="minimum"
# Get the size of the SORT array
ssize=${#SORT[@]}

# Choose random indices to work with
i_idx=$(( $RANDOM % isize ))
s_idx=$(( $RANDOM % ssize ))

# Choose a random character length between [20,500]
c=$(( $RANDOM % 500 + 20 ))

# And a random angle to sort at
angle=$(( $RANDOM % 360 ))

# And now call pixel sort!
echo "Sorting information: angle [$angle], sort [${SORT[$s_idx]}], interval [${INTERVAL[$i_idx]}], char_length [$c]"
python3 -m pixelsort sample.png -a $angle -s ${SORT[$s_idx]} -i ${INTERVAL[$i_idx]} -c $c -o sample.sorted.scripted.png