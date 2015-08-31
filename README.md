## What is this?

This is an aggressively minimalistic API to keep track of things that happen. For lack of a better term, they are called "events."

I'm building this to explore a bunch of different concepts:
* Rails API with Rails 5 ([this article](http://wyeworks.com/blog/2015/6/11/how-to-build-a-rails-5-api-only-and-backbone-application) has been very helpful)
* Extreme minimalism
* Separating respositories and deployment of front-end and back-end apps
* Multiple front-end apps using the same backend

If you'd like to use event-api or work with me, let me know!


## Technical Details

This is a very basic Rails 5 API application.

Because we're using a pre-release version of Rails any Rails commands need to be run as `bin/rails [command]` instead of `rails [command]`

I'm using the generators because that is one of the useful things provided by Rails API.


## Planned Development

Phase 1 - Days Since app

Basic API:
* Create with key, and text
* Get serialized json
* Update with timestamp

Phase 2 - Days Since app with history

* Add Occurence model - event has_many occurences
* Event last updates at most recent occurence
* Fetch index of occurences for event to graph

Phase 3+ - Additional apps using same API for more complex event tracking

* very important to stay very general in the backend
* provide some flexibility to do cool stuff on the front end
* personal challenge: No User model


## Basic API Usage Example


## Herokuy Deployment

