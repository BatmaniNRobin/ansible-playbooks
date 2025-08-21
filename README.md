# ansible-playbooks
playbooks for various IAC'd architecture - beginning with eks

# TODOS
- setup iam identity center or some kind of IAM to run a tf plan and actually test eks
- security groups module
- validate vpc and eks are configured and determine what else if anything is necessary
- validate s3 backend works as expected for hosting tf state file
- setup playbooks to start deploying apps to eks cluster deployed