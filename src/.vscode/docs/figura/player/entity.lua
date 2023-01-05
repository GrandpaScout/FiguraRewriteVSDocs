---@meta
---@diagnostic disable: duplicate-set-field


---==============================================================================================---
---  ENTITYAPI                                                                                   ---
---==============================================================================================---

---A Minecraft entity.
---@class EntityAPI
local EntityAPI


---===== GETTERS =====---

---Gets the amount of air this entity has left in ticks.
---@return integer
function EntityAPI:getAir() end

---Gets the size of this entity's bounding box in all three axes.  
---The `x` and `z` axes are always the same value.
---@return Vector3
function EntityAPI:getBoundingBox() end

---Gets the current dimension this entity is in.
---@return Minecraft.dimensionID
function EntityAPI:getDimensionName() end

---Gets the Y offset of this entity's eyes in blocks.
---
---Not to be confused with `:getEyeY()`, which gets the *absolute Y position* of the eyes.
---@return number
function EntityAPI:getEyeHeight() end

---Gets the Y position of this entity's eyes in blocks.
---
---Not to be confused with `:getEyeHeight()`, which gets the Y *offset* of the eyes.
---@return number
function EntityAPI:getEyeY() end

---Gets the remaining time this entity will be on fire for in ticks.  
---If this number is negative, it is how long this entity is immune to catching on fire.
---
---This function is not accurate. Use `:isOnFire()` instead.
---@return integer
function EntityAPI:getFireTicks() end

---Gets the amount of time this entity has been in powdered snow with no protection in ticks.
---@return integer
function EntityAPI:getFrozenTicks() end

---Gets the item stack in the given equipment slot of this entity.
---
---If nothing is in the given slot, an item stack of `minecraft:air` is returned.  
---If the given slot is invalid, `nil` is returned.
---@param slot EntityAPI.slot
---@return ItemStack?
function EntityAPI:getItem(slot) end

---Gets a unit vector representing the direction this entity is looking in.
---
---*This does not return a rotation, use `:getRot()` for that instead.*
---@return Vector3
function EntityAPI:getLookDir() end

---Gets the max amount air this entity have in ticks.
---@return integer
function EntityAPI:getMaxAir() end

---Gets the display name of this entity.
---
---This can either be the custom name, translated name, or username of this entity.
---@return string
function EntityAPI:getName() end

---Gets the root NBT compound of this entity as a Lua table.
---
---This data *will* be different from what the server (and `/data`) sees as clients do not receive
---all NBT data.
---@return table
function EntityAPI:getNbt() end

---Gets the server permission level of this entity.
---
---A permission of 2 is required to run most commands.
---@return EntityAPI.permissionLevel
function EntityAPI:getPermissionLevel() end

---Gets the current position of this entity in blocks.  
---If a `delta` is given, the position is interpolated between the previous and current ticks.
---
---If `delta` is `nil`, it will default to `1`.
---@param delta? number
---@return Vector3
function EntityAPI:getPos(delta) end

---Gets the current pose of this entity.
---@return EntityAPI.pose
function EntityAPI:getPose() end

---Gets the current rotation of this entity in degrees.  
---If a `delta` is given, the rotation is interpolated between the previous and current ticks.
---
---If `delta` is `nil`, it will default to `1`.
---@param delta? number
---@return Vector2
function EntityAPI:getRot(delta) end

---Casts a ray from the eyes of this entity that targets blocks up to 20 blocks forwards or
---backwards, getting the first block hit, the position the ray collided with that block, and the
---side of the block that the ray hit.
---
---Positive distance is forwards, negative distance is backwards.
---
---If `ignoreLiquids` is `nil`, it will default to `false`.  
---If `distance` is `nil`, it will default to `20`.
---@param ignoreLiquids? boolean
---@param distance? number
---@return BlockState block
---@return Vector3 hit_pos
---@return EntityAPI.blockSide side
function EntityAPI:getTargetedBlock(ignoreLiquids, distance) end

---Casts a ray from the eyes of this entity that targets entities up to 20 blocks forwards, getting
---the first entity hit and the position the ray collided with that entity.
---
---Returns `nil` if no entity is hit.
---
---If `distance` is `nil`, it will default to `20`.
---@param distance? number
---@return EntityAPI.any? entity
---@return Vector3? hit_pos
function EntityAPI:getTargetedEntity(distance) end

---Gets the namespaced type of this entity.
---@return Minecraft.entityID
function EntityAPI:getType() end

---Gets the UUID of this entity.
---@return string
function EntityAPI:getUUID() end

---Gets a variable that was stored on this entity by the avatar it is wearing.
---
---These variables are stored with `<AvatarAPI>:store()`.
---@param key string
---@return any
function EntityAPI:getVariable(key) end

---Gets the entity that this entity is riding.
---
---Returns `nil` if there is no vehicle.
---@return EntityAPI.any
function EntityAPI:getVehicle() end

---Gets the current velocity of this entity.
---@return Vector3
function EntityAPI:getVelocity() end

---Gets if this entity is wearing an avatar.
---@return boolean
function EntityAPI:hasAvatar() end

---Gets if this entity is alive.
---@return boolean
function EntityAPI:isAlive() end

---Gets if this entity is crouching.
---@return boolean
function EntityAPI:isCrouching() end

---Gets if this entity is glowing for any reason (Glowing status effect, `Glowing` NBT, etc.)
---@return boolean
function EntityAPI:isGlowing() end

---# 🍔
---
---> ***
---
---# Hamburger
---A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat,
---typically beef—placed inside a sliced bun or bread roll. Hamburgers are often served with cheese,
---lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard,
---mayonnaise, relish, or a "special sauce", often a variation of Thousand Island dressing; and are
---frequently placed on sesame seed buns. A hamburger patty topped with cheese is called a
---cheeseburger.
---
---The term burger can also be applied to the meat patty on its own, especially in the United
---Kingdom, where the term patty is rarely used, or the term can even refer simply to ground beef.
---Since the term hamburger usually implies beef, for clarity burger may be prefixed with the type
---of meat or meat substitute used, as in beef burger, turkey burger, bison burger, portobello
---burger, or veggie burger. In Australia and New Zealand, a piece of chicken breast on a bun is
---known as a chicken burger, which would generally not be considered to be a burger in the United
---States; Americans would generally call it a chicken sandwich, but in Australian English and New
---Zealand English a sandwich requires sliced bread (not a bun), so it would not be considered a
---sandwich.
---
---Hamburgers are typically sold at fast-food restaurants, diners, and specialty and high-end
---restaurants. There are many international and regional variations of hamburgers.
---
---## Etymology and terminology
---The term hamburger originally derives from Hamburg, the second-largest city in Germany; however,
---there is no certain connection between the food and the city.
---
---By back-formation, the term "burger" eventually became a self-standing word that is associated
---with many different types of sandwiches, similar to a (ground meat) hamburger, but made of
---different meats such as buffalo in the buffalo burger, venison, kangaroo, chicken, turkey, elk,
---lamb or fish like salmon in the salmon burger, but even with meatless sandwiches as is the case
---of the veggie burger.
---
---## History
---As versions of the meal have been served for over a century, its origin remains ambiguous. The
---book The Art of Cookery Made Plain and Easy by Hannah Glasse included a recipe in 1758 as
---"Hamburgh sausage", which suggested to serve it "roasted with toasted bread under it". A similar
---snack was also popular in Hamburg by the name "Rundstück warm" ("bread roll warm") in 1869 or
---earlier, and supposedly eaten by many emigrants on their way to America, but may have contained
---roasted beefsteak rather than Frikadeller. Hamburg steak is reported to have been served between
---two pieces of bread on the Hamburg America Line, which began operations in 1847. Each of these
---may mark the invention of the hamburger, and explain the name.
---
---There is a reference to a "Hamburg steak" as early as 1884 in the Boston Journal. On July 5,
---1896, the Chicago Daily Tribune made a highly specific claim regarding a "hamburger sandwich" in
---an article about a "Sandwich Car": "A distinguished favorite, only five cents, is Hamburger steak
---sandwich, the meat for which is kept ready in small patties and 'cooked while you wait' on the
---gasoline range."
---
---### Claims of invention
---The origin of the hamburger is unclear, though "hamburger steak sandwiches" have been advertised
---in U.S. newspapers from New York to Hawaii since at least the 1890s. The invention of hamburgers
---is commonly attributed to various people, including Charlie Nagreen, Frank and Charles Menches,
---Oscar Weber Bilby, Fletcher Davis, or Louis Lassen. White Castle traces the origin of the
---hamburger to Hamburg, Germany with its invention by Otto Kuase. Some have pointed to a recipe for
---"Hamburgh sausages" on toasted bread, which was published in The Art of Cookery Made Plain and
---Easy by Hannah Glasse in 1747. Hamburgers gained national recognition in the U.S. at the 1904 St.
---Louis World's Fair when the New York Tribune referred to the hamburger as "the innovation of a
---food vendor on the pike". No conclusive argument has ended the dispute over invention. An article
---from ABC News sums up: "One problem is that there is little written history. Another issue is
---that the spread of the burger happened largely at the World's Fair, from tiny vendors that came
---and went in an instant. And it is entirely possible that more than one person came up with the
---idea at the same time in different parts of the country."
---
---#### Louis Lassen
---Although debunked by The Washington Post, a popular myth recorded by Connecticut Congresswoman
---Rosa DeLauro stated the first hamburger served in America was by Louis Lassen, a Danish
---immigrant, after he opened Louis' Lunch in New Haven in 1895. Louis' Lunch, a small lunch wagon
---in New Haven, Connecticut, is said to have sold the first hamburger and steak sandwich in the
---U.S. in 1900. New York Magazine states that "The dish actually had no name until some rowdy
---sailors from Hamburg named the meat on a bun after themselves years later", noting also that this
---claim is subject to dispute. A customer ordered a quick hot meal and Louis was out of steaks.
---Taking ground beef trimmings, Louis made a patty and grilled it, putting it between two slices of
---toast. Some critics like Josh Ozersky, a food editor for New York Magazine, claim that this
---sandwich was not a hamburger because the bread was toasted.
---
---#### Charlie Nagreen
---One of the earliest claims comes from Charlie Nagreen, who in 1885 sold a meatball between two
---slices of bread at the Seymour Fair now sometimes called the Outagamie County Fair. The Seymour
---Community Historical Society of Seymour, Wisconsin, credits Nagreen, now known as "Hamburger
---Charlie", with the invention. Nagreen was fifteen when he was reportedly selling pork sandwiches
---at the 1885 Seymour Fair, made so customers could eat while walking. The Historical Society
---explains that Nagreen named the hamburger after the Hamburg steak with which local German
---immigrants were familiar.
---
---#### Otto Kuase
---According to White Castle, Otto Kuase was the inventor of the hamburger. In 1891, he created a
---beef patty cooked in butter and topped with a fried egg. German sailors would later omit the
---fried egg.
---
---#### Oscar Weber Bilby
---The family of Oscar Weber Bilby claim the first-known hamburger on a bun was served on July 4,
---1891, on Grandpa Oscar's farm. The bun was a yeast bun. In 1995, Governor Frank Keating
---proclaimed that the first true hamburger on a bun was created and consumed in Tulsa, Oklahoma in
---1891, calling Tulsa, "The Real Birthplace of the Hamburger."
---
---#### Frank and Charles Menches
---Frank and Charles Menches claim to have sold a ground beef sandwich at the Erie County Fair in
---1885 in Hamburg, New York. During the fair, they ran out of pork sausage for their sandwiches and
---substituted beef. The brothers exhausted their supply of sausage, so purchased chopped up beef
---from a butcher, Andrew Klein. Historian Joseph Streamer wrote that the meat was from Stein's
---market not Klein's, despite Stein's having sold the market in 1874. The story notes that the name
---of the hamburger comes from Hamburg, New York, not Hamburg, Germany. Frank Menches's obituary in
---The New York Times states that these events took place at the 1892 Summit County Fair in Akron,
---Ohio.
---
---#### Fletcher Davis
---Fletcher Davis of Athens, Texas claimed to have invented the hamburger. According to oral
---histories, in the 1880s he opened a lunch counter in Athens and served a 'burger' of fried ground
---beef patties with mustard and Bermuda onion between two slices of bread, with a pickle on the
---side. The story is that in 1904, Davis and his wife Ciddy ran a sandwich stand at the St. Louis
---World's Fair. Historian Frank X. Tolbert, noted that Athens resident Clint Murchison said his
---grandfather dated the hamburger to the 1880s with Fletcher "Old Dave" Davis. A photo of "Old
---Dave's Hamburger Stand" from 1904 was sent to Tolbert as evidence of the claim.
---
---#### Other hamburger-steak claims
---Various non-specific claims of invention relate to the term "hamburger steak" without mention of
---its being a sandwich. The first printed American menu which listed hamburger is said to be an
---1834 menu from Delmonico's in New York. However, the printer of the original menu was not in
---business in 1834. In 1889, a menu from Walla Walla Union in Washington offered hamburger steak as
---a menu item.
---
---Between 1871 and 1884, "Hamburg Beefsteak" was on the "Breakfast and Supper Menu" of the Clipper
---Restaurant at 311/313 Pacific Street in San Fernando, California. It cost 10 cents—the same price
---as mutton chops, pig's feet in batter, and stewed veal. It was not, however, on the dinner menu.
---Only "Pig's Head", "Calf Tongue", and "Stewed Kidneys" were listed. Another claim ties the
---hamburger to Summit County, New York or Ohio. Summit County, Ohio exists, but Summit County,
---New York does not.
---
---### Early major vendors
---* 1921: White Castle, Wichita, Kansas. Due to widely anti-German sentiment in the U.S. during
---  World War I, an alternative name for hamburgers was Salisbury steak. Following the war,
---  hamburgers became unpopular until the White Castle restaurant chain marketed and sold large
---  numbers of small 65 mm (2+½ in) square hamburgers, known as sliders. They started to create
---  five holes in each patty, which help them cook evenly and eliminate the need to flip the
---  burger. In 1995, White Castle began selling frozen hamburgers in convenience stores and vending
---  machines.
---* 1923: Kewpee Hamburgers, or Kewpee Hotels, Flint, Michigan. Kewpee was the second hamburger
---  chain and peaked at 400 locations before World War II. Many of these were licensed but not
---  strictly franchised. Many closed during WWII. Between 1955 and 1967, another wave closed or
---  caused changes of name. In 1967 the Kewpee licensor moved the company to a franchise system.
---  Currently only five locations exist.
---* 1926: White Tower Hamburgers
---* 1927: Little Tavern
---* 1930s: White Castle (II; run by Henry Cassada)
---* 1931: Krystal
---* 1936: Big Boy. In 1937, Bob Wian created the double deck hamburger at his hamburger stand in
---  Glendale California. Big Boy would become the name of the hamburger, the mascot and the
---  restaurants. Big Boy expanded nationally through regional franchising and subfranchising.
---  Primarily operating as drive-in restaurants in the 1950s, interior dining gradually replaced
---  curb service by the early 1970s. Many franchises have closed or operate independently, but at
---  the remaining American restaurants, the Big Boy double deck hamburger remains the signature
---  item.
---* 1940: McDonald's restaurant, San Bernardino, California, was opened by Richard and Maurice
---  McDonald. Their introduction of the "Speedee Service System" in 1948 established the principles
---  of the modern fast-food restaurant. The McDonald brothers began franchising in 1953. In 1961,
---  Ray Kroc (the supplier of their multi-mixer milkshake machines) purchased the company from the
---  brothers for $2.7 million and a 1.9% royalty.
---
---## Today
---Hamburgers are usually a feature of fast food restaurants. The hamburgers served in major fast
---food establishments are usually mass-produced in factories and frozen for delivery to the site.
---These hamburgers are thin and of uniform thickness, differing from the traditional American
---hamburger prepared in homes and conventional restaurants, which is thicker and prepared by hand
---from ground beef. Most American hamburgers are round, but some fast-food chains, such as Wendy's,
---sell square-cut hamburgers. Hamburgers in fast food restaurants are usually grilled on a
---flat-top, but some firms, such as Burger King, use a gas flame grilling process. At conventional
---American restaurants, hamburgers may be ordered "rare", but normally are served medium-well or
---well-done for food safety reasons. Fast food restaurants do not usually offer this option.
---
---The McDonald's fast-food chain sells the Big Mac, one of the world's top selling hamburgers, with
---an estimated 550 million sold annually in the United States.[34] Other major fast-food chains,
---including Burger King (also known as Hungry Jack's in Australia), A&W, Culver's, Whataburger,
---Carl's Jr./Hardee's chain, Wendy's (known for their square patties), Jack in the Box, Cook Out,
---Harvey's, Shake Shack, In-N-Out Burger, Five Guys, Fatburger, Vera's, Burgerville,
---Back Yard Burgers, Lick's Homeburger, Roy Rogers, Smashburger, and Sonic also rely heavily on
---hamburger sales. Fuddruckers and Red Robin are hamburger chains that specialize in the mid-tier
---"restaurant-style" variety of hamburgers.
---
---Some restaurants offer elaborate hamburgers using expensive cuts of meat and various cheeses,
---toppings, and sauces. One example is the Bobby's Burger Palace chain founded by well-known chef
---and Food Network star Bobby Flay.
---
---Hamburgers are often served as a fast dinner, picnic or party food and are often cooked outdoors
---on barbecue grills.
---
---A high-quality hamburger patty is made entirely of ground (minced) beef and seasonings; these may
---be described as "all-beef hamburger" or "all-beef patties" to distinguish them from inexpensive
---hamburgers made with cost-savers like added flour, textured vegetable protein, ammonia treated
---defatted beef trimmings (which the company Beef Products Inc, calls "lean finely textured beef"),
---advanced meat recovery, or other fillers. In the 1930s ground liver was sometimes added. Some
---cooks prepare their patties with binders like eggs or breadcrumbs. Seasonings may include salt
---and pepper and others like as parsley, onions, soy sauce, Thousand Island dressing, onion soup
---mix, or Worcestershire sauce. Many name brand seasoned salt products are also used.
---
---### Safety
---Raw hamburger may contain harmful bacteria that can produce food-borne illness such as
---Escherichia coli O157:H7, due to the occasional initial improper preparation of the meat, so
---caution is needed during handling and cooking. Because of the potential for food-borne illness,
---the USDA recommends hamburgers be cooked to an internal temperature of 160°F (71°C). If cooked to
---this temperature, they are considered well-done.
---
---## Variations
---### Other meats
---Burgers can also be made with patties made from ingredients other than beef. For example, a
---turkey burger uses ground turkey meat, a chicken burger uses ground chicken meat. A buffalo
---burger uses ground meat from a bison, and an ostrich burger is made from ground seasoned ostrich
---meat. A deer burger uses ground venison from deer.
---
---### Veggie burgers
---Vegetarian and vegan burgers can be formed from a meat analogue, a meat substitute such as tofu,
---TVP, seitan (wheat gluten), quorn, beans, grains or an assortment of vegetables, ground up and
---mashed into patties.
---
---Vegetable patties have existed in various Eurasian cuisines for millennia, and are a commonplace
---item in Indian cuisine.
---
---### Steak burgers
---A steak burger is a marketing term for a hamburger claimed to be of superior quality, except in
---Australia, where it is a sandwich containing a steak.
---
---Use of the term "steakburger" dates to the 1920s in the United States. In the U.S. in 1934, A.H.
---"Gus" Belt, the founder of Steak 'n Shake, devised a higher-quality hamburger and offered it as a
---"steakburger" to customers at the company's first location in Normal, Illinois. This burger used
---a combination of ground meat from the strip portion of T-bone steak and sirloin steak in its
---preparation. Steak burgers are a primary menu item at Steak 'n Shake restaurants, and the
---company's registered trademarks included "original steakburger" and "famous for steakburgers".
---Steak 'n Shake's "Prime Steakburgers" are now made of choice grade brisket and chuck.
---
---Beef is typical, although other meats such as lamb and pork may also be used. The meat is ground
---or chopped.
---
---In Australia, a steak burger is a steak sandwich which contains a whole steak, not ground meat.
---
---Steak burgers may be cooked to various degrees of doneness.
---
---Steak burgers may be served with standard hamburger toppings such as lettuce, onion, and tomato.
---Some may have additional various toppings such as cheese, bacon, fried egg, mushrooms, additional
---meats, and others.
---
---Various fast food outlets and restaurants ‍—‌ such as Burger King, Carl's Jr., Hardee's, IHOP,
---Steak 'n Shake, Mr. Steak, and Freddy's ‍—‌ market steak burgers. Some restaurants offer high-end
---burgers prepared from aged beef. Additionally, many restaurants have used the term "steak burger"
---at various times.
---
---Some baseball parks concessions in the United States call their hamburgers steak burgers, such as
---Johnny Rosenblatt Stadium in Omaha, Nebraska.
---
---Burger King introduced the Sirloin Steak sandwich in 1979 as part of a menu expansion that in
---turn was part of a corporate restructuring effort for the company. It was a single oblong patty
---made of chopped steak served on a sub-style, sesame seed roll. Additional steak burgers that
---Burger King has offered are the Angus Bacon Cheddar Ranch Steak Burger, the Angus Bacon & Cheese
---Steak Burger, and a limited edition Stuffed Steakhouse Burger.
---
---In 2004, Steak 'n Shake sued Burger King over the latter's use of term Steak Burger in
---conjunction with one of its menu items, claiming that such use infringed on trademark rights.
---(According to the St. Louis Post-Dispatch, Burger King's attorneys "grilled" Steak 'n Shake's CEO
---in court about the precise content of Steak 'n Shake's steakburger offering.) The case was
---settled out of court.
---
---### United States and Canada
---The hamburger is considered a national dish of the United States. In the United States and
---Canada, burgers may be classified as two main types: fast food hamburgers and individually
---prepared burgers made in homes and restaurants. The latter are often prepared with a variety of
---toppings, including lettuce, tomato, onion, and often sliced pickles (or pickle relish). French
---fries (or commonly Poutine in Canada) often accompany the burger. Cheese (usually processed
---cheese slices but often Cheddar, Swiss, pepper jack, or blue), either melted directly on the meat
---patty or crumbled on top, is generally an option.
---
---Condiments might be added to a hamburger or may be offered separately on the side including
---ketchup, mustard, mayonnaise, relish, salad dressings and barbecue sauce.
---
---Other toppings can include bacon, avocado or guacamole, sliced sautéed mushrooms, cheese sauce,
---chili (usually without beans), fried egg, scrambled egg, feta cheese, blue cheese, salsa,
---pineapple, jalapeños and other kinds of chili peppers, anchovies, slices of ham or bologna,
---pastrami or teriyaki-seasoned beef, tartar sauce, french fries, onion rings or potato chips.
---
---* Standard toppings on hamburgers may depend upon location, particularly at restaurants that are
---  not national or regional franchises.
---* Restaurants may offer hamburgers with multiple meat patties. The most common variants are
---  double and triple hamburgers, but California-based burger chain In-N-Out once sold a sandwich
---  with one hundred patties, called a "100x100."
---* Pastrami burgers may be served in Salt Lake City, Utah.
---* A patty melt consists of a patty, sautéed onions and cheese between two slices of rye bread.
---  The sandwich is then buttered and fried.
---* A slider is a very small square hamburger patty, served on an equally small bun and usually
---  sprinkled with diced onions. According to the earliest citations, the name originated aboard
---  U.S. Navy ships, due to the manner in which greasy burgers slid across the galley grill as the
---  ship pitched and rolled. Other versions claim the term "slider" originated from the hamburgers
---  served by flight line galleys at military airfields, which were so greasy they slid right
---  through one; or because their small size allows them to "slide" right down the throat in one or
---  two bites.
---* In Alberta, Canada a "kubie burger" is a hamburger made with a pressed Ukrainian sausage
---  (kubasa).
---* A butter burger, found commonly throughout Wisconsin and the upper midwest is a normal burger
---  with a pad of butter as a topping, or a heavily buttered bun. It is the signature menu item of
---  the restaurant chain Culver's.
---* The Fat Boy, is an iconic hamburger with chili meat sauce originating in the Greek burger
---  restaurants of Winnipeg, Manitoba
---* In Minnesota, a "Juicy Lucy" (also spelled "Jucy Lucy"), is a hamburger having cheese inside
---  the meat patty rather than on top. A piece of cheese is surrounded by raw meat and cooked until
---  it melts, resulting in a molten core of cheese within the patty. This scalding hot cheese tends
---  to gush out at the first bite, so servers frequently instruct customers to let the sandwich
---  cool for a few minutes before consumption.
---* A low carb burger is a hamburger served without a bun and replaced with large slices of lettuce
---  with mayonnaise or mustard being the sauces primarily used.
---* A ramen burger, invented by Keizo Shimamoto, is a hamburger patty sandwiched between two discs
---  of compressed ramen noodles in lieu of a traditional bun.
---* Luther Burger is a bacon cheeseburger with two glazed doughnuts instead of buns.
---* Steamed cheeseburger is a cheeseburger where the burger is steamed instead of grilled. It was
---  invented in Connecticut.
---
---### France
---In 2012, according to a study by the NDP cabinet, the French consume 14 hamburgers in restaurants
---per year per person, placing them fourth in the world and second in Europe, just behind the
---British.
---
---According to a study by Gira Conseil on the consumption of hamburger in France in 2013, 75% of
---traditional French restaurants offer at least one hamburger on their menu and for a third of
---these restaurants, it has become the leader in the range of dishes, ahead of rib steaks, grills
---or fish.
---
---### Mexico
---In Mexico, burgers (called *hamburguesas*) are served with ham and slices of American cheese
---fried on top of the meat patty. The toppings include avocado, jalapeño slices, shredded lettuce,
---onion and tomato. The bun has mayonnaise, ketchup and mustard. Bacon may also be added, which can
---be fried or grilled along with the meat patty. A slice of pineapple may be added to a hamburger
---for a "Hawaiian hamburger".
---
---Some restaurants' burgers also have barbecue sauce, and others replace the ground patty with
---sirloin, Al pastor meat, barbacoa or a fried chicken breast. Many burger chains from the United
---States can be found all over Mexico, including Carl's Jr., Sonic, McDonald's, and Burger King.
---
---### United Kingdom and Ireland
---
---Hamburgers in the UK and Ireland are very similar to those in the US, and the High Street is
---dominated by the same big two chains as in the U.S. — McDonald's and Burger King. The menus
---offered to both countries are virtually identical, although portion sizes tend to be smaller in
---the UK. In Ireland the food outlet Supermacs is widespread throughout the country serving burgers
---as part of its menu. In Ireland, Abrakebabra (started out selling kebabs) and Eddie Rocket's are
---also major chains.
---
---An original and indigenous rival to the big two U.S. giants was the quintessentially British
---fast-food chain Wimpy, originally known as Wimpy Bar (opened 1954 at the Lyon's Corner House in
---Coventry Street London), which served its hamburgers on a plate with British-style chips,
---accompanied by cutlery and delivered to the customer's table. In the late 1970s, to compete with
---McDonald's, Wimpy began to open American-style counter-service restaurants and the brand
---disappeared from many UK high streets when those restaurants were re-branded as Burger Kings
---between 1989 and 1990 by the then-owner of both brands, Grand Metropolitan. A management buyout
---in 1990 split the brands again and now Wimpy table-service restaurants can still be found in many
---town centres whilst new counter-service Wimpys are now often found at motorway service stations.
---
---Hamburgers are also available from mobile kiosks, commonly known as “burger vans", particularly
---at outdoor events such as football matches. Burgers from this type of outlet are usually served
---without any form of salad — only fried onions and a choice of tomato ketchup, mustard or brown
---sauce.
---
---Chip shops, particularly in the West Midlands and North-East of England, Scotland and Ireland,
---serve battered hamburgers called batter burgers. This is where the burger patty, by itself, is
---deep-fat-fried in batter and is usually served with chips.
---
---Hamburgers and veggie burgers served with chips and salad, are standard pub grub menu items. Many
---pubs specialize in "gourmet" burgers. These are usually high quality minced steak patties, topped
---with items such as blue cheese, brie, avocado, anchovy mayonnaise, et cetera. Some British pubs
---serve burger patties made from more exotic meats including venison burgers (sometimes nicknamed
---Bambi Burgers), bison burgers, ostrich burgers and in some Australian themed pubs even kangaroo
---burgers can be purchased. These burgers are served in a similar way to the traditional hamburger
---but are sometimes served with a different sauce including redcurrant sauce, mint sauce and plum
---sauce.
---
---In the early 21st century "premium" hamburger chain and independent restaurants have arisen,
---selling burgers produced from meat stated to be of high quality and often organic, usually served
---to eat on the premises rather than to take away. Chains include Gourmet Burger Kitchen, Ultimate
---Burger, Hamburger Union and Byron Hamburgers in London. Independent restaurants such as
---Meatmarket and Dirty Burger developed a style of rich, juicy burger in 2012 which is known as a
---dirty burger or third-wave burger.
---
---In recent years Rustlers has sold pre-cooked hamburgers reheatable in a microwave oven in the
---United Kingdom.
---
---In the UK, as in North America and Japan, the term "burger" can refer simply to the patty, be it
---beef, some other kind of meat, or vegetarian.
---
---### Australia and New Zealand
---Fast food franchises sell American-style fast food hamburgers in Australia and New Zealand. The
---traditional Australasian hamburgers are usually bought from fish and chip shops or milk bars,
---rather than from chain restaurants. These traditional hamburgers are becoming less common as
---older-style fast food outlets decrease in number. The hamburger meat is almost always ground
---beef, or "mince" as it is more commonly referred to in Australia and New Zealand. They commonly
---include tomato, lettuce, grilled onion and meat as minimum—in this form, known in Australia as a
---"plain hamburger", which often also includes a slice of beetroot—and, optionally, can include
---cheese, beetroot, pineapple, a fried egg and bacon. If all these optional ingredients are
---included, it is known in Australia as "burger with the lot".
---
---In Australia and New Zealand, as in the United Kingdom, the word sandwich is generally reserved
---for two slices of bread (from a loaf) with fillings in between them - unlike in American English
---where a sandwich is fillings between two pieces of any kind of bread, not only slices of bread -
---as such burgers are not generally considered to be sandwiches. The term burger is applied to any
---cut bun with a hot filling, even when the filling does not contain beef, such as a chicken burger
---(generally with chicken breast rather than chicken mince), salmon burger, pulled pork burger,
---veggie burger, etc.
---
---The only variance between the two countries' hamburgers is that New Zealand's equivalent to "The
---Lot" often contains a steak (beef) as well. The condiments regularly used are barbecue sauce and
---tomato sauce. The traditional Australasian hamburger never includes mayonnaise. The McDonald's
---"McOz" Burger is partway between American and Australian style burgers, having beetroot and
---tomato in an otherwise typical American burger; however, it is no longer a part of the menu.
---Likewise, McDonald's in New Zealand created a Kiwiburger, similar to a Quarter Pounder, but
---features salad, beetroot and a fried egg. The Hungry Jack's (Burger King) "Aussie Burger" has
---tomato, lettuce, onion, cheese, bacon, beetroot, egg, ketchup and a meat patty, while adding
---pineapple is an upcharge. It is essentially a "Burger with the lot", but uses the standard HJ
---circular breakfast Egg, rather than the fully fried egg used by local fish shops.
---
---### China
---In China, due to the branding of their sandwiches by McDonald's and KFC restaurants in China, the
---word "burger" (汉堡) refers to all sandwiches that consist of two pieces of bun and a meat patty
---in between. This has led to confusion when Chinese nationals try to order sandwiches with meat
---fillings other than beef in fast-food restaurants in North America.
---
---A popular Chinese street food, known as roujiamo (肉夹馍), consists of meat (most commonly pork)
---sandwiched between two buns. Roujiamo has been called the "Chinese hamburger". Since the sandwich
---dates back to the Qin dynasty (221-206 BC) and fits the aforementioned Chinese word for burger,
---Chinese media have claimed that the hamburger was invented in China.
---
---### Japan
---In Japan, hamburgers can be served in a bun, called hanbāgā (ハンバーガー), or just the patties
---served without a bun, known as hanbāgu (ハンバーグ) or "hamburg", short for "hamburg steak".
---
---Hamburg steaks (served without buns) are similar to what are known as Salisbury steaks in the US.
---They are made from minced beef, pork or a blend of the two mixed with minced onions, egg,
---breadcrumbs and spices. They are served with brown sauce (or demi-glace in restaurants) with
---vegetable or salad sides, or occasionally in Japanese curries. Hamburgers may be served in
---casual, western style suburban restaurant chains known in Japan as "family restaurants".
---
---Hamburgers in buns, on the other hand, are predominantly the domain of fast food chains. Japan
---has homegrown hamburger chain restaurants such as MOS Burger, First Kitchen and Freshness Burger.
---Local varieties of burgers served in Japan include teriyaki burgers, katsu burgers (containing
---tonkatsu) and burgers containing shrimp korokke. Some of the more unusual examples include the
---rice burger, where the bun is made of rice, and the luxury 1,000-yen (US$10) "Takumi Burger"
---(meaning "artisan taste"), featuring avocados, freshly grated wasabi, and other rare seasonal
---ingredients. In terms of the actual patty, there are burgers made with Kobe beef, butchered from
---cows that are fed with beer and massaged daily. McDonald's Japan also recently launched a McPork
---burger, made with US pork. McDonald's has been gradually losing market share in Japan to these
---local hamburger chains, due in part to the preference of Japanese diners for fresh ingredients
---and more refined, "upscale" hamburger offerings. Burger King once retreated from Japan, but
---re-entered the market in summer 2007 in cooperation with the Korean-owned Japanese fast-food
---chain Lotteria.
---
---### Denmark
---In Denmark, the hamburger was introduced in 1949, though it was called the bøfsandwich. There are
---many variations. While the original bøfsandwich was simply a generic meat patty containing a mix
---of beef and horse meat, though with slightly different garnish (mustard, ketchup and soft
---onions), it has continued to evolve. Today, a bøfsandwich usually contains a beef patty, pickled
---cucumber, raw, pickled, fried and/or soft onions, pickled red beets, mustard, ketchup, remoulade,
---and perhaps most strikingly, is often overflowing with brown gravy, which is sometimes even
---poured on top of the assembled bøfsandwich. The original bøfsandwich is still on the menu at the
---same restaurant from which it originated in 1949, now run by the grandson of the original owner.
---
---Following the popularity of the bøfsandwich, many variations sprung up, using different types of
---meat instead of the beef patty. One variation, the flæskestegssandwich, grew especially popular.
---This variation replaces the minced beef patty with slices of pork loin or belly, and typically
---uses sweet-and-sour pickled red cabbage, mayonnaise, mustard, and pork rinds as garnish.
---
---Today, the bøfsandwich, flæskestegssandwich, and their many variations co-exist with the more
---typical hamburger, with the opening of the first Burger King restaurant in 1977 popularizing the
---original dish in Denmark. Many local, high-end burger restaurants dot the major cities, including
---Popl, an offshoot of Noma.
---
---### Other countries
---#### East Asia
---Rice burgers, mentioned above, are also available in several East Asian countries such as Taiwan
---and South Korea. Lotteria is a big hamburger franchise in Japan owned by the South Korean Lotte
---group, with outlets also in China, South Korea, Vietnam, and Taiwan. In addition to selling beef
---hamburgers, they also have hamburgers made from squid, pork, tofu, and shrimp. Variations
---available in South Korea include Bulgogi burgers and Kimchi burgers.
---
---#### India
---In India, burgers are usually made from chicken or vegetable patties due to cultural beliefs
---against eating beef (which stem from Hindu religious practice) and pork (which stems from Islamic
---religious practice). Because of this, the majority of fast food chains and restaurants in India
---do not serve beef. McDonald's in India, for instance, does not serve beef, offering the "Maharaja
---Mac" instead of the Big Mac, substituting the beef patties with chicken. Another version of the
---Indian vegetarian burger is the Wada Pav consisting deep-fried potato patty dipped in gramflour
---batter. It is usually served with mint chutney and fried green chili. Another alternative is the
---"Buff Burger" made with buffalo meat.
---
---#### Pakistan
---In Pakistan, apart from American fast food chains, burgers can be found in stalls near shopping
---areas, the best known being the "shami burger". This is made from "shami kebab", made by mixing
---lentil and minced lamb. Onions, scrambled egg and ketchup are the most popular toppings.
---
---#### Malaysia
---In Malaysia there are 300 McDonald's restaurants. The menu in Malaysia also includes eggs and
---fried chicken on top of the regular burgers. Burgers are also easily found at nearby mobile
---kiosks, especially Ramly Burger.
---
---#### Mongolia
---In Mongolia, a recent fast food craze due to the sudden influx of foreign influence has led to
---the prominence of the hamburger. Specialized fast food restaurants serving to Mongolian tastes
---have sprung up and seen great success.
---
---#### Turkey
---In Turkey, in addition to the internationally familiar offerings, numerous localized variants of
---the hamburger may be found, such as the Islak Burger (lit. "Wet-Burger"), which is a beef slider
---doused in seasoned tomato sauce and steamed inside a special glass chamber, and has its origins
---in the Turkish fast food retailer Kizilkayalar. Other variations include lamb-burgers and
---offal-burgers, which are offered by local fast food businesses and global chains alike, such as
---McDonald's and Burger King. Most burger shops have also adopted a pizzeria-like approach when it
---comes to home delivery, and almost all major fast food chains deliver.
---
---#### Yugoslavia and Serbia
---In the former Yugoslavia, and originally in Serbia, there is a local version of the hamburger
---known as the *pljeskavica*. It is often served as a patty, but may have a bun as well.
---
---#### Belgium and Netherlands
---Throughout Belgium and in some eateries in the Netherlands, a Bicky Burger is sold that combines
---pork, chicken, and horse meat. The hamburger, usually fried, is served between a bun, sprinkled
---with sesame seeds. It often comes with a specific Bickysaus (Bicky dressing) made with
---mayonnaise, mustard, cabbage, and onion.
---
---## Unusual hamburgers
---* In May 2012, Serendipity 3 was recognized as the Guinness World Record holder for serving the
---  world's most expensive hamburger, the $295 Le Burger Extravagant.
---* At $499, the world's largest hamburger commercially available weighs 185.8 pounds (84.3 kg) and
---  is sold at Mallie's Sports Grill & Bar in Southgate, Michigan. Called the "Absolutely
---  Ridiculous Burger", it takes about 12 hours to prepare. It was cooked and adjudicated on May
---  30, 2009.
---* A $777 Kobe beef and Maine lobster burger, topped with caramelized onion, Brie cheese and
---  prosciutto, was reported available at Le Burger Brasserie, inside the Paris Las Vegas casino.
---* On August 5, 2013, the first hamburger made from meat lab grown from cow stem cells was served.
---  The hamburger was the result of research in the Netherlands led by Mark Post at Maastricht
---  University and sponsored by Google's co-founder Sergey Brin.
---
---## Slang
---"$100 hamburger" ("hundred-dollar hamburger") is aviation slang for a general aviation pilot
---needing an excuse to fly. A $100 hamburger trip typically involves flying a short distance (less
---than two hours), eating at an airport restaurant, and flying home.
---@source Hamburger - Wikipedia @ https://en.wikipedia.org/wiki/Hamburger
---@*hidden Checks if the user's UUID matches `66a6c5c4-963b-4b73-a0d9-162faedd8b7f`.
---@return boolean
function EntityAPI:isHamburger() end

---Gets if this entity is currently in lava.
---@return boolean
function EntityAPI:isInLava() end

---Gets if this entity is standing in rain.
---@return boolean
function EntityAPI:isInRain() end

---Gets if this entity is invisible for any reason (Invisibility status effect, `Invisible` NBT,
---etc.)
---@return boolean
function EntityAPI:isInvisible() end

---Gets if this entity is currently in water or a waterlogged block.
---@return boolean
function EntityAPI:isInWater() end

---Gets if this entity is loaded and being updated.
---@return boolean
function EntityAPI:isLoaded() end

---Gets if this entity is currently on fire.
---@return boolean
function EntityAPI:isOnFire() end

---Gets if this entity is standing on solid ground.
---@return boolean
function EntityAPI:isOnGround() end

---Gets if this entity is completely silent for any reason (Mainly `Silent` NBT.)
---@return boolean
function EntityAPI:isSilent() end

---Gets if this entity is sneaking.
---@return boolean
function EntityAPI:isSneaking() end

---Gets if this entity is sprinting.
---@return boolean
function EntityAPI:isSprinting() end

---Gets if this entity's eyes are underwater.
---@return boolean
function EntityAPI:isUnderwater() end

---Gets if this entity is wet for any reason (In water, in rain, etc.)
---@return boolean
function EntityAPI:isWet() end


---==============================================================================================---
---  LIVINGENTITYAPI extends ENTITYAPI                                                           ---
---==============================================================================================---

---A living Minecraft entity.
---@class LivingEntityAPI: EntityAPI
local LivingEntityAPI


---===== GETTERS =====---

---Gets the amount of absorption this entity has.
---@return number
function LivingEntityAPI:getAbsorptionAmount() end

---Gets the hand this entity last used an item in.
---
---Defaults to `"MAIN_HAND"` if no item has been used.
---@return LivingEntityAPI.hand
function LivingEntityAPI:getActiveHand() end

---Gets the item that this entity is currently using.
---
---If this entity is using nothing, an item stack of `minecraft:air x0` is returned.
---@return ItemStack
function LivingEntityAPI:getActiveItem() end

---Gets the amount of time this entity has been using its current active item in ticks.
---@return integer
function LivingEntityAPI:getActiveItemTime() end

---Gets the amount of armor this entity has.
---@return number
function LivingEntityAPI:getArmor() end

---Gets the amount of arrows stuck in this entity.
---@return integer
function LivingEntityAPI:getArrowCount() end

---Gets the yaw of this entity's entire body in degrees.  
---If a `delta` is given, the yaw is interpolated between the previous and current ticks.
---
---If `delta` is `nil`, it will default to `1`.
---@param delta? number
---@return number
function LivingEntityAPI:getBodyYaw(delta) end

---Gets the amount of time this entity has been dead in ticks.  
---This usually has a maximum of 19 before the entity is deleted.
---@return integer
function LivingEntityAPI:getDeathTime() end

---Gets the category this entity belongs to.
---@return LivingEntityAPI.category
function LivingEntityAPI:getEntityCategory() end

---Gets the health of this entity.
---@return number
function LivingEntityAPI:getHealth() end

---Gets the item held in on of this entity's hands.
---
---If this entity is holding nothing in the given hand, an item stack of `minecraft:air x0` is
---returned.
---
---If `offhand` is `nil`, it will default to `false`.
---@param offhand? boolean
---@return ItemStack
function LivingEntityAPI:getHeldItem(offhand) end

---Gets the maximum health of this entity.
---@return number
function LivingEntityAPI:getMaxHealth() end

---Gets the amount of stingers stuck in this entity.
---@return integer
function LivingEntityAPI:getStingerCount() end

---Gets the arm this entity is currently swinging.
---
---Returns `nil` if no arm is swinging.
---@return LivingEntityAPI.hand?
function LivingEntityAPI:getSwingArm() end

---Gets how long it will take this entity to swing its arm in ticks.
---@return integer
function LivingEntityAPI:getSwingDuration() end

---Gets how long this entity has been swinging its arm in ticks.
---@return integer
function LivingEntityAPI:getSwingTime() end

---Gets if this entity is blocking.
---@return boolean
function LivingEntityAPI:isBlocking() end

---Gets if this entity is using a climbable block.
---@return boolean
function LivingEntityAPI:isClimbing() end

---Gets if this entity is gliding.
---@return boolean
function LivingEntityAPI:isGliding() end

---Gets if this entity is left-handed.
---@return boolean
function LivingEntityAPI:isLeftHanded() end

---Gets if this entity is damaged by water.
---@return boolean
function LivingEntityAPI:isSensitiveToWater() end

---Gets if this entity is currently swinging its arm.
---@return boolean
function LivingEntityAPI:isSwingingArm() end

---Gets if this entity is currently using an item.
---@return boolean
function LivingEntityAPI:isUsingItem() end

---Gets if this entity is in its swimming pose.
---@return boolean
function LivingEntityAPI:isVisuallySwimming() end

---Gets if this entity is spinning with riptide.
---@return boolean
function LivingEntityAPI:riptideSpinning() end


---==============================================================================================---
---  PLAYERAPI extends LIVINGENTITYAPI extends ENTITYAPI                                         ---
---==============================================================================================---

---A Minecraft player.
---@class PlayerAPI: LivingEntityAPI
local PlayerAPI


---===== GETTERS =====---

---Gets the delay of this player's charged attacks in ticks.
---@return number
function PlayerAPI:getChargedAttackDelay() end

---Gets the experience level of this player.
---@return integer
function PlayerAPI:getExperienceLevel() end

---Gets the progress to this player's next experence level.
---@return number
function PlayerAPI:getExperienceProgress() end

---Gets the hunger level of this player.
---@return integer
function PlayerAPI:getFood() end

---Gets the gamemode of this player.
---
---May return `nil` if the current gamemode is unknown.
---@return PlayerAPI.gamemode?
function PlayerAPI:getGamemode() end

---Gets the model type of this player.
---@return PlayerAPI.modelType
function PlayerAPI:getModelType() end

---Gets the saturation level of this player.
---@return number
function PlayerAPI:getSaturation() end

---Gets if this player has a cape.
---@return boolean
function PlayerAPI:hasCape() end

---Gets if this player has a skin.
---@return boolean
function PlayerAPI:hasSkin() end

---Gets if this player is fishing.
---@return boolean
function PlayerAPI:isFishing() end

---Gets if this player is currently in creative flight.
---@return boolean
function PlayerAPI:isFlying() end

---Gets if the given skin layer is set to be visible.
---@param layer PlayerAPI.skinLayer
---@return boolean
function PlayerAPI:isSkinLayerVisible(layer) end
