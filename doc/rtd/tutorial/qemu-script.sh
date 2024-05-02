#!/bin/bash

# Setup trap command to end the python server on exit
trap "trap - SIGTERM && kill -- -$$" EXIT