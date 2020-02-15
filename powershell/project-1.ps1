#This script extracts lines from a text file with the word we want in the line.  
Get-Content C:\txt.txt | Where-Object {$_.Contains( 'donkey')}