This schedule was written retroactively, began on Thurs. 9/29:

Spent most of the first week familiarizing myself with Ruby/Rails

9/26 - Initialized repo, began Rails project. Began as a CRUD app with the intent of learning RoR

9/27 - Used devise to set up login authentication. Resolved issues with devise duplicate fields in tables. Resolved issues with deleting items. Hosted on Heroku. Changed project to records and their samples. Decided on Bootstrap Cards for the show pages.

9/28 - Resolved issues with signing out. Inserted iframes. Switched database from sqlite3 to Postgresql. Figured out Ransack, implemented search and sort.

9/29 - Decided on a name, and variables. Successfully renamed all variables, controllers, models, views, tests, helpers, from Friends variables to Dustloop ones. Changed git repo name.

9/30 - Implemented kaminari pagination, although a bit wonky along with sort from ransack. used bootstrap icon svg's to change the look since kaminari themes seemed to not be working. Raw html so that icons could be placed in the buttons generated by Rails

9/30 night - Was able to implement a third table and a comment system, appears on each show page and comments can be deleted as well.

9/31 - Successfully replaced kaminari with pagy. Still issues adding to table/paginate per, reverted back to kaminari

10/1 - Fixed about me, little details

A little bit of styling was done on each day. Overall, pagination doesn't work as I'd like it to, will definitely try to perfect that.