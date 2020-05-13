// create grid
cell_w = 16;
cell_h = 16;

h_cells = room_width div cell_w;
v_cells = room_height div cell_h;

global.grid = mp_grid_create(0,0,h_cells,v_cells,cell_w,cell_h);

// add walls to grid
mp_grid_add_instances(global.grid, obj_solid, false);