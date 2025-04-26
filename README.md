# Film Festival Management System

## Overview

This web application was built using Ruby on Rails and PostgreSQL to manage a film festival's films and directors. It includes two dashboards — one for films and one for directors — and follows all project specifications, including clean navigation, real-time client-side interactivity with JavaScript, and adherence to Rails best practices.

---

## Setup Instructions

1. Clone the repository:
   git clone <your-repository-link>
   cd film-festival-management-system

2. Install all required gems:
   bundle install

3. Set up and prepare the database:
   rails db:create
   rails db:migrate
   rails db:seed

4. Start the Rails development server:
   rails server

5. Open a browser and visit:
   http://localhost:3000

   ---

## Features

Home Page:
Quick links to the Films and Directors dashboards.

Films Dashboard:
Shows all films with title, screening date, venue, and status. Includes a real-time search bar for instant filtering.

Directors Dashboard:
Lists directors with name, nationality, film count, and relationship status. Includes a dropdown to filter by status.

Other:
Built with vanilla JavaScript. No relationships between Film and Director models.

---

## Challenges and Solutions

1. JavaScript Not Running Because of TurboDrive
When I switched between pages, my JavaScript stopped working. Rails 7 uses TurboDrive by default, so even though the page looked like it reloaded, it actually didn’t. Things like the search bar and filter weren’t being detected anymore. I fixed it by using the turbo:load event instead of DOMContentLoaded, so the JavaScript would reattach every time a new page loaded. After that, the real-time search and filter started working right.

2. Importing Custom JavaScript
At first, my JavaScript file didn’t load because the project was using Importmap. I tried to import it the wrong way. I had to change it to import "./custom" inside application.js to match how Importmap expects it. Once I did that, the browser was able to find and run my JavaScript code correctly.

3. Building Real-Time Search and Filter Without Libraries
It was a challenge to build the search and filter by hand without libraries like jQuery. I had to loop through all the table rows manually and check if they matched what the user typed or selected. It took some trial and error, but it helped me get better at working with the DOM directly.

## what i learned 
i learned How TurboDrive affects JavaScript in Rails 7 apps.
I figured out how to import custom JavaScript with Importmap.
Building real-time search and filter with vanilla JavaScript made me better at handling the DOM.
I got better at working with the DOM by building real-time search and filter features using only vanilla JavaScript.

## Tech Used

- Ruby on Rails 7
- PostgreSQL
- Vanilla JavaScript
- HTML/CSS
- TurboDrive

## creator
- Ahmad zirak
COMP 3081 — Spring 2025