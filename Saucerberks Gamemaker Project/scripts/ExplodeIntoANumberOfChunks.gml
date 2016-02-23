///ExplodeIntoANumberOfChunks(Number Of Chunks, Type)

//Allow the scriptcaller to specify the number of chunks in the explosion.
NumberOfBitsToCreate = argument0

//Allow the scriptcaller to define what type of chunk is created.
TypeOfChunk = argument1
    
//A variable to track how many bits we have.
BitsCreatedSoFar = 0
    
//While there are fewer chunks created than the total to create, 
//create a new chunk of the type specified and increase the 
//total number of chunks created by one.
    while   BitsCreatedSoFar < NumberOfBitsToCreate {
    NewBit = instance_create(x,y,TypeOfChunk)
    BitsCreatedSoFar = BitsCreatedSoFar + 1    
}    

//Play the death sound
audio_play_sound(aDeath, 1, false)
//Destroy the thing that exploded
instance_destroy()
