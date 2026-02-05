# Linux Commands Workshop Submission

**Name:** [User Name]  
**Date:** February 5, 2026  
**GitHub Repository:** [https://github.com/user/linux-task-submission](https://github.com/user/linux-task-submission)

---

## 1. Creating and Renaming Files/Directories
**Task:** Create a directory named `test_dir`, create an empty file `example.txt` inside it, and rename it to `renamed_example.txt`.

**Commands:**
```bash
mkdir test_dir
touch test_dir/example.txt
mv test_dir/example.txt test_dir/renamed_example.txt
```

**Explanation:**
- `mkdir`: Creates a new directory.
- `touch`: Creates an empty file or updates the timestamp of an existing one.
- `mv`: Moves or renames files and directories.

**Output:**
```text
$ ls test_dir/
renamed_example.txt
```

---

## 2. Viewing File Contents
**Task:** Display contents of `/etc/passwd`, and show the first/last 5 lines.

**Commands:**
```bash
cat /etc/passwd
head -n 5 /etc/passwd
tail -n 5 /etc/passwd
```

**Explanation:**
- `cat`: Concatenates and displays the entire content of a file.
- `head -n 5`: Displays the first 5 lines of a file.
- `tail -n 5`: Displays the last 5 lines of a file.

**Output (Head):**
```text
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
```

---

## 3. Searching for Patterns
**Task:** Find all lines containing "root" in `/etc/passwd`.

**Command:**
```bash
grep "root" /etc/passwd
```


**Explanation:**
- `grep`: Searches for a specific pattern (string or regex) within files.

**Output:**
```text
root:x:0:0:root:/root:/bin/bash
```

---

## 4. Zipping and Unzipping
**Task:** Compress `test_dir` into `test_dir.zip` and unzip it into `unzipped_dir`.

**Commands:**
```bash
zip -r test_dir.zip test_dir
unzip test_dir.zip -d unzipped_dir
```

**Explanation:**
- `zip -r`: Recursively compresses a directory into a ZIP archive.
- `unzip -d`: Extracts the contents of a ZIP file into a specified destination directory.

---

## 5. Downloading Files
**Task:** Download a file from a URL using `wget`.

**Command:**
```bash
wget https://example.com/sample.txt
```

**Explanation:**
- `wget`: A non-interactive tool for downloading files from the web via HTTP, HTTPS, or FTP.

---

## 6. Changing Permissions
**Task:** Create `secure.txt` and set it to read-only for everyone.

**Commands:**
```bash
touch secure.txt
chmod 444 secure.txt
```

**Explanation:**
- `chmod 444`: Sets the permissions to `r--r--r--` (read-only for owner, group, and others). The value `4` represents "read".

---

## 7. Working with Environment Variables
**Task:** Set an environment variable `MY_VAR` with the value "Hello, Linux!".

**Command:**
```bash
export MY_VAR="Hello, Linux!"
echo $MY_VAR
```

**Explanation:**
- `export`: Sets an environment variable that will be available to child processes in the current shell session.
- `echo $MY_VAR`: Prints the value of the variable.

**Output:**
```text
Hello, Linux!
```
