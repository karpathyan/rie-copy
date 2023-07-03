
# rie-copy
rie-copy: replace if exists and copy, is a Bash tool that simplifies the process of copying multiple files to a destination directory, conveniently handling cases where files have the same name. When copying files to a destination directory, rie_copy automatically detects if a file with the same name already exists. In such cases, it  renames the new file by appending a unique number to the file name. For instance, if you're copying images named image1.png, image2.png, etc., to the directory /my_images/ where files with similar names already exist, rie_copy ensures that the new files are named as image1(1).png, image1(2).png, and so on, preventing any data loss or overwriting. 
With rie_copy, you can confidently copy files with ease, knowing that your existing files are preserved, and the new files are seamlessly managed.

## Installation
- Debian / Ubuntu
1. Make sure git is installed
   ```bash
   sudo apt-get update
   ```
   ```bash
   sudo apt-get install git
   ```
2. Download the `rie-copy` repo with the following command,
```bash
git clone https://github.com/karpathyan/rie-copy.git
```
3. Install the deb file using `dpkg`
```bash
cd ./rie-copy/
```
```bash
sudo dpkg -i rie-copy.deb
```
## Usage
Run the script using the following command:

```bash
./rie-copy <source_file1> <source_file2> ... <destination_directory>
```

Replace `<source_file1>`, `<source_file2>`, etc., with the actual paths to the files you want to copy. The last argument should be the destination directory where the files will be copied.

## Behavior

The script will perform the following actions:

1. Check the number of arguments provided. If fewer than two arguments are given, it will display a usage message and exit.
2. Iterate through the source files and copy them to the destination directory.
3. If a file with the same name already exists in the destination directory, the script will append a counter to the file name, incrementing it until an available file name is found.

## Example

```bash
./rie-copy file1.txt file2.txt destination_folder/
```

This command will copy `file1.txt` and `file2.txt` to the `destination_folder/`. If any file in the destination folder has the same name, the script will automatically rename the new file to avoid overwriting existing files.

## License

This project is licensed under the [GPL](LICENSE).
```

