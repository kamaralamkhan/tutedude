# Task 4: Read from a File
def read_from_file():
    filename = "sample_text.txt"
    try:
        with open(filename, "r") as file:
            content = file.read()
            print("--- File Content ---")
            print(content)
            print("--------------------")
    except FileNotFoundError:
        print(f"Error: {filename} not found. Please run Task 3 first.")

if __name__ == "__main__":
    read_from_file()
