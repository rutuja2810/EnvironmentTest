#!/bin/bash
set x
echo "Starting deployment..."
echo "App Name: $APP_NAME"
echo "Target Environment: $ENVIRONMENT"

if [ "$ENVIRONMENT" = "production" ]; then
  echo "Deploying to PRODUCTION!"
else
  echo "Deploying to $ENVIRONMENT environment"
fi
echo "WORKSPACE is: $WORKSPACE"
export WSPACE_STAGE=${WORKSPACE}
echo "WSPACE_STAGE is: $WSPACE_STAGE"
#copy command
#cp -rp $WSPACE_STAGE/ab/cde/* $WSPACE_STAGE/
echo "Deployment Summary" > $WSPACE_STAGE/Depl_Summary.log
echo "---------------------------------------" >> $WSPACE_STAGE/Summary.log
cat WSPACE_STAGE/Summary.log
ls -lrt 

echo "Starting while loop..."
#while loop
i=1
while [ $i -le 3 ]; do
  echo "Iteration $i"
  ((i++))
  sleep 1
done

STATUS=$(curl -s -o /dev/null -w "%{http_code}" https://www.google.com)
echo "HTTP Status Code: $STATUS"

if [ "$STATUS" -ne 200 ]; then
  echo "Request failed!"
  exit 1
else
  echo "Request succeeded!"
fi

echo "Deployment finished."

