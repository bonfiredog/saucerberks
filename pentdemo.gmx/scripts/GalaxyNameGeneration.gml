//Reset the current galaxy name.
global.CurrentGalaxyName = ""

//Choose the 'grammar set' of the eventual name to be generated, corresponding to the construction code below.
TypeOfName = choose(1,2,3,4)

//From random lists, choose the different components of the eventual name.
TypeOfWreckNoun = choose("Hulk","Scuttle","Shower","Remains", "Bed", "Salvage", "Founder", "Abandon", "Memory", "Burn", "Flotsam", "Jetsam", "Decay", "Massacre")
TypeOfWreckNoun2 = choose("Orbit", "Tomb", "Wreck","Belt","Sabotage","Mutiny","Loss","Remnants","Carcass")
TypeOfWreckNoun3 = choose("Aftermath", "Folly", "Fall", "Field", "Grave","Grief","Mire","Disaster","Battle","Memorial","Failure","Capsize","Scatter")
WreckName1 = choose("The 'Mabel'","The 'Corsham'","The 'Bingham'", "The Quodir Conflict", "The 'Maug'", "The 'Makepeace'") 
WreckName2 = choose("The Urqhart Fleet", "The 'Mavis'", "The 'Shunlight'", "The 'Gawpjaw'", "The 'Crake'", "The 'Elagail'", "The 'Crucifus'", "The 'Bangor'", "The 'Daisy'", "The 'Pride Of Filtrq'", "The 'Milkmaid'", "The 'Ironside'", "The 'Coronation'", "The 'Narrowdale'", "The Battle For Slayp", "The Battle For Corrius")
WreckName3 = choose("The Battle For Muntjac", "The Ambush Of Admiral Marst", "The Young Metons", "HJS 'Moravia'", "The 'Borstal'", "The Three-Day War", "The Merriot Fracas", "The 'Manchester'")
GeographicDescriptor1 = choose("Array", "Prospect", "Ridge", "Arm", "Depths", "Hope", "Downs", "Pillars", "Fields")
GeographicDescriptor2 = choose("Heights", "Depths", "Reaches", "Wastes", "Marches", "Fens", "Memories","Promise", "Love")
RandomEnding = choose("Parva", "Magna", "Α", "Δ", "Θ", "Λ", "Ξ", "Ψ", "Σ", "Ω", "Minor", "Major", "Upsilon", "Prime","Incognita", "Meta")
CommentNoun = choose ("++CAUTION++", "++DEST++", "++PARTIAL++", "++DANGER++", "++INFESTED++", "++QUARANTINE++", "++LOSS++", "++AVOID++", "++UNKNOWN++", "++HAZARD++" )
Possessive = "'s"
Spacer = " " 
WreckNumberReal = irandom(1000)
WreckNumber = string(WreckNumberReal)

//Construct the chosen 'grammar set' by adding the random components chosen above to its structure.
if TypeOfName = 1 {

FirstWord = choose("The","")
SecondWord = choose(TypeOfWreckNoun, TypeOfWreckNoun2, TypeOfWreckNoun3)
ThirdWord = "Of"
FourthWord = choose(WreckName1, WreckName2, WreckName3)

Result = FirstWord + Spacer + SecondWord + Spacer + ThirdWord + Spacer + FourthWord


} else if TypeOfName = 2 {

FirstWord = choose(TypeOfWreckNoun, TypeOfWreckNoun2, TypeOfWreckNoun3)
SecondWord = "t."
ThirdWord = WreckNumber
Result = FirstWord + Spacer + SecondWord + ThirdWord

}
 else if TypeOfName = 3 {

FirstWord = choose(WreckName1,WreckName2,WreckName3)
SecondWord = choose(GeographicDescriptor1, GeographicDescriptor2)
Result = FirstWord + Possessive + Spacer + SecondWord

} else if TypeOfName = 4 {

FirstWord = choose(WreckName1,WreckName2,WreckName3)
Result = FirstWord
}

//Set the global variable from our result, and add a random ending, or nothing.

global.CurrentGalaxyName = Result + Spacer + choose("","","",RandomEnding,CommentNoun)
