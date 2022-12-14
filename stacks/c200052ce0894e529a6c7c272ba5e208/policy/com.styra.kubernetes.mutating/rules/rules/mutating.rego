package stacks.c200052ce0894e529a6c7c272ba5e208.policy["com.styra.kubernetes.mutating"].rules.rules

not_configured[decision] {
  parameters := {
    "cpu_limit": ""
  }

  data.library.v1.kubernetes.mutating.v1.add_default_cpu_limit[decision]
    with data.library.parameters as parameters
}

monitor[decision] {
  data.library.v1.kubernetes.mutating.v1.set_image_pull_policy_always_if_latest[decision]
}
