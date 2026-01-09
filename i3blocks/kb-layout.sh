#!/bin/bash

led_mask=$(xset -q | awk '/LED mask:/ {print $10}')

case "$led_mask" in 00000000)
  layout="US"
  ;;
00001000)
  layout="US-Intl"
  ;;
*)
  layout="Unknown"
  ;;
esac

echo "🇺🇸 $layout"
