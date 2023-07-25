#!/bin/bash

for folder in ./train/*; do
    if [ ! -d "./train-dic/$(basename $folder)" ]; then
        mkdir ./train-dic/$(basename $folder)
    fi
    '''now go through all the files in the folder and convert them to dicom'''
    for file in $folder/*; do
        # echo $file
        # echo ./train-dic/$(basename $folder)/$(basename $file)
        if [ ! -d "./train-dic/$(basename $folder)/$(basename $file)" ]; then
        mkdir ./train-dic/$(basename $folder)/$(basename $file)
    fi
        nii2dcm $file ./train-dic/$(basename $folder)/$(basename $file)
    done
    
done