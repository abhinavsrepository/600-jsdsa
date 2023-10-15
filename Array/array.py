#Big oh 
#Big omega
#Big theta
#lambda
x= lambda a:a +10
print(x(5))
x = lambda a,b :a*b
print(x(5,6))

x= lambda a,b,c :a+b+c
print(x(5,6,2))


# make a function that always doubles the number you send in
def myfunc(n):
    return lambda a:a*n
mydoubler = myfunc(2)
print(mydoubler(11))

#that always triple the number you send 

def myfunc(n):
    return lambda a:a*n
mytripler = myfunc(3)
print(mytripler(11))

#array car names
cars = ["ford" , "volvo" , "bmw"]
print (cars)

class Myclass:
    x=5
p1 =Myclass
print(p1.x)

#function
class person:
    def __init__(self,name,age):
        self.name =name 
        self.age = age
p1 =person('john',36)
print(p1.name)
print(p1.age)
#__str__() function

class Person:
    def __init__(self , name,age):
        self.name =name
        self.age =age
p1 =Person("john",36)
print(p1)