# Task 3: Write to a File
def write_to_file():
    filename = "sample_text.txt"
    content = "Hello! This is a test file created for Assignment 2.\nPython file operations are very powerful."
    
    with open(filename, "w") as file:
        file.write(content)
    
    print(f"Successfully wrote to {filename}")

if __name__ == "__main__":
    write_to_file()
