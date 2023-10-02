// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: uvm_component_3
:description: uvm_component class test
:tags: uvm uvm-classes
:timeout: 3600
:type: simulation elaboration parsing
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class C extends uvm_component;
    `uvm_component_utils(C)

    function new(string name, uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("RESULT", "Created new uvm_component", UVM_LOW);
    endfunction
endclass

module top;
    C obj;
    
    initial begin
        obj = new("C");
    end
endmodule
