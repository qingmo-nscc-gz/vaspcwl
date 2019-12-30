#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [mkdir, "/WORK/nscc-gz_material_4/vasp/1-1/1-2"]
inputs: []
outputs:
  mk1:
    type: stdout
stdout: mk1.txt
  
