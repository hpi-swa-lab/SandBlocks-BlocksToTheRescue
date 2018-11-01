Breakout
========

Squeak 5.3 (trunk) compatible "Breakout" single player game

Overview
--------

- [x] square playing field with walls at the top and side sections
- [x] a paddle over the bottom boundary
  - [ ] shrinks to half the size once with the first contact of the ball with the top wall
- [ ] bricks at the top half of the field
  - [ ] 7 cols
  - [ ] 4 rows (colored from bottom to top: yellow, green, orange, red)
  - [ ] broken if touched by ball
- [x] ball, which can rebound of the paddle, walls and bricks
  - [ ] speed increases once, after four/twelve hits and after first contact with orange and red bricks
- [ ] lives, that will be decreased, if the paddle missed the ball
- [ ] score for breaking the bricks
  - [ ] yellow = 1 pt, green = 3 pt, orange = 5 pt, red = 7 pt
