#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling SQL TRACE Logs in WEB"
set_property sonar.log.level.web.sql TRACE $SQ_HOME/conf/sonar.properties
