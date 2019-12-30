#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [cp, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/CONTCAR]
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/POSCAR]
inputs:
  133f:
    type: File
outputs: 
  change:
    type: stdout
stdout: change.txt 
  
