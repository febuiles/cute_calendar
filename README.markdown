CuteCalendar
============

CuteCalendar is a Rails plugin to help you build calendars using topfunky's
calendar\_helper and defunkt's facebox. 
You fill in with some events and we'll do all the dirty work of making it cute.

Contributors
------------

This plugin is based on the work of several awesome people, please read the CONTRIBUTORS file.

Install
-------

Download the plugin
         
    $ ./script/plugin install git://github.com/febuiles/cute_calendar.git

Run the Events generator

    $ ./script/generate events

With this version you'll need to create a controller and some views to
populate your Events table:

    $ ./script/generate scaffold Event title:string description:text date:date

Example
-------

Insert the calendar in your view:

    <%= calendar :year => 2008, :month => 12 %>

If you want to use any of the custom stylesheets you can pass it as an
option:

    <%= calendar :year => 2008, :month => 12, :style => "gray" %>

These stylesheets can be found in public/stylesheets/calendar

Known Issues
------------

If you already have an Events model you'll run into problems unless the model
contains the following fields:

    title:string
    description:string/text
    date:date

If you have these then you can skip the generator in the installation
 and everything should work fine.

Copyright
---------

Copyright (c) 2006-2008 Jeremy Voorhis, Geoffrey Grosenbach and Chris Wanstrath     
Copyright (c) 2008 Federico Builes, released under the MIT license
