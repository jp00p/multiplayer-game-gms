/// @desc rebuild grid?

mp_grid_clear_all(global.grid);

// add walls to grid
mp_grid_add_instances(global.grid, obj_solid, false);