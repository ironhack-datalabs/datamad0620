import random
# Soldier


class Soldier:
    def __init__(self,health,strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength

    def receiveDamage(self,damage):
        self.health = self.health - damage
    

# Viking


class Viking(Soldier):
    def __init__(self,name,health,strength):
        super().__init__(health, strength)
        self.name= name

    def battleCry(self):
        return "Odin Owns You All!"

    def receiveDamage(self,damage):
        super().receiveDamage(damage)
        if self.health > 0:
            return f'{self.name} has received {damage} points of damage'
        else:
            return f'{self.name} has died in act of combat'

# Saxon


class Saxon(Soldier):
    def receiveDamage(self,damage):
        super().receiveDamage(damage)
        if self.health > 0:
            return f'A Saxon has received {damage} points of damage'
        else:
            return f'A Saxon has died in combat'



#War

class War:
    def __init__(self):
        self.vikingArmy=[]
        self.saxonArmy=[]
    def addViking(self,viking):
        self.vikingArmy.append(viking)

    def addSaxon(self,saxon):
        self.saxonArmy.append(saxon)

    def vikingAttack(self):
        rsaxon = random.choice(self.saxonArmy)
        rviking = random.choice(self.vikingArmy)
        received_damage = rsaxon.receiveDamage(rviking.strength)
        if rsaxon.health <= 0:
            self.saxonArmy.remove(rsaxon)
        return received_damage


    def saxonAttack(self):
        rsaxon = random.choice(self.saxonArmy)
        rviking = random.choice(self.vikingArmy)
        received_damage = rviking.receiveDamage(rsaxon.strength)
        if rviking.health <= 0:
            self.vikingArmy.remove(rviking)
        return received_damage


    def showStatus(self):
        if not self.saxonArmy:
            return "Vikings have won the war of the century!"
        elif not self.vikingArmy:
            return "Saxons have fought for their lives and survive another day..."
        else:
            return "Vikings and Saxons are still in the thick of battle."


