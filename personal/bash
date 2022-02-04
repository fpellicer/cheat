---
tags: [ bash,shell ]
---
!foo # Execute last command starts with foo (!?foo)
!$   # Expands to last word of previous command.
!:0  # Is the first *word* (i.e.: command name) !$ is the last *word*.
!^   # Expands to the first argument of the previous command.

# To implement a for loop:
for file in *
do 
    echo "$file found"
done

# To implement a case command:
case "$1"
in
    0) echo "zero found";;
    1) echo "one found";;
    2) echo "two found";;
    3*) echo "something beginning with 3 found";;
esac

# To turn on debugging:
set -x

# To turn off debugging:
set +x

# Retrieve N-th piped command exit status:
printf 'foo' | fgrep 'foo' | sed 's/foo/bar/'
echo ${PIPESTATUS[0]}  # replace 0 with N

# To create a lockfile:
( set -o noclobber; echo > my.lock ) || echo 'Failed to create lock file'

# Capturnig Groups with regular expressions
regex="[0-9]+_([a-z]+)_[0-9a-z]*"
if [[ $f =~ $regex ]]
then
    echo "${BASH_REMATCH[1]} match"
fi
