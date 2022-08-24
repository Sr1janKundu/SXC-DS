name = input("Enter the name: ")
roll = int(input("Enter the roll number: "))
total = int(input("Enter the total marks: "))

if total >= 70:
    grade = "A"
elif 70 > total & total >= 60:
    grade = "B"
elif 60 > total & total >= 50:
    grade = "C"
elif 50 > total & total >= 40:
    grade = "D"
else:
    grade = "F"


print("The grade is: ", grade)