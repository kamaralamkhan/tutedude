# Task 1: Grade Checker
def check_grade(score):
    if score >= 90:
        return "A"
    elif score >= 80:
        return "B"
    elif score >= 70:
        return "C"
    elif score >= 60:
        return "D"
    else:
        return "F"

if __name__ == "__main__":
    try:
        score = float(input("Enter the score: "))
        print(f"The grade for score {score} is: {check_grade(score)}")
    except ValueError:
        print("Please enter a valid numeric score.")
