#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: []
steps:
  yh3:
    run: 1-3.cwl
    in: []
    out: [yh3]
  mk3:
    run: 1-31.cwl
    in: []
    out: [mk3]
  check3:
    run: 1-30.cwl
    in: 
      130f: yh3/yh3
    out: [ch3]
  cp3:
    run: 1-32.cwl
    in:
      cpf1: yh3/yh3
      cpf2: mk3/mk3
      cpf3: check3/ch3
    out: [cp3]
  change:
    run: 1-33.cwl
    in:
      133f: cp3/cp3
    out: [change]
outputs:
  step1file:
    type: File
    outputSource: change/change
  
