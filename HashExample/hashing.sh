  
#!/bin/bash

#===========================================================
# Message Digest 5 Hashing Example
#===========================================================

# Hashing is used to enforce integrity. A hash is a number
# created by executing a hashing algorithm against data,
# such as a file or message. If the data never changes, the 
# resulting has will always be the same. By comparing
# hashes created at two different times, you can determine
# if the original data is still the same. If the hashes are
# the same, the data is the same

# Create the file to hash
STR="I suppose this file is important. Perhaps. Perhaps not."

echo $STR > important.txt

#hash the file and capture the hash number
HASH=$(echo -n important.txt | md5)
echo $HASH
#rehast the file and capture the hash number
HASH2=$(echo -n important.txt | md5)
echo $HASH2
if [ $HASH == $HASH2 ]; then
   echo "We hashed the file twice and the hashes match!"
else
   echo "We hashed the file twice, and the hashes don't match!"
fi 
