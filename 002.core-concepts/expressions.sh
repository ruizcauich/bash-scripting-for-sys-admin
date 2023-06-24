#!/bin/bash

# if we put operands and operator together it will
# be a string rather than numbers
expr 2 + 2

# we need to scape *
expr 2 + 2 \* 4

# scape also ()
expr \( 2 + 2 \) \* 4
