set projDir "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/planAhead"
set projName "NapSnackSnap"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/mojo_top_0.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/reset_conditioner_1.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/button_conditioner_2.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/edge_detector_14.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/counter_26.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gameonemanager_27.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwomanager_28.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreemanager_29.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/alu8bit_30.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/decimaltosevenseg_31.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/sevenseg_32.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/sevenseg_32.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/sevenseg_32.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/pipeline_35.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/countdowntimer_47.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gameonedecreasecounter_48.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/countdowntimer_47.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/inputcountdowntimer_50.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwocentralleddisplay_51.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_52.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwoplayer_53.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwoplayer_53.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwoplayer_53.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwosequencerom_56.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwocomparator_57.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwocomparator_57.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwocomparator_57.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/countdowntimer_47.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/inputcountdowntimer_50.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_52.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreeplayer_63.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreeplayer_63.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreeplayer_63.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_66.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreeanswerrom_67.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreenumberrom_68.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreecomparator_69.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreecomparator_69.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreecomparator_69.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/leddisplaycounter_72.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_66.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_74.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwoinput_75.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_66.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_74.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwoinput_75.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_66.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_74.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gametwoinput_75.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_66.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreeinput_83.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_66.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreeinput_83.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/conditionalcounter_66.v" "C:/Users/Shi Ping/Desktop/NapSnackSnap/work/verilog/gamethreeinput_83.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/Shi\ Ping/Desktop/NapSnackSnap/constraint/atsumeconstraints.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
