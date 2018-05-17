# DOKO TRAVEL
## Epicodus Ruby/Rails Capstone Project
* Ruby version: 2.5.1

## What is Doko Travel?
Doko Travel is a web application that is targeted towards travelers that are going to Japan but don't know which cities to visit. This is a tour site where tourists can submit their own itineraries so that other travelers can see if they want to go on the same trip. The application will give itinerary suggestions based on your interests and duration of your trip. There is also a rating system that will allow to see the most popular trips.

## Database creation
* rake db:create
* rake db:migrate
* create first admin by signing in
* User.first.update_attribute :admin, true

## Accomplished by 5/18
* Use Devise to create authentication, there are users and one admin
* Create tables for cities, interests, itineraries, and preferences
* Admin can create cities, interests, and itineraries
* Users create preferences when they first sign up and can create itineraries later on
* Cities and interests are linked with itineraries, and interests are also linked to preferences
* Database for itineraries, cities, and interests are seeded with samples that I created in CSV files
* Parameters under itineraries are: title, creator, description, interests, and cities
* Parameters under cities are: name, description, and recommended duration
* Viewing the cities is something only the admin can do

## Future Installments
* Rating system for each itinerary so popular ones will go to the top
* Create methods so that itineraries that align with your preferences will come to the top of the list
* Be able to leave comments on itineraries

## Bugs
* Some of the routing might by tricky

## License
* Don't copy my repo and say it's yours, fool!
