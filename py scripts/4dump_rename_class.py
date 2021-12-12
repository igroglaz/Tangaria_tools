# rename dump files

import os # import OS module

files_list = [] # make an array for file list

folder = "r/" # folder where we have dump files

files_list = os.listdir(path = folder) #assign to array files' names

for file_name in files_list:

    with open(folder + file_name, 'r') as file :
        filedata = file.read()
        newdata = filedata.replace('Class  Necromancer', 'Class  Warlock    ')      

    with open(folder + file_name, 'w') as file :
        file.write(newdata)
