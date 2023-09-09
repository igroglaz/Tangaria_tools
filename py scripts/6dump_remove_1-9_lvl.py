# rename dump files

import os

folder = "C:/Github/FULL_PATH_THERE/chars/"

files_list = os.listdir(path=folder)

for file_name in files_list:
    path = os.path.join(folder, file_name)
    
    delete_file = False
    
    with open(path, 'r') as file:
        filedata = file.read()
        for level in range(1, 10):  # This will check from level 1 to 9
            level_string = f' Level                  {level}    '
            if level_string in filedata:
                delete_file = True
                break  # Once the file match is found, no need to check other levels for this file
    
    if delete_file:
        os.remove(path)
