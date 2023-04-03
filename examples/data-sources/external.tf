# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

data "external" "example" {
  program = ["python", "${path.module}/example-data-source.py"]

  query = {
    # arbitrary map from strings to strings, passed
    # to the external program as the data query.
    id = "abc123"
  }
}