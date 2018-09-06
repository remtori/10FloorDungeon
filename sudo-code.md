# Algorithm
___
## Rooms generator algorithm
1. Get a random width, height, x and y of the room (x, y will be the center of the room, all of those number has to be odd number)
2. Attempt to fill the room by replacing original filled block (stone) with unique block that mark its a temp-room
3. If the result doesn't match the intend number (there is a overlapped room) cancel the process and fill back the area
4. If the room is not overlap with any other room re-fill its with a different block that mark its a room
## Maze generator algorithm
1. Pick a starting point (maybe a random room)
2. Move to a random adjacent block _that has atleast 3 block adjacent to it_(*)
3. Summon an entity to save the direction of the block its come from
4. If there is no block that satisfy the requirement(*) move back base on the enity direction and kill it
5. Repeat 3, 4 and 5 until we come back to the staring point (or there is no more direction saver entity)
6. While moving choose the area for the doors, traps and other dungeon-related things
