Hacker News Clone 1

We're going to build a Hacker News clone in Sinatra. This will be the most fully-featured web application we've built so far. Excited?!

Part 1: Users, Posts and Comments
Design the flow to be as similar to Hacker News as possible. We'll add one exception: comments don't need to be threaded. But the rest should be similar to Hacker News: users, posts, and comments. Do not implement votes in this version.

Objectives
Wireframes
This application is big enough you should spend time wireframing it. Wireframe the following pages:

An index page listing all the posts
A page showing a particular post, including comments
A user profile page
A page showing all a user's submissions
A page showing all a user's comments
A user signup and login page
Models & Controllers
At the very least you should have the following models:

Post
User
Comment
Don't worry about threaded comments, unless you're feeling adventurous. Even if you are feeling adventurous, trying to implement threaded comments now might derail your momentum: wait until you have a non-threaded version working before you try your hand at a threaded version.

Also, don't worry about Hacker News' fancy sorting algorithms for the post homepage and comment threads. Just sort them in some simple way: chronologically, alphabetically, etc.

Views
Implement all the views. Don't worry about AJAX at first.