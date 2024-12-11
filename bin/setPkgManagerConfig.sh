#!/bin/bash

if [[ ! -z ${CI} ]]
then
  echo 'CI mode';
  cd $FLEX_APP/bin;
  pnpm config set prefer-frozen-lockfile true;
  pnpm config set auto-install-peers false;
  pnpm config set node-linker 'hoisted';
else
  echo 'local mode';
  cd $FLEX_PROJ_ROOT/bin;
  pnpm config set prefer-frozen-lockfile false;
  pnpm config set auto-install-peers true;
  # pnpm config set use-node-version 20.15.0;
fi

source ~/.profile;

echo "prefer-frozen-lockfile : $(pnpm config get prefer-frozen-lockfile)";
echo "auto-install-peers : $(pnpm config get auto-install-peers)";
