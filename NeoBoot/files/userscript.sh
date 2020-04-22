#!/bin/sh 
# script gutosie 
# here you can add your own command to perform
# line - Checking internet connection by @j00zek thank you :)

if [ ! -e /usr/bin/ipkg ]; then 
   ln -sfn /usr/bin/opkg /usr/bin/ipkg 
fi
if [ ! -e /usr/bin/ipkg-cl ]; then 
   ln -sfn /usr/bin/opkg-cl /usr/bin/ipkg-cl
fi
                   
if [ -f /etc/init.d/inadyn-mt ] ; then
    /etc/init.d/inadyn-mt start
fi

if [ ! -e /usr/bin/enigma2_pre_start.sh ] ; then
    /usr/lib/enigma2/python/Plugins/Extensions/NeoBoot/files/mountpoint.sh                
fi

echo "_(Checking internet connection)..."
ping -c 1 github.com 1>/dev/null 2>%1 
if [ $? -gt 0 ]; then 
      echo -n "_(github server unavailable, update impossible)!!! network restart... " 
      /etc/init.d/networking stop; sleep 1; /etc/init.d/networking start; 
else
    echo "_(github server available)!!!"  
fi

echo "file used userscript "  
echo ok 

exit 0                                              
