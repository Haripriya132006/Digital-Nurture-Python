from pathlib import Path 
#turns tsxt into smart file path object
def readfile(filename):
    f=Path(filename) #path object
    if(f.is_file()):
        with f.open('r') as fi: #file stream object
            print(fi.read())
    else:
        print("File does not exist")
filename=input("Enter file name with extension: ")
readfile(filename)