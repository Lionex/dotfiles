#!/usr/bin/env sh

# ************************************************************************
# * NOTE: Sciprts by Chris Gianniotis.                                   *
# * They  provide a more advanced alternative to the msmtpqueue scripts. *
# ************************************************************************

QUEUEDIR=$HOME/.msmtpqueue

for i in $QUEUEDIR/*.mail; do
	  grep -E -s --colour -h '(^From:|^To:|^Subject:)' "$i" || echo "No mail in queue";
	  echo " "
done
