/obj/item/seeds/limbseed
	name = "pack of replica limb seeds"
	desc = "Replica limbs, like arms and legs. Break a leg!"
	icon_state = "seed-limb"
	species = "limb"
	plantname = "Replica Limb Flower"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/limb_spawn
	lifespan = 25
	endurance = 10
	maturation = 8
	production = 6
	yield = 2
	growing_icon = 'icons/obj/hydroponics/growing_flowers.dmi'
	potency = 20
	plant_type = 0
	oneharvest = 1
	growthstages = 3

/obj/item/weapon/reagent_containers/food/snacks/grown/limb_spawn
	seed = /obj/item/seeds/limbseed
	name = "limbplant"
	desc = "A cluster of limbs sprouting from a stem."
	icon_state = "limbplant"

/obj/item/weapon/reagent_containers/food/snacks/grown/limb_spawn/canconsume(mob/eater, mob/user)
	return 0

/obj/item/weapon/reagent_containers/food/snacks/grown/limb_spawn/attack_self(mob/user as mob)
	if(user)
		user.unEquip(src)
	var/obj/item/bodypart/L = newBodyPart(pick("r_arm", "l_arm", "r_leg", "l_leg"))
	L.loc = get_turf(src)
	L.skin_tone = random_skin_tone()
	L.update_limb()
	qdel(src)