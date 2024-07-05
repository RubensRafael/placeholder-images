#!/bin/bash


base_url="https://thispersondoesnotexist.com/"

number_of_images=100

counter=0

# Download the images
while [ $counter -lt $number_of_images ]; do

    image_name="./image-$counter.png"

    wget "$base_url" -O "$image_name"

    counter=$((counter + 1))
done

echo "Download of $number_of_images images complete!"