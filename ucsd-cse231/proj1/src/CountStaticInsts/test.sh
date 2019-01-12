#!/bin/bash
PROJ=count-static-insts
TEST_SUITE=benchmark
if [ ! -f ${PROJ} ]
then
    echo Please build ${PROJ}
    exit
fi
for ir in `ls ${TEST_SUITE}/*.ll`
do
    echo ${ir}
    ./${PROJ} ${ir}
done
