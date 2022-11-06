'''
Write a program to display number of lines in a file.
'''

file1 = input('Enter input file name: ')

fp1 = open(file1, 'rb')

lines = fp1.readlines()

print(f"There are {len(lines)} lines in the file {file1}.")

#print(f"File reading from the file {file1} is over.")

fp1.close()

'''
or search for "\n" in the file.
refer ascii characters 13(\r) and 10(\n).
'''