import re

userInput = input("Enter Reading Mode: ")
userModes = userInput.split()

with open("log1.txt") as file:
    for item in file:
        for mode in userModes:
            if bool(re.search(mode + ".?", item)):
                open(mode, "a").write(item)
