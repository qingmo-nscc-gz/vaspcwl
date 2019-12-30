#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [ssh, ln1, yhbatch] 
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/run_vasp.sh, -N, "1"]
inputs: []
outputs: []
  
