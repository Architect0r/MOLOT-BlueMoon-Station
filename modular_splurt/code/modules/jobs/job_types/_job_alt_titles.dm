// Command
/datum/job/captain/New()
	var/list/extra_titles = list(
		"Station Director",
		"Station Commander",
		"Station Overseer",
		"Sectorial Commander",
		"Syndicate Admiral",
		"Station Mistress",
		"Station Master",
		"Cockpitain",
		"Cuntpitain",
		"Senator",
		"Consul",
		"Cap-Slut",
		"Condom"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chief_engineer/New()
	var/list/extra_titles = list(
		"Head Engineer",
		"Construction Coordinator",
		"Project Manager",
		"Power Plant Director",
		"Aunt Syndi Pet",
		"Big Iron"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/hop/New()
	var/list/extra_titles = list(
		"Head Of Stations Pets",
		"Head Of Cumdumps",
		"Head Of Slutty Personnel",
		"Headpat Of Personnel",
		"Headgiver To Personnel",
		"Personnel Manager",
		"Staff Administrator",
		"Records Administrator",
		"Syndicate Administrator",
		"Personnel Manager of Syndicate",
		"Captain Attachment"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/hos/New()
	var/list/extra_titles = list(
		"Security Commander",
		"Head of Slutcurity",
		"Division Leader",
		"Cerberus Leader",
		"Syndicate Field Commander",
		"Commissar"
	)
	if(SSevents.holidays && SSevents.holidays[HALLOWEEN])
		LAZYADD(extra_titles, "Head of Spookcurity")
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/qm/New()
	var/list/extra_titles = list(
		"Supply Chief",
		"Cargonia Chief",
		"Brigadier",
		"Logistics Syndicate Supervisor",
		"Manager of Shipping Sex"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/rd/New()
	var/list/extra_titles = list(
		"Science Administrator",
		"Cybersun Industries Specialist",
		"Research Manager"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/cmo
	alt_titles = list(
		"Medical Director",
		"Medical Administrator",
		"Specialist Of Interdyne",
		"Chief Heal Slut"
	) // Sandcode do not have alt titles for CMO at the moment.


// Engineering
/datum/job/atmos/New()
	var/list/extra_titles = list(
		"Atmos Plumber",
		"Syndicate Atmospherics Master",
		"Disposals Technician"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/engineer/New()
	var/list/extra_titles = list(
		"Structural Engineer",
		"Astromechanic",
		"Syndicate Constructing Master",
		"Station Architect",
		"Hazardous Material Operator",
		"Junior Engineer",
		"Apprentice Engineer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()


// Service
/datum/job/assistant/New()
	var/list/extra_titles = list(
		"Volunteer",
		"Morale Officer",
		"Stripper",
		"Escort",
		"Tourist",
		"Clerk",
		"Blacksmith",
		"Waiter",
		"All-purpose Fleshlight",
		"All-purpose Dildo",
		"Cumdump",
		"Greytider",
		"Bard",
		"Snack",
		"Stress Relief",
		"Freeloader",
		"Syndicate Specialist",
		"Station Pet"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/bartender/New()
	var/list/extra_titles = list(
		"Mixologist",
		"Sommelier",
		"Bar Owner",
		"Barmaid",
		"The Semen Degustator",
		"Crocin Terrorist",
		"Expediter"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/janitor/New()
	var/list/extra_titles = list(
		"Slutty Maid",
		"Liquidator"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/chaplain/New() // Yell at upstream maintainer(s) to fix "Bichop" title.
	var/list/extra_titles = list(
		"Priestess",
		"Prior",
		"Monk",
		"Nun",
		"Tiger Cooperative Disciple",
		"Counselor"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/clown // Sorry, but no TWO entertainer titles.
	alt_titles = list("Jester", "Comedian", "Sexy Clown")

/datum/job/cook/New()
	var/list/extra_titles = list(
		"Chef De Partie",
		"Chef De Sexe",
		"Boss Of This Gym",
		"Prey Prepper",
		"Poissonier",
		"Baker"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/curator/New()
	var/list/extra_titles = list(
		"Keeper",
		"Archaeologist",
		"Historian",
		"Scholar",
		"Artist"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/hydro/New()
	var/list/extra_titles = list(
		"Hydroponicist",
		"Farmer",
		"Beekeeper",
		"Plants Breeder",
		"Vintner",
		"Soiler"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

// No additions for janitor

/datum/job/lawyer/New()
	var/list/extra_titles = list(
		"Syndicate Attorney",
		"Law-Slut",
		"Attorney"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/mime/New()
	var/list/extra_titles = list(
		"Pantomime",
		"Sexy Mime",
		"Mimic"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()


// Science

/datum/job/scientist/New()
	var/list/extra_titles = list(
		"Researcher",
		"Toxins Researcher",
		"Research Intern",
		"Junior Scientist",
		"Sex Researcher"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/roboticist/New()
	var/list/extra_titles = list(
		"Ripperdoc",
		"Droid Mechanic",
		"Robo-Slut"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

// Medical

/datum/job/chemist/New()
	var/list/extra_titles = list(
		"Alchemist",
		"Apothecarist",
		"Chemical Plumber",
		"Chemi-Slut"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/doctor/New()
	var/list/extra_titles = list(
		"Physician",
		"Medical Intern",
		"Medical Resident",
		"Medtech",
		"Medi-Slut"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/psychologist/New()
	var/list/extra_titles = list(
		"Therapist",
		"Psychiatrist",
		"Hypnotist",
		"Hypnosis Expert",
		"Hypnotherapist",
		"Sex Educator",
		"Rental Mommy",
		"Rental Daddy",
		"The Rapist",
		"Psycho-Slut"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/geneticist/New()
	var/list/extra_titles = list(
		"Genetics Researcher",
		"Gene-Slut"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/paramedic/New()
	var/list/extra_titles = list(
		"Trauma Team",
		"Field Medic Of Interdyne",
		"Para-Slut"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/virologist/New()
	var/list/extra_titles = list(
		"Microbiologist",
		"Biochemist",
		"Syndicate Bioweapon Scientist",
		"Viro-Slut"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()


// Security
/datum/job/detective/New()
	var/list/extra_titles = list(
		"Gumshoe",
		"Slutective",
		"Van Dorn Agent",
		"Forensic Investigator",
		"Cinder Dick",
		"Syndicate Survey Specialist",
		"Cooperate Auditor"
	)
	if(SSevents.holidays && SSevents.holidays[HALLOWEEN])
		LAZYADD(extra_titles, "Spookective")
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/officer/New()
	var/list/extra_titles = list(
		"Security Agent",
		"Probation Officer",
		"Guardsman",
		"Civil Protection Cosplayer",
		"Police Officer",
		"Tyranny Lover",
		"Cerberus",
		"SAARE Operative",
		"PCRC Operative",
		"Syndicate Combatant",
		"Slutcurity Officer"
	)
	if(SSevents.holidays && SSevents.holidays[HALLOWEEN])
		LAZYADD(extra_titles, "Spookcurity Officer")
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/warden/New()
	var/list/extra_titles = list(
		"Prison Chief",
		"Armory Manager",
		"Prison Administrator",
		"Dungeon Master",
		"Brig Superintendent",
		"Brig Overwatch",
		"High-Ranked Security Officer",
		"Slutcurity Captain",
		"Syndicate Supervisor",
		"Voreden"
	)
	if(SSevents.holidays && SSevents.holidays[HALLOWEEN])
		LAZYADD(extra_titles, "Spookden")
	LAZYADD(alt_titles, extra_titles)
	. = ..()


// Cargo
/datum/job/cargo_tech/New()
	var/list/extra_titles = list(
		"Deliveries Officer",
		"Mail Man",
		"Mail Woman",
		"Horny Mailer",
		"Pleasures Deliverer",
		"Cock Packager",
		"Mailroom Technician",
		"Disposal Technician",
		"Syndicate Deck Worker",
		"Logistics Technician"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()

/datum/job/mining/New()
	var/list/extra_titles = list(
		"Exotic Ore Miner",
		"Digger",
		"Hunter",
		"Ashwalker Sex Slave",
		"Ashwalker Breeder",
		"Shaft Syndi-Miner",
		"Slayer"
	)
	LAZYADD(alt_titles, extra_titles)
	. = ..()
