#!/bin/bash


name=$1.sh
PWD=`pwd`
if [ -e  ${PWD}/${name} ]; then
    echo "File already exist"
else
    echo "#!/bin/bash" >> ${PWD}/${name}
    echo "####################################################" >> ${PWD}/${name}
    echo ""
    echo "####################################################" >> ${PWD}/${name}
    echo "" >> ${PWD}/${name}
    chmod u+x ${PWD}/${name}
    nvim ${PWD}/${name} 
fi

