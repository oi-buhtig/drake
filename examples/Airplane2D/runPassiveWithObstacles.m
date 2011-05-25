function runPassiveWithObstacles

pp = PlanePlant();
pv = PlaneVisualizer();

% generate obstacles
field = ObstacleField();
field.GenerateRandomObstacles();

traj = simulate(pp,[0 .5]);
field.draw();
playback(pv,traj);
field.draw();
