////////////////////////////////////////// COCKTAILS //////////////////////////////////////

/datum/chemical_reaction/drink
	name = "Drink"

/datum/chemical_reaction/drink/goldschlager
	name = "Goldschlager"
	id = "goldschlager"
	results = list("goldschlager" = 10)
	required_reagents = list("vodka" = 10, "gold" = 1)

/datum/chemical_reaction/drink/patron
	name = "Patron"
	id = "patron"
	results = list("patron" = 10)
	required_reagents = list("tequila" = 10, "silver" = 1)

/datum/chemical_reaction/drink/bilk
	name = "Bilk"
	id = "bilk"
	results = list("bilk" = 2)
	required_reagents = list("milk" = 1, "beer" = 1)

/datum/chemical_reaction/drink/icetea
	name = "Iced Tea"
	id = "icetea"
	results = list("icetea" = 4)
	required_reagents = list("ice" = 1, "tea" = 3)

/datum/chemical_reaction/drink/icecoffee
	name = "Iced Coffee"
	id = "icecoffee"
	results = list("icecoffee" = 4)
	required_reagents = list("ice" = 1, "coffee" = 3)

/datum/chemical_reaction/drink/nuka_cola
	name = "Nuka Cola"
	id = "nuka_cola"
	results = list("nuka_cola" = 6)
	required_reagents = list("uranium" = 1, "cola" = 6)

/datum/chemical_reaction/drink/moonshine
	name = "Moonshine"
	id = "moonshine"
	results = list("moonshine" = 10)
	required_reagents = list("nutriment" = 10)
	required_catalysts = list("enzyme" = 5)

/datum/chemical_reaction/drink/wine
	name = "Wine"
	id = "wine"
	results = list("wine" = 10)
	required_reagents = list("grapejuice" = 10)
	required_catalysts = list("enzyme" = 5)

/datum/chemical_reaction/drink/spacebeer
	name = "Space Beer"
	id = "spacebeer"
	results = list("beer" = 10)
	required_reagents = list("flour" = 10)
	required_catalysts = list("enzyme" = 5)

/datum/chemical_reaction/drink/vodka
	name = "Vodka"
	id = "vodka"
	results = list("vodka" = 10)
	required_reagents = list("potato" = 10)
	required_catalysts = list("enzyme" = 5)

/datum/chemical_reaction/drink/kahlua
	name = "Kahlua"
	id = "kahlua"
	results = list("kahlua" = 5)
	required_reagents = list("coffee" = 5, "sugar" = 5)
	required_catalysts = list("enzyme" = 5)

/datum/chemical_reaction/drink/gin_tonic
	name = "Gin and Tonic"
	id = "gintonic"
	results = list("gintonic" = 3)
	required_reagents = list("gin" = 2, "tonic" = 1)

/datum/chemical_reaction/drink/cuba_libre
	name = "Cuba Libre"
	id = "cubalibre"
	results = list("cubalibre" = 3)
	required_reagents = list("rum" = 2, "cola" = 1)

/datum/chemical_reaction/drink/martini
	name = "Classic Martini"
	id = "martini"
	results = list("martini" = 3)
	required_reagents = list("gin" = 2, "vermouth" = 1)

/datum/chemical_reaction/drink/vodkamartini
	name = "Vodka Martini"
	id = "vodkamartini"
	results = list("vodkamartini" = 3)
	required_reagents = list("vodka" = 2, "vermouth" = 1)

/datum/chemical_reaction/drink/white_russian
	name = "White Russian"
	id = "whiterussian"
	results = list("whiterussian" = 5)
	required_reagents = list("blackrussian" = 3, "cream" = 2)

/datum/chemical_reaction/drink/whiskey_cola
	name = "Whiskey Cola"
	id = "whiskeycola"
	results = list("whiskeycola" = 3)
	required_reagents = list("whiskey" = 2, "cola" = 1)

/datum/chemical_reaction/drink/screwdriver
	name = "Screwdriver"
	id = "screwdrivercocktail"
	results = list("screwdrivercocktail" = 3)
	required_reagents = list("vodka" = 2, "orangejuice" = 1)

/datum/chemical_reaction/drink/bloody_mary
	name = "Bloody Mary"
	id = "bloodymary"
	results = list("bloodymary" = 4)
	required_reagents = list("vodka" = 1, "tomatojuice" = 2, "limejuice" = 1)

/datum/chemical_reaction/drink/gargle_blaster
	name = "Pan-Galactic Gargle Blaster"
	id = "gargleblaster"
	results = list("gargleblaster" = 5)
	required_reagents = list("vodka" = 1, "gin" = 1, "whiskey" = 1, "cognac" = 1, "limejuice" = 1)

/datum/chemical_reaction/drink/brave_bull
	name = "Brave Bull"
	id = "bravebull"
	results = list("bravebull" = 3)
	required_reagents = list("tequila" = 2, "kahlua" = 1)

/datum/chemical_reaction/drink/tequila_sunrise
	name = "tequila Sunrise"
	id = "tequilasunrise"
	results = list("tequilasunrise" = 3)
	required_reagents = list("tequila" = 2, "orangejuice" = 1)

/datum/chemical_reaction/drink/toxins_special
	name = "Toxins Special"
	id = "toxinsspecial"
	results = list("toxinsspecial" = 5)
	required_reagents = list("rum" = 2, "vermouth" = 1, "plasma" = 2)

/datum/chemical_reaction/drink/beepsky_smash
	name = "Beepksy Smash"
	id = "beepksysmash"
	results = list("beepskysmash" = 4)
	required_reagents = list("limejuice" = 2, "whiskey" = 2, "iron" = 1)

/datum/chemical_reaction/drink/doctor_delight
	name = "The Doctor's Delight"
	id = "doctordelight"
	results = list("doctorsdelight" = 5)
	required_reagents = list("limejuice" = 1, "tomatojuice" = 1, "orangejuice" = 1, "cream" = 1, "cryoxadone" = 1)

/datum/chemical_reaction/drink/irish_cream
	name = "Irish Cream"
	id = "irishcream"
	results = list("irishcream" = 3)
	required_reagents = list("whiskey" = 2, "cream" = 1)

/datum/chemical_reaction/drink/manly_dorf
	name = "The Manly Dorf"
	id = "manlydorf"
	results = list("manlydorf" = 3)
	required_reagents = list ("beer" = 1, "ale" = 2)

/datum/chemical_reaction/drink/greenbeer
	name = "Green Beer"
	id = "greenbeer"
	results = list("greenbeer" = 10)
	required_reagents = list("greencrayonpowder" = 1, "beer" = 10)

/datum/chemical_reaction/drink/hooch
	name = "Hooch"
	id = "hooch"
	results = list("hooch" = 3)
	required_reagents = list ("ethanol" = 2, "welding_fuel" = 1)
	required_catalysts = list("enzyme" = 1)

/datum/chemical_reaction/drink/irish_coffee
	name = "Irish Coffee"
	id = "irishcoffee"
	results = list("irishcoffee" = 2)
	required_reagents = list("irishcream" = 1, "coffee" = 1)

/datum/chemical_reaction/drink/b52
	name = "B-52"
	id = "b52"
	results = list("b52" = 3)
	required_reagents = list("irishcream" = 1, "kahlua" = 1, "cognac" = 1)

/datum/chemical_reaction/drink/atomicbomb
	name = "Atomic Bomb"
	id = "atomicbomb"
	results = list("atomicbomb" = 10)
	required_reagents = list("b52" = 10, "uranium" = 1)

/datum/chemical_reaction/drink/margarita
	name = "Margarita"
	id = "margarita"
	results = list("margarita" = 3)
	required_reagents = list("tequila" = 2, "limejuice" = 1)

/datum/chemical_reaction/drink/longislandicedtea
	name = "Long Island Iced Tea"
	id = "longislandicedtea"
	results = list("longislandicedtea" = 4)
	required_reagents = list("vodka" = 1, "gin" = 1, "tequila" = 1, "cubalibre" = 1)

/datum/chemical_reaction/drink/threemileisland
	name = "Three Mile Island Iced Tea"
	id = "threemileisland"
	results = list("threemileisland" = 10)
	required_reagents = list("longislandicedtea" = 10, "uranium" = 1)

/datum/chemical_reaction/drink/whiskeysoda
	name = "Whiskey Soda"
	id = "whiskeysoda"
	results = list("whiskeysoda" = 3)
	required_reagents = list("whiskey" = 2, "sodawater" = 1)

/datum/chemical_reaction/drink/black_russian
	name = "Black Russian"
	id = "blackrussian"
	results = list("blackrussian" = 5)
	required_reagents = list("vodka" = 3, "kahlua" = 2)

/datum/chemical_reaction/drink/manhattan
	name = "Manhattan"
	id = "manhattan"
	results = list("manhattan" = 3)
	required_reagents = list("whiskey" = 2, "vermouth" = 1)

/datum/chemical_reaction/drink/manhattan_proj
	name = "Manhattan Project"
	id = "manhattan_proj"
	results = list("manhattan_proj" = 10)
	required_reagents = list("manhattan" = 10, "uranium" = 1)

/datum/chemical_reaction/drink/vodka_tonic
	name = "Vodka and Tonic"
	id = "vodkatonic"
	results = list("vodkatonic" = 3)
	required_reagents = list("vodka" = 2, "tonic" = 1)

/datum/chemical_reaction/drink/gin_fizz
	name = "Gin Fizz"
	id = "ginfizz"
	results = list("ginfizz" = 4)
	required_reagents = list("gin" = 2, "sodawater" = 1, "limejuice" = 1)

/datum/chemical_reaction/drink/bahama_mama
	name = "Bahama mama"
	id = "bahama_mama"
	results = list("bahama_mama" = 6)
	required_reagents = list("rum" = 2, "orangejuice" = 2, "limejuice" = 1, "ice" = 1)

/datum/chemical_reaction/drink/singulo
	name = "Singulo"
	id = "singulo"
	results = list("singulo" = 10)
	required_reagents = list("vodka" = 5, "radium" = 1, "wine" = 5)

/datum/chemical_reaction/drink/alliescocktail
	name = "Allies Cocktail"
	id = "alliescocktail"
	results = list("alliescocktail" = 2)
	required_reagents = list("martini" = 1, "vodka" = 1)

/datum/chemical_reaction/drink/demonsblood
	name = "Demons Blood"
	id = "demonsblood"
	results = list("demonsblood" = 4)
	required_reagents = list("rum" = 1, "spacemountainwind" = 1, "blood" = 1, "dr_gibb" = 1)

/datum/chemical_reaction/drink/booger
	name = "Booger"
	id = "booger"
	results = list("booger" = 4)
	required_reagents = list("cream" = 1, "banana" = 1, "rum" = 1, "watermelonjuice" = 1)

/datum/chemical_reaction/drink/antifreeze
	name = "Anti-freeze"
	id = "antifreeze"
	results = list("antifreeze" = 4)
	required_reagents = list("vodka" = 2, "cream" = 1, "ice" = 1)

/datum/chemical_reaction/drink/barefoot
	name = "Barefoot"
	id = "barefoot"
	results = list("barefoot" = 3)
	required_reagents = list("berryjuice" = 1, "cream" = 1, "vermouth" = 1)


////DRINKS THAT REQUIRED IMPROVED SPRITES BELOW:: -Agouri/////

/datum/chemical_reaction/drink/sbiten
	name = "Sbiten"
	id = "sbiten"
	results = list("sbiten" = 10)
	required_reagents = list("vodka" = 10, "capsaicin" = 1)

/datum/chemical_reaction/drink/red_mead
	name = "Red Mead"
	id = "red_mead"
	results = list("red_mead" = 2)
	required_reagents = list("blood" = 1, "mead" = 1)

/datum/chemical_reaction/drink/mead
	name = "Mead"
	id = "mead"
	results = list("mead" = 2)
	required_reagents = list("honey" = 2)
	required_catalysts = list("enzyme" = 5)

/datum/chemical_reaction/drink/iced_beer
	name = "Iced Beer"
	id = "iced_beer"
	results = list("iced_beer" = 6)
	required_reagents = list("beer" = 5, "ice" = 1)

/datum/chemical_reaction/drink/grog
	name = "Grog"
	id = "grog"
	results = list("grog" = 2)
	required_reagents = list("rum" = 1, "water" = 1)

/datum/chemical_reaction/drink/soy_latte
	name = "Soy Latte"
	id = "soy_latte"
	results = list("soy_latte" = 2)
	required_reagents = list("coffee" = 1, "soymilk" = 1)

/datum/chemical_reaction/drink/cafe_latte
	name = "Cafe Latte"
	id = "cafe_latte"
	results = list("cafe_latte" = 2)
	required_reagents = list("coffee" = 1, "milk" = 1)

/datum/chemical_reaction/drink/acidspit
	name = "Acid Spit"
	id = "acidspit"
	results = list("acidspit" = 6)
	required_reagents = list("sacid" = 1, "wine" = 5)

/datum/chemical_reaction/drink/amasec
	name = "Amasec"
	id = "amasec"
	results = list("amasec" = 10)
	required_reagents = list("iron" = 1, "wine" = 5, "vodka" = 5)

/datum/chemical_reaction/drink/changelingsting
	name = "Changeling Sting"
	id = "changelingsting"
	results = list("changelingsting" = 5)
	required_reagents = list("screwdrivercocktail" = 1, "limejuice" = 1, "lemonjuice" = 1)

/datum/chemical_reaction/drink/aloe
	name = "Aloe"
	id = "aloe"
	results = list("aloe" = 2)
	required_reagents = list("irishcream" = 1, "watermelonjuice" = 1)

/datum/chemical_reaction/drink/andalusia
	name = "Andalusia"
	id = "andalusia"
	results = list("andalusia" = 3)
	required_reagents = list("rum" = 1, "whiskey" = 1, "lemonjuice" = 1)

/datum/chemical_reaction/drink/neurotoxin
	name = "Neurotoxin"
	id = "neurotoxin"
	results = list("neurotoxin" = 2)
	required_reagents = list("gargleblaster" = 1, "morphine" = 1)

/datum/chemical_reaction/drink/snowwhite
	name = "Snow White"
	id = "snowwhite"
	results = list("snowwhite" = 2)
	required_reagents = list("beer" = 1, "lemon_lime" = 1)

/datum/chemical_reaction/drink/irishcarbomb
	name = "Irish Car Bomb"
	id = "irishcarbomb"
	results = list("irishcarbomb" = 2)
	required_reagents = list("ale" = 1, "irishcream" = 1)

/datum/chemical_reaction/drink/syndicatebomb
	name = "Syndicate Bomb"
	id = "syndicatebomb"
	results = list("syndicatebomb" = 2)
	required_reagents = list("beer" = 1, "whiskeycola" = 1)

/datum/chemical_reaction/drink/erikasurprise
	name = "Erika Surprise"
	id = "erikasurprise"
	results = list("erikasurprise" = 5)
	required_reagents = list("ale" = 1, "limejuice" = 1, "whiskey" = 1, "banana" = 1, "ice" = 1)

/datum/chemical_reaction/drink/devilskiss
	name = "Devils Kiss"
	id = "devilskiss"
	results = list("devilskiss" = 3)
	required_reagents = list("blood" = 1, "kahlua" = 1, "rum" = 1)

/datum/chemical_reaction/drink/hippiesdelight
	name = "Hippies Delight"
	id = "hippiesdelight"
	results = list("hippiesdelight" = 2)
	required_reagents = list("mushroomhallucinogen" = 1, "gargleblaster" = 1)

/datum/chemical_reaction/drink/bananahonk
	name = "Banana Honk"
	id = "bananahonk"
	results = list("bananahonk" = 3)
	required_reagents = list("banana" = 1, "cream" = 1, "sugar" = 1)

/datum/chemical_reaction/drink/silencer
	name = "Silencer"
	id = "silencer"
	results = list("silencer" = 3)
	required_reagents = list("nothing" = 1, "cream" = 1, "sugar" = 1)

/datum/chemical_reaction/drink/driestmartini
	name = "Driest Martini"
	id = "driestmartini"
	results = list("driestmartini" = 2)
	required_reagents = list("nothing" = 1, "gin" = 1)

/datum/chemical_reaction/drink/thirteenloko
	name = "Thirteen Loko"
	id = "thirteenloko"
	results = list("thirteenloko" = 3)
	required_reagents = list("vodka" = 1, "coffee" = 1, "limejuice" = 1)

/datum/chemical_reaction/drink/chocolatepudding
	name = "Chocolate Pudding"
	id = "chocolatepudding"
	results = list("chocolatepudding" = 20)
	required_reagents = list("cocoa" = 5, "milk" = 5, "eggyolk" = 5)

/datum/chemical_reaction/drink/vanillapudding
	name = "Vanilla Pudding"
	id = "vanillapudding"
	results = list("vanillapudding" = 20)
	required_reagents = list("vanilla" = 5, "milk" = 5, "eggyolk" = 5)

/datum/chemical_reaction/drink/cherryshake
	name = "Cherry Shake"
	id = "cherryshake"
	results = list("cherryshake" = 3)
	required_reagents = list("cherryjelly" = 1, "ice" = 1, "cream" = 1)

/datum/chemical_reaction/drink/bluecherryshake
	name = "Blue Cherry Shake"
	id = "bluecherryshake"
	results = list("bluecherryshake" = 3)
	required_reagents = list("bluecherryjelly" = 1, "ice" = 1, "cream" = 1)

/datum/chemical_reaction/drink/drunkenblumpkin
	name = "Drunken Blumpkin"
	id = "drunkenblumpkin"
	results = list("drunkenblumpkin" = 4)
	required_reagents = list("blumpkinjuice" = 1, "irishcream" = 2, "ice" = 1)

/datum/chemical_reaction/drink/pumpkin_latte
	name = "Pumpkin space latte"
	id = "pumpkin_latte"
	results = list("pumpkin_latte" = 15)
	required_reagents = list("pumpkinjuice" = 5, "coffee" = 5, "cream" = 5)

/datum/chemical_reaction/drink/gibbfloats
	name = "Gibb Floats"
	id = "gibbfloats"
	results = list("gibbfloats" = 15)
	required_reagents = list("dr_gibb" = 5, "ice" = 5, "cream" = 5)

/datum/chemical_reaction/drink/triple_citrus
	name = "triple_citrus"
	id = "triple_citrus"
	results = list("triple_citrus" = 5)
	required_reagents = list("lemonjuice" = 1, "limejuice" = 1, "orangejuice" = 1)

/datum/chemical_reaction/drink/grape_soda
	name = "grape soda"
	id = "grapesoda"
	results = list("grape_soda" = 2)
	required_reagents = list("grapejuice" = 1, "sodawater" = 1)

/datum/chemical_reaction/drink/grappa
	name = "grappa"
	id = "grappa"
	results = list("grappa" = 10)
	required_reagents = list ("wine" = 10)
	required_catalysts = list ("enzyme" = 5)

/datum/chemical_reaction/drink/whiskey_sour
	name = "Whiskey Sour"
	id = "whiskey_sour"
	results = list("whiskey_sour" = 3)
	required_reagents = list("whiskey" = 1, "lemonjuice" = 1, "sugar" = 1)
	mix_message = "The mixture darkens to a rich gold hue."
	mix_sound = null

/datum/chemical_reaction/drink/fetching_fizz
	name = "Fetching Fizz"
	id = "fetching_fizz"
	results = list("fetching_fizz" = 3)
	required_reagents = list("nuka_cola" = 1, "iron" = 1) //Manufacturable from only the mining station
	mix_message = "The mixture slightly vibrates before settling."

/datum/chemical_reaction/drink/hearty_punch
	name = "Hearty Punch"
	id = "hearty_punch"
	results = list("hearty_punch" = 1)  //Very little, for balance reasons
	required_reagents = list("bravebull" = 5, "syndicatebomb" = 5, "absinthe" = 5)
	mix_message = "The mixture darkens to a healthy crimson."
	mix_sound = null
	required_temp = 315 //Piping hot!

/datum/chemical_reaction/drink/bacchus_blessing
	name = "Bacchus' Blessing"
	id = "bacchus_blessing"
	results = list("bacchus_blessing" = 4)
	required_reagents = list("hooch" = 1, "absinthe" = 1, "manlydorf" = 1, "syndicatebomb" = 1)
	mix_message = "<span class='warning'>The mixture turns to a sickening froth.</span>"

/datum/chemical_reaction/drink/arnold_palmer
	name = "Arnold Palmer"
	id = "arnold_palmer"
	results = list("arnold_palmer" = 2)
	required_reagents = list("tea" = 1, "lemonjuice" = 1)
	mix_message = "The smells of fresh green grass and sand traps waft through the air as the mixture turns a friendly yellow-orange."
