instance_destroy()
inflict_damage(2)
//check if player is above and falling
if(other.vspeed > 0 and other.y < y){
	instance_destroy()
	other.vspeed = other.jump_height
}else{
	//non successful jump so kill player	
	instance_destroy(other)
}
