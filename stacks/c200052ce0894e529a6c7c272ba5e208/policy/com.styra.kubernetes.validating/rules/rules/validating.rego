package stacks.c200052ce0894e529a6c7c272ba5e208.policy["com.styra.kubernetes.validating"].rules.rules

monitor[decision] {
  data.library.v1.kubernetes.admission.workload.v1.block_latest_image_tag[message]
  decision := {
    "allowed": false,
    "message": message
  }
}

monitor[decision] {
  data.library.v1.kubernetes.admission.workload.v1.enforce_container_mustrunasnonroot[message]
  decision := {
    "allowed": false,
    "message": message
  }
}

monitor[decision] {
  data.library.v1.kubernetes.admission.workload.v1.check_image_pull_policy[message]
  decision := {
    "allowed": false,
    "message": message
  }
}
