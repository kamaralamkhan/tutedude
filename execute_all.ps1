
# 1. Creating and Renaming Files/Directories
Write-Host "--- Task 1: Creating and Renaming ---"
mkdir test_dir -Force
echo "Hello World" > test_dir/example.txt
ls test_dir
mv test_dir/example.txt test_dir/renamed_example.txt
ls test_dir

# 2. Viewing File Contents (Using mock passwd)
Write-Host "--- Task 2: Viewing File Contents ---"
# Full cat
Get-Content etc/passwd
# First 5 lines
Get-Content etc/passwd -TotalCount 5
# Last 5 lines
Get-Content etc/passwd -Tail 5

# 3. Searching for Patterns
Write-Host "--- Task 3: Searching for Patterns ---"
Select-String -Path etc/passwd -Pattern "root"

# 4. Zipping and Unzipping
Write-Host "--- Task 4: Zipping and Unzipping ---"
# Zipping
Compress-Archive -Path test_dir -DestinationPath test_dir.zip -Force
ls test_dir.zip
# Unzipping
Expand-Archive -Path test_dir.zip -DestinationPath unzipped_dir -Force
ls unzipped_dir

# 5. Downloading Files
Write-Host "--- Task 5: Downloading Files ---"
Invoke-WebRequest -Uri "https://example.com" -OutFile sample.txt
ls sample.txt

# 6. Changing Permissions (Simulation for Doc)
Write-Host "--- Task 6: Changing Permissions ---"
echo "Secure data" > secure.txt
# On Windows, we'd use icacls, but we demonstrate the linux command:
Write-Host "Simulating: chmod 444 secure.txt"

# 7. Environment Variables
Write-Host "--- Task 7: Environment Variables ---"
$env:MY_VAR = "Hello, Linux!"
Write-Host "MY_VAR is: $env:MY_VAR"
