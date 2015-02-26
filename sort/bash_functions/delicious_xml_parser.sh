#!/usr/bin/env bash


#script for parsing delicious xml

cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '>' '{print $2;}' | awk -F 'total="' '{print $2}' | awk -F '"' '{print $1}' #this gives the total number of links
 
echo
 
cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' #prints attributes for post
 
echo
 
DESCRIPTION=$(cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' | awk -F 'description="' '{print $2}' | awk -F '" extended="' '{print $1}') && echo $DESCRIPTION #prints description
 
echo
 
EXTENDED=$(cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' | awk -F 'extended="' '{print $2}' | awk -F '" hash="' '{print $1}') && echo $EXTENDED #prints extended
 
echo
 
HASH=$(cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' | awk -F 'hash="' '{print $2}' | awk -F '" href="' '{print $1}') && echo $HASH #prints hash
 
echo
 
HREF=$(cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' | awk -F 'href="' '{print $2}' | awk -F '" private="' '{print $1}') && echo $HREF #prints href 
 
echo
 
PRIVATE=$(cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' | awk -F 'private="' '{print $2}' | awk -F '" shared="' '{print $1}') && echo $PRIVATE #
 
echo
 
SHARED=$(cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' | awk -F 'shared="' '{print $2}' | awk -F '" tag="' '{print $1}') && echo $SHARED #prints 
 
echo
 
TAG=$(cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' | awk -F 'tag="' '{print $2}' | awk -F '" time="' '{print $1}' | awk '{gsub("  ",", ");print $0}') && echo $TAG #prints tag attribute of the post

echo

TIME=$(cat `ls ~/dropbox/delicious_backups/*2015* | tail -n1` | awk -F '/>' '{print $200;}' | awk -F '<post ' '{print $2}' | awk -F 'time="' '{print $2}' | awk -F '"' '{print $1}') && echo $TIME #prints time for post 

 
#echo '<html>' >>index.html
#echo '<head>' >>index.html
#echo '</head>' >>index.html
#echo '<body>' >>index.html
#echo '<h3>' >>index.html
#echo -e <a href=\"$HREF\">$DESCRIPTION\<\/a\> >>index.html
#echo '</h3>' >>index.html
#echo '</body>' >>index.html
#echo '</html>' >>index.html

echo `cat <<- _EOF_

<html>
<head>
	<title>
		Delicious Links
	</title>
</head>
<body>


	<table style="width:100%">
		<tbody>
			<tr style="color: #FFF; background-color: #555; border: 1px solid #555; padding: 3px; vertical-align: top; text-align: left;">
				<th colspan="2">
					<a href="$HREF">$DESCRIPTION</a>
				</th>
			</tr>
			<tr>
				<td>Tags</td>
				<td>$TAG</td>
			</tr>
			<tr style="background-color:#F1F1F1;">
				<td>Delicious md5sum</td>
				<td>$HASH</td>
			</tr>
		</tbody>
	</table>
	
	
	
</body>
</html>
_EOF_` >> index.html
