dp = []
with open("./CourseTablesFiles/department.txt", 'r') as myFile:
    dp = myFile.read()
    dp = dp.split('\n')

coursenums = []
with open("./CourseTablesFiles/coursenum.txt", 'r') as myFile:
    coursenums = myFile.read()
    coursenums = coursenums.split('\n')

with open("./PREREQTABLE.txt", 'w') as myFile:
    myFile.write(dp[1] + ',' + coursenums[1] + ',' +  dp[0] + ',' + coursenums[0])
    myFile.write('\n')
    myFile.write(dp[2] + ',' + coursenums[2] + ',' +  dp[1] + ',' + coursenums[1])
    myFile.write('\n')
    myFile.write(dp[3] + ',' + coursenums[3] + ',' +  dp[4] + ',' + coursenums[4])
    myFile.write('\n')
    myFile.write(dp[5] + ',' + coursenums[5] + ',' +  dp[3] + ',' + coursenums[3])
    myFile.write('\n')
    myFile.write(dp[7] + ',' + coursenums[7] + ',' +  dp[6] + ',' + coursenums[6])
    myFile.write('\n')
    myFile.write(dp[9] + ',' + coursenums[9] + ',' +  dp[8] + ',' + coursenums[8])
    myFile.write('\n')
    myFile.write(dp[13] + ',' + coursenums[13] + ',' +  dp[12] + ',' + coursenums[12])
    myFile.write('\n')
    myFile.write(dp[14] + ',' + coursenums[14] + ',' +  dp[13] + ',' + coursenums[13])
    myFile.write('\n')
    myFile.write(dp[15] + ',' + coursenums[15] + ',' +  dp[14] + ',' + coursenums[14])
    myFile.write('\n')
















