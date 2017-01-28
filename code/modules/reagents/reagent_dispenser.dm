/obj/structure/reagent_dispensers
	name = "Dispenser"
	desc = "..."
	icon = 'icons/obj/objects.dmi'
	icon_state = "water"
	density = 1
	anchored = 0
	pressure_resistance = 2*ONE_ATMOSPHERE
	//var/list/brokenvars = list("storage tank", "chemtank", /obj/structure/reagent_dispensers)// when it blows up,what will it become,made it qdel src and make a statuelike thing to avoid having to change syringes,droppers,glasses etc with snowflakey checks
	var/tank_volume = 1000 //In units, how much the dispenser can hold
	var/reagent_id = "water" //The ID of the reagent that the dispenser uses

/obj/structure/reagent_dispensers/ex_act(severity, target)
	switch(severity)
		if(1)
			boom()
			return
		if(2)
			if (prob(50))
				boom()
				return
		if(3)
			if (prob(5))
				boom()
				return
		else
	return

/obj/structure/reagent_dispensers/blob_act(obj/effect/blob/B)
	if(prob(50))
		boom()

/obj/structure/reagent_dispensers/attackby(obj/item/weapon/W, mob/user, params)
	if(istype(W, /obj/item/weapon/reagent_containers))
		return 0 //so we can refill them via their afterattack.
	else
		return ..()

/obj/structure/reagent_dispensers/New()
	create_reagents(tank_volume)
	reagents.add_reagent(reagent_id, tank_volume)
	..()

/obj/structure/reagent_dispensers/examine(mob/user)
	..()
	if(reagents.total_volume)
		user << "<span class='notice'>It has [reagents.total_volume] units left.</span>"
	else
		user << "<span class='danger'>It's empty.</span>"


/obj/structure/reagent_dispensers/proc/boom()
	visible_message("<span class='danger'>\The [src] ruptures!</span>")
	chem_splash(loc, 5, list(reagents))
	qdel(src)

/obj/structure/reagent_dispensers/watertank
	name = "water tank"
	desc = "A water tank."
	icon_state = "water"

/obj/structure/reagent_dispensers/bullet_act(obj/item/projectile/Proj)
	..()
	if(tank_volume && istype(Proj) && !Proj.nodamage && ((Proj.damage_type == BURN) || (Proj.damage_type == BRUTE)))
		boom()

/obj/structure/reagent_dispensers/watertank/blob_act(obj/effect/blob/B)
	if(prob(50))
		PoolOrNew(/obj/effect/particle_effect/water, loc)
		qdel(src)

/obj/structure/reagent_dispensers/watertank/high
	name = "high-capacity water tank"
	desc = "A highly-pressurized water tank made to hold gargantuan amounts of water.."
	icon_state = "water_high" //I was gonna clean my room...
	tank_volume = 100000

/obj/structure/reagent_dispensers/fueltank
	name = "fuel tank"
	desc = "A tank full of industrial welding fuel. Do not consume."
	icon_state = "fuel"
	reagent_id = "welding_fuel"

/obj/structure/reagent_dispensers/fueltank/bullet_act(obj/item/projectile/Proj)
	..()
	if(istype(Proj) && !Proj.nodamage && ((Proj.damage_type == BURN) || (Proj.damage_type == BRUTE)))
		var/boom_message = "[key_name_admin(Proj.firer)] triggered a fueltank explosion via projectile."
		bombers += boom_message
		message_admins(boom_message)
		log_game("[key_name(Proj.firer)] triggered a fueltank explosion via projectile.")
		boom()

/obj/structure/reagent_dispensers/fueltank/boom()
	explosion(get_turf(src), 0, 1, 5, flame_range = 5)
	qdel(src)

/obj/structure/reagent_dispensers/fueltank/blob_act(obj/effect/blob/B)
	boom()

/obj/structure/reagent_dispensers/fueltank/ex_act()
	boom()

/obj/structure/reagent_dispensers/fueltank/fire_act()
	boom()

/obj/structure/reagent_dispensers/fueltank/tesla_act()
	..() //extend the zap
	boom()

/obj/structure/reagent_dispensers/fueltank/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/weapon/weldingtool))
		if(!reagents.has_reagent("welding_fuel"))
			user << "<span class='warning'>[src] is out of fuel!</span>"
			return
		var/obj/item/weapon/weldingtool/W = I
		if(!W.welding)
			if(W.reagents.has_reagent("welding_fuel", W.max_fuel))
				user << "<span class='warning'>Your [W.name] is already full!</span>"
				return
			reagents.trans_to(W, W.max_fuel)
			user.visible_message("<span class='notice'>[user] refills \his [W.name].</span>", "<span class='notice'>You refill [W].</span>")
			playsound(src, 'sound/effects/refill.ogg', 50, 1)
			update_icon()
		else
			user.visible_message("<span class='warning'>[user] catastrophically fails at refilling \his [W.name]!</span>", "<span class='userdanger'>That was stupid of you.</span>")
			var/message = "[key_name_admin(user)] triggered a fueltank explosion via welding tool."
			bombers += message
			message_admins(message)
			log_game("[key_name(user)] triggered a fueltank explosion via welding tool.")
			boom()
		return
	return ..()


/obj/structure/reagent_dispensers/peppertank
	name = "pepper spray refiller"
	desc = "Contains condensed capsaicin for use in law \"enforcement.\""
	icon_state = "pepper"
	anchored = 1
	density = 0
	reagent_id = "condensedcapsaicin"

/obj/structure/reagent_dispensers/peppertank/New()
	..()
	if(prob(1))
		desc = "IT'S PEPPER TIME, BITCH!"


/obj/structure/reagent_dispensers/water_cooler
	name = "liquid cooler"
	desc = "A machine that dispenses liquid to drink."
	icon = 'icons/obj/vending.dmi'
	icon_state = "water_cooler"
	anchored = 1
	tank_volume = 500
	var/paper_cups = 25 //Paper cups left from the cooler

/obj/structure/reagent_dispensers/water_cooler/examine(mob/user)
	..()
	user << "There are [paper_cups ? paper_cups : "no"] paper cups left."

/obj/structure/reagent_dispensers/water_cooler/attack_hand(mob/living/user)
	if(!paper_cups)
		user << "<span class='warning'>There aren't any cups left!</span>"
		return
	user.visible_message("<span class='notice'>[user] takes a cup from [src].</span>", "<span class='notice'>You take a paper cup from [src].</span>")
	var/obj/item/weapon/reagent_containers/food/drinks/sillycup/S = new(get_turf(src))
	user.put_in_hands(S)
	paper_cups--

/obj/structure/reagent_dispensers/water_cooler/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/weapon/paper))
		if(!user.drop_item())
			return
		qdel(I)
		paper_cups++
		return

	if (istype(I, /obj/item/weapon/wrench))
		if (!anchored && !isinspace())
			playsound(src.loc, 'sound/items/Ratchet.ogg', 50, 1)
			user << "<span class='notice'> You begin to tighten \the [src] to the floor...</span>"
			if (do_after(user, 20, target = src))
				user.visible_message( \
					"[user] tightens \the [src]'s casters.", \
					"<span class='notice'>You tighten \the [src]'s casters. Anchoring it down.</span>", \
					"<span class='italics'>You hear ratchet.</span>")
				anchored = 1
		else if(anchored)
			playsound(src.loc, 'sound/items/Ratchet.ogg', 50, 1)
			user << "<span class='notice'> You begin to loosen \the [src]'s casters...</span>"
			if (do_after(user, 40, target = src))
				user.visible_message( \
					"[user] loosens \the [src]'s casters.", \
					"<span class='notice'>You loosen \the [src]. Now it can be pulled somewhere else.</span>", \
					"<span class='italics'>You hear ratchet.</span>")
				anchored = 0
	else
		..()

//honkcooler
/obj/structure/reagent_dispensers/water_cooler/clown
	name = "Honk-Cooler"
	desc = "A machine filled with the clown's thick juice! NICE!"
	icon_state = "honk_cooler"
	reagent_id = "banana"
	//brokenvars = list("honk-cooler", "honk_cooler", /obj/structure/reagent_dispensers/honk_cooler)


/obj/structure/reagent_dispensers/beerkeg
	name = "beer keg"
	desc = "Beer is liquid bread, it's good for you..."
	icon_state = "beer"
	reagent_id = "beer"

/obj/structure/reagent_dispensers/beerkeg/blob_act(obj/effect/blob/B)
	explosion(src.loc,0,3,5,7,10)


/obj/structure/reagent_dispensers/virusfood
	name = "virus food dispenser"
	desc = "A dispenser of low-potency virus mutagenic."
	icon_state = "virus_food"
	anchored = 1
	reagent_id = "virusfood"