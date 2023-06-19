#!/bin/bash



find /home/oracle/Downloads/findComd -type f -mmin +23 -exec mv {} {}.ols \;
