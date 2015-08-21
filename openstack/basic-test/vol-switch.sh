set -e

VOL_ID=`cinder volume-list | grep test_vol | awk '{print $2}'`

nova volume-detach test $VOL_ID
while [ -z "`cinder volume-list | grep test_vol | grep available`" ]; do
    sleep 1
done
nova volume-attach test_2 $VOL_ID
