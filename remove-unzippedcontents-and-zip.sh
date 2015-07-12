# Replace filename with the name of the zip file
# The script also removes the zip file along with all the unzipped contents
unzip -l filename |  awk 'BEGIN { OFS="" ; ORS="" } ; { for ( i=4; i<NF; i++ ) print $i " "; print $NF "\n" }' | xargs -I{} rm -rfv {}

