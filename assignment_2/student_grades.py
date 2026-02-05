# Task 2: Student Grades Dictionary
def manage_students():
    students = {
        "Alice": "A",
        "Bob": "B"
    }
    
    while True:
        print("\n1. Add Student\n2. Update Grade\n3. Print All Grades\n4. Exit")
        choice = input("Enter choice (1-4): ")
        
        if choice == '1':
            name = input("Enter student name: ")
            grade = input("Enter student grade: ")
            students[name] = grade
            print(f"Added {name} with grade {grade}.")
        elif choice == '2':
            name = input("Enter student name to update: ")
            if name in students:
                grade = input("Enter new grade: ")
                students[name] = grade
                print(f"Updated {name}'s grade to {grade}.")
            else:
                print("Student not found.")
        elif choice == '3':
            print("\nStudent Grades:")
            for name, grade in students.items():
                print(f"{name}: {grade}")
        elif choice == '4':
            break
        else:
            print("Invalid choice.")

if __name__ == "__main__":
    manage_students()
