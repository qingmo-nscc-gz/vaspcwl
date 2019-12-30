#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [cp, /WORK/nscc-gz_material_4/vasp/1-1/3-2.cwl, /WORK/nscc-gz_material_4/vasp/1-1/3-20.cwl, /WORK/nscc-gz_material_4/vasp/1-1/3-21.cwl, /WORK/nscc-gz_material_4/vasp/1-1/3-22.cwl,/WORK/nscc-gz_material_4/vasp/1-1/32.cwl,/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/INCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/CONTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/POTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/KPOINTS,/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/CHG, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/CHGCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/CONTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/WAVECAR,/WORK/nscc-gz_material_4/vasp/1-1/run_vasp6.sh, /WORK/nscc-gz_material_4/vasp/1-1/check6.sh]
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2]
inputs:
  cpf1:
    type: File
  cpf2:
    type: File
  cpf3:
    type: File
outputs: 
  cp5:
    type: stdout
stdout: cp5.txt 
  
