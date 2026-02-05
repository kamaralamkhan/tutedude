#!/bin/bash

# Ensure we have a mock environment
mkdir -p etc
cat <<EOF > etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
user:x:1000:1000:User,,,:/home/user:/bin/bash
EOF

echo "--- STARTING TASKS ---" > actual_output.txt

# 1. Creating and Renaming
echo "Executing: mkdir test_dir" | tee -a actual_output.txt
mkdir -p test_dir
echo "Executing: touch test_dir/example.txt" | tee -a actual_output.txt
touch test_dir/example.txt
echo "Executing: ls test_dir" | tee -a actual_output.txt
ls test_dir >> actual_output.txt
echo "Executing: mv test_dir/example.txt test_dir/renamed_example.txt" | tee -a actual_output.txt
mv test_dir/example.txt test_dir/renamed_example.txt
echo "Executing: ls test_dir" | tee -a actual_output.txt
ls test_dir >> actual_output.txt

# 2. Viewing File Contents
echo "Executing: cat etc/passwd" | tee -a actual_output.txt
cat etc/passwd >> actual_output.txt
echo "Executing: head -n 5 etc/passwd" | tee -a actual_output.txt
head -n 5 etc/passwd >> actual_output.txt
echo "Executing: tail -n 5 etc/passwd" | tee -a actual_output.txt
tail -n 5 etc/passwd >> actual_output.txt

# 3. Searching for Patterns
echo "Executing: grep \"root\" etc/passwd" | tee -a actual_output.txt
grep "root" etc/passwd >> actual_output.txt

# 4. Zipping (Using Python for stability on Windows)
echo "Executing: (Python) zip test_dir" | tee -a actual_output.txt
python -c "import shutil; shutil.make_archive('test_dir', 'zip', 'test_dir')"
ls test_dir.zip >> actual_output.txt

# 5. Downloading Files (Using curl as wget fallback)
echo "Executing: curl -L -o sample_page.html https://example.com" | tee -a actual_output.txt
curl -L -s -o sample_page.html https://example.com
ls sample_page.html >> actual_output.txt

# 6. Changing Permissions
echo "Executing: touch secure.txt && chmod 444 secure.txt" | tee -a actual_output.txt
touch secure.txt
chmod 444 secure.txt
ls -l secure.txt >> actual_output.txt

# 7. Environment Variables
echo "Executing: export MY_VAR=\"Hello, Linux!\"" | tee -a actual_output.txt
export MY_VAR="Hello, Linux!"
echo "MY_VAR: $MY_VAR" >> actual_output.txt
