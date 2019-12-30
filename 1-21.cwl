#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [mkdir, "/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3"]
inputs: []
outputs:
  mk2:
    type: stdout
stdout: mk2.txt
  
