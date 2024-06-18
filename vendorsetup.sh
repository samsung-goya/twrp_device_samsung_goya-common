#!/bin/bash
# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

add_lunch_combo omni_goyawifi-eng;
add_lunch_combo omni_goyawifi-user;
add_lunch_combo omni_goyawifi-userdebug;

add_lunch_combo omni_goya3g-eng;
add_lunch_combo omni_goya3g-user;
add_lunch_combo omni_goya3g-userdebug;
