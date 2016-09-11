import random

section_number = []
for i in range(0,20):
    section_number.append(str(10 * i + random.randint(0,9)))

dp = []
with open("../Project1-DatabaseCreation/CourseTablesFiles/department.txt") as myFile:
    dp = myFile.read()
    dp = dp.split('\n')

coursenums = []
with open("./CourseTablesFiles/coursenum.txt") as myFile:
    coursenums = myFile.read()
    coursenums = coursenums.split('\n')

for i in range(0,4):
    a = random.randint(0,16)
    dp.append(dp[a])
    coursenums.append(coursenums[a])

semester = []
for i in range(0,20):
    if random.randint(1,2) % 2 == 0:
        semester.append('Fall')
    else:
        semester.append('Spring')

years =[]
yearspot = ['2016', '2017']
for i in range(0,20):
    years.append(yearspot[random.randint(0,1)])

profs = []
with open("./CourseTablesFiles/profsnames.txt") as myFile:
    profs = myFile.read()
    profs = profs.split('\n')

profslist = []
for i in range(0,20):
    profslist.append(profs[random.randint(0,6)])

lines = []
for i in range(0,len(section_number)):
    lines.append(section_number[i] + ',' + dp[i] + ',' + coursenums[i] + ',' + semester[i] + ',' + str(years[i]) + ',' + profslist[i])

with open("./SECTIONTABLE.txt", 'w') as myFile:
    for i in range(len(lines)):
        myFile.write(lines[i])
        myFile.write('\n')

