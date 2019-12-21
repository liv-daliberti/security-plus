#!/bin/bash

#===========================================================
# Stenography Example
#===========================================================

# Stenography is the practice of hiding data within data.
# Below I demo stenography storing a text file within an 
# image file.


# Write a secret to a textfile
STR="I have many secrets. I will not share them here though, 
because this is an example of obfuscation, which is not
a reliable method of maintaining security." 

echo $STR > the-secret.txt

# Zip the secret
zip the-secret.zip the-secret.txt 

# Attach the secret to an image
cat not-secret-liv.jpg the-secret.zip >> secret-liv.jpg

# Now, I have a secret image. I send it to you. 
# You can open it by carrying out the following:
mv secret-liv.jpg secret-liv.zip
unzip secret-liv.zip

# You now know my secret!
# Citing sources:
# https://gcgapremium.com/steganography-lab/
# http://wiki.linuxquestions.org/wiki/Embed_a_zip_file_into_an_image
