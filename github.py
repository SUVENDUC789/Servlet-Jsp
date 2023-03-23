import os 

def usecom(comd:str)->None:
	os.system(comd)


comd="git add ."
usecom(comd)

sen=input("Enter your commit msg : ")

comd=f"git commit -m \"{sen}\""
usecom(comd)


comd="git push"
usecom(comd)

