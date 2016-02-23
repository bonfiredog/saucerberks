NumberOfBitsToCreate = argument0
TypeOfChunk = argument1    
    
BitsCreatedSoFar = 0

//Create a number of bits - this loops until enough bits have been created
while BitsCreatedSoFar < NumberOfBitsToCreate {
    //Create a bit
    instance_create(x,y,TypeOfChunk)
    //Count it as created
    BitsCreatedSoFar = BitsCreatedSoFar + 1
}

//Destroy the player
instance_destroy()