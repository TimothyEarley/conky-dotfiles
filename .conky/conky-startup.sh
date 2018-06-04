sleep 2s
killall conky

cd "/home/timmy/.conky/now-clocking/np"
conky -c "/home/timmy/.conky/now-clocking/np/np" &

#cd "/home/timmy/.conky/now-clocking/np"
#conky -c "/home/timmy/.conky/now-clocking/np/npart" &

#cd "/home/timmy/.conky/conky-Vision/"
#conky -c "/home/timmy/.conky/conky-Vision/.conkyrc" &

cd "/home/timmy/.conky/metro-clock/"
conky -c "/home/timmy/.conky/metro-clock/.conkyrc" &
