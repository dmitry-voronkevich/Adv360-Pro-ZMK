#!  /bin/bash

OUTPUT=config/private.dtsi

if [[ -e $OUTPUT ]] 
then
  exit 0
fi

for m in macro_p1 macro_ps macro_q
do
  echo "ZMK_MACRO($m,bindings=;)" >> $OUTPUT
done
