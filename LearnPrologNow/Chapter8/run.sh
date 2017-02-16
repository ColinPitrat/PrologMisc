#!/bin/bash
(
 echo "[english]."
 sleep 0.1
 echo "s(S,N,G,P,X,[])."
 sleep 0.1
 echo "a"
 sleep 0.1
 echo "halt."
) | prolog | grep "X = " 
