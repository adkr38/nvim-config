class Dog:
    def __init__(self,name:str):
        self.name = name

    def bark(self):
        print(f"{self.name} - woof")

myDog = Dog("Adrian")

dogNames = ["Adam","Walter"]

dogs = [ Dog(name) for name in dogNames ] 

for dog in dogs:
    dog.bark()
