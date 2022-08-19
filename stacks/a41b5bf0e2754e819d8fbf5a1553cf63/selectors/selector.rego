package stacks.a41b5bf0e2754e819d8fbf5a1553cf63.selectors

import data.library.v1.utils.labels.match.v1 as match

systems[system_id] {
  include := {
    "env": {
      "prod"
    }
  }

  exclude := {}

  metadata := data.metadata[system_id]
  match.all(metadata.labels.labels, include, exclude)
}
