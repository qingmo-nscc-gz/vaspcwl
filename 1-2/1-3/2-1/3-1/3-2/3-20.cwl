#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [sh, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/check6.sh] 
inputs: 
  320f:
    type: File
outputs:
  ch6:
    type: stdout
stdout: ch6.txt
  
