/area/turret_protected
	name = "Turret Protected Area"
	var/list/turretTargets = list()

/area/turret_protected/proc/subjectDied(target)
	if( isliving(target) )
		if( !issilicon(target) )
			var/mob/living/L = target
			if( L.stat )
				if( L in turretTargets )
					src.Exited(L)


/area/turret_protected/Entered(O)
	..()
	if( master && master != src )
		return master.Entered(O)

	if( iscarbon(O) )
		turretTargets |= O
	else if( istype(O, /obj/mecha) )
		var/obj/mecha/Mech = O
		if( Mech.occupant )
			turretTargets |= Mech
	else if(istype(O,/mob/living/simple_animal))
		turretTargets |= O
	return 1

/area/turret_protected/Exited(O)
	if( master && master != src )
		return master.Exited(O)

	if( ismob(O) && !issilicon(O) )
		turretTargets -= O
	else if( istype(O, /obj/mecha) )
		turretTargets -= O
	..()
	return 1
