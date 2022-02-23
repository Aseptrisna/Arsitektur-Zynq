# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/23221111/Data S2/Semester 2/System on Chip/Project/full_adder/full_adder.cache/wt} [current_project]
set_property parent.project_path {D:/23221111/Data S2/Semester 2/System on Chip/Project/full_adder/full_adder.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {d:/23221111/Data S2/Semester 2/System on Chip/Project/full_adder/full_adder.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  {D:/23221111/Data S2/Semester 2/System on Chip/Project/full_adder/full_adder.srcs/sources_1/new/half_adder.v}
  {D:/23221111/Data S2/Semester 2/System on Chip/Project/full_adder/full_adder.srcs/sources_1/new/full_adder.v}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/23221111/Data S2/Semester 2/System on Chip/Project/full_adder/full_adder.srcs/constrs_1/new/ZYBO_master.xdc}}
set_property used_in_implementation false [get_files {{D:/23221111/Data S2/Semester 2/System on Chip/Project/full_adder/full_adder.srcs/constrs_1/new/ZYBO_master.xdc}}]


synth_design -top full_adder -part xc7z010clg400-1


write_checkpoint -force -noxdef full_adder.dcp

catch { report_utilization -file full_adder_utilization_synth.rpt -pb full_adder_utilization_synth.pb }