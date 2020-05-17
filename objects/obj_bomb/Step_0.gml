if(owner != noone && !throwing){
	x = owner.x;
	y = owner.y;
}

if(owner != noone){
	depth = owner.depth - 1;	
} else {
	depth = par_player.bbox_bottom + 1;	
}

if(throwing){
		
	if(timer<length)
      timer++;
    else
    {
      timer=length;
      if(bounce>0)
      {
        bounce--;
        var _dir=point_direction(start_x,start_y,target_x,target_y);
        var _dist=point_distance(start_x,start_y,target_x,target_y)/2;
        target_x=x+lengthdir_x(_dist,_dir);
        target_y=y+lengthdir_y(_dist,_dir);
        start_x=x;
        start_y=y;
        length*=.75;
        height/=2;
        timer=0;
      }
    }
    x=lerp(start_x,target_x,timer/length);
    y=lerp(start_y,target_y,timer/length);
    z=arc(0,height,0,timer/length,.8);
	
	if(bounce == 0){ throwing = false; lit = true; }
	
}

if(owner == noone && !throwing) lit = true;

if(lit){
	throwing = false;
	fuse++;
	image_xscale = Wave(0.5, 1.05, -0.5, -1.05);
    image_yscale = Wave(0.5, 1, -0.5, -1);
}

if(fuse >= fuse_timer){
	instance_destroy();	
}
