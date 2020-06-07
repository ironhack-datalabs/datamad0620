
# Soldier


class Soldier:
    def __init__(self,health,strength):
        self.health= health
        self.strength=strength

    def attack(self):
        return self.strength

    def receiveDamage(self,damage):
        self.health=self.health -damage



# Viking


class Viking(Soldier):
    def __init__(self,name,health,strength):
        self.name=name
        super().__init__(health, strength)

        
    def receiveDamage(damage):
        super().receiveDamage(damage)
        if self.health > 0:
            return f"A Saxon has receive{damage} points of damage"
        else:
            return "A Saxon has died in combat"
    def battleCry(self):
        return "Odin Owns You all"

"""

# Saxon


class Saxon:
    pass

# War


class War:
    pass
"""