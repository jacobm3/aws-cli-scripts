aws ec2 stop-instances --instance-ids $(aws ec2 describe-instances --filters \
  "Name=tag:owner,Values=jacobm" \
  "Name=instance-state-name,Values=running" | \
  jq -r .Reservations[].Instances[].InstanceId )
aws ec2 stop-instances --instance-ids $(aws ec2 describe-instances --filters \
  "Name=tag:owner,Values=jmartinson" \
  "Name=instance-state-name,Values=running" | \
  jq -r .Reservations[].Instances[].InstanceId )
