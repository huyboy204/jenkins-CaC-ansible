#!/bin/bash

# Defaults
JENKINS_URL=""
JENKINS_USER=""
JENKINS_PASS=""

# Read arguments
while getopts ":u:p:U:" opt; do
  case $opt in
    u) JENKINS_URL="$OPTARG"
    ;;
    p) JENKINS_PASS="$OPTARG"
    ;; 
    U) JENKINS_USER="$OPTARG"  
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

# Generate input file
java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PASS groovy = < plugins.groovy > plugins.txt

./convert.sh
