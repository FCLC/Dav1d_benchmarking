#!/bin/bash
watch -n 0.1 "echo '\n\nCore clocks>=50xx\n\n' && cat /proc/cpuinfo | grep -P ': [5]\d{3}'"
