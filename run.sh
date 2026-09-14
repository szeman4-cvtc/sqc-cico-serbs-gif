#!/usr/bin/env bash

pushd src/
  WHERE="$(uname -s)"
  CP_WINDOWS=".;../lib/slf4j-api-2.0.9.jar;../lib/slf4j-nop-2.0.9.jar;../lib/sqlite-jdbc-3.44.1.0.jar"
  CP=".:../lib/slf4j-api-2.0.9.jar:../lib/slf4j-nop-2.0.9.jar:../lib/sqlite-jdbc-3.44.1.0.jar"

  case "$(uname -s)" in
    CYGWIN*|MINGW*|MINGW32*|MSYS*)
      CP=$CP_WINDOWS
    ;;
  esac
  java -cp $CP edu/cvtc/itsd/Main
popd

