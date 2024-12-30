#!/bin/bash
if (( $EUID != 1000))
then
echo "Please do not run as root"
exit
fi
if [[ -n $1 ]]
then
	filename=$1.sh
	if [[ -a $filename ]]
	then
		echo "File already exist."
	else
		touch ./$filename
		echo "#!/bin/bash" > ./$filename
		chmod +x $filename
		echo "File $filename created and made executable."
	fi
else
		echo "Fail"
fi
