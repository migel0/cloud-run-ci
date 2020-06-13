#!/bin/bash
set +e

if [ "$PROJ_VER" = "$CI_COMMIT_TAG" ] || [ "$PROJ_VER" = "${CI_COMMIT_TAG#v}" ] ; then 
    echo "Branch is correct and Version/Tag too" 
    exit 0
fi
echo  "###########################################################################"
echo  "#                                                                         #"
echo  "# ERROR  version $PROJ_VER  and TAG  $CI_COMMIT_TAG are not equal #"
echo  "#                                                                         #"
echo  "###########################################################################"
exit 1