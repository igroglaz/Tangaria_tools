# first Python program by igroglaz ;D

import os # import OS module

files_list=[] # make an array for file list

files_list=os.listdir(path="tangaria-dumps/") #assign to array files' names

name=[] # make an array for characters' names

for foo in files_list: # for each elementin `files_list` array:
    bar = open("tangaria-dumps/"+foo,"r") # 1) open file for 'r'ead
    line=bar.readlines() # 2) create new array; add there lines from opened file
    line_name=line[2]   # 3) variable: assign to line number (we know that name at 2nd line)
    name_found=line_name[8:22].strip() # 4) take line_name from 8 to 22. strip delete all spaces (before and after)
    name_clean=name_found.replace(" ","_") # 5) replace space to _
    name.append(name_clean) # 6) to our empty (for now) array - append name_found string
    new_foo=foo[4:] # 7) remove 'dump' word from file name
    new_name=name_clean+"_"+new_foo # 8) create new name
    bar.close() # 9) close the fild (otherway it won't give possibility to rename it)
    os.rename("tangaria-dumps/"+foo, "tangaria-dumps/"+new_name) # 10) rename
