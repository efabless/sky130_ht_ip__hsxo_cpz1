#! /bin/bash
magic -dnull -noconsole -rcfile /usr/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc << EOF
load ../mag/sky130_ht_ip__hsxo_cpz1
select top cell
expand
drc style drc(full)
drc on
drc check
drc catchup
drc count total
set tk_version 8.5
source \${CAD_ROOT}/magic/tcl/drcmgr.tcl
#feedback save drc.log
magic::drc_save_report sky130_ht_ip__hsxo_cpz1 drc.log
EOF
exit 0
