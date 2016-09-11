coursenames =[]
with open("./Course.txt", 'r') as myFile:
    coursenames = myFile.read()
    coursenames = coursenames.split('\r')

dp = []
with open("./department.txt", 'r') as myFile:
    dp = myFile.read()
    dp = dp.split('\n')

coursenums = []
with open("./coursenum.txt", 'r') as myFile:
    coursenums = myFile.read()
    coursenums = coursenums.split('\n')

hours = []
with open("./hours.txt", 'r') as myFile:
    hours = myFile.read()
    hours = hours.split('\n')

print len(coursenames)
print len(dp)
print len(coursenums)
print len(hours)



lines = []
for i in range (0,len(dp)):
    lines.append(coursenames[i] + ',' + dp[i] + ',' + coursenums[i] + ',' + hours[i])

with open("./COURSETABLE.txt", 'w') as myFile:
    myFile.write('\n'.join(lines))
