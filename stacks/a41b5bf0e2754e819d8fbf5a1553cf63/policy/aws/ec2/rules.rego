package stacks.a41b5bf0e2754e819d8fbf5a1553cf63.policy.aws.ec2

monitor[decision] {
  data.global.systemtypes["terraform:1.0"].library.provider.aws.ec2.ebs_enable_snapshot.v1.ec2_ebs_enable_snapshot[message]
  decision := {
    "allowed": false,
    "message": message
  }
}

monitor[decision] {
  data.global.systemtypes["terraform:1.0"].library.provider.aws.autoscaling.launch_config_public_ip_disabled.v1.prohibit_public_ip_launch_config[message]
  decision := {
    "allowed": false,
    "message": message
  }
}

# Packages 1 level below the `aws` package let you organize your rules
#    according to the services they impact, e.g. aws.ec2 or aws.s3
# All enforce/monitor rules in any package of the form aws.X
#    will be applied to every terraform plan.  The name X is irrelevant
#    and is only useful as a way to organize your rules.
# You may put helpers into packages at deeper levels of the hiearchy,
#    e.g. aws.X.Y, but do not put enforce/monitor rules into those packages
#    since they will not be evaluated unless you use them as helpers.
