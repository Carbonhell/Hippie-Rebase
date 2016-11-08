//Crafting
/obj/item/garrotehandles
	name = "garrote handles"
	desc = "Two handles for a garrote to be made. Needs cable to finish it."
	icon_state = "garrothandles"
	icon = 'icons/obj/garrote.dmi'
	w_class = 2
	materials = list(MAT_METAL=1000)

/obj/item/garrotehandles/attackby(obj/item/I, mob/user, params)
	..()

	if(istype(I, /obj/item/stack/cable_coil))
		var/obj/item/stack/cable_coil/R = I

		if (R.use(20))
			var/obj/item/weapon/garrote/W = new /obj/item/weapon/garrote
			if(!remove_item_from_storage(user))
				user.unEquip(src)
			W.item_color = I.item_color
			W.update_icon()
			user.put_in_hands(W)
			user << "<span class='notice'>You attach the cable to the handles and pull on them tightly, creating a garrote.</span>"
			qdel(src)
		else
			user << "<span class='warning'>You need 20 cables to make a garrote!</span>"
			return

//Weapon
/obj/item/weapon/garrote
	name = "garrote"
	desc = "Extremely robust for stealth takedowns and rapid chokeholds."
	w_class = 2
	icon = 'icons/obj/garrote.dmi'
	icon_state = "garrot"
	item_color = ""
	var/garroting = 0
	var/next_garrot = 0

/obj/item/weapon/garrote/New()
	..()
	update_icon()

/obj/item/weapon/garrote/Destroy()
	STOP_PROCESSING(SSobj, src)
	..()

/obj/item/weapon/garrote/update_icon()
	if (!item_color)
		item_color = pick("red", "yellow", "blue", "green")

	icon_state = "garrot[garroting ? "_w" : ""][item_color ? "_[item_color]" : ""]"

/obj/item/weapon/garrote/proc/begin_attack()
	garroting = 1
	START_PROCESSING(SSobj, src)
	update_icon()
	next_garrot = world.time + 10

/obj/item/weapon/garrote/proc/stop_attack()
	garroting = 0
	STOP_PROCESSING(SSobj, src)
	update_icon()

/obj/item/weapon/garrote/attack_self(mob/user)
	if(garroting)
		user << "<span class='notice'>You release the garrote on your victim.</span>" //Not the grab, though. Only the garrote.
		stop_attack()
		return

	if(world.time <= next_garrot) 
		return

	if(iscarbon(user))
		var/mob/living/carbon/C = user
		var/mob/living/carbon/P = C.pulling

		if(P)
			playsound(C.loc, 'sound/weapons/grapple.ogg', 40, 1, -4)
			playsound(C.loc, 'sound/weapons/cablecuff.ogg', 15, 1, -5)
			
			begin_attack()

			user.visible_message(
				"<span class='danger'>[user] has grabbed [P] with \the [src]!</span>",\
				"<span class='danger'>You grab [P] with \the [src]!</span>",\
				"You hear some struggling and muffled craies of surprise")
		else
			stop_attack()
			return

/obj/item/weapon/garrote/afterattack(atom/A, mob/living/user as mob, proximity, click_parameters)
	if(!proximity) 
		return

	if(iscarbon(A))
		var/mob/living/carbon/C = A

		if(user != C && !user.get_inactive_hand())
			if(user.zone_selected != "mouth" && user.zone_selected != "eyes" && user.zone_selected != "head")
				user << "<span class='notice'>You must target head for garroting to work!</span>"
				return

			if(!garroting)
				add_logs(user, C, "garroted")

				user.grab_state = GRAB_AGGRESSIVE

				playsound(C.loc, 'sound/weapons/grapple.ogg', 40, 1, -4)
				playsound(C.loc, 'sound/weapons/cablecuff.ogg', 15, 1, -5)
				
				begin_attack() 

				user.visible_message(
					"<span class='danger'>[user] has grabbed \the [C] with \the [src]!</span>",\
					"<span class='danger'>You grab \the [C] with \the [src]!</span>",\
					"You hear some struggling and muffled cries of surprise")
			else
				user << "<span class='notice'>You're already garroting someone!</span>"
	return

/obj/item/weapon/garrote/process()
	if(iscarbon(loc))
		var/mob/living/carbon/C = loc
		if(src != C.r_hand && src != C.l_hand) //THE GARROTE IS NOT IN HANDS, ABORT
			stop_attack()
			return

		var/mob/living/carbon/G = C.pulling

		if(!G)
			stop_attack()
			return

		if(ishuman(G))
			var/mob/living/carbon/human/H = G

			if(H.is_mouth_covered())
				stop_attack()
				return

			H.forcesay(list("-hrk!", "-hrgh!", "-urgh!", "-kh!", "-hrnk!"))

		if(C.grab_state >= GRAB_NECK) //Only do oxyloss if in neck grab to prevent passive grab choking or something.
			if(C.grab_state >= GRAB_KILL)
				G.adjustOxyLoss(3) //Stack the chokes with additional oxyloss for quicker death
			else
				if(prob(40))
					G.stuttering = max(G.stuttering + 1, 3) //It will hamper your voice, being choked and all.
					G.losebreath = min(G.losebreath + 2, 3) //Tell the game we're choking them
	else
		stop_attack()