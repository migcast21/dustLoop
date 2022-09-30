This schedule was written retroactively, began on Thurs. 9/29:

Spent most of the first week familiarizing myself with Ruby/Rails

9/26 - Initialized repo, began Rails project. Began as a CRUD app with the intent of learning RoR

9/27 - Used devise to set up login authentication. Resolved issues with devise duplicate fields in tables. Resolved issues with deleting items. Hosted on Heroku. Changed project to records and their samples. Decided on Bootstrap Cards for the show pages.

9/28 - Resolved issues with signing out. Inserted iframes. Switched database from sqlite3 to Postgresql. Figured out Ransack, implemented both search and sort.

9/29 - Decided on a name, and variables. Successfully renamed all variables, controllers, models, views, tests, helpers, from Friends variables to Dustloop ones. Changed git repo name.

9/30 - Figured out pagination. Went back and forth between kaminari and will_paginate gems several times, figured out how to customize the pagination itself, implemented bootstrap icon svg's to change the look since kaminari themes seemed to not be working. This worked on localhost but not Heroku which caused a long delay. Turns out had to set order within the controller as ransack's sort possibly interfered with it displaying properly 

A little bit of styling was done on each day.