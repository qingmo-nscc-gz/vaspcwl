#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [cp, /WORK/nscc-gz_material_4/vasp/1-1/2-1.cwl, /WORK/nscc-gz_material_4/vasp/1-1/2-10.cwl, /WORK/nscc-gz_material_4/vasp/1-1/2-11.cwl, /WORK/nscc-gz_material_4/vasp/1-1/2-12.cwl,/WORK/nscc-gz_material_4/vasp/1-1/21.cwl,/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/INCAR, /WORK/nscc-gz_material_4/vasp/1-1/CONTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/POTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/KPOINTS, /WORK/nscc-gz_material_4/vasp/1-1/run_vasp4.sh, /WORK/nscc-gz_material_4/vasp/1-1/check4.sh]
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1]
inputs:
  cpf1:
    type: File
  cpf2:
    type: File
  cpf3:
    type: File
outputs: 
  cp3:
    type: stdout
stdout: cp3.txt 
  
