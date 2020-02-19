# mariachi

Besides from being a student musicology im also a musician myself. Studying Musicology is a way for me to spread my chances to find a job in this industry.
However i enjoy playing music more then studying it and have decided to cheat the system where possible.
My music of choice is Metal since i have always listend to and played this genre. The downside is that there are a lot of subgenres within Metal. Each having their own specifics and characteristics. Being a Student i am very short on time so i wont have time to be able to specialise myself in these things.
So now i have to figure out where the money is within this genre. 
For this i need to compare different subgenres and figure out what the global trend is within them and how they are linked to populairy. Using these findings i should be able to get a carreer going in no time. 
I will use the following subgenres to analyse; thrash, stoner, doom, heavy and progressive metal. 
For all the subgenres i will analyse playlists to find commen trends within the subgenre , then i will look which of these can be linked with popularity within this genre. 

After collecting all my data from multiple thrash metal playlists i gatherd all my findings and searched for the means. 
s.thrash <- Thrash %>% summarize(M_danceability = mean(danceability), SD_danceability = sd(danceability))
 s.thrash<- Thrash %>% summarize(M_energy = mean(energy), SD_energy = sd(energy))

s.thrash <- Thrash %>% summarize(M_loudness = mean(loudness), SD_loudness = sd(loudness))
s.thrash <-Thrash %>% summarize(M_tempo=mean(tempo),SD_tempo=sd(tempo))
 
which gave me :	
M_danceability
SD_danceability
1	0.3657718	0.1226019
M_loudness
SD_loudness
1	-5.503788	2.735876
M_tempo
SD_tempo
1	125.0225	28.95602	
M_energy
SD_energy
1	0.9154049	0.1240541

Because i am very lazy and dont have much time i let R interpret the most used emotions for me using energy and valence.

Turns out thrash metal is angry.

![image](https://github.com/jordivdommele/Metal/blob/master/Rplot.png?raw=true)
