#!/bin/bash
int=1
file='/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/OUTCAR'
while [ ! -f "$file" ]; do
  file='/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/OUTCAR'
  echo $int
  int=$(($int+1))
done
