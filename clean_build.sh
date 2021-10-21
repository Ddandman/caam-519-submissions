#!/bin/bash

read Project_name #takes in a project name from user input

mkdir -p .build

new_name = "Project_name+.tex"

pdflatex $new_name
mv $Project_name.aux .build
mv $Project_name.log .build
mv textput.log .build


