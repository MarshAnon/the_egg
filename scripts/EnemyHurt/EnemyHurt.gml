// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//trigger temp invinc and take damage
function EnemyHurt()
{
	if(!other.isInvincible)
	{
	isInvincible=true
	
	other.hp --;
	if(other.hp < 1)
		{
			EnemyDeath();
		}
	}
	
}
//restart level
function EnemyDeath()
{
	instance_destroy(other);
	if (random_range(0,10) > 4) 
	{
		instance_create_layer(other.x, other.y, "instances", oCoin);
	    
	}
}