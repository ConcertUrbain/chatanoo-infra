aws cloudformation create-stack \
	--stack-name $1 \
	--template-body file://cloudformation/chatanoo-master.cfn.json \
	--parameters file://cloudformation/launch-params.json \
	--capabilities CAPABILITY_IAM \
	--disable-rollback