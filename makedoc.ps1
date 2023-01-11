# Create a new notes document.
# Usage: makedoc.ps1 <course> <title>
# Example: makedoc.ps1 "APMA 2120" "Vectors and the Geometry of Space"

$coursename = $args[0]
$title = $args[1]

$department = $coursename.split(" ")[0].toLower()
$coursenumber = $coursename.split(" ")[1]

$month = Get-Date -Format "MM"
$year = Get-Date -Format "YYYY"

$semester = "Spring"

If ([int]$month -gt 6) {
    $semester = "Fall"
}

$contentroot = "content/notes/$department$coursenumber"

If (Test-Path -Path $contentroot) {
    New-Item $contentroot -ItemType Directory
    $contentrootIndex = @"
---
title: "$coursename"
bookCollapseSection: true
bookToc: false
---
## Contents
|Topic|Link|
|:--:|:--:|
"@
Write-Host $contentrootIndex > "$contentroot/_index.md"
Write-Host "|$($department.toUpper())|$coursenumber|$coursename|$semester $year|[here](/notes/$department$coursenumber/)|" >> "content/_index.md"
}

$filename = $($title -replace "[^\w ]","" -replace " ","-").toLower()

$count = $( Get-ChildItem $contentroot | Measure-Object ).Count # -1 to account for _index.md and +1 to account for new file cancel

$fileHeader = @"
---
title: "$title"
weight: $count
---
"@
Write-Host $fileHeader > "$contentroot/$filename.md"

New-Item "static/images/$department$coursenumber/$filename" -ItemType Directory
New-Item "static/images/$department$coursenumber/$filename/.keep"

Write-Host "|$title|[here](/notes/$department$coursenumber/$filename)" >> $contentroot/_index.md

Write-Host "Created $contentroot/$filename.md"
