# todo.rb

![](http://dl.dropbox.com/u/59591/todo_dog.jpg)

todo.rb is a dead simple command line todo list manager written in Ruby.  It was originally written by [Nick Rowe](http://dcxn.com) in 2011.

## Making it Go - A Simple Tutorial
todo.rb is simple, first lets add some items to our list

    ./todo.rb buy tomato seeds
    ./todo.rb buy a new green hose
    ./todo.rb buy potting soil
    ./todo.rb plant tomatoes

Next, lets have a look at the list

    todo.rb

produce this output

    [  1] buy tomato seeds
    [  2] buy a new green hose
    [  3] buy potting soil
    [  4] plant tomatoes

Now, we've gone to the store and bought ourselves a nice new green garden hose.  Time to check that one off:

    ./todo.rb done 2

If we check the list, `./todo.rb`, we see:

    [  1] buy tomato seeds
    [  2] buy potting soil
    [  3] plant tomatoes

That's it, that's the easiest way to manage your list with todo.rb

## Managing Multiple lists
Managing multiple lists is simple, too.  To manage a list specify the location with `-f` flag:

    ./todo.rb -f work.txt Click the keys on the keyboard
    ./todo.rb -f dog.txt buy a new squeaky toy

## Downloading and install
Three steps:

- `git clone git@github.com:nixterrimus/todo.git`
- `rake build`
- `rake install`

There, it's installed!

## Why does this Rock?
It's easy- it's easy to use and it's easy to modify.  It's also portable.  You can pickup your todo file and move it at any time.  Want to add todo's when you're away from the command line?  That's no big deal- keep the file in dropbox and you can edit it on your phone, tablet, or anywhere else you can edit a text file.

On the code front- it's well organized Ruby with rdoc style comments.

## Some Notes on a todo.txt Workflow
Personally, I use a todo.txt file on my desktop.  I like that it's lightweight.  On a mac you can use Quicklook to get a quick view of what's inside a file.  To do this, click on the todo.txt file and then hit the space bar.

I've also created an [Alfred](http://www.alfredapp.com/) action for [appending to the todo.txt file](http://bit.ly/r66UMQ).  This action can be added by downloading the file and dragging it into extension pane.  From there you can use `todo` followed by the task.  For example `todo clean the fish tank`.

## Contributing
Follow the directions to install the gem.  Then add features and test them using rspec.  To see if your features pass run `rake spec`.

## Who took that Dog Photo?
The dog picture was taken by [Randy Son Of Robert on Flickr](http://www.flickr.com/photos/randysonofrobert/2639402501/) and is used under a creative commons 2.0 CC by attribution license.

## Shut up and take my money - The license
You're money is no good here, cowboy.  All code, documentation, and the alfred extension are distributed under an MIT license.  Please fork it, hack it, fix it, share it, break it, now upgrade it.  As they say, technologic.

- - - - - - - 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.