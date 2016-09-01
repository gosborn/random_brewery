#Random Beer Generator

Try it out at [Drink a Local Beer](http://www.drinkalocalbeer.com).

Utilizes ActiveRestClient(https://github.com/whichdigital/active-rest-client) to access beer data from [BreweryDB](http://www.brewerydb.com/). ActiveRestClient allows the API Response to be treated in an ActiveRecord style. Accordingly, this app does not use a database, every new request for a beer hits BreweryDB. 

Uses the user's location using the `navigator.geolocation.getCurrentPosition` API to locate closest breweries within a set distance. Once matched, the Google Maps API is utilized to route the user to the brewery (with bike directions).

##Local Use

To run locally, clone and `bundle install` in the directory of the app. Requires an environmental variable of `api_key` to be set to access BreweryDB's APIs. Requires a [premium key](http://www.brewerydb.com/developers/premium). 

##To do

- Return list of local breweries
- Make route for a beer tour
- Return beer based on user preference
- Response to user preference