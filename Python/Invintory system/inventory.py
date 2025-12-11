import os
#If file exists, run the if statement
if os.path.exists("inventory.txt"):
    choice = input("Choose one of the following: Add, Remove, View ")
    #View List
    if choice.lower() == 'view':
        file_name = open("inventory.txt", "r")
        print(file_name.read())
        file_name.close()
    #Add to list
    elif choice.lower() == 'add':
        file_name = open("inventory.txt", "a")
        item = input("Type the item name and then press enter: ")
        file_name.write(f"{item}\n")
        file_name.close()
    #Remove from list
    elif choice.lower() == 'remove':
        delete = input("Enter the item you want to remove: ")
        with open("inventory.txt", "r+") as file_name:

            #Puts all information of file_name into a new file and turns it into malluable strings.
            newfile_name = file_name.readlines()
            #Resets the line search at the start of the file
            file_name.seek(0)

            #Checks for the item in the newfile, and if it equals delete's value, skip it and write the other items.
            for item in newfile_name:
                if delete not in item:
                    file_name.write(item)

            #manages file size so you don't have buffering issues if list is too big.
            file_name.truncate()
    #User didn't enter a valid input
    else: 
        print("You need to actually enter an input")

#If file doesn't exists create one
else: 
    inventory = open("inventory.txt", "x")
    inventory.close()
