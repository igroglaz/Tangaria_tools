# second Python script by igroglaz ;D

import os # import OS module

files_list = [] # make an array for file list

folder = "r/" # folder where we have dump files

files_list = os.listdir(path = folder) #assign to array files' names

name = [] # make an array for characters' names

for foo in files_list: # for each elementin `files_list` array:
# take last part of the filename - date hhmmsssddMMyyyy

    new_foo = foo.split("-") # remove 'dump' word from file name
    num_ext = new_foo[1]    
    num = num_ext[:14]
    
    hh = num[:2]
#   print ("hh=", hh, "\n")
    mm = num[2:4]
#   print ("mm=", mm, "\n")
    ss = num[4:6]
#   print ("ss=", ss, "\n")
    dd = num[6:8]
#   print ("dd=", dd, "\n")
    MM = num[8:10]
#   print ("mm=", mm, "\n")
    yyyy = num[10:14]
#   print ("yyyy=", yyyy, "\n")

    new_name = new_foo[0] + "-" + yyyy + MM + dd + hh + mm + ss + ".txt"
#   print (new_name)

    os.rename(folder + foo, folder + new_name) # 10) rename
    
 
