#This script extracts lines from a text file with the word we want in the line. It shows all the lines that has the same word. 
Get-Content C:\txt.txt | Where-Object {$_.Contains( 'word')}
