#!/bin/bash
# example of nested functions

# Global variables definition
GENDER=$1


# Function definitions - start
createHuman() {
  ARMS=2
  LEGS=2
  HANDS=2
  echo "This Human has $HANDS hands, $ARMS arms and $LEGS legs, but what gender is this?"
  echo ""
  createMale() {
    BEARD=1

    echo "This man has $ARMS arms, $HANDS hands, $LEGS legs and $BEARD beard(s)."
    echo ""
  }

  createFemale() {
    BEARD=0
    echo "This woman has $ARMS arms, $HANDS hands, $LEGS legs and $BEARD beard(s)."
    echo ""
  }

}
# Function definitions - end

# Script - start
echo "Determining human characteristics based on gender: $GENDER"

if [ $GENDER ==  'male' ]; then 
  createHuman
  createMale
else
  createHuman
  createFemale
fi

