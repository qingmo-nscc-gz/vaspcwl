#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: []
steps:
  yh2:
    run: 3-3.cwl
    in: []
    out: [yh7]
  check2:
    run: 3-30.cwl
    in: 
      330f: yh2/yh7
    out: [ch7]
outputs:
  step1file:
    type: File
    outputSource: check2/ch7
  
