echo -n "Your user name is: " && whoami
echo -n "You are in directory: " && pwd
echo -n "You are in terminal: " && who | cut -d' ' -f6
echo -n "The number of directories are: " && ls -l | grep '4096' | wc -l 
dir=` ls -l | grep '4096' | wc -l `
total=` ls -l | wc -l `
file=` echo "$total - $dir - 1" | bc ` 
echo "The number of file are: $file"
