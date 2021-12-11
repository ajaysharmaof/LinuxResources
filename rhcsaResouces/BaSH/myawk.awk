BEGIN { 
   print "=======working on /etc password file ======"
 } 
 /root/ { 
     print $0
 }
 END { 
     print "===========complete work on /etc/passwd file==============="
 }

