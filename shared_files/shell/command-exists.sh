#!/bin/bash

# Returns TRUE if a command exists, otherwise returns FALSE
command -v "${1}" >/dev/null 2>&1
