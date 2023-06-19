#!/bin/bash
####################################################
####################################################
function func() {
    kubectl -n ibm-spectrum-scale-csi logs --tail=20 $1 -c ibm-spectrum-scale-csi |grep ' on node'
}


    kubectl -n ibm-spectrum-scale-csi get pods | grep 3/3 | cut -d ' ' -f 1 | while read line
do
    #func $line
    #echo "--$line--"
    kubectl -n ibm-spectrum-scale-csi logs --tail=20 $line -c ibm-spectrum-scale-csi |grep ' on node'
done
