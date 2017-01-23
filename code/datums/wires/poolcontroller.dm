#define POOL_WIRE_DRAIN "drain"

/datum/wires/poolcontroller
	holder_type = /obj/machinery/poolcontroller

/datum/wires/poolcontroller/New(atom/holder)
	wires = list(
		POOL_WIRE_DRAIN, WIRE_HACK, WIRE_ELECTRIFY
	)
	add_duds(2)
	..()

/datum/wires/poolcontroller/interact(var/mob/living/user)
	if(interactable(user))
		var/obj/machinery/poolcontroller/P = holder
		P.attack_hand(user)

/datum/wires/poolcontroller/interactable(var/mob/living/L)
	var/obj/machinery/poolcontroller/P = holder
	if(!istype(L, /mob/living/silicon))
		if(P.seconds_electrified)
			if(P.shock(L, 100))
				return 0
	if(P.panel_open)
		return 1
	return 0

/datum/wires/poolcontroller/on_pulse(wire)
	var/obj/machinery/poolcontroller/P = holder
	switch(wire)
		if(POOL_WIRE_DRAIN)
			P.drainable = 0
		if(WIRE_HACK)
			if(P.emagged)
				P.emagged = 0
			if(!P.emagged)
				P.emagged = 1
		if(WIRE_ELECTRIFY)
			P.seconds_electrified = 30

/datum/wires/poolcontroller/on_cut(wire, mend)
	var/obj/machinery/poolcontroller/P = holder
	switch(wire)
		if(POOL_WIRE_DRAIN)
			if(mend)
				P.drainable = 0
			else
				P.drainable = 1
		if(WIRE_HACK)
			if(mend)
				P.emagged = 0
		if(WIRE_ELECTRIFY)
			if(mend)
				P.seconds_electrified = 0
			else
				P.seconds_electrified = -1