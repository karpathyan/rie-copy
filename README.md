
# rie_copy
rie_copy is a Bash tool that simplifies the process of copying multiple files to a destination directory, intelligently handling cases where files have the same name


## Usage
Run the script using the following command:

```bash
./copy_files.sh <source_file1> <source_file2> ... <destination_directory>
```

Replace `<source_file1>`, `<source_file2>`, etc., with the actual paths to the files you want to copy. The last argument should be the destination directory where the files will be copied.

## Behavior

The script will perform the following actions:

1. Check the number of arguments provided. If fewer than two arguments are given, it will display a usage message and exit.
2. Iterate through the source files and copy them to the destination directory.
3. If a file with the same name already exists in the destination directory, the script will append a counter to the file name, incrementing it until an available file name is found.

## Example

```bash
./copy_files.sh file1.txt file2.txt destination_folder/
```

This command will copy `file1.txt` and `file2.txt` to the `destination_folder/`. If any file in the destination folder has the same name, the script will automatically rename the new file to avoid overwriting existing files.

## License

This project is licensed under the [GPL](LICENSE).
```

