package policy["com.styra.kubernetes.mutating"].rules.rules

ignore[decision] {
  data.library.v1.kubernetes.mutating.v1.set_image_pull_policy_always_if_latest[decision]
}
