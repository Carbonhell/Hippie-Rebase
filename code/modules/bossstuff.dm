/*
Information:
State 0 = INACTIVE
State 1 = ACTIVE
State 2 = ACTIVE, PHASE 2
State 3 = ACTIVE, PHASE 3
State 4 = DEAD

*/
//I KNOW ITS A OBJECT, I DONT WANT PLAYERS CONTROLLING IT
/area/BossArena
	name = "Boss Arena"

/obj/boss/crystal
	name = "Strange statue"
	desc = "What"
	var/state = 0 //State of the boss, used for things, Start at 0
	bound_width = 96
	bound_height = 96
	var/health = 2000 //temp value, will adjust for amount of players in the Arena
	var/list/opponents = null // I SEE ALL
	var/list/fists = null // Start null, catalog fists on New()


/obj/boss/crystal/New()
	var/area/A = get_area()
	if(!istype(A,/area/BossArena))
		qdel(src) //Don't fucking SPAWN THIS OUTSIDE THE ARENA REEEEEEEEEEEE

/obj/boss/crystal/attacked_by(obj/item/I, mob/living/user)
	if(!(I.force > 5) || I.damtype == STAMINA)
		user << "<span class='warning'>The [I.name] does no damage!</span>"
	else
		take_damage(I.force,I.damtype)



/obj/boss/crystal/proc/take_damage(var/damage, var/damtype) //Do damage calculations
	if(damtype == STAMINA)
		return //Immune to Stamina damage you fucks
	health = health - damage


/obj/boss/crystal/bullet_act(var/obj/item/projectile/Proj)
	take_damage(Proj.damage,Proj.damage_type)

/obj/boss/crystal/proc/activate() //This turns on the boss, who knew?
	START_PROCESSING(SSobj, src)
	state = 1 //I HAVE AWOKEN, MORTALS


/obj/stonefist
	name = "large stone hand"
	desc = "A large hand, made of stone."
	bound_width = 64
	bound_height = 32
	icon = 'icons/obj/items.dmi'
	icon_state = "latexballon"

/obj/stonefist/proc/smashdown()
	//Play animation
	var/list/turfs1 = circlerange(src,2)
	var/list/turfs2 = circlerange(src,3)
	turfs2 =- turfs1
	turfs1 =- get_turf(src)
	var/list/turfs3 = circlerange(src,4)
	turfs3 =- turfs2
	world << "FUCK"
	for(var/turf/T in turfs1)
		animate_shockwave(T)
	spawn(2)
		for(var/turf/T in turfs2)
			animate_shockwave(T)
		world << "FUCK2"
		spawn(2)
			for(var/turf/T in turfs3)
				animate_shockwave(T)
			world << "FUCK3"