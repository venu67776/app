package policy["com.styra.kubernetes.mutating"].rules.rules

enforce[decision] {
  parameters := {
    "cpu_limit": "500m"
  }

  data.library.v1.kubernetes.mutating.v1.add_default_cpu_limit[decision]
    with data.library.parameters as parameters
}


ignore[decision] {
  data.library.v1.kubernetes.mutating.v1.set_image_pull_policy_always_if_latest[decision]
}
