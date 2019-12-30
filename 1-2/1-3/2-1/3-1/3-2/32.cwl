#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: []
steps:
  yh2:
    run: 3-2.cwl
    in: []
    out: [yh6]
  mk2:
    run: 3-21.cwl
    in: []
    out: [mk6]
  check2:
    run: 3-20.cwl
    in: 
      320f: yh2/yh6
    out: [ch6]
  cp2:
    run: 3-22.cwl
    in:
      cpf1: yh2/yh6
      cpf2: mk2/mk6
      cpf3: check2/ch6
    out: [cp5]
outputs:
  step1file:
    type: File
    outputSource: cp2/cp5
  
