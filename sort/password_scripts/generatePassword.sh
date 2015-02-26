#!/bin/env bash
function genPW{
#Generate password; The entropy is pulled from /dev/urandom.
pwmake /dev/urandom
}

genPW
