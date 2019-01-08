# Dev Degree 2018 Final Project

The Dev Degree Final Project leverages all material covered in your first year Shopify courses to build a full-stack web application.

## General Format

While there will be several opportunities to get feedback from your instructors and peers, this is an individual project. Each student must hand in their own project consisting of their own code and idea.

The project spans several months -- like a true web app, you will be taking an iterative approach to building it out. No last-minute all-nighters!

## Structure

Modern web applications have three basic parts, or "layers":

- Data layer (database and data-managing components of the application)
- Application layer (server-side web application that handles requests from UI and contains requisite business logic)
- UI layer (front-end of web app, HTML/CSS/JS)

This project will be built out in three stages, mapping to each of those layers and their corresponding courses:

- Databases (Jan/Feb)
- Rails (Feb/March)
- FED (April)

One aspect of each course will be a series of check-ins on how your final project is going. By the end of each course, the corresponding layer of your project should be complete.

## Topic

You've got until mid-Jan to choose a topic, at which point there will something scheduled for all students to bring up their topic to their peers/instructors for feedback.

Your app can really be anything as long as it meets requirements. What will require some thought is finiding the right balance of complexity across all layers of your app. The teaching team will help you with this.

## Requirements

### Overall requirements

- Application must live in a single repository, with well-structured (not squashed) commits documenting the entire development
- Application must be fully tested and stable
- Application must be accessible via the web and hosted in the Shopify cloud (Tier 4)
- Final deliverable must be accompanied by a detailed README that describes how the technical stack of your app is structured (as though you were writing it for another developer who was taking over your project)
- Code should roughly follow the respective Shopify style guides (Dev Handbook for Rails, JS Style Guide for JS)

### Requirements by layer

#### Data layer

- Main data stack must be SQL-based
- App must use at least five tables, and 25 attributes total that are connected via one or more sets of relationships
- Your repository should show some use of migrations
- Your README must describe some consideration of performance in your schema structure. How would your schema scale if it contained many, many records?
- Data models must be validated

#### Application Layer

- Should roughly follow an MVC pattern
- Must implement authentication and make use of a session (while you can do some state management on the front-end, there must be at least a minimal back-end component)
- Must implement email sending
- Make use of at least one helper
- Minimum of one Rails view (that returns HTML)
- Minimum of one Rails API endpoint (that returns JSON)
- Your Rails app should server your static assets (CSS/JS, etc.) 

#### UI Layer

- Majority of UI should be a single page application (it’s OK to have a couple of server-rendered views if they are simply displaying content).
- React should be used as the front-end framework. Polaris is optional.
- Typescript should be implemented. Your entire JS code need not implement Typescript, but it should be used at least somewhat throughout your code
- HTML (both as components and static views) should be semantic
- CSS should be well-organized and named.
- Your UI should have a build layer, using either Webkit or Sewing Kit
- Modules should be used for each component, and to isolate any other modular functionality where possible
- Implement tests for your functional components that are run by your build layer. The tests need not be incredibly in depth, just a few cases that check basic functionality

## Timetables and Due Dates

#### Deliverable 1 : Pitch
- Due Jan 18th
- Have repo for project setup
- Readme.md filled out as a pitch on the project
