#!/system/bin/sh
# This script is needed to automatically set device props.

load_spesn()
{
    resetprop "ro.product.model" "M2101K7AG"
    resetprop "ro.product.vendor.model" "M2101K7AG"
    resetprop "ro.product.name" "spesn"
    resetprop "ro.build.product" "spesn"
    resetprop "ro.product.device" "spesn"
    resetprop "ro.product.system.device" "spesn"
    resetprop "ro.product.vendor.device" "spesn"
    resetprop "ro.vendor.product.device" "spesn"
}

load_spes()
{
    resetprop "ro.product.model" "M2101K7AI"
    resetprop "ro.product.vendor.model" "M2101K7AI"
    resetprop "ro.product.name" "spes"
    resetprop "ro.build.product" "spes"
    resetprop "ro.product.device" "spes"
    resetprop "ro.product.system.device" "spes"
    resetprop "ro.product.vendor.device" "spes"
    resetprop "ro.vendor.product.device" "spes"
}

project=$(getprop ro.boot.hwc)
echo $project

case $project in
    "GLOBAL")
        load_spesn
        ;;
    "INDIA")
        load_spes
        ;;
    *)
        load_spes
        ;;
esac

exit 0
