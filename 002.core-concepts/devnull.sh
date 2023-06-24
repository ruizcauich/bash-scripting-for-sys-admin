#!/bin/bash
# /dev/null is a special device in our system
# it can be considered as the black hole of our system
# whatever we redirect to it will desapear
# can be usefull if we don't want or need to print output to the console

# example: listing directory and output it to the console
# ls -la
# then, this will display nothing
# ls -la >> /dev/null

echo "This is displaying on the consloe"
echo "This is going into the black hole" >> /dev/null

# using double >> is the common way to do it, but single > can be used
# but it's better to be ahead of something rather than overwrite
