//==--- DiagnosticDocs.td - Diagnostic documentation ---------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===---------------------------------------------------------------------===//

def GlobalDocumentation {
  code Intro =[{..
  -------------------------------------------------------------------
  NOTE: This file is automatically generated by running clang-tblgen
  -gen-diag-docs. Do not edit this file by hand!!
  -------------------------------------------------------------------

.. Add custom CSS to output. FIXME: This should be put into <head> rather
   than the start of <body>.
.. raw:: html

    <style>
    table.docutils {
      width: 1px;
    }
    table.docutils td {
      border: none;
      padding: 0 0 0 0.2em;
      vertical-align: middle;
      white-space: nowrap;
      width: 1px;
      font-family: monospace;
    }
    table.docutils tr + tr {
      border-top: 0.2em solid #aaa;
    }
    .error {
      font-family: monospace;
      font-weight: bold;
      color: #c00;
    }
    .warning {
      font-family: monospace;
      font-weight: bold;
      color: #80a;
    }
    .remark {
      font-family: monospace;
      font-weight: bold;
      color: #00c;
    }
    .diagtext {
      font-family: monospace;
      font-weight: bold;
    }
    </style>

.. FIXME: rST doesn't support formatting this, so we format all <td> elements
          as monospace font face instead.
.. |nbsp| unicode:: 0xA0
   :trim:

.. Roles generated by clang-tblgen.
.. role:: error
.. role:: warning
.. role:: remark
.. role:: diagtext
.. role:: placeholder(emphasis)

=========================
Diagnostic flags in Clang
=========================
.. contents::
   :local:

Introduction
============

This page lists the diagnostic flags currently supported by Clang.

Diagnostic flags
================
}];
}

defvar GCCWriteStringsDocs = [{
**Note:** enabling this warning in C will change the semantic behavior of the
program by treating all string literals as having type ``const char *``
instead of ``char *``. This can cause unexpected behaviors with type-sensitive
constructs like ``_Generic``.
}];

defvar NanInfDisabledDocs = [{
This warning is enabled when source code using the macros ``INFINITY`` or ``NAN``
is compiled with floating-point options preventing these two values. This can
lead to undefined behavior. Check the order of command line arguments that modify
this behavior, such as ``-ffast-math``, ``-fhonor-infinities``, and
``-fhonor-nans`` (etc), as well as ``#pragma`` directives if this diagnostic is
generated unexpectedly.
}];
