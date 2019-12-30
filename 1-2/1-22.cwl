#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [cp, /WORK/nscc-gz_material_4/vasp/1-1/1-3.cwl, /WORK/nscc-gz_material_4/vasp/1-1/1-30.cwl, /WORK/nscc-gz_material_4/vasp/1-1/1-31.cwl, /WORK/nscc-gz_material_4/vasp/1-1/1-32.cwl,/WORK/nscc-gz_material_4/vasp/1-1/13.cwl,/WORK/nscc-gz_material_4/vasp/1-1/1-2/INCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/POSCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/POTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/KPOINTS, /WORK/nscc-gz_material_4/vasp/1-1/run_vasp3.sh, /WORK/nscc-gz_material_4/vasp/1-1/check3.sh]
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3]
inputs:
  cpf1:
    type: File
  cpf2:
    type: File
  cpf3:
    type: File
outputs: 
  cp2:
    type: stdout
stdout: cp2.txt 
  
