# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

load("@rules_rust//rust:repositories.bzl", "rust_repositories")
load("//third_party/rust/crates:crates.bzl", "raze_fetch_remote_crates")
load(
    "@safe_ftdi//third_party/rust:deps.bzl",
    ftdi_fetch_remote_crates = "fetch_remote_crates",
)

def rust_deps():
    rust_repositories(
        edition = "2018",
        version = "1.60.0",
    )
    raze_fetch_remote_crates()
    ftdi_fetch_remote_crates()
