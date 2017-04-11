# Creates, Adds and Commits a file
# If you call with parameter foo, it will create a file called foo containing text foo
# and commit it to the current git branch
# Why? Useful when experimenting with Git and I just want to add and commit a file for testing.

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi

FILE=$1
touch "$FILE"
echo "$FILE" > ./$FILE

git add $FILE
git commit -m "added file: $FILE"
echo "Created, added and committed file: $FILE"
