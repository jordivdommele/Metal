# mariachi

Besides from being a student musicology im also a musician myself. Studying Musicology is a way for me to spread my chances to find a job in this industry.
However i enjoy playing music more then studying it and have decided to cheat the system where possible.
My music of choice is Metal since i have always listend to and played this genre. The downside is that there are a lot of subgenres within Metal. Each having their own specifics and characteristics. Being a Student i am very short on time so i wont have time to be able to specialise myself in these things.
So now i have to figure out where the money is within this genre. 
For this i need to compare different subgenres and figure out what the global trend is within them and how they are linked to populairy. Using these findings i should be able to get a carreer going in no time. 
I will use the following subgenres to analyse; thrash, stoner, doom, heavy and progressive metal. 
For all the subgenres i will analyse playlists to find commen trends within the subgenre , then i will look which of these can be linked with popularity within this genre. 


install.packages("tidyverse")
install.packages("spotifyr")
library(spotifyr)
library(tidyverse)
Sys.setenv(SPOTIFY_CLIENT_ID = 'f78108b902694ef28f04812d3847084a')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'a4d9fd978a2d42078c67522ddacf7771')
thrashing <-get_playlist_audio_features('spotify','6QgTemEBMuHaVnOgXaRh1B')
Thrashers <-get_playlist_audio_features('spotify','37i9dQZF1DWZdFtcHGe8ED')
trash1<-get_playlist_audio_features('12124165724','7L4BEudqTRUL3OOeJYlIJ7')

Thrash <-
   Thrashers %>% mutate(playlist = "thrashers") %>%
  bind_rows(thrashing %>% mutate(playlist = "trashing"))%>%
  bind_rows(trash1 %>% mutate(playlist="trash1"))

ggplot(data = Thrash, aes(x = valence, y = energy, color=track.popularity )) +
  geom_jitter() +
  geom_vline(xintercept = 0.5) +
  geom_hline(yintercept = 0.5) +
  scale_x_continuous(expand = c(0, 0), limits = c(0, 1)) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 1)) +
  annotate('text', 0.25 / 2, 0.95, label = "Angry", fontface =
             "bold") +
  annotate('text', 1.75 / 2, 0.95, label = "Happy", fontface = "bold") +
  annotate('text', 1.75 / 2, 0.05, label = "Peaceful", fontface =
             "bold") +
  annotate('text', 0.25 / 2, 0.05, label = "Sad", fontface =
             "bold")

