#!/bin/bash

# Create a new notes document.
# Usage: makedoc.sh <course> <title>
# Example: makedoc.sh "APMA 2120" "Vectors and the Geometry of Space"

coursename=$1
title=$2

department=$(echo $coursename | cut -d' ' -f1 | tr '[:upper:]' '[:lower:]')
coursenumber=$(echo $coursename | cut -d' ' -f2)

contentroot="content/notes/$department$coursenumber"

if [ ! -d $contentroot ]; then
    mkdir -p $contentroot
    cat << EOF > $contentroot/_index.md
---
title: "$coursename"
bookCollapseSection: true
bookToc: false
---

# $coursename

## Contents

|Topic|Link|
|:--:|:--:|
EOF
echo "|$department|$coursenumber|Name TBA|Semester TBA|[here](/notes/$department$coursenumber/)|" >> content/_index.md
fi

filename=$(echo $title | tr -d '[:punct:]' | tr ' ' '-' | tr '[:upper:]' '[:lower:]')

count=$(ls $contentroot | wc -l) # -1 to account for _index.md and +1 to account for new file cancel

cat << EOF > $contentroot/$filename.md
---
title: "$title"
weight: $count
---

# $title
EOF

mkdir -p static/images/$department$coursenumber/$filename
touch static/images/$department$coursenumber/$filename/.keep

echo "|$title|[here](/notes/$department$coursenumber/$filename)" >> $contentroot/_index.md

echo "Created $contentroot/$filename.md"
