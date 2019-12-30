#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [sh, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/check3.sh] 
inputs: 
  130f:
    type: File
outputs:
  ch3:
    type: stdout
stdout: ch3.txt
  
