#!/bin/bash

ImageName="$1"

mkdir ${ImageName}

cp ./Dockerfile-template ${ImageName}/Dockerfile

