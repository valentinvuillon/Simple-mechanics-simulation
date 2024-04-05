This is a simulation of a square of mass m, which is on a surface with a friction coefficient alpha. The user can apply a constant external force on the square. And the square is bouncing on the walls. The walls have a coefficient beta. The velocity after a collision with a wall is the velocity before the collision times beta.

How to run the code: simply install Processing and run the simple_mechanics_sim.pde code.  

Commands:
Press a to apply a constant force to the left
Press z to apply a constant force to the right

The integration method to obtain the velocity and position is the forward Euler method. The method is called four times between each frames.
