import time

start_time = time.time()
print('What is your name?')
myName = input()

while myName != 'Aanshi':
    if myName == 'your name':
        print("bad joke. What's your real name?")
        myName = input()
        
   
print('Hello,' + myName + '. That is a good name. How old are you?' )
myAge = int(input())

if myAge < 13:
    print("You are just a kid")
elif myAge == 13:
    print("you are a teenager now")  
elif myAge > 13 and myAge < 30:
    print("You are young") 
elif myAge >=30 and myAge <= 65:
    print("Ypu are old")         
programAge = int(time.time() - start_time)
print("%s? That's funny, I'm only %s few seconds old." %myAge, programAge)
print("I wish I was %s years old" % (myAge * 2))

time.sleep(3)
print("I'm tired. I go sleep now.")