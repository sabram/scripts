//Creates, Adds and Commits a file
//if you call with parameter foo, it will create a file called foo containing text foo
//and commit it to the current git branch
FILE=$1
touch "$FILE"
echo "$FILE" > ./$FILE

git add $FILE
git commit -m "added file: $FILE"
