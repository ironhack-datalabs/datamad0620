

class Soldier:
    def __init__(self, health, strength):
        self.health=health 
        self.strength=strength 
    def attack (self):
        return self.strength 
    def receiveDamage(self,damage):
        self.health= -damage

    pass


### Viking

A `Viking` is a `Soldier` with an additional property, their `name`. 
They also have a different `receiveDamage()` method and new method, `battleCry()`.

Modify the `Viking` constructor function, have it inherit from `Soldier`, reimplement the `receiveDamage()` method for `Viking`, 
and add a new `battleCry()` method.

#### inheritance

- `Viking` should inherit from `Soldier`

#### constructor function

- should receive **3 arguments** (name, health & strength)
- should receive the **`name` property** as its **1st argument**
- should receive the **`health` property** as its **2nd argument**
- should receive the **`strength` property** as its **3rd argument**

# Viking


class Viking(Soldier):
    def __init__(self, name):
        super().__init__(health,strength)
        self.name=name


    pass

# Saxon


class Saxon:
    pass

# War


class War:
    pass
