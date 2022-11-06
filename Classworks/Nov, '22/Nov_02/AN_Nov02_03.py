'''
Read a text file and display content of file on screen.
'''

file1 = input('Enter input file name: ')

fp1 = open(file1, 'rb')

lines = fp1.readlines()

for i in lines:
    print(i)

print(f"File reading from the file {file1} is over.")

fp1.close()