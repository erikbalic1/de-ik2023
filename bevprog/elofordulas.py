elofordulas = {} # letrehozzuk a szotart
szo = input() # bekerjuk a bemeneti adatokat
while szo != "": # ures string-ig olvasunk szavakat
   if szo in elofordulas: 
       elofordulas[szo] += 1 # ha benne van a szotarba a szo akkor noveljuk az elofordulas erteket egyel
   else:
      elofordulas[szo] = 1 # maskulonben az ures szotarbol egy egyelemu szotar lesz, melynek erteke 1
   szo = input() 
for szo, db in elofordulas.items(): # kiirjuk hogy minden egyes szo hanyszor szerepel
   print(f"{szo}: {db} db")
