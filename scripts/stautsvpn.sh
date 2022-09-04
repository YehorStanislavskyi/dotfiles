if nmcli device | grep -q tap0  
then echo "connected " 
else echo "disconected" 
fi
