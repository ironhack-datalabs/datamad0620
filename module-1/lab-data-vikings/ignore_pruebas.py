import random
azar = [i for i in random.randint(range(30, 300), 10)]

import random
azar = [i for i in random.sample(range(30, 300), 10)]
print(azar)

from vikingsClasses import War, Viking, Saxon
import random

Viki = [Viking(name, health,strength) for name in ["Erika", "Einar", "Gerd", "Axe", "Aren", "Olson", "Viggo", "Seren", "Valkiria", "Sigrid"] 
for health  in [random.sample(range(30, 200), 10)] for strength in [random.sample(range(30, 300), 10)]]
print(random.sample(range(30, 300), 10)
Saxo = [Viking(name, health,strength) for name in ["Erika", "Einar", "Gerd", "Axe", "Aren", "Olson", "Viggo", "Seren", "Valkiria", "Sigrid"] 
for health  in [random.sample(range(30, 200), 10)] for strength in [random.sample(range(30, 300), 10)]]
"""Macaque = War(), Saxon(80, 22)
Macaque1 = War(), Saxon(100, 50)
Macaque2 = War(), Saxon(80, 60)
Macaque3 = Saxon(40, 50)
Macaque4 = Saxon(100, 20)
Macaque5= Saxon(80, 82)
Macaque6 = Saxon(20, 90)
Macaque7 = Saxon(70, 62)
Macaque8 = Saxon(90, 82)
Macaque9 = Saxon(50, 62)
Macaque10 = Saxon(80, 72)
Chimp = War(), Viking("Bastiaan", 50, 59)
Chimp2 = War(), Viking("Jorg", 50, 80)
Chimp3 = War(), Viking("Vincent", 100, 59)
Chimp4 = Viking("Jos", 50, 70)
Chimp5 = Viking("Ricardo", 50, 70)
Chimp6 = Viking("Wonder", 100, 50)
Chimp7= Viking("Dylan", 22, 110)
Chimp8 = Viking("Marlon", 40, 20)
Chimp9 = Viking("Roy", 50, 10)
Chimp10 = Viking("Conan", 110, 80)"""