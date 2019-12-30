#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: []
steps:
  yh:
    run: 1-1.cwl
    in: []
    out: [yh1]
  mk:
    run: 1-11.cwl
    in: []
    out: [mk1]
  check:
    run: 1-10.cwl
    in: 
      10f: yh/yh1
    out: [ch1]
  cp:
    run: 1-12.cwl
    in:
      cpf1: yh/yh1
      cpf2: mk/mk1
      cpf3: check/ch1
    out: [cp1]
outputs:
  step1file:
    type: File
    outputSource: cp/cp1
  
