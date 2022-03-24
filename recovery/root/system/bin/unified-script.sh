#!/system/bin/sh
# This script is needed to automatically set device props.

load_sunny()
{
    resetprop "ro.product.model" "M2101K7AG"
    resetprop "ro.product.vendor.model" "M2101K7AG"
    resetprop "ro.product.name" "sunny"
    resetprop "ro.build.product" "sunny"
    resetprop "ro.product.device" "sunny"
    resetprop "ro.product.system.device" "sunny"
    resetprop "ro.product.vendor.device" "sunny"
    resetprop "ro.vendor.product.device" "sunny"
}

load_mojito()
{
    resetprop "ro.product.model" "M2101K7AI"
    resetprop "ro.product.vendor.model" "M2101K7AI"
    resetprop "ro.product.name" "mojito"
    resetprop "ro.build.product" "mojito"
    resetprop "ro.product.device" "mojito"
    resetprop "ro.product.system.device" "mojito"
    resetprop "ro.product.vendor.device" "mojito"
    resetprop "ro.vendor.product.device" "mojito"
}

project=$(getprop ro.boot.hwc)
echo $project

case $project in
    "GLOBAL")
        load_sunny
        ;;
    "INDIA")
        load_mojito
        ;;
    *)
        load_sunny
        ;;
esac

exit 0
