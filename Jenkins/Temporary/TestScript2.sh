#!/bin/bash
F_NAME=${1}
L_NAME=${2}
N_PREFIX=${3}
SHOW_PREFIX=${4}
if [[ ${SHOW_PREFIX} = true ]]
then
  echo "Hello ${N_PREFIX} ${F_NAME} ${L_NAME}"
else
  echo "hello ${F_NAME} ${L_NAME}"
fi
