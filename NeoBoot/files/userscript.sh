#!/bin/sh -e
# script gutosie - here you can add your own command to perform

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

echo "file used userscript "  
echo ok 
 
exit 0                                              