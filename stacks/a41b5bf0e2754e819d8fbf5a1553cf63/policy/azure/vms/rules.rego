package stacks.a41b5bf0e2754e819d8fbf5a1553cf63.policy.azure.vms

monitor[decision] {
  data.global.systemtypes["terraform:1.0"].library.provider.azure.iam.owner_role_assigment.v1.prohibit_owner_role_assignment[message]
  decision := {
    "allowed": false,
    "message": message
  }
}

# Packages 1 level below the `azure` package let you organize your rules
#    according to the services they impact, e.g. azure.vms or azure.storage
# All enforce/monitor rules in any package of the form azure.X
#    will be applied to every terraform plan.  The name X is irrelevant
#    and is only useful as a way to organize your rules.
# You may put helpers into packages at deeper levels of the hiearchy,
#    e.g. azure.X.Y, but do not put enforce/monitor rules into those packages
#    since they will not be evaluated unless you use them as helpers.
