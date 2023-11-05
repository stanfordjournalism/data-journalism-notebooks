NUMBER = 42

def hello(name='world'):
    print(f'Hello, {name}!')


class Bird:

    # Default name
    name = "Robin"

    def fly(self):
        print("I'm flying!! WEEE!!!")

    def eat_worm(self):
        print("I'm eating a worm! YUM")

    def change_name(self, new_name):
        # Set the new name on the *instance* using "self"
        self.name = new_name
        print(f'My name is now {self.name}')
