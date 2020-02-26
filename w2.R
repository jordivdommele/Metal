install.packages("tidyverse")
install.packages("spotifyr")
install.packages("plotly")
library(spotifyr)
library(tidyverse)
library(plotly)
Sys.setenv(SPOTIFY_CLIENT_ID = 'f78108b902694ef28f04812d3847084a')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'a4d9fd978a2d42078c67522ddacf7771')

Thrash<-get_playlist_audio_features("spotify","6QgTemEBMuHaVnOgXaRh1B")%>%
bind_rows(get_playlist_audio_features("12124165724","7L4BEudqTRUL3OOeJYlIJ7"))

prog<-get_playlist_audio_features("spotify","37i9dQZF1DX5wgKYQVRARv")%>%
bind_rows(get_playlist_audio_features("soundrop","54p0JFD4QNAosVPNrRHUGH"))  

Thrash <-
  metallica %>% mutate(playlist = "Metallica") %>%
bind_rows(exodus %>% mutate(playlist = "exodus"))%>%
bind_rows(slayer %>% mutate(playlist = "slayer"))%>%
bind_rows(megadeth%>%mutate(playlist="megadeth"))

s.thrash <- Thrash %>% summarize(M_danceability = mean(danceability), SD_danceability = sd(danceability))%>%
bind_rows(s.thrash<- Thrash %>% summarize(M_energy = mean(energy), SD_energy = sd(energy)))%>%

bind_rows(s.thrash <- Thrash %>% summarize(M_loudness = mean(loudness), SD_loudness = sd(loudness)))%>%
bind_rows(s.thrash <-Thrash %>% summarize(M_tempo=mean(tempo),SD_tempo=sd(tempo)))%>%
bind_rows(s.thrash<-Thrash%>% summarize(M_valence=mean(valence),SD_valence=sd(valence)))

s.prog <- prog %>% summarize(M_danceability = mean(danceability), SD_danceability = sd(danceability))%>%
  bind_rows(s.prog<- prog %>% summarize(M_energy = mean(energy), SD_energy = sd(energy)))%>%
  
  bind_rows(s.prog <- prog %>% summarize(M_loudness = mean(loudness), SD_loudness = sd(loudness)))%>%
  bind_rows(s.prog <-prog %>% summarize(M_tempo=mean(tempo),SD_tempo=sd(tempo)))%>%
  bind_rows(s.prog<-prog%>% summarize(M_valence=mean(valence),SD_valence=sd(valence)))


ggplot(data = Thrash, aes(x = valence, y = energy, color=mode )) +
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

ggplot(data = Thrash, aes(x = danceability, y = energy, color= mode  )) +
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

ggplot(data = prog, aes(x = valence, y = energy, color = mode +
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

ggplot(data = prog, aes(x = danceability, y = energy, color=mode )) +
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


