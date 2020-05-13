///@desc ScreenShake(camera, magnitude, duration)
///@arg Camera choose camera to shake
///@arg Magnitude sets strength of shake
///@arg Duration duration of shake in frames

with(argument0){
	if(argument1 > shake_remain){	// biggest shake takes precedence
		shake_magnitude = argument1;
		shake_remain = shake_magnitude;
		shake_duration = argument2;
	}
}