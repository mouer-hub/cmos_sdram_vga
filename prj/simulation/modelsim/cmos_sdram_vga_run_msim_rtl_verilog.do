transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/sobel.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/rgb2gray.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/gray2bin.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/param.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/cmos_top.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/ip/pll0 {E:/class_code/cmos_sdram_vga/ip/pll0/pll0.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/ip/iobuf {E:/class_code/cmos_sdram_vga/ip/iobuf/iobuf.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/ip/pll1 {E:/class_code/cmos_sdram_vga/ip/pll1/pll1.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/ip/vga_buf {E:/class_code/cmos_sdram_vga/ip/vga_buf/vga_buf.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/ip/wrfifo {E:/class_code/cmos_sdram_vga/ip/wrfifo/wrfifo.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/ip/rdfifo {E:/class_code/cmos_sdram_vga/ip/rdfifo/rdfifo.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/ip/sobel_line_buf {E:/class_code/cmos_sdram_vga/ip/sobel_line_buf/sobel_line_buf.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/prj/db {E:/class_code/cmos_sdram_vga/prj/db/pll0_altpll.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/prj/db {E:/class_code/cmos_sdram_vga/prj/db/pll1_altpll1.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/imag_process.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/vga_interface.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/capture.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/top.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/sdram_ctrl.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/sdram_controller.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/i2c_master.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/rtl {E:/class_code/cmos_sdram_vga/rtl/cmos_config.v}
vlib sdram_interface
vmap sdram_interface sdram_interface
vlog -vlog01compat -work sdram_interface +incdir+e:/class_code/cmos_sdram_vga/prj/db/ip/sdram_interface {e:/class_code/cmos_sdram_vga/prj/db/ip/sdram_interface/sdram_interface.v}
vlog -vlog01compat -work sdram_interface +incdir+e:/class_code/cmos_sdram_vga/prj/db/ip/sdram_interface/submodules {e:/class_code/cmos_sdram_vga/prj/db/ip/sdram_interface/submodules/altera_reset_controller.v}
vlog -vlog01compat -work sdram_interface +incdir+e:/class_code/cmos_sdram_vga/prj/db/ip/sdram_interface/submodules {e:/class_code/cmos_sdram_vga/prj/db/ip/sdram_interface/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work sdram_interface +incdir+e:/class_code/cmos_sdram_vga/prj/db/ip/sdram_interface/submodules {e:/class_code/cmos_sdram_vga/prj/db/ip/sdram_interface/submodules/sdram_interface_sdram_controller.v}

vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/prj/../tb {E:/class_code/cmos_sdram_vga/prj/../tb/top_tb.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/prj/../tb/sdram_slave_model {E:/class_code/cmos_sdram_vga/prj/../tb/sdram_slave_model/sdr_module.v}
vlog -vlog01compat -work work +incdir+E:/class_code/cmos_sdram_vga/prj/../tb/sdram_slave_model {E:/class_code/cmos_sdram_vga/prj/../tb/sdram_slave_model/sdr.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L sdram_interface -voptargs="+acc"  top_tb

add wave *
view structure
view signals
run -all
