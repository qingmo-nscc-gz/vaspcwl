#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: []
steps:
  yh2:
    run: 3-1.cwl
    in: []
    out: [yh5]
  mk2:
    run: 3-11.cwl
    in: []
    out: [mk5]
  check2:
    run: 3-10.cwl
    in: 
      310f: yh2/yh5
    out: [ch5]
  cp2:
    run: 3-12.cwl
    in:
      cpf1: yh2/yh5
      cpf2: mk2/mk5
      cpf3: check2/ch5
    out: [cp5]
outputs:
  step1file:
    type: File
    outputSource: cp2/cp5
  
