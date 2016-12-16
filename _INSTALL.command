#!/bin/bash
set -e
BASEDIR="$( dirname "$0" )"
cd "$BASEDIR"
PATTERNHOME="$HOME/Applications/*Illus*/"
PATTERNROOT="/Applications/*Illus*/"
if [ -d $PATTERNHOME ]; then
	for f in ${PATTERNHOME}; do
	    DEST="${f}/Presets.localized/en_US/Scripts/ai2html.js"
	    cp ai2html.js "$DEST"
	    echo ""
	    echo "✅  ai2html.js successfully copied to $DEST"
	    echo ""
	    ## This is all we needed to know, so we can break after the first iteration
	    break
	done
elif [ -d $PATTERNROOT ]; then
	for f in ${PATTERNROOT}; do
		DEST="${f}/Presets.localized/en_US/Scripts/ai2html.js"
	    cp ai2html.js "$DEST"
	    echo ""
	    echo "✅  ai2html.js successfully copied to $DEST"
	    echo ""
	    ## This is all we needed to know, so we can break after the first iteration
	    break
	done
else
	echo "❌ script not copied"
fi

