1702 5 JULY
note to self: github has about a five minute lag.  

For a regular hexagon with sides of length n, what is the distance between the center of the hexagon and the midpoint of one side?  

I should be able to find this distance by constructing a triangle:
hypotenuse is length n
short leg is length .5n
solve for long leg.

pythagorean theorem: a^2+b^2=c^2
a is known, c is known, solving for b will help me understand how to precisely place lasers in a dense hex rather than a flat orthogonal grid.  Are building footprints round?  Further testing needed.

5 JULY
This is an ahk script or maybe series of ahk scripts for the purpose of partially playing Harvest: Massive Encounter by Oxeye Studio.

I noticed that no one had done it yet, and the ingame tools annoy me:

There are no tools to make high density patches of buildings. 
There are no tools to enable precise placement of buildings. 
There are no tools to center or manage the camera in a precise way.  

Since I'm a bit ocd about positioning in games where positioning is of importance, I'm going to build a few of those tools.  

Oh, and I have a massive hardon for hexagons.  

Here's what I got so far.

The ahk interface is so far entirely controlled by the numpad.  I imagine an implicit grid of hexagonal cells.  I move around on this grid using 1, 3, 4, 6, 7, 9 on the numpad - 4 and 6 move directly left and right, 1/3 and 7/9 move diagonally.  

(The centering is handled like this to maintain some pretense of precise control in placement.)

Numpad 8 builds 19 lasers in the centered cell.
Numpad 5 builds 6 energy links at the corners of the centered cell.  
Numpad 2 builds 3 solar panels and 3 lasers in the edges of the centered cell.

To do:
Write functions for the following: 
Lay down a full cell of solar collectors.
Lay down a full cell of missile batteries.
Upgrade a full cell of missile batteries.
Auto-detect minerals somehow and estimate
where to place harvesters.  

To figure out:
I need to know how to precisely re-center the camera on the same point on the map - regardless of how the map grows, regardless of the camera's current position. 

I need to know how to recognize and detect buildings - scripts can be much smarter if they're able to avoid placing the same structure on the same point twice.  

Similarly, recognizing which lasers are linked might permit me to create a way to automate routing them.

HOW TO TURN OFF APPROXIMATE PLACEMENT - this is a part of the game's ui that creates more problems for me than it solves.  