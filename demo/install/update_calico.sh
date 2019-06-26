connective_ip=`kubectl get node -o wide |grep Ready |head -n1 |awk '{print $6}'`
sed -i  -rn 'p;/name: IP/,/autodetect/H;/autodetect/{g;s/^\n//;p}' calico.yaml 
sed -i '1,/name: IP/{s/name: IP/name: IP_AUTODETECTION_METHOD/}' calico.yaml
sed -i '1,/\"autodetect\"/{s/\"autodetect\"/can-reach=__ONE_CONNECTIVE_ENDPOINT__/}' calico.yaml
sed -i "s#__ONE_CONNECTIVE_ENDPOINT__#$connective_ip#g" calico.yaml
