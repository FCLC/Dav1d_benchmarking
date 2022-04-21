#!/bin/bash
watch -n 1 "echo '\n \nCore temps \n ' && sensors | grep Core && echo '\n\nCore clocks>=48xx\n\n' && cat /proc/cpuinfo | grep -P ': [45][^4-7]\d{2}'"
