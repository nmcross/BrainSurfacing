#!/bin/bash

# Sets up the locations of various required resources

# You need to have working versions of:
# - MRIcron
# - FreeSurfer
# 

export _DIR_MRICRON="/Applications/Neuroradiology/MRIcron"
export _DIR_FREESURFER="/Applications/Neuroradiology/freesurfer"

function testFolder {
    if [ ! -d "$2" ]; then
	echo "$1 location not valid!"
	echo "  currently set to: $2"
	echo "edit BrainSurfacing/BrainSurfacingEnv.sh folder locations"
    fi

}  

testFolder "_DIR_MRICRON" "$_DIR_MRICRON"
testFolder "_DIR_FREESURFER" "$_DIR_FREESURFER"


function testForDep {
    if ! which "$1"; then
	echo "$1 is not installed!"
	echo "try... sudo port install $1"
    fi
}

testForDep "octave"

