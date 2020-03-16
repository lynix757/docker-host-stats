myip=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}')
echo $myip
whois $myip | grep netname | awk {'print $2'}
