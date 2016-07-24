//Depending on the current score of the players, change certain global variables
//to make the game harder. The variables are:
//- Number of Boomers ('Gluttons') spawned;
//- The speed at which they and the Swarmers travel;
//- The rate at which the Swarmers spawn;
//- The number of Swarmers that spawn.

if oCurrentScore.CurrentScore < 3 {

global.DiffNumberOfBoomers = irandom_range(1,3)
global.DiffBoomerSpeed = 80 / room_speed
global.DiffSwarmerSpeed = 20 / room_speed
global.DiffSecondsBetweenEnemySpawns = 0.3
global.DiffMaximumSwarmers = 100


} else if oCurrentScore.CurrentScore >= 3 and oCurrentScore.CurrentScore < 7 {

global.DiffNumberOfBoomers = irandom_range(3,5)
global.DiffBoomerSpeed = 100 / room_speed
global.DiffSwarmerSpeed = 35 / room_speed
global.DiffSecondsBetweenEnemySpawns = 0.2
global.DiffMaximumSwarmers = 250

} else if oCurrentScore.CurrentScore >= 7 and oCurrentScore.CurrentScore < 12 {

global.DiffNumberOfBoomers = irandom_range(4,6)
global.DiffBoomerSpeed = 130 / room_speed
global.DiffSwarmerSpeed = 45 / room_speed
global.DiffSecondsBetweenEnemySpawns = 0.09
global.DiffMaximumSwarmers = 450


} else if oCurrentScore.CurrentScore >= 12 and oCurrentScore.CurrentScore < 20 {

global.DiffNumberOfBoomers = irandom_range(5,8)
global.DiffBoomerSpeed = 150 / room_speed
global.DiffSwarmerSpeed = 55 / room_speed
global.DiffSecondsBetweenEnemySpawns = 0.07
global.DiffMaximumSwarmers = 700


} else if oCurrentScore.CurrentScore > 20 {

global.DiffNumberOfBoomers = irandom_range(5,10)
global.DiffBoomerSpeed = 160 / room_speed
global.DiffSwarmerSpeed = 60 / room_speed
global.DiffSecondsBetweenEnemySpawns = 0.05
global.DiffMaximumSwarmers = 1000

}
