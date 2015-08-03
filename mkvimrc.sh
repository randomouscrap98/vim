#!/bin/sh

#First, make sure we're in the repo directory
cd "${0%/*}"

dir=`pwd`
current_time=`date "+%Y.%m.%d-%H.%M.%S"`
oldvimrcdir="oldvimrc/"
oldvimrcfile="${oldvimrcdir}.vimrc_${current_time}"
copyvimrc=""

#Make sure argument count is at least OK. Arguments will be checked later.
if [ $# -gt 0 ]
then
   echo "This script does not require any arguments"
   exit 1
fi

#Create the directory for old vimrcs 
if [ ! -d "${oldvimrcdir}" ]
then
   #Gotta make sure we can create the directory maaaan.
   if mkdir "${oldvimrcdir}"
   then
      echo "Created directory \"${oldvimrcdir}\""
   else
      echo "ERROR: Couldn't create the ${oldvimrcdir} directory."
      exit 1
   fi
fi

#Copy the old user's vimrc for them (awww how nice)
if test -f ~/.vimrc -a -r ~/.vimrc
then
   #If it fails, PLEASE don't continue (otherwise we'll lose their vimrc)
   if cp ~/.vimrc "${oldvimrcfile}"
   then
      echo "Moved current .vimrc to ${oldvimrcfile}"
      copyvimrc="\" Your original .vimrc has been saved to ${oldvimrcdir}"
   else
      echo "ERROR: Couldn't move old .vimrc"
      exit 1
   fi
else
   echo "No .vimrc file found. Is this an error, or do you really not have one?"
fi

echo "\"--AUTOGENERATED VIMRC FILE--" > ~/.vimrc
echo "\" This .vimrc was automatically generated by the mkvimrc.sh script." >> ~/.vimrc
echo "${copyvimrc}" >> ~/.vimrc
echo "\" Settings point to ${dir}" >> ~/.vimrc
echo "" >> ~/.vimrc
echo "set runtimepath^=$dir" >> ~/.vimrc
echo "set runtimepath+=$dir/after" >> ~/.vimrc
echo "source $dir/vimrc.vim" >> ~/.vimrc

echo "Your .vimrc now points to ${dir}. The .vimrc file looks like:"
echo ""
cat ~/.vimrc
echo ""

exit 0
