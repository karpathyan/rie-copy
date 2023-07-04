#!/bin/bash
# rie_copy.sh
# https://github.com/karpathyan/rie_copy
# Rajgowrav Cheenikundil, Orebro University, Sweden
# Licence (SPDX-License-Identifier): GPL-3.0-or-later


num_args=$#
destination_dir="${!num_args}/"

if [ $num_args -lt 2 ]; then
    echo "Usage: ./rie_copy.sh <source_file1> <source_file2> ... <destination_directory>"
    exit 1
fi

for ((i=1; i<num_args; i++)); do
    source_file="${!i}"
    filename=$(basename -- "$source_file")
    destination_path="${destination_dir}${filename}"

    if [ -e "$destination_path" ]; then
        extension="${filename##*.}"
        filename="${filename%.*}"
        counter=1

        while [ -e "$destination_path" ]; do
            new_filename="${filename}(${counter}).${extension}"
            destination_path="${destination_dir}${new_filename}"
            counter=$((counter + 1))
        done
    fi

    cp "$source_file" "$destination_path"
done
