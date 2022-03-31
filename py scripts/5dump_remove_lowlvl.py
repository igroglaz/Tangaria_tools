# rename dump files

import os # import OS module

files_list = [] # make an array for file list

folder = "C:/Users/.../" # ENTER FULL PATH!

files_list = os.listdir(path = folder) #assign to array files' names

for file_name in files_list:

    with open(folder + file_name, 'r') as file :
        filedata = file.read()
        path = os.path.join(folder, file_name)
        if ' Level                  1    ' in filedata :
            file.close()
            os.remove(path)
