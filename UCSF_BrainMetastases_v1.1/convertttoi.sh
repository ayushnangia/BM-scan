
for folder in ./train-dic/*; do
    for file in "$folder"/*; do
        echo "$file"
        # If the output folder does not exist, create it
        if [ ! -d "./output/$(basename "$folder")" ]; then
            mkdir "./output/$(basename "$folder")"
        fi
        # Remove the .txt extension from the filename
        filename_without_extension="$(basename "$file" .txt)"
        # Create PNG image from text content using ImageMagick's convert command
        convert -size 800x600  -font Courier caption:@"$file" "./output/$(basename "$folder")/$filename_without_extension.png"
    done
done
