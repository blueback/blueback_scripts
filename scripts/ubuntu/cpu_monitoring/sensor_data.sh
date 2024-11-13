#!/usr/bin/bash
#sensors | tail -n 28
sensors | grep -o -P 'Core .*:\s*\+......'
