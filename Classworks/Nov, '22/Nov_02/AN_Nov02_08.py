'''
Write a program to extract words from any text file and store in another file. Display all words and also number of words in that file.
'''

file1 = input('Enter input file name: ')

fp1 = open(file1, 'rb')

count = 0
for line in fp1:
    for word in line.split():
        print(word)
        count += 1

print(f"There are {count} words in the file '{file1}'.")

fp1.close()