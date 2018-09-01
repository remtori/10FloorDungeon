# Algorithm
___
## Maze generator algorithm
1. Fill area with blocks
2. Pick a start point
3. Move to a random adjacent block _that has atleast 3 block adjacent to it_(*)
4. Summon an entity to save the direction of the block its come from
5. If there is no block that satisfy the requirement(*) move back base on the enity direction and kill it
6. Repeat 3, 4 and 5 until we come back to the staring point (or there is no more direction saver entity)
7. While moving choose the area for the boss room and generate other dungeon-related things

