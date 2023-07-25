for folder in ./train/*; do
    for file in "$folder"/*; do
        echo "$file"
        # If folder does not exist, create it
        if [ ! -d "./train-dic/$(basename "$folder")" ]; then
            mkdir "./train-dic/$(basename "$folder")"
        fi
        # Remove the .nii.gz extension from the filename
        new_filename=$(echo "$(basename "$file")" | sed 's/\.nii\.gz$//')
        niicat -ic "$file" 
        #niicat -ic "$file" > "./train-dic/$(basename "$folder")/$new_filename.txt"
    done
done
