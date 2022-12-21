## dustLoops App

Live Site Link: https://murmuring-coast-08834.herokuapp.com/

## General Info

This repository contains a Ruby on Rails application created for the final Capstone Project of General Assembly's Software Engineering course. 

Dustloops is an app that allows the user to create and hold a personal list of instances of samples in music along with the original source. There is no popular defined term for this combination of original sample and current usage, and so here a singular unit can be defined as one(1) dustLoop, that can be further created, edited, and removed by the user. Dustloop is all about DITC -- Digging in the Crates, but also very much Database Implementation through CRUD. 

It is important the user be able to access the specific moment(s) in the song that the sampling occurred, and also the specific moment(s) in the newer song when the sample was used. In doing so, the user has both sets of data readily available anytime stricter analysis of the producer's techniques, original intent, stylistic choices, etc. is necessary.

The app utilizes devise to integrate fully functional login authentication. This is required before creating a collection due to the inherent nature of wanting to keep discovered samples private, although the ability to share private lists with others will be explored in the future.

The app utilizes several Rails technologies to neatly organize and adjust the data -- the ability to search, sort columns, navigate via pagination (these sample lists can get long), and add comments on each individual dustLoop all contribute to the snappy feel. It is fully responsive on mobile.

10/2 - minor pagination issues

## Technologies
- Ruby on Rails
