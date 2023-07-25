#!/bin/bash

for folder in ./train/*; do
    if [ ! -d "./train-or/$(basename $folder)" ]; then
        mkdir ./train-or/$(basename $folder)
    fi
    '''now go through all the files in the folder and convert them to dicom'''
    for file in $folder/*; do
        # echo $file
        # echo ./train-dic/$(basename $folder)/$(basename $file)
        if [ ! -d "./train-or/$(basename $folder)/$(basename $file)" ]; then
        mkdir ./train-or/$(basename $folder)/$(basename $file)
    fi
        fslreorient2std $file ./train-dic/$(basename $folder)/$(basename $file)
    done
    
done