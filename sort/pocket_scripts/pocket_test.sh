#!/bin/env bash

configFieldArray=`awk -F " " '{ printf $1 "\t" }' < ./pocket.config`
configValueArray=`awk -F " " '{ printf $2 "\t" }' < ./pocket.config`

echo $configFieldArray
echo $configValueArray



