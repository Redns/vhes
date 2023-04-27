#-------------------------------------------------------------
# Generated Example Tcl script for IP 'mig_7series_0' (xilinx.com:ip:mig_7series:4.2)
#-------------------------------------------------------------

# Set up project params
set_param checkpoint.writeSynthRtdsInDcp 1
set_param synth.incrementalSynthesisCache C:/Users/26892/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-56804-JingDevice/incrSyn
# Declare source IP directory
set srcIpDir "e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/ip/mig_7series_0"

# Declare xci file location
set srcXciDir "e:/Project/xk265/hevc_encoder_system/.Xil/mig_7series_0"

# Create project
puts "INFO: \[open_example_project\] Creating new example project..."
create_project -name mig_7series_0_ex -force
set_property part xc7z035ffg676-2 [current_project]
set_property target_language verilog [current_project]
set_property simulator_language MIXED [current_project]
set_property coreContainer.enable false [current_project]
# Set up imports directory
set projDir [get_property DIRECTORY [current_project]]
set importDir [file join $projDir imports]
file mkdir $importDir

set returnCode 0

# Set the repo paths from the original project
puts "INFO: \[open_example_project\] Loading IP Catalog..."
set_property ip_repo_paths [list e:/Project/ZynqLearning/code/IP/ip_repo e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.ip_user_files/uisrc] [current_project]
update_ip_catalog

# Set up pre-compilation paths
set_property compxlib.modelsim_compiled_library_dir {D:/IntelFPGA/modeltech64_10.4/vivado_lib} [current_project]

# Import source file referenced as a parameter 
if [file exists [file join ${srcXciDir} {mig_a.prj}]] {
  import_files [file join ${srcXciDir} {mig_a.prj}]
}

# Import the original IP (excluding example files)
puts "INFO: \[open_example_project\] Importing original IP ..."
import_ip -files [list [file join $srcIpDir ../../../../.Xil/mig_7series_0/mig_7series_0.xci]] -name mig_7series_0
if { $returnCode == 0 } { 
  reset_target {open_example} [get_ips mig_7series_0]

  # Generate the IP
  proc _filter_supported_targets {targets ip} {
    set res {}
    set all [get_property SUPPORTED_TARGETS $ip]
    foreach target $targets {
      lappend res {*}[lsearch -all -inline -nocase $all $target]
    }
    return $res
  }
  puts "INFO: \[open_example_project\] Generating the example project IP ..."
  generate_target [_filter_supported_targets {instantiation_template synthesis simulation implementation shared_logic} [get_ips mig_7series_0]] [get_ips mig_7series_0]
} 

if { $returnCode == 0 } { 
  # Add example synthesis HDL files
  puts "INFO: \[open_example_project\] Adding example synthesis HDL files ..."
  add_files -quiet -copy_to $importDir -fileset [current_fileset] \
  [list [file join $srcIpDir mig_7series_0/example_design/rtl/example_top.v]] \
  [list [file join $srcIpDir mig_7series_0/example_design/rtl/traffic_gen/mig_7series_v4_2_axi4_tg.v]] \
  [list [file join $srcIpDir mig_7series_0/example_design/rtl/traffic_gen/mig_7series_v4_2_axi4_wrapper.v]] \
  [list [file join $srcIpDir mig_7series_0/example_design/rtl/traffic_gen/mig_7series_v4_2_cmd_prbs_gen_axi.v]] \
  [list [file join $srcIpDir mig_7series_0/example_design/rtl/traffic_gen/mig_7series_v4_2_data_gen_chk.v]] \
  [list [file join $srcIpDir mig_7series_0/example_design/rtl/traffic_gen/mig_7series_v4_2_tg.v]]
} 

if { $returnCode == 0 } { 
  # Add example XDC files
  puts "INFO: \[open_example_project\] Adding example XDC files ..."
  add_files -quiet -copy_to $importDir -fileset [current_fileset -constrset] \
  [list [file join $srcIpDir mig_7series_0/example_design/par/example_top.xdc]]
set_property PROCESSING_ORDER early [get_files [list [file join $importDir example_top.xdc]]]
} 

if { $returnCode == 0 } { 
  # Add example simulation HDL files
  puts "INFO: \[open_example_project\] Adding simulation HDL files ..."
  if { [catch {current_fileset -simset} exc] } { create_fileset -simset sim_1 }
  add_files -quiet -copy_to $importDir -fileset [current_fileset -simset] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/ddr3_model.sv]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/ddr3_model_parameters.vh]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/sim_tb_top.v]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/wiredly.v]]
set_property FILE_TYPE SystemVerilog [get_files [list [file join $importDir ddr3_model.sv]]]
set_property USED_IN_SYNTHESIS false [get_files [list [file join $importDir ddr3_model.sv]]]
set_property USED_IN_SYNTHESIS false [get_files [list [file join $importDir ddr3_model_parameters.vh]]]
set_property USED_IN_SYNTHESIS false [get_files [list [file join $importDir sim_tb_top.v]]]
set_property USED_IN_SYNTHESIS false [get_files [list [file join $importDir wiredly.v]]]
} 

if { $returnCode == 0 } { 
  # Add example miscellaneous simulation files
  puts "INFO: \[open_example_project\] Adding simulation miscellaneous files ..."
  if { [catch {current_fileset -simset} exc] } { create_fileset -simset sim_1 }
  add_files -quiet -copy_to $importDir -fileset [current_fileset -simset] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/ies_run.sh]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/readme.txt]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/sim.do]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/vcs_run.sh]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/xsim_files.prj]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/xsim_options.tcl]] \
  [list [file join $srcIpDir mig_7series_0/example_design/sim/xsim_run.bat]]
set_property USED_IN_SYNTHESIS false [get_files [list [file join $importDir xsim_files.prj]]]
set_property USED_IN_SYNTHESIS false [get_files [list [file join $importDir xsim_options.tcl]]]
} 

  # Set top
  set_property TOP [lindex [find_top] 0] [current_fileset]

if { $returnCode == 0 } { 
  puts "INFO: \[open_example_project\] Sourcing example extension scripts ..."
  # Source script extension file(s)
  puts "INFO: \[open_example_project\] Sourcing extension script: example_design_post_process.tcl"
  if {[catch {source [file join $srcIpDir example_design_post_process.tcl]} errMsg]} {
    puts "ERROR: \[open_example_project\] Open Example Project failed: Error encountered while sourcing custom IP example design script: example_design_post_process.tcl"
    puts "$errMsg"
    error "ERROR: see log file for details."
    incr returnCode
  }
}

if { $returnCode == 0 } { 
  # Update compile order
  update_compile_order -fileset [current_fileset]
  update_compile_order -fileset [current_fileset -simset]
  puts "INFO: \[open_example_project\] Rebuilding top IP..."
  set tfiles [get_files -filter {name=~"*.xci" || name=~"*.bd" || name=~"*.bdj"}]
  foreach tfile $tfiles {
    if { [lsearch [list_property $tfile] PARENT_COMPOSITE_FILE ] == -1} {
      generate_target all $tfile
    }
  }
  export_ip_user_files -force
} 

if { $returnCode == 0 } { 
  # Versal design: make sure there is a CIPS BD cell
  set mpart [get_property part [current_project]]
  set fam [get_property C_FAMILY $mpart]
  if { [string compare $fam "versal"] == 0 } {
    set cips_vlnv "xilinx.com:ip:versal_cips:*"
    set cips_ipdef [get_ipdefs $cips_vlnv]
    if { $cips_ipdef != "" } { 
      set supported_parts [get_property supported_parts $cips_ipdef]
      if { [string first $mpart $supported_parts ] != -1 } {
        set scopedBDs {}
        foreach ip [get_ips] {
          set ipBDList [get_files -quiet -of $ip *.bd]
          if { $ipBDList != {} } { 
             foreach ipBd $ipBDList { 
               lappend scopedBDs $ipBd
            }
          }
        }
        set allBDs [get_files *.bd]
        set bFoundCips 0
        set topBD1 ""
        set topBDNames {}
        foreach bd1 $allBDs {
          set bAlsoInIpBDs 0
          foreach bd2 $scopedBDs {
            if { $bd1 == $bd2 } {
              set bAlsoInIpBDs 1
              break 
            } 
          } 
          if { $bAlsoInIpBDs == 0 } { 
            set fname [file tail $bd1]
            set bUsedInSynth [get_property used_in_synthesis [get_files $fname]]
            if { $bUsedInSynth == 1 } { 
              set rname [file rootname $fname]
              set topBD1 $fname
              lappend topBDNames $rname 
            } 
          } 
        } 
        set cipsIPs [get_ips -filter IPDEF=~"*versal_cips*"] 
        foreach cipsIP $cipsIPs {
          set bBDcontext [ get_property is_bd_context $cipsIPs ]
          if { $bBDcontext == 1 } { 
            foreach topBD $topBDNames {
              set namelen [string length $topBD]
              if { [string compare -length $namelen $cipsIP $topBD] == 0 } {
                set bFoundCips 1 
                break 
              } 
            } 
          } else {
            set bFoundCips 1 
            break 
          } 
        } 
        if { $bFoundCips == 0 } {
          if { $topBD1 == "" } {
            set newname ""
            set bDone 0
            set bdctr 0
            while { $bDone == 0 } {
              set uname "design_${bdctr}"
              set bNotUnique 0
              foreach bdname $topBDNames {
                if { $bdname == $uname } {
                  incr bdctr
                  set bNotUnique 1
                  break
                } 
              } 
              if { $bNotUnique == 0 } {
                set newname $uname
                set bDone 1
              } 
            } 
            puts "INFO: \[open_example_project\] Creating new BD $newname"
            create_bd_design $newname
            puts "INFO: \[open_example_project\] Creating new CIPS cell in BD $newname"
            create_bd_cell -type ip -vlnv $cips_vlnv "cips_0"
            set wrapper [ make_wrapper -files [get_files ${newname}.bd ] -inst_template]
            if { [ catch { add_module_instance -module_name ${newname}_wrapper -inst_name ${newname}_i } msg ] } { 
              puts "DEBUG: \[open_example_project\] add_module_instance error: $msg "
              puts "ERROR: \[open_example_project\] Unable to add ${newname}_wrapper module to top module."
            } 
            puts "INFO: \[open_example_project\] Adding BD wrapper file: $wrapper"
            add_files -norecurse $wrapper 
            update_compile_order -fileset sources_1
            save_bd_design
          } else {
            open_bd_design $topBD1
            puts "INFO: \[open_example_project\] Creating new CIPS cell in existing BD $topBD1"
            create_bd_cell -type ip -vlnv "xilinx.com:ip:versal_cips:*" "cips_0"
            update_compile_order -fileset sources_1
            save_bd_design
          }
        }
      } else {
        puts "INFO: \[open_example_project\] Current part '$partStr' is not supported by versal_cips core, so CIPS will not be added to design if needed."
      }
    }
  }
}
set dfile [file join $srcIpDir oepdone.txt]
if { [ catch { set doneFile [open $dfile w] } ] } {
} else { 
  puts $doneFile "Open Example Project DONE"
  close $doneFile
}
if { $returnCode != 0 } {
  puts "ERROR: \[open_example_project\] Problems were encountered while executing the example design script, please review the log file."
  error "ERROR: See log file for details."
  incr returnCode
} else {
  puts "INFO: \[open_example_project\] Open Example Project completed"
}
