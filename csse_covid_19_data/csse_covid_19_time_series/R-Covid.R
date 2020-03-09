library(curl)
library(rvest)
library(dplyr)
library(stringr)
library(RSQLite)
library(DataExplorer)
library(tm)
library(wordcloud)
library(quanteda)

setwd("~/Dropbox/COVID-19/csse_covid_19_data/csse_covid_19_time_series")

df <- read.csv("time_series_19-covid-merge.csv")

# Transpose table YOU WANT
fooData.T <- t(df[,1:ncol(df)])

# Set the column headings from the first column in the original table
colnames(fooData.T) <- df[,1]

