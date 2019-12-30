#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [cp, /WORK/nscc-gz_material_4/vasp/1-1/1-2.cwl, /WORK/nscc-gz_material_4/vasp/1-1/1-20.cwl, /WORK/nscc-gz_material_4/vasp/1-1/1-21.cwl, /WORK/nscc-gz_material_4/vasp/1-1/1-22.cwl,/WORK/nscc-gz_material_4/vasp/1-1/12.cwl,/WORK/nscc-gz_material_4/vasp/1-1/INCAR, /WORK/nscc-gz_material_4/vasp/1-1/POSCAR, /WORK/nscc-gz_material_4/vasp/1-1/POTCAR, /WORK/nscc-gz_material_4/vasp/1-1/KPOINTS, /WORK/nscc-gz_material_4/vasp/1-1/run_vasp2.sh, /WORK/nscc-gz_material_4/vasp/1-1/check2.sh]
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/1-2]
inputs:
  cpf1:
    type: File
  cpf2:
    type: File
  cpf3:
    type: File
outputs: 
  cp1:
    type: stdout
stdout: cp1.txt 
  
