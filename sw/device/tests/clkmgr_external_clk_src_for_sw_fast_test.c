// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// This test enables the external clock running at nominal speed. It checks
// the expected frequencies via the clock count measurement feature.

#include <stdbool.h>

#include "sw/device/lib/testing/test_framework/ottf_main.h"
#include "sw/device/tests/clkmgr_external_clk_src_for_sw_impl.h"

const test_config_t kTestConfig;

bool test_main(void) {
  execute_clkmgr_external_clk_src_for_sw_test(/*fast_ext_clk=*/true);
  return true;
}
