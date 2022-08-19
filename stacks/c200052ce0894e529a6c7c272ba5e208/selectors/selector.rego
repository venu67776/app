package stacks.c200052ce0894e529a6c7c272ba5e208.selectors
import data.library.v1.utils.labels.match.v1 as match
systems[system_id] {
  include := {
    "system-type": {
      "kubernetes"
    }
  }

  exclude := {}
  metadata := data.metadata[system_id]
  match.all(metadata.labels.labels, include, exclude)
}
