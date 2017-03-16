REM DNS Restorer or Changer for Ubuntu or similar for Advanced users maybe?
REM Must be compiled in QB64 to have the executible.
REM If running on windows you will need Dos2unix or similar to transfer to Linux to run.
REM You will need to create the "dns" folder manually.
OPEN "c:\qb\dns\q4dns.sh" FOR OUTPUT AS #1
REM
REM Add as many as you like! To anywhere you want! Anything you have stored.
REM
RANDOMIZE TIMER
PRINT #1, "sudo echo " + CHR$(34) + "nameserver 8.8.8.8" + CHR$(34) + " > /etc/resolv.conf"
PRINT #1, "sudo echo " + CHR$(34) + "nameserver 8.8.4.4" + CHR$(34) + " >> /etc/resolv.conf"
REM
REM to update DNS settings the system
REM
PRINT #1, "resolvconf -u"
PRINT #1, "sleep 60"
REM  sleep n could be anything you like, INT(RND*60) + 60. Then you have to use the STR$(n) to convert and add to string. 
REM There are Advanced settings for "sleep n" but you can look that up.
REM Add PRINT #1,"./q4dns.sh" if you wish to put it in an endlessloop.
CLOSE #1
TIMER OFF
END
STOP
REM Just to be sure the program is down.
