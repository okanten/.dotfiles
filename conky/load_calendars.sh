#!/bin/bash
# Licenced under CC-BY-4.0, created by Peter Molnar (mail@petermolnar.net), published at 2012-02-20 09:45 to canonical URL https://petermolnar.net/conky-with-ical/ with keywords "code", "conky", "calendar" 

# clear calcurse data
rm ~/.calcurse/apts

# array for remote calendars
calendars=( 'https://example.com/cal.ics' );

# temp file to save a calendar
TMPCAL=/tmp/temp.ics

# run through the calendars
for ical in "${calendars[@]}"
do
    # download ical file
    wget -q "$ical" -O $TMPCAL
    # import into calcurse, error & output silenced
    calcurse -i $TMPCAL >/dev/null 2>&1
    # clear the temp calendar file
    rm $TMPCAL
done

# display current & next 13 days (14 altogether)
calcurse -r14 --output-datefmt %d/%m/%y%y
