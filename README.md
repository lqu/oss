# oss
Open Source License Compatibility Checker

# What
This is a flyweight tool for software engineers/managers to quickly check open source software license compatibilities. It is also friendly to non-technical users (new license authors or lawyers) to research, expand, and experiment with new licenses.

It's not for programmers' everyday use, but I encourage everyone to be aware of licensing and take a look at https://github.com/EthicalSource/hippocratic-license

# How
This is a programmable implementation of the David A. Wheeler's FLOSS compatibility graph at https://dwheeler.com/essays/floss-license-slide.html 

The graph is a directed acyclic graph (DAG) of dependency (one-way compatibility). MAKE is the perfect tool dealing with it.

# Usage
If you want to release your software with license `TargetLIC`, and want to find out what 3rd-party software you can use to compile/link or derive from, run `make` with `TargetLIC`. A list of compatible licenses will be returned. If you don't see a particluar license you used, it's not compatilbe and you can not use it unless you choose another final license.

## Examples
```
oss$ make GPLv2
  Public
  MIT
  BSD-new
  LGPLv2.1-plus
  LGPLv2.1
  GPLv2-plus
  GPLv2

oss$ make Apache-2.0
  Public
  MIT
  BSD-new
  Apache-2.0
```
## How to Expand
1. Do it on paper first. Find the correct place in the graph to add your new node. Connect it with all adjecent nodes with edges.
2. Modify the `MAKEFILE`. Add a new target and its dependenceis. Add the new target to all that depend on it.

# Disclaimer
This is not legal advice. The tool is only a framework for your own believes. The examples in docs or code should not be considered ground truth.
