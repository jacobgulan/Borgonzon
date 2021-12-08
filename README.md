# Borgonzon
Borgonzon is a sci-fi space shooter where the player is fighting to save the galaxy from aliens attack.

Created using GameMaker Studio 2

## Rules
To play:
1. Clone repository
2. Open in GameMaker Studio 2
3. Run project

The goal of Borgonzon is to defeat the final boss by clearing all the waves of enemy spaceships and then beating the boss itself.

Before endless mode, enemies will fall onto the screen and assume a predetermined path.\
There are two types of enemies:
1. Green Spaceships
2. Pink Spaceships

Green spaceships are the basic enemy and will shoot on a timer.\
Pink spacehships are similar to the green spaceship, except they are faster both with their movements and their shots. 
They will also only fire if the player is front of them.

The boss appears after the player has passed all subsequent stages. The boss takes 30 hits to destroy and will continuously spawn pink and green spaceships
assigned to random path locations. Every 10 seconds, the boss will also spawn an asteroid. Upon falling below 5 HP, the boss will spawn an asteroid each time
it is hit, up until it is destroyed. Once the boss has been defeated, the game enters endless mode in which the player may continue playing until they die.
The enemies at this point are assigned to random path locations.

Throughout the game, the player make collect stars by shooting them. Shooting a star adds it to the player's star currency depicted in the top right corner. 
The player may spend that star currency at the end of their run in the upgrade section of the shop. Any upgrades the player purchases are retained 
throughout the game session and will help them beat the final boss.




## Menu Screen
![image](https://user-images.githubusercontent.com/37620953/145257529-05d4da6b-b175-4543-903b-1be880e2bad3.png)


## Game State
![image](https://user-images.githubusercontent.com/37620953/145257937-2cea805b-f88e-4503-ada5-82ca77ce61dc.png)


## Boss
![image](https://user-images.githubusercontent.com/37620953/145261837-5b10e077-d945-4da7-88df-35c09c4ab848.png)


## Controls
Move Up
```
W or Up Arrow
```

Move Down
```
S or Down Arrow
```

Shoot
```
Space
```

Shield
```
Q
```


## Cheat Codes
Pause Game
```
Alt + P
```

Toggle Invulernability
```
Alt + Q
```

Increase Lives
```
Alt + E
```

Increase Stars
```
Alt + Z
```
