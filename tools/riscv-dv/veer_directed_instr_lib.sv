// SPDX-License-Identifier: Apache-2.0
// Copyright (c) 2024 Antmicro <www.antmicro.com>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

class veer_load_store_rand_addr_instr_stream extends riscv_load_store_rand_addr_instr_stream;

  // Avoid writing in higher memory regions
  constraint addr_offset_veer_c {addr_offset[XLEN-1:30] == 0;}

  `uvm_object_utils(veer_load_store_rand_addr_instr_stream)
  `uvm_object_new

endclass
