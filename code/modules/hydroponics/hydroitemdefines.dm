// Plant analyzer
/obj/item/plant_analyzer
	name = "plant analyzer"
	desc = "A scanner used to evaluate a plant's various areas of growth, and genetic traits."
	icon = 'icons/obj/device.dmi'
	icon_state = "hydro"
	item_state = "analyzer"
	lefthand_file = 'icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tools_righthand.dmi'
	w_class = WEIGHT_CLASS_TINY
	slot_flags = ITEM_SLOT_BELT
	custom_materials = list(/datum/material/iron=30, /datum/material/glass=20)
	var/scan_mode = PLANT_SCANMODE_STATS

/obj/item/plant_analyzer/attack_self(mob/user)
	. = ..()
	scan_mode = !scan_mode
	to_chat(user, "<span class='notice'>You switch [src] to [scan_mode == PLANT_SCANMODE_CHEMICALS ? "scan for chemical reagents and traits" : "scan for plant growth statistics"].</span>")

/obj/item/plant_analyzer/attack(mob/living/M, mob/living/carbon/human/user)
	//Checks if target is a podman
	if(ispodperson(M))
		user.visible_message("<span class='notice'>[user] analyzes [M]'s vitals.</span>", \
							"<span class='notice'>You analyze [M]'s vitals.</span>")
		if(scan_mode== PLANT_SCANMODE_STATS)
			healthscan(user, M, advanced = TRUE)
		else
			chemscan(user, M)
		add_fingerprint(user)
		return
	return ..()

// *************************************
// Hydroponics Tools
// *************************************

/obj/item/reagent_containers/spray/weedspray // -- Skie
	desc = "It's a toxic mixture, in spray form, to kill small weeds."
	icon = 'icons/obj/hydroponics/equipment.dmi'
	name = "weed spray"
	icon_state = "weedspray"
	item_state = "spraycan"
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	volume = 100
	list_reagents = list(/datum/reagent/toxin/plantbgone/weedkiller = 100)

/obj/item/reagent_containers/spray/weedspray/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is huffing [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return (TOXLOSS)

/obj/item/reagent_containers/spray/pestspray // -- Skie
	desc = "It's some pest eliminator spray! <I>Do not inhale!</I>"
	icon = 'icons/obj/hydroponics/equipment.dmi'
	name = "pest spray"
	icon_state = "pestspray"
	item_state = "plantbgone"
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	volume = 100
	list_reagents = list(/datum/reagent/toxin/pestkiller = 100)

/obj/item/reagent_containers/spray/pestspray/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is huffing [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return (TOXLOSS)

/obj/item/cultivator
	name = "cultivator"
	desc = "It's used for removing weeds or scratching your back."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "cultivator"
	item_state = "cultivator"
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	flags_1 = CONDUCT_1
	force = 5
	throwforce = 7
	w_class = WEIGHT_CLASS_SMALL
	custom_materials = list(/datum/material/iron=50)
	attack_verb = list("slashed", "sliced", "cut", "clawed")
	hitsound = 'sound/weapons/bladeslice.ogg'

/obj/item/cultivator/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is scratching [user.ru_ego()] back as hard as [user.ru_who()] can with \the [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return (BRUTELOSS)

/obj/item/cultivator/bone
	name = "bone cultivator"
	desc = "A handle and a few bones tied together to resemble a hoe. Should work for removing weeds."
	icon = 'icons/obj/mining.dmi'
	icon_state = "cultivator_bone"

/obj/item/hatchet
	name = "hatchet"
	desc = "A very sharp axe blade upon a short fibremetal handle. It has a long history of chopping things, but now it is used for chopping wood."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "hatchet"
	item_state = "hatchet"
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	flags_1 = CONDUCT_1
	force = 12
	w_class = WEIGHT_CLASS_SMALL
	throwforce = 15
	throw_speed = 3
	throw_range = 4
	custom_materials = list(/datum/material/iron = 15000)
	attack_verb = list("chopped", "torn", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = SHARP_EDGED

/obj/item/hatchet/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/butchering, 70, 100)

/obj/item/hatchet/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is chopping at себя with [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	playsound(src, 'sound/weapons/bladeslice.ogg', 50, 1, -1)
	return (BRUTELOSS)

/obj/item/hatchet/bone
	name = "bone hatchet"
	desc = "A primitive hatchet made out of mostly bone, with some sinew to keep it together. It just might do for cutting logs into planks."
	icon = 'icons/obj/mining.dmi'
	icon_state = "hatchet_bone"

// *************************************
// Nutrient defines for hydroponics
// *************************************


/obj/item/reagent_containers/glass/bottle/nutrient
	name = "bottle of nutrient"
	volume = 50
	amount_per_transfer_from_this = 10
	possible_transfer_amounts = list(1,2,5,10,15,25,50)

/obj/item/reagent_containers/glass/bottle/nutrient/Initialize(mapload)
	. = ..()
	pixel_x = rand(-5, 5)
	pixel_y = rand(-5, 5)


/obj/item/reagent_containers/glass/bottle/nutrient/ez
	name = "bottle of E-Z-Nutrient"
	desc = "Contains a fertilizer that causes mild mutations with each harvest."
	list_reagents = list(/datum/reagent/plantnutriment/eznutriment = 50)

/obj/item/reagent_containers/glass/bottle/nutrient/l4z
	name = "bottle of Left 4 Zed"
	desc = "Contains a fertilizer that limits plant yields to no more than one and causes significant mutations in plants."
	list_reagents = list(/datum/reagent/plantnutriment/left4zednutriment = 50)

/obj/item/reagent_containers/glass/bottle/nutrient/rh
	name = "bottle of Robust Harvest"
	desc = "Contains a fertilizer that increases the yield of a plant by 30% while causing no mutations."
	list_reagents = list(/datum/reagent/plantnutriment/robustharvestnutriment = 50)

/obj/item/reagent_containers/glass/bottle/nutrient/empty
	name = "bottle"

/obj/item/reagent_containers/glass/bottle/killer
	volume = 50
	amount_per_transfer_from_this = 10
	possible_transfer_amounts = list(1,2,5,10,15,25,50)

/obj/item/reagent_containers/glass/bottle/killer/weedkiller
	name = "bottle of weed killer"
	desc = "Contains a herbicide."
	list_reagents = list(/datum/reagent/toxin/plantbgone/weedkiller = 50)

/obj/item/reagent_containers/glass/bottle/killer/pestkiller
	name = "bottle of pest spray"
	desc = "Contains a pesticide."
	list_reagents = list(/datum/reagent/toxin/pestkiller = 50)

/obj/item/scythe
	name = "scythe"
	desc = "A sharp and curved blade on a long fibremetal handle, this tool makes it easy to reap what you sow."
	icon = 'icons/obj/hydroponics/equipment_tg.dmi'
	icon_state = "scythe0"
	item_state = "scythe0"
	lefthand_file = 'icons/mob/inhands/weapons/polearms_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/polearms_righthand.dmi'
	force = 15
	throwforce = 5
	throw_speed = 2
	throw_range = 3
	w_class = WEIGHT_CLASS_BULKY
	flags_1 = CONDUCT_1
	armour_penetration = 20
	wound_bonus = 10
	slot_flags = ITEM_SLOT_BACK
	attack_verb_continuous = list("chops", "slices", "cuts", "reaps")
	attack_verb_simple = list("chop", "slice", "cut", "reap")
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = SHARP_EDGED
	// item_flags = CRUEL_IMPLEMENT //maybe they want to use it in surgery
	var/swiping = FALSE

/obj/item/scythe/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/butchering, \
	speed = 9 SECONDS, \
	effectiveness = 105, \
	)
	AddElement(/datum/element/bane, mob_biotypes = MOB_PLANT, damage_multiplier = 0.5, requires_combat_mode = FALSE)

/obj/item/scythe/suicide_act(mob/living/user)
	user.visible_message(span_suicide("[user] is beheading [user.p_them()]self with [src]! It looks like [user.p_theyre()] trying to commit suicide!"))
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		var/obj/item/bodypart/BP = C.get_bodypart(BODY_ZONE_HEAD)
		if(BP)
			BP.drop_limb()
			playsound(src,pick('sound/misc/desceration-01.ogg','sound/misc/desceration-02.ogg','sound/misc/desceration-01.ogg') ,50, 1, -1)
	return (BRUTELOSS)

/obj/item/scythe/pre_attack(atom/target, mob/living/user, params)
	if(!istype(target, /obj/structure/alien/resin/flower_bud) && !istype(target, /obj/structure/spacevine))
		return ..()
	if(swiping || get_turf(target) == get_turf(user))
		return ..()
	var/turf/user_turf = get_turf(user)
	var/dir_to_target = get_dir(user_turf, get_turf(target))
	swiping = TRUE
	var/static/list/scythe_slash_angles = list(0, 45, 90, -45, -90)
	for(var/i in scythe_slash_angles)
		var/turf/adjacent_turf = get_step(user_turf, turn(dir_to_target, i))
		for(var/obj/structure/spacevine/vine in adjacent_turf)
			if(user.Adjacent(vine))
				melee_attack_chain(user, vine)
		for(var/obj/structure/alien/resin/flower_bud/flower in adjacent_turf)
			if(user.Adjacent(flower))
				melee_attack_chain(user, flower)
	swiping = FALSE
	return TRUE
