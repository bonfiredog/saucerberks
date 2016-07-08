//Reset the current galaxy name.
global.CurrentGalaxyName = ""

//Choose the 'grammar set' of the eventual name to be generated, corresponding to the construction code below.
TypeOfName = choose(1,2,3)

//From random lists, choose the different components of the eventual name.
TypeOfWreckNoun = choose("Hulk","Scuttle","Drift","Flotsam","Jetsam","Orbit","Wreck","Field","Grave","Disaster","Battle","Memorial" )
TypeOfWreckNoun2 = choose("Remains","Resting Place","Salvage", "Ambush","Abandon","Memory","Burn","Decay","Massacre","Wreck","Tomb","Sabotage", "Failure") 
TypeOfWreckNoun2a = choose("Loss","Remnants","Carcass","Aftermath","Folly","Fall","Field","Grave","Grief","Mire","Disaster","Battle","Memorial","Capsize","Scatter")

WreckName1 = choose("The 'Mabel'","The 'Corsham'","The 'Bingham'", "The 'Quodir'", "The 'Maug'", "The 'Makepeace'") 
WreckName2 = choose("The Urqhart Fleet", "The 'Mavis'", "The 'Shunlight'", "The 'Gawpjaw'", "The 'Crake'", "The 'Elagail'", "The 'Crucifus'", "The 'Bangor'", "The 'Daisy'", "The 'Pride Of Filtrq'", "The 'Milkmaid'", "The 'Ironside'", "The 'Coronation'", "The 'Narrowdale'", "The 'Slayp'", "The 'Corrius'")
WreckName3 = choose("The 'Muntjac", "The 'Ibex'", "The 'Whistler'", "The 'Filibuster'", "The Jealousy'", "The 'Hinckley'", "The 'Admiral Marst'", "HJS 'Moravia'", "The 'Borstal'", "The Three-Day War", "The Merriot Fracas", "The 'Manchester'")

Spacer = " " 
WreckNumberReal = irandom(10000)
WreckNumber = string(WreckNumberReal)

//Construct the chosen 'grammar set' by adding the random components chosen above to its structure.
if TypeOfName = 1 {

FirstWord = "The"
SecondWord = choose(TypeOfWreckNoun2, TypeOfWreckNoun2a)
ThirdWord = "Of"
FourthWord = choose(WreckName1, WreckName2, WreckName3)

Result = FirstWord + Spacer + SecondWord + Spacer + ThirdWord + Spacer + FourthWord

} else if TypeOfName = 2 {

FirstWord = choose(WreckName1,WreckName2,WreckName3)
Result = FirstWord

} else if TypeOfName = 3 {

FirstWord = TypeOfWreckNoun
SecondWord = WreckNumber


Result = FirstWord + Spacer + "\#" + SecondWord

}

//Set the global variable from our result, and add a random ending, or nothing.

global.CurrentGalaxyName = Result

