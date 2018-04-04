# source this file before using ansible
# source ditwl_pro.sh
export AWS_PROFILE='ditwl_infradmin'
ANSIBLE_PRIVATE_KEY_FILE=${HOME}/keys/ditwl_kp_infradmin.pem

#AWS Region
export EC2_REGION='us-east-1'

#Current directory
cwd=$(pwd)

#Set
export ANSIBLE_INVENTORY=$(pwd)/inventory/ec2.py
export ANSIBLE_PRIVATE_KEY=$ANSIBLE_PRIVATE_KEY_FILE

if [ $(stat -c %a $ANSIBLE_PRIVATE_KEY_FILE) != 600 ]
then
    echo -e "\aERROR: PRIVATE_KEY_FILE: $ANSIBLE_PRIVATE_KEY_FILE should have permissions 600"
    echo -e "\aRun chmod 600 $ANSIBLE_PRIVATE_KEY_FILE"
fi

echo ANSIBLE_INVENTORY: $ANSIBLE_INVENTORY
echo ANSIBLE_PRIVATE_KEY: $ANSIBLE_PRIVATE_KEY
