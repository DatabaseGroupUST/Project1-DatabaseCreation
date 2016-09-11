import random
with open("./department.txt", 'w') as myFile:
    for item in range(0,3):
        myFile.write('CS')
        myFile.write('\n')
    for item in range(0,3):
        myFile.write('THEO')
        myFile.write('\n')
    for item in range(0,5):
        myFile.write('HIST')
        myFile.write('\n')
    for item in range(0,5):
        myFile.write('MATH')
        myFile.write('\n')

with open('./coursenum.txt', 'w') as myNums:
    for item in range(0,16):
        myNums.write(str(random.randint(100,999) * 10))
        myNums.write('\n')

with open('./hours.txt', 'w') as myNums:
    for item in range(0,16):
        myNums.write(str(random.randint(3,4)))
        myNums.write('\n')


