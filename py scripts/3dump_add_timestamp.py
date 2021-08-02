# convert regular time to timestamp and add it to the end of file

import os # import OS module
import time

files_list = [] # make an array for file list

folder = "r/" # folder where we have dump files

files_list = os.listdir(path = folder) #assign to array files' names

name = [] # make an array for characters' names

for foo in files_list: # for each elementin `files_list` array:
# take last part of the filename - date hhmmsssddMMyyyy

    new_foo = foo.split("-") # remove 'dump' word from file name
    num_ext = new_foo[1]    
    num = num_ext[:14]

    timestamp = str(int(time.mktime(time.strptime(num, '%H%M%S%d%m%Y'))))

    with open(folder + foo, 'a') as file: # add date to the end of file
        file.write('Timestamp: ')
        file.write(timestamp)        

    
 
