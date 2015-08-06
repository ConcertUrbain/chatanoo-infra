aws cloudformation update-stack \
	--stack-name $1 \
	--template-body file://cloudformation/chatanoo-master.cfn.json \
	--parameters file://cloudformation/launch-params.json \
	$2 $3