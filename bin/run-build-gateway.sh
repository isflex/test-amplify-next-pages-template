#!/bin/bash

if [[ ! -z ${CI} ]]
then
  # turbo run turbo:build:gateway;
  concurrently -k -n BUILD,HTTP -s first 'yarn --filter=gateway buildGateway' 'yarn start:client';
else
  # turbo run turbo:build:gateway;
  concurrently -k -n BUILD,HTTP -s first 'yarn --filter=gateway buildGateway' 'yarn start:client';
fi
