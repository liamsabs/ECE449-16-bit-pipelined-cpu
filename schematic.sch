# File saved with Nlview 6.6.11  2017-06-12 bk=1.3860 VDI=40 GEI=35 GUI=JA:1.6
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new CONTROL work:CONTROL:NOFILE -nosplit
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol DECODE work:DECODE:NOFILE HIERBOX pin CLK input.left pin EX_MEM_BR_CTRL_Out_reg input.left pin EX_MEM_BR_CTRL_Out_reg_rep input.left pin EX_MEM_RW_data_Out_reg[0] input.left pin EX_MEM_RW_data_Out_reg[0]_0 input.left pin EX_MEM_RW_data_Out_reg[10] input.left pin EX_MEM_RW_data_Out_reg[10]_0 input.left pin EX_MEM_RW_data_Out_reg[11] input.left pin EX_MEM_RW_data_Out_reg[12] input.left pin EX_MEM_RW_data_Out_reg[13] input.left pin EX_MEM_RW_data_Out_reg[14] input.left pin EX_MEM_RW_data_Out_reg[14]_0 input.left pin EX_MEM_RW_data_Out_reg[15] input.left pin EX_MEM_RW_data_Out_reg[15]_0 input.left pin EX_MEM_RW_data_Out_reg[1] input.left pin EX_MEM_RW_data_Out_reg[1]_0 input.left pin EX_MEM_RW_data_Out_reg[2] input.left pin EX_MEM_RW_data_Out_reg[2]_0 input.left pin EX_MEM_RW_data_Out_reg[3] input.left pin EX_MEM_RW_data_Out_reg[3]_0 input.left pin EX_MEM_RW_data_Out_reg[4] input.left pin EX_MEM_RW_data_Out_reg[4]_0 input.left pin EX_MEM_RW_data_Out_reg[5] input.left pin EX_MEM_RW_data_Out_reg[5]_0 input.left pin EX_MEM_RW_data_Out_reg[6] input.left pin EX_MEM_RW_data_Out_reg[6]_0 input.left pin EX_MEM_RW_data_Out_reg[7] input.left pin EX_MEM_RW_data_Out_reg[7]_0 input.left pin EX_MEM_RW_data_Out_reg[8] input.left pin EX_MEM_RW_data_Out_reg[8]_0 input.left pin EX_MEM_RW_data_Out_reg[9] input.left pin ID_EX_BR_En_Out input.left pin ID_EX_BR_addr_Out_reg[11] output.right pin ID_EX_BR_addr_Out_reg[11]_0 output.right pin ID_EX_BR_addr_Out_reg[11]_1 output.right pin ID_EX_BR_addr_Out_reg[11]_2 output.right pin ID_EX_BR_addr_Out_reg[12] output.right pin ID_EX_BR_addr_Out_reg[13] output.right pin ID_EX_BR_addr_Out_reg[14] output.right pin ID_EX_BR_addr_Out_reg[9] output.right pin ID_EX_BR_addr_Out_reg[9]_0 output.right pin ID_EX_BR_sub_PC_Out_reg[11] input.left pin ID_EX_BR_sub_PC_Out_reg[14] input.left pin ID_EX_IN_En_Out_reg_0 input.left pin ID_EX_IN_En_Out_reg_1 input.left pin ID_EX_IN_En_Out_reg_2 input.left pin ID_EX_RB_data_Out_reg[1] output.right pin ID_EX_RW_En_Out_reg input.left pin ID_EX_RW_En_Out_reg_0 input.left pin ID_OP_sig_reg[0] input.left pin ID_OP_sig_reg[10] input.left pin ID_OP_sig_reg[11]_0 input.left pin ID_OP_sig_reg[12] input.left pin ID_OP_sig_reg[12]_0 input.left pin ID_OP_sig_reg[13] input.left pin ID_OP_sig_reg[1] input.left pin ID_OP_sig_reg[1]_0 input.left pin ID_OP_sig_reg[2] input.left pin ID_OP_sig_reg[2]_0 input.left pin ID_OP_sig_reg[3] input.left pin ID_OP_sig_reg[4] input.left pin ID_OP_sig_reg[5] input.left pin ID_OP_sig_reg[6] input.left pin ID_OP_sig_reg[6]_0 input.left pin ID_OP_sig_reg[7] input.left pin ID_OP_sig_reg[7]_0 input.left pin ID_OP_sig_reg[8] input.left pin ID_OP_sig_reg[8]_0 input.left pin ID_OP_sig_reg[8]_1 input.left pin ID_OP_sig_reg[9] input.left pin ID_OP_sig_reg[9]_0 input.left pin ID_OP_sig_reg[9]_1 input.left pin ID_OP_sig_reg[9]_2 input.left pin ID_OP_sig_reg[9]_3 input.left pin ID_PC_sig_reg[13] input.left pin ID_PC_sig_reg[9] input.left pin MEM_WB_RW_En_Out_reg input.left pin MEM_WB_RW_En_Out_reg_0 input.left pin Output_sig output.right pin Rst_Ex_IBUF input.left pin Rst_Load_IBUF input.left pin W_En input.left pin display_address_reg[0]_rep input.left pin display_address_reg[0]_rep__0 input.left pin display_address_reg[0]_rep__1 input.left pin display_address_reg[0]_rep__2 input.left pin display_address_reg[1]_rep input.left pin display_address_reg[1]_rep__0 input.left pin display_address_reg[2] input.left pin display_address_reg[2]_0 input.left pin display_address_reg[2]_rep input.left pin display_address_reg[2]_rep_0 input.left pin display_address_reg[2]_rep_1 input.left pin display_address_reg[6] input.left pin display_address_reg[7] input.left pin p_0_in output.right pin vga_red_reg[3] output.right pin vga_red_reg[3]_0 output.right pin vga_red_reg[3]_1 output.right pin vga_red_reg[3]_10 output.right pin vga_red_reg[3]_11 output.right pin vga_red_reg[3]_12 output.right pin vga_red_reg[3]_13 output.right pin vga_red_reg[3]_14 output.right pin vga_red_reg[3]_15 output.right pin vga_red_reg[3]_16 output.right pin vga_red_reg[3]_17 output.right pin vga_red_reg[3]_18 output.right pin vga_red_reg[3]_19 output.right pin vga_red_reg[3]_2 output.right pin vga_red_reg[3]_20 output.right pin vga_red_reg[3]_21 output.right pin vga_red_reg[3]_22 output.right pin vga_red_reg[3]_23 output.right pin vga_red_reg[3]_24 output.right pin vga_red_reg[3]_25 output.right pin vga_red_reg[3]_26 output.right pin vga_red_reg[3]_27 output.right pin vga_red_reg[3]_28 output.right pin vga_red_reg[3]_29 output.right pin vga_red_reg[3]_3 output.right pin vga_red_reg[3]_30 output.right pin vga_red_reg[3]_31 output.right pin vga_red_reg[3]_32 output.right pin vga_red_reg[3]_33 output.right pin vga_red_reg[3]_34 output.right pin vga_red_reg[3]_35 output.right pin vga_red_reg[3]_36 output.right pin vga_red_reg[3]_37 output.right pin vga_red_reg[3]_38 output.right pin vga_red_reg[3]_39 output.right pin vga_red_reg[3]_4 output.right pin vga_red_reg[3]_40 output.right pin vga_red_reg[3]_41 output.right pin vga_red_reg[3]_42 output.right pin vga_red_reg[3]_43 output.right pin vga_red_reg[3]_44 output.right pin vga_red_reg[3]_45 output.right pin vga_red_reg[3]_46 output.right pin vga_red_reg[3]_47 output.right pin vga_red_reg[3]_48 output.right pin vga_red_reg[3]_49 output.right pin vga_red_reg[3]_5 output.right pin vga_red_reg[3]_50 output.right pin vga_red_reg[3]_51 output.right pin vga_red_reg[3]_52 output.right pin vga_red_reg[3]_53 output.right pin vga_red_reg[3]_54 output.right pin vga_red_reg[3]_55 output.right pin vga_red_reg[3]_56 output.right pin vga_red_reg[3]_57 output.right pin vga_red_reg[3]_58 output.right pin vga_red_reg[3]_59 output.right pin vga_red_reg[3]_6 output.right pin vga_red_reg[3]_60 output.right pin vga_red_reg[3]_61 output.right pin vga_red_reg[3]_62 output.right pin vga_red_reg[3]_63 output.right pin vga_red_reg[3]_64 output.right pin vga_red_reg[3]_65 output.right pin vga_red_reg[3]_66 output.right pin vga_red_reg[3]_67 output.right pin vga_red_reg[3]_68 output.right pin vga_red_reg[3]_7 output.right pin vga_red_reg[3]_8 output.right pin vga_red_reg[3]_9 output.right pinBus AR output.right [0:0] pinBus D output.right [10:0] pinBus EX_MEM_RW_data_In input.left [4:0] pinBus ID_EX_BR_addr_Out_reg[1] output.right [0:0] pinBus ID_EX_IN_En_Out_reg input.left [1:0] pinBus ID_EX_RA_data_Out_reg[14] output.right [0:0] pinBus ID_EX_RA_data_Out_reg[15] output.right [11:0] pinBus ID_EX_RB_data_Out_reg[12] output.right [0:0] pinBus ID_EX_RB_data_Out_reg[14] output.right [1:0] pinBus ID_EX_RB_data_Out_reg[15] output.right [14:0] pinBus ID_EX_RB_data_Out_reg[2] output.right [1:0] pinBus ID_OP_sig_reg[11] input.left [7:0] pinBus ID_PC_sig_reg[15] input.left [10:0] pinBus MEM_WB_RW_addr_Out_reg[2] input.left [2:0] pinBus MEM_WB_RW_data_Out_reg[15] input.left [15:0] pinBus Q input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol EXECUTE work:EXECUTE:NOFILE HIERBOX pin BR_CTRL output.right pin CLK input.left pin EX_MEM_BR_CTRL_Out output.right pin EX_MEM_BR_CTRL_Out_reg input.left pin EX_MEM_BR_CTRL_Out_reg_rep output.right pin EX_MEM_BR_CTRL_Out_reg_rep_0 input.left pin EX_MEM_RW_En_Out_reg input.left pin EX_MEM_RW_En_Out_reg_0 input.left pin EX_MEM_RW_data_Out_reg[11]_0 input.left pin EX_MEM_RW_data_Out_reg[12] output.right pin EX_MEM_RW_data_Out_reg[12]_0 input.left pin EX_MEM_RW_data_Out_reg[13] output.right pin EX_MEM_RW_data_Out_reg[13]_0 input.left pin EX_MEM_RW_data_Out_reg[13]_1 input.left pin EX_MEM_RW_data_Out_reg[14]_0 input.left pin EX_MEM_RW_data_Out_reg[9] input.left pin EX_OP_sig_reg[0] input.left pin EX_OP_sig_reg[1] input.left pin EX_OP_sig_reg[2] input.left pin EX_OP_sig_reg[3] input.left pin EX_OP_sig_reg[6] input.left pin EX_OP_sig_reg[7] input.left pin ID_EX_ALU_op_Out_reg[0] input.left pin ID_EX_ALU_op_Out_reg[0]_0 input.left pin ID_EX_ALU_op_Out_reg[0]_1 input.left pin ID_EX_ALU_op_Out_reg[0]_2 input.left pin ID_EX_ALU_op_Out_reg[1] input.left pin ID_EX_ALU_op_Out_reg[2]_0 input.left pin ID_EX_ALU_op_Out_reg[2]_1 input.left pin ID_EX_ALU_op_Out_reg[2]_2 input.left pin ID_EX_ALU_op_Out_reg[2]_3 input.left pin ID_EX_BR_En_Out input.left pin ID_EX_BR_En_Out_reg input.left pin ID_EX_BR_Op_Out_reg[0] input.left pin ID_EX_BR_Op_Out_reg[0]_0 input.left pin ID_EX_BR_Op_Out_reg[0]_1 input.left pin ID_EX_BR_Op_Out_reg[0]_2 input.left pin ID_EX_BR_Op_Out_reg[0]_3 input.left pin ID_EX_BR_Op_Out_reg[1] input.left pin ID_EX_BR_addr_Out_reg[11] output.right pin ID_EX_BR_addr_Out_reg[11]_0 output.right pin ID_EX_BR_addr_Out_reg[12] output.right pin ID_EX_BR_addr_Out_reg[13]_0 output.right pin ID_EX_BR_addr_Out_reg[15] output.right pin ID_EX_BR_addr_Out_reg[15]_0 output.right pin ID_EX_BR_addr_Out_reg[1] output.right pin ID_EX_BR_addr_Out_reg[4] output.right pin ID_EX_BR_addr_Out_reg[9] output.right pin ID_EX_BR_sub_PC_Out_reg[15] input.left pin ID_EX_IN_En_Out_reg input.left pin ID_EX_IN_En_Out_reg_0 input.left pin ID_EX_IN_En_Out_reg_1 input.left pin ID_EX_IN_En_Out_reg_2 input.left pin ID_EX_L_op_Out_reg[1] input.left pin ID_EX_L_op_Out_reg[1]_0 input.left pin ID_EX_RA_data_Out_reg[0] output.right pin ID_EX_RA_data_Out_reg[0]_0 input.left pin ID_EX_RA_data_Out_reg[10] output.right pin ID_EX_RA_data_Out_reg[10]_0 input.left pin ID_EX_RA_data_Out_reg[12] input.left pin ID_EX_RA_data_Out_reg[13]_0 input.left pin ID_EX_RA_data_Out_reg[13]_1 input.left pin ID_EX_RA_data_Out_reg[15]_0 input.left pin ID_EX_RA_data_Out_reg[1] input.left pin ID_EX_RA_data_Out_reg[2] output.right pin ID_EX_RA_data_Out_reg[3] output.right pin ID_EX_RA_data_Out_reg[3]_0 input.left pin ID_EX_RA_data_Out_reg[5] output.right pin ID_EX_RA_data_Out_reg[5]_0 input.left pin ID_EX_RA_data_Out_reg[6] output.right pin ID_EX_RA_data_Out_reg[7] output.right pin ID_EX_RA_data_Out_reg[7]_0 input.left pin ID_EX_RA_data_Out_reg[8] output.right pin ID_EX_RA_data_Out_reg[9] input.left pin ID_EX_RB_data_Out_reg[0] output.right pin ID_EX_RB_data_Out_reg[11] output.right pin ID_EX_RB_data_Out_reg[12] input.left pin ID_EX_RB_data_Out_reg[13] input.left pin ID_EX_RB_data_Out_reg[2] output.right pin ID_EX_RB_data_Out_reg[3] output.right pin ID_EX_RB_data_Out_reg[4] output.right pin ID_EX_RB_data_Out_reg[5] output.right pin ID_EX_RB_data_Out_reg[6] output.right pin ID_EX_RB_data_Out_reg[6]_0 input.left pin ID_EX_RB_data_Out_reg[7] output.right pin ID_EX_RB_data_Out_reg[8] input.left pin ID_EX_RW_En_Out_reg input.left pin ID_EX_RW_En_Out_reg_0 input.left pin ID_EX_Shiftamt_Out_reg[0] input.left pin ID_EX_Shiftamt_Out_reg[0]_0 input.left pin ID_EX_Shiftamt_Out_reg[0]_1 input.left pin ID_EX_Shiftamt_Out_reg[0]_11 input.left pin ID_EX_Shiftamt_Out_reg[0]_12 input.left pin ID_EX_Shiftamt_Out_reg[0]_13 input.left pin ID_EX_Shiftamt_Out_reg[0]_14 input.left pin ID_EX_Shiftamt_Out_reg[0]_2 input.left pin ID_EX_Shiftamt_Out_reg[0]_3 input.left pin ID_EX_Shiftamt_Out_reg[0]_4 input.left pin ID_EX_Shiftamt_Out_reg[0]_5 input.left pin ID_EX_Shiftamt_Out_reg[0]_6 input.left pin ID_EX_Shiftamt_Out_reg[0]_7 input.left pin ID_EX_Shiftamt_Out_reg[0]_8 input.left pin ID_EX_Shiftamt_Out_reg[0]_9 input.left pin ID_EX_Shiftamt_Out_reg[2] input.left pin ID_OP_sig_reg[10] input.left pin ID_OP_sig_reg[11] input.left pin ID_OP_sig_reg[13] input.left pin ID_OP_sig_reg[7] input.left pin ID_OP_sig_reg[8] input.left pin ID_OP_sig_reg[8]_0 input.left pin ID_OP_sig_reg[8]_1 input.left pin ID_OP_sig_reg[8]_2 input.left pin ID_OP_sig_reg[8]_3 input.left pin ID_OP_sig_reg[8]_4 input.left pin ID_OP_sig_reg[9] input.left pin ID_PC_sig_reg[10] input.left pin ID_PC_sig_reg[10]_0 input.left pin ID_PC_sig_reg[14] input.left pin MEM_WB_RW_En_Out_reg input.left pin MEM_WB_RW_En_Out_reg_0 input.left pin MEM_WB_RW_En_Out_reg_1 input.left pin PMOD_In[1] input.left pin PMOD_In[2] input.left pin display_address_reg[0]_rep input.left pin display_address_reg[0]_rep__0 input.left pin display_address_reg[0]_rep__1 input.left pin display_address_reg[0]_rep__2 input.left pin display_address_reg[1]_rep__0 input.left pin negative_flag output.right pin reg_file_reg[3][13] input.left pin reg_file_reg[3][14] input.left pin vga_red_reg[3] output.right pin vga_red_reg[3]_0 output.right pin vga_red_reg[3]_1 output.right pin vga_red_reg[3]_10 output.right pin vga_red_reg[3]_11 output.right pin vga_red_reg[3]_12 output.right pin vga_red_reg[3]_13 output.right pin vga_red_reg[3]_14 output.right pin vga_red_reg[3]_15 output.right pin vga_red_reg[3]_2 output.right pin vga_red_reg[3]_3 output.right pin vga_red_reg[3]_4 output.right pin vga_red_reg[3]_5 output.right pin vga_red_reg[3]_6 output.right pin vga_red_reg[3]_7 output.right pin vga_red_reg[3]_8 output.right pin vga_red_reg[3]_9 output.right pin zero_flag output.right pinBus AR input.left [0:0] pinBus D output.right [4:0] pinBus EX_MEM_RW_data_Out_reg[11] input.left [10:0] pinBus EX_MEM_RW_data_Out_reg[14] input.left [0:0] pinBus EX_MEM_RW_data_Out_reg[15] output.right [6:0] pinBus EX_MEM_RW_data_Out_reg[15]_0 output.right [15:0] pinBus ID_EX_ALU_op_Out_reg[2] input.left [2:0] pinBus ID_EX_BR_Op_Out_reg[1]_0 input.left [1:0] pinBus ID_EX_BR_addr_Out_reg[13] output.right [1:0] pinBus ID_EX_BR_sub_PC_Out_reg[14] input.left [12:0] pinBus ID_EX_L_op_Out_reg[2] input.left [2:0] pinBus ID_EX_RA_data_Out_reg[13] output.right [3:0] pinBus ID_EX_RA_data_Out_reg[15] input.left [15:0] pinBus ID_EX_Shiftamt_Out_reg[0]_10 input.left [0:0] pinBus ID_OP_sig_reg[11]_0 input.left [2:0] pinBus ID_PC_sig_reg[13] input.left [3:0] pinBus MEM_WB_RW_data_Out_reg[11] input.left [10:0] pinBus PMOD_In_IBUF input.left [3:0] pinBus Q input.left [15:0] pinBus Switch_In_IBUF input.left [6:0] pinBus debug_buffer[548]_1 output.right [3:0] pinBus debug_buffer[549]_0 output.right [2:0] pinBus display_address_reg[2] input.left [0:0] pinBus s3_reg_a input.left [1:0] pinBus s3_reg_b input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol FETCH work:FETCH:NOFILE HIERBOX pin CLK input.left pin EX_MEM_BR_CTRL_Out_reg input.left pin EX_MEM_BR_CTRL_Out_reg_rep input.left pin ID_EX_L_op_Out_reg[2] output.right pin PC_reg[12]_0 output.right pin Rst_Ex_IBUF input.left pin Rst_Load_IBUF input.left pin display_address_reg[0]_rep input.left pin display_address_reg[0]_rep__0 input.left pin display_address_reg[0]_rep__1 input.left pin display_address_reg[0]_rep__2 input.left pin display_address_reg[1]_rep__0 input.left pin p_0_in input.left pin vga_red_reg[3] output.right pin vga_red_reg[3]_0 output.right pin vga_red_reg[3]_1 output.right pin vga_red_reg[3]_10 output.right pin vga_red_reg[3]_2 output.right pin vga_red_reg[3]_3 output.right pin vga_red_reg[3]_4 output.right pin vga_red_reg[3]_5 output.right pin vga_red_reg[3]_6 output.right pin vga_red_reg[3]_7 output.right pin vga_red_reg[3]_8 output.right pin vga_red_reg[3]_9 output.right pinBus D output.right [14:0] pinBus EX_MEM_BR_addr_Out_reg[15] input.left [14:0] pinBus ID_EX_L_op_Out_reg[2]_0 input.left [2:0] pinBus ID_OP_sig_reg[15] input.left [7:0] pinBus Q output.right [0:0] pinBus addrb output.right [9:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol RAM work:RAM:NOFILE HIERBOX pin CLK input.left pin EX_MEM_BR_CTRL_Out_reg_rep input.left pin EX_MEM_RW_En_Out_reg input.left pin EX_MEM_RW_En_Out_reg_0 input.left pin ID_EX_BR_addr_Out_reg[11] output.right pin ID_EX_BR_addr_Out_reg[12] output.right pin ID_EX_BR_addr_Out_reg[13] output.right pin ID_EX_BR_addr_Out_reg[9] output.right pin ID_EX_RA_data_Out_reg[14] output.right pin ID_EX_RA_data_Out_reg[15] output.right pin ID_EX_RB_data_Out_reg[10] output.right pin ID_EX_RB_data_Out_reg[12] output.right pin ID_EX_RB_data_Out_reg[13] output.right pin ID_EX_RB_data_Out_reg[14] output.right pin ID_EX_RB_data_Out_reg[15] output.right pin ID_EX_RB_data_Out_reg[1] output.right pin ID_EX_RB_data_Out_reg[8] output.right pin ID_EX_RB_data_Out_reg[9] output.right pin ID_EX_RW_En_Out_reg input.left pin ID_OP_sig_reg[2] input.left pin MEM_WB_RW_En_Out_reg input.left pin MEM_WB_RW_En_Out_reg_0 input.left pin MEM_WB_RW_En_Out_reg_1 input.left pin display_address_reg[0]_rep input.left pin display_address_reg[0]_rep__0 input.left pin display_address_reg[0]_rep__1 input.left pin display_address_reg[1]_rep__0 input.left pin main_buffer_reg output.right pin p_0_in input.left pin vga_red_reg[3] output.right pin vga_red_reg[3]_0 output.right pin vga_red_reg[3]_1 output.right pin vga_red_reg[3]_10 output.right pin vga_red_reg[3]_2 output.right pin vga_red_reg[3]_3 output.right pin vga_red_reg[3]_4 output.right pin vga_red_reg[3]_5 output.right pin vga_red_reg[3]_6 output.right pin vga_red_reg[3]_7 output.right pin vga_red_reg[3]_8 output.right pin vga_red_reg[3]_9 output.right pinBus AR input.left [0:0] pinBus D output.right [0:0] pinBus EX_MEM_L_op_Out_reg[2] input.left [2:0] pinBus EX_MEM_MEM_din_Out_reg[15] input.left [15:0] pinBus ID_EX_BR_sub_PC_Out_reg[1] input.left [0:0] pinBus MEM_WB_L_op_Out_reg[2] input.left [2:0] pinBus MEM_WB_RW_data_Out_reg[15] input.left [15:0] pinBus PC_reg[11] input.left [0:0] pinBus Q input.left [14:0] pinBus addrb input.left [9:0] pinBus douta input.left [15:0] pinBus doutb output.right [15:0] pinBus reg_file_reg[0][15] output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ROM work:ROM:NOFILE HIERBOX pin CLK input.left pin EX_MEM_BR_CTRL_Out_reg input.left pin ID_EX_L_op_Out_reg[1] input.left pinBus D output.right [15:0] pinBus Q input.left [0:0] pinBus addrb input.left [7:0] pinBus douta output.right [15:0] pinBus doutb input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol console work:console:NOFILE HIERBOX pin BR_CTRL input.left pin CLK input.left pin Data_Out_reg output.right pin EX_MEM_L_op_Out_reg[2] input.left pin EX_MEM_RW_En_In input.left pin EX_MEM_RW_En_Out_reg input.left pin EX_MEM_RW_data_Out_reg[0] output.right pin EX_MEM_RW_data_Out_reg[0]_0 output.right pin EX_MEM_RW_data_Out_reg[10] output.right pin EX_MEM_RW_data_Out_reg[11] output.right pin EX_MEM_RW_data_Out_reg[11]_0 output.right pin EX_MEM_RW_data_Out_reg[11]_1 output.right pin EX_MEM_RW_data_Out_reg[11]_2 output.right pin EX_MEM_RW_data_Out_reg[12] output.right pin EX_MEM_RW_data_Out_reg[12]_0 output.right pin EX_MEM_RW_data_Out_reg[12]_1 output.right pin EX_MEM_RW_data_Out_reg[12]_2 output.right pin EX_MEM_RW_data_Out_reg[12]_3 output.right pin EX_MEM_RW_data_Out_reg[13] output.right pin EX_MEM_RW_data_Out_reg[13]_0 output.right pin EX_MEM_RW_data_Out_reg[13]_1 output.right pin EX_MEM_RW_data_Out_reg[13]_2 output.right pin EX_MEM_RW_data_Out_reg[13]_3 output.right pin EX_MEM_RW_data_Out_reg[14] output.right pin EX_MEM_RW_data_Out_reg[14]_0 output.right pin EX_MEM_RW_data_Out_reg[14]_1 output.right pin EX_MEM_RW_data_Out_reg[14]_2 output.right pin EX_MEM_RW_data_Out_reg[15] output.right pin EX_MEM_RW_data_Out_reg[15]_0 output.right pin EX_MEM_RW_data_Out_reg[15]_1 output.right pin EX_MEM_RW_data_Out_reg[15]_10 input.left pin EX_MEM_RW_data_Out_reg[15]_11 input.left pin EX_MEM_RW_data_Out_reg[15]_2 output.right pin EX_MEM_RW_data_Out_reg[15]_3 output.right pin EX_MEM_RW_data_Out_reg[15]_4 output.right pin EX_MEM_RW_data_Out_reg[15]_5 output.right pin EX_MEM_RW_data_Out_reg[15]_6 output.right pin EX_MEM_RW_data_Out_reg[15]_7 output.right pin EX_MEM_RW_data_Out_reg[15]_8 output.right pin EX_MEM_RW_data_Out_reg[15]_9 output.right pin EX_MEM_RW_data_Out_reg[1] output.right pin EX_MEM_RW_data_Out_reg[1]_0 output.right pin EX_MEM_RW_data_Out_reg[2] output.right pin EX_MEM_RW_data_Out_reg[2]_0 output.right pin EX_MEM_RW_data_Out_reg[3] output.right pin EX_MEM_RW_data_Out_reg[3]_0 output.right pin EX_MEM_RW_data_Out_reg[4] output.right pin EX_MEM_RW_data_Out_reg[4]_0 output.right pin EX_MEM_RW_data_Out_reg[4]_1 output.right pin EX_MEM_RW_data_Out_reg[5] output.right pin EX_MEM_RW_data_Out_reg[5]_0 output.right pin EX_MEM_RW_data_Out_reg[6] output.right pin EX_MEM_RW_data_Out_reg[6]_0 output.right pin EX_MEM_RW_data_Out_reg[6]_1 output.right pin EX_MEM_RW_data_Out_reg[7] output.right pin EX_MEM_RW_data_Out_reg[7]_0 output.right pin EX_MEM_RW_data_Out_reg[7]_1 output.right pin EX_MEM_RW_data_Out_reg[8] output.right pin EX_MEM_RW_data_Out_reg[8]_0 output.right pin EX_MEM_RW_data_Out_reg[8]_1 output.right pin EX_MEM_RW_data_Out_reg[9] output.right pin EX_MEM_RW_data_Out_reg[9]_0 output.right pin EX_MEM_RW_data_Out_reg[9]_1 output.right pin EX_OP_sig_reg[0] input.left pin EX_OP_sig_reg[1] input.left pin EX_OP_sig_reg[2] input.left pin ID_EX_BR_addr_Out_reg[12] output.right pin ID_EX_BR_addr_Out_reg[12]_0 output.right pin ID_EX_BR_addr_Out_reg[12]_1 output.right pin ID_EX_BR_addr_Out_reg[12]_2 output.right pin ID_EX_BR_addr_Out_reg[1] output.right pin ID_EX_BR_addr_Out_reg[1]_0 output.right pin ID_EX_BR_sub_PC_Out_reg[1] input.left pin ID_EX_BR_sub_PC_Out_reg[3] input.left pin ID_EX_BR_sub_PC_Out_reg[5] input.left pin ID_EX_IN_En_Out_reg output.right pin ID_EX_IN_En_Out_reg_0 input.left pin ID_EX_IN_En_Out_reg_1 input.left pin ID_EX_RA_data_Out_reg[2] output.right pin ID_EX_RB_data_Out_reg[11] output.right pin ID_EX_RB_data_Out_reg[11]_0 output.right pin ID_EX_RB_data_Out_reg[11]_1 output.right pin ID_EX_RB_data_Out_reg[11]_2 output.right pin ID_EX_RB_data_Out_reg[11]_3 output.right pin ID_EX_RB_data_Out_reg[11]_4 output.right pin ID_EX_RB_data_Out_reg[11]_5 output.right pin ID_OP_sig_reg[15]_0 input.left pin Output_sig input.left pin PC_reg[10] input.left pin PC_reg[11]_0 input.left pin PC_reg[13] input.left pin PC_reg[1] input.left pin PC_reg[2] input.left pin PC_reg[3] input.left pin PC_reg[3]_0 input.left pin PC_reg[3]_1 input.left pin Rst_Ex_IBUF input.left pin Rst_Load_IBUF input.left pin W_En input.left pin board_clock_IBUF_BUFG input.left pin clock_25Mhz_reg output.right pin debug_console_IBUF input.left pin display_address_reg[0]_0 output.right pin display_address_reg[0]_rep_0 input.left pin display_address_reg[0]_rep_1 input.left pin display_address_reg[0]_rep_2 input.left pin display_address_reg[0]_rep_3 input.left pin display_address_reg[0]_rep_4 input.left pin display_address_reg[0]_rep__0_0 input.left pin display_address_reg[0]_rep__0_1 input.left pin display_address_reg[0]_rep__0_2 input.left pin display_address_reg[0]_rep__0_3 input.left pin display_address_reg[0]_rep__0_4 input.left pin display_address_reg[0]_rep__0_5 input.left pin display_address_reg[0]_rep__0_6 input.left pin display_address_reg[0]_rep__0_7 input.left pin display_address_reg[0]_rep__0_8 input.left pin display_address_reg[0]_rep__1_0 input.left pin display_address_reg[0]_rep__1_1 input.left pin display_address_reg[0]_rep__1_10 input.left pin display_address_reg[0]_rep__1_2 input.left pin display_address_reg[0]_rep__1_3 input.left pin display_address_reg[0]_rep__1_4 input.left pin display_address_reg[0]_rep__1_5 input.left pin display_address_reg[0]_rep__1_6 input.left pin display_address_reg[0]_rep__1_7 input.left pin display_address_reg[0]_rep__1_8 input.left pin display_address_reg[0]_rep__1_9 input.left pin display_address_reg[0]_rep__2_0 input.left pin display_address_reg[0]_rep__2_1 input.left pin display_address_reg[1]_0 input.left pin display_address_reg[1]_1 input.left pin display_address_reg[1]_2 input.left pin display_address_reg[1]_3 input.left pin display_address_reg[1]_4 input.left pin display_address_reg[1]_rep__0_0 input.left pin display_address_reg[1]_rep__0_1 input.left pin display_address_reg[1]_rep__0_10 input.left pin display_address_reg[1]_rep__0_2 input.left pin display_address_reg[1]_rep__0_3 input.left pin display_address_reg[1]_rep__0_4 input.left pin display_address_reg[1]_rep__0_5 input.left pin display_address_reg[1]_rep__0_6 input.left pin display_address_reg[1]_rep__0_7 input.left pin display_address_reg[1]_rep__0_8 input.left pin display_address_reg[1]_rep__0_9 input.left pin display_address_reg[2]_0 input.left pin display_address_reg[2]_1 input.left pin display_address_reg[2]_2 input.left pin display_address_reg[2]_3 input.left pin display_address_reg[2]_4 input.left pin display_address_reg[2]_rep_0 input.left pin display_address_reg[2]_rep_1 input.left pin display_address_reg[2]_rep_10 input.left pin display_address_reg[2]_rep_11 input.left pin display_address_reg[2]_rep_12 input.left pin display_address_reg[2]_rep_2 input.left pin display_address_reg[2]_rep_3 input.left pin display_address_reg[2]_rep_4 input.left pin display_address_reg[2]_rep_5 input.left pin display_address_reg[2]_rep_6 input.left pin display_address_reg[2]_rep_7 input.left pin display_address_reg[2]_rep_8 input.left pin display_address_reg[2]_rep_9 input.left pin display_address_reg[3]_0 input.left pin display_address_reg[3]_1 input.left pin display_address_reg[3]_10 input.left pin display_address_reg[3]_11 input.left pin display_address_reg[3]_12 input.left pin display_address_reg[3]_2 input.left pin display_address_reg[3]_3 input.left pin display_address_reg[3]_4 input.left pin display_address_reg[3]_5 input.left pin display_address_reg[3]_6 input.left pin display_address_reg[3]_7 input.left pin display_address_reg[3]_8 input.left pin display_address_reg[3]_9 input.left pin main_buffer_reg_i_17 input.left pin main_buffer_reg_i_18 input.left pin main_buffer_reg_i_19 input.left pin main_buffer_reg_i_20 input.left pin main_buffer_reg_i_21 input.left pin main_buffer_reg_i_22 input.left pin main_buffer_reg_i_23 input.left pin main_buffer_reg_i_24 input.left pin main_buffer_reg_i_25 input.left pin negative_flag input.left pin opcode_reg[0]_0 output.right pin reg_file_reg[0][15] input.left pin reg_file_reg[0][15]_0 input.left pin reg_file_reg[0][4] input.left pin reg_file_reg[0][6] input.left pin reg_file_reg[0][7] input.left pin reg_file_reg[1][0] input.left pin reg_file_reg[1][3] input.left pin reg_file_reg[1][4] input.left pin reg_file_reg[1][7] input.left pin reg_file_reg[4][14] input.left pin reg_file_reg[4][15] input.left pin reg_file_reg[4][4] input.left pin reg_file_reg[4][7] input.left pin reg_file_reg[5][0] input.left pin reg_file_reg[5][3] input.left pin reg_file_reg[5][3]_0 input.left pin reg_file_reg[5][3]_1 input.left pin reg_file_reg[5][4] input.left pin reg_file_reg[5][6] input.left pin reg_file_reg[5][6]_0 input.left pin reg_file_reg[5][7] input.left pin v_sync_signal_OBUF output.right pin vga_red_reg[3]_0 output.right pin vga_red_reg[3]_1 output.right pin vga_red_reg[3]_10 output.right pin vga_red_reg[3]_11 output.right pin vga_red_reg[3]_12 output.right pin vga_red_reg[3]_13 output.right pin vga_red_reg[3]_14 output.right pin vga_red_reg[3]_15 output.right pin vga_red_reg[3]_3 output.right pin vga_red_reg[3]_4 output.right pin vga_red_reg[3]_5 output.right pin vga_red_reg[3]_6 output.right pin vga_red_reg[3]_7 output.right pin vga_red_reg[3]_8 output.right pin vga_red_reg[3]_9 output.right pin video_clock input.left pin zero_flag input.left pinBus D output.right [8:0] pinBus EX_MEM_MEM_din_Out_reg[15] input.left [15:0] pinBus EX_MEM_RW_addr_Out_reg[2] input.left [2:0] pinBus EX_MEM_RW_data_Out_reg[14]_3 input.left [0:0] pinBus EX_OP_sig_reg[15] input.left [7:0] pinBus EX_PC_sig_reg[15] input.left [14:0] pinBus ID_EX_ALU_op_Out_reg[2] input.left [2:0] pinBus ID_EX_BR_Op_Out_reg[0] input.left [0:0] pinBus ID_EX_BR_Op_Out_reg[1] input.left [1:0] pinBus ID_EX_BR_addr_Out_reg[15] input.left [15:0] pinBus ID_EX_BR_sub_PC_Out_reg[15] input.left [2:0] pinBus ID_EX_L_op_Out_reg[2] input.left [2:0] pinBus ID_EX_RA_data_Out_reg[15] input.left [15:0] pinBus ID_EX_RB_data_Out_reg[15] input.left [15:0] pinBus ID_EX_RW_addr_Out_reg[2] input.left [2:0] pinBus ID_EX_Shiftamt_Out_reg[3] input.left [3:0] pinBus ID_OP_sig_reg[15] input.left [15:0] pinBus ID_PC_sig_reg[15] input.left [14:0] pinBus MEM_OP_sig_reg[15] input.left [15:0] pinBus MEM_PC_sig_reg[15] input.left [14:0] pinBus MEM_WB_RW_addr_Out_reg[2] input.left [2:0] pinBus PC_reg[11] input.left [0:0] pinBus PMOD_In_IBUF input.left [6:0] pinBus Q input.left [15:0] pinBus Switch_In_IBUF input.left [4:0] pinBus debug_buffer[548]_1 input.left [3:0] pinBus debug_buffer[549]_0 input.left [2:0] pinBus douta input.left [6:0] pinBus doutb input.left [6:0] pinBus reg_file_reg[0][14] input.left [1:0] pinBus reg_file_reg[1][1] input.left [0:0] pinBus reg_file_reg[4][12] input.left [0:0] pinBus reg_file_reg[5][2] input.left [1:0] pinBus s3_reg_a input.left [1:0] pinBus s3_reg_b input.left [2:0] pinBus vga_blue[3] output.right [2:0] pinBus vga_green[3] output.right [2:0] pinBus vga_red[3] output.right [2:0] pinBus vga_red_reg[3]_2 output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load port h_sync_signal output -pg 1 -y 9340
load port board_clock input -pg 1 -y 4240
load port Clk input -pg 1 -y 4300
load port Rst_Load input -pg 1 -y 5740
load port debug_console input -pg 1 -y 4260
load port Reset_button input -pg 1 -y 20
load port Data_Out output -pg 1 -y 7170
load port Rst_Ex input -pg 1 -y 5690
load port v_sync_signal output -pg 1 -y 9410
load portBus vga_green output [3:0] -attr @name vga_green[3:0] -pg 1 -y 9760
load portBus vga_red output [3:0] -attr @name vga_red[3:0] -pg 1 -y 6890
load portBus vga_blue output [3:0] -attr @name vga_blue[3:0] -pg 1 -y 9480
load portBus PMOD_In input [9:0] -attr @name PMOD_In[9:0] -pg 1 -y 14430
load portBus Switch_In input [14:0] -attr @name Switch_In[14:0] -pg 1 -y 10070
load inst ID_PC_sig_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 8060
load inst EX_MEM_MEM_din_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 13360
load inst ID_EX_BR_sub_PC_Out_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 14100
load inst ID_EX_BR_sub_PC_Out_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6330
load inst EX_MEM_BR_addr_Out_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 5550
load inst MEM_OP_sig_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12680
load inst ID_EX_Shiftamt_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10760
load inst EX_OP_sig[4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 11960
load inst EX_OP_sig[11]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 12760
load inst ID_EX_RA_data_Out_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1440
load inst ID_PC_sig_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 6710
load inst MEM_PC_sig_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 14590
load inst ID_EX_RB_data_Out_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 10920
load inst EX_MEM_BR_addr_Out_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 3950
load inst EX_MEM_BR_addr_Out[4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 3790
load inst ID_EX_BR_addr_Out_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 4510
load inst MEM_OP_sig_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11600
load inst console_display console work:console:NOFILE -autohide -attr @cell(#000000) console -pinBusAttr D @name D[8:0] -pinBusAttr EX_MEM_MEM_din_Out_reg[15] @name EX_MEM_MEM_din_Out_reg[15][15:0] -pinBusAttr EX_MEM_RW_addr_Out_reg[2] @name EX_MEM_RW_addr_Out_reg[2][2:0] -pinBusAttr EX_MEM_RW_data_Out_reg[14]_3 @name EX_MEM_RW_data_Out_reg[14]_3 -pinBusAttr EX_OP_sig_reg[15] @name EX_OP_sig_reg[15][7:0] -pinBusAttr EX_PC_sig_reg[15] @name EX_PC_sig_reg[15][14:0] -pinBusAttr ID_EX_ALU_op_Out_reg[2] @name ID_EX_ALU_op_Out_reg[2][2:0] -pinBusAttr ID_EX_BR_Op_Out_reg[0] @name ID_EX_BR_Op_Out_reg[0] -pinBusAttr ID_EX_BR_Op_Out_reg[1] @name ID_EX_BR_Op_Out_reg[1][1:0] -pinBusAttr ID_EX_BR_addr_Out_reg[15] @name ID_EX_BR_addr_Out_reg[15][15:0] -pinBusAttr ID_EX_BR_sub_PC_Out_reg[15] @name ID_EX_BR_sub_PC_Out_reg[15][2:0] -pinBusAttr ID_EX_L_op_Out_reg[2] @name ID_EX_L_op_Out_reg[2][2:0] -pinBusAttr ID_EX_RA_data_Out_reg[15] @name ID_EX_RA_data_Out_reg[15][15:0] -pinBusAttr ID_EX_RB_data_Out_reg[15] @name ID_EX_RB_data_Out_reg[15][15:0] -pinBusAttr ID_EX_RW_addr_Out_reg[2] @name ID_EX_RW_addr_Out_reg[2][2:0] -pinBusAttr ID_EX_Shiftamt_Out_reg[3] @name ID_EX_Shiftamt_Out_reg[3][3:0] -pinBusAttr ID_OP_sig_reg[15] @name ID_OP_sig_reg[15][15:0] -pinBusAttr ID_PC_sig_reg[15] @name ID_PC_sig_reg[15][14:0] -pinBusAttr MEM_OP_sig_reg[15] @name MEM_OP_sig_reg[15][15:0] -pinBusAttr MEM_PC_sig_reg[15] @name MEM_PC_sig_reg[15][14:0] -pinBusAttr MEM_WB_RW_addr_Out_reg[2] @name MEM_WB_RW_addr_Out_reg[2][2:0] -pinBusAttr PC_reg[11] @name PC_reg[11] -pinBusAttr PMOD_In_IBUF @name PMOD_In_IBUF[6:0] -pinBusAttr Q @name Q[15:0] -pinBusAttr Switch_In_IBUF @name Switch_In_IBUF[4:0] -pinBusAttr debug_buffer[548]_1 @name debug_buffer[548]_1[3:0] -pinBusAttr debug_buffer[549]_0 @name debug_buffer[549]_0[2:0] -pinBusAttr douta @name douta[6:0] -pinBusAttr doutb @name doutb[6:0] -pinBusAttr reg_file_reg[0][14] @name reg_file_reg[0][14][1:0] -pinBusAttr reg_file_reg[1][1] @name reg_file_reg[1][1] -pinBusAttr reg_file_reg[4][12] @name reg_file_reg[4][12] -pinBusAttr reg_file_reg[5][2] @name reg_file_reg[5][2][1:0] -pinBusAttr s3_reg_a @name s3_reg_a[1:0] -pinBusAttr s3_reg_b @name s3_reg_b[2:0] -pinBusAttr vga_blue[3] @name vga_blue[3][2:0] -pinBusAttr vga_green[3] @name vga_green[3][2:0] -pinBusAttr vga_red[3] @name vga_red[3][2:0] -pinBusAttr vga_red_reg[3]_2 @name vga_red_reg[3]_2[3:0] -pg 1 -lvl 16 -y 4320
load inst main_buffer_reg_i_17 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 3630
load inst ID_EX_BR_addr_Out[1]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 15 -y 8650
load inst MEM_WB_RW_data_Out_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 3110
load inst main_buffer_reg_i_18 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 3780
load inst EX_OP_sig_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 8540
load inst MEM_PC_sig[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 14360
load inst MEM_PC_sig_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16770
load inst main_buffer_reg_i_19 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 4100
load inst ID_EX_RA_data_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 90
load inst MEM_WB_RW_data_Out_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 4480
load inst EX_MEM_MEM_din_Out[3]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 13890
load inst ID_EX_BR_addr_Out_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 5260
load inst EX_MEM_L_op_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 6270
load inst Switch_In_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 10760
load inst vga_blue_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9620
load inst EX_PC_sig_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 8280
load inst ID_EX_BR_addr_Out_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 4810
load inst ID_EX_BR_sub_PC_Out[13]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 14 -y 7740
load inst MEM_WB_L_op_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 1670
load inst Rst_Ex_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -y 5670
load inst ID_EX_ALU_op_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8540
load inst EX_PC_sig[11]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 7640
load inst EX_OP_sig[15]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 13300
load inst EX_MEM_BR_addr_Out_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 5400
load inst EX_MEM_BR_addr_Out[8]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 4490
load inst ID_PC_sig_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 8260
load inst PMOD_In_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 7360
load inst MEM_OP_sig[6]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 11520
load inst ID_EX_BR_addr_Out[7]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 18 -y 9010
load inst vga_red_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 6890
load inst ID_EX_BR_addr_Out[7]_i_5 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 18 -y 9540
load inst Data_Out_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 7170
load inst ID_EX_BR_addr_Out_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 4360
load inst MEM_PC_sig_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15570
load inst EX_OP_sig_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 12340
load inst ID_EX_RB_data_Out_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 11070
load inst MEM_WB_RW_data_Out_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 2960
load inst Switch_In_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 10480
load inst EX_MEM_BR_addr_Out_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 4100
load inst MEM_OP_sig_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11750
load inst ID_EX_RA_data_Out_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2220
load inst board_clock_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 15 -y 4740
load inst ID_EX_IN_En_Out_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 9860
load inst EX_OP_sig[7]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 12230
load inst ID_EX_BR_sub_PC_Out[3]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 15 -y 13130
load inst ID_EX_IN_En_Out_i_2 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 9880
load inst ID_EX_RW_addr_Out[1]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 11 -y 8510
load inst MEM_PC_sig[14]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 17390
load inst EX_MEM_MEM_din_Out[8]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 14700
load inst Clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 4300
load inst ID_EX_BR_addr_Out[6]_i_3 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 18 -y 8690
load inst ID_EX_BR_sub_PC_Out[9]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 15 -y 13930
load inst MEM_WB_RW_data_Out_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 4750
load inst ID_EX_BR_addr_Out_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 5410
load inst EX_PC_sig_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 8130
load inst ROM_inst ROM work:ROM:NOFILE -autohide -attr @cell(#000000) ROM -pinBusAttr D @name D[15:0] -pinBusAttr Q @name Q -pinBusAttr addrb @name addrb[7:0] -pinBusAttr douta @name douta[15:0] -pinBusAttr doutb @name doutb[15:0] -pg 1 -lvl 7 -y 5300
load inst EX_PC_sig[8]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 7190
load inst ID_EX_BR_addr_Out[6]_i_5 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 17 -y 9020
load inst ID_PC_sig_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 7610
load inst h_dot_int_reg[10]_i_3 BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 14 -y 3610
load inst EX_MEM_MEM_din_Out[14]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 15600
load inst EX_OP_sig[12]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 12910
load inst EX_PC_sig_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 6450
load inst EX_MEM_BR_addr_Out[9]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 4640
load inst MEM_WB_L_op_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 1820
load inst Switch_In_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 10550
load inst vga_blue_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9690
load inst MEM_PC_sig_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16170
load inst PMOD_In_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 14360
load inst Switch_In_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 10410
load inst ID_EX_BR_addr_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 3410
load inst ID_EX_BR_addr_Out_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 4160
load inst MEM_OP_sig_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11240
load inst PMOD_In_IBUF[9]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 7500
load inst ID_EX_RB_data_Out_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 10170
load inst MEM_WB_RW_data_Out_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 2810
load inst ID_EX_L_op_Out[0]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 10 -y 7330
load inst MEM_PC_sig_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15720
load inst EX_MEM_MEM_din_Out_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 14980
load inst EX_MEM_BR_addr_Out_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 4320
load inst ID_EX_BR_sub_PC_Out[5]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 15 -y 13410
load inst MEM_WB_RW_addr_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6510
load inst ID_EX_BR_addr_Out[15]_i_5 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 15 -y 9280
load inst EX_MEM_MEM_din_Out[11]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 15150
load inst ID_EX_RA_data_Out_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2370
load inst MEM_WB_RW_data_Out_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 4180
load inst ID_OP_sig_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 7330
load inst ID_EX_BR_addr_Out[15]_i_7 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 16 -y 9260
load inst EX_MEM_RW_data_Out_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 5070
load inst Switch_In_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 10620
load inst ID_EX_BR_addr_Out[15]_i_8 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 16 -y 9400
load inst Rst_Load_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -y 5740
load inst EX_MEM_MEM_din_Out_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 14830
load inst ID_PC_sig_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 7760
load inst MEM_OP_sig_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12230
load inst vga_green_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9900
load inst Data_Out_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 20 -y 7170
load inst MEM_OP_sig[3]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 10430
load inst EX_PC_sig_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 6600
load inst ID_EX_L_op_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 7310
load inst MEM_PC_sig_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16020
load inst MEM_WB_L_op_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 2000
load inst ID_EX_BR_addr_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 3260
load inst ID_EX_BR_addr_Out_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 4010
load inst EX_MEM_BR_addr_Out[15]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 5420
load inst EX_OP_sig_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 12040
load inst MEM_PC_sig[12]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 17090
load inst MEM_WB_RW_data_Out_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 2660
load inst ID_EX_ALU_op_Out[0]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 14 -y 8240
load inst MEM_OP_sig_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11420
load inst EX_MEM_MEM_din_Out_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 14110
load inst ID_EX_RB_data_Out_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 10320
load inst MEM_OP_sig[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 8750
load inst MEM_PC_sig[15]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 17480
load inst MEM_PC_sig_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15870
load inst vga_red_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 7030
load inst EX_MEM_MEM_din_Out[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 13800
load inst MEM_OP_sig[15]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12760
load inst vga_green_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9970
load inst EX_OP_sig_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 13340
load inst EX_MEM_BR_addr_Out_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 4470
load inst MEM_WB_RW_addr_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6660
load inst vga_red_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 6960
load inst ID_EX_BR_sub_PC_Out[11]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 15 -y 14250
load inst ID_EX_BR_sub_PC_Out_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 13950
load inst MEM_WB_RW_data_Out_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 4330
load inst ID_EX_BR_sub_PC_Out[11]_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 14 -y 11760
load inst ID_OP_sig_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 7580
load inst MEM_PC_sig[11]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16940
load inst MEM_PC_sig[9]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16640
load inst EX_OP_sig[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 11590
load inst PMOD_In_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 14590
load inst EX_OP_sig[13]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 13060
load inst EX_PC_sig_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 7650
load inst EX_MEM_MEM_din_Out_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 14680
load inst MEM_OP_sig_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12080
load inst EX_MEM_MEM_din_Out[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 13710
load inst ID_OP_sig_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 6730
load inst ID_PC_sig_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 6110
load inst EX_OP_sig_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 12740
load inst ID_EX_BR_sub_PC_Out[8]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 15 -y 13800
load inst ID_EX_BR_addr_Out_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 3860
load inst ID_EX_BR_addr_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 3080
load inst EX_MEM_RW_En_Out_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 8390
load inst EX_OP_sig[14]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 13210
load inst EX_MEM_BR_addr_Out[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 3340
load inst MEM_OP_sig[5]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 11260
load inst MEM_OP_sig_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7620
load inst EX_MEM_MEM_din_Out_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 13960
load inst ID_EX_BR_addr_Out[9]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 9940
load inst EX_OP_sig_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 12190
load inst ID_EX_BR_sub_PC_Out_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 14480
load inst MEM_PC_sig[4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16010
load inst MEM_PC_sig_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16470
load inst ID_OP_sig_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 6130
load inst MEM_OP_sig[11]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12280
load inst ID_EX_BR_addr_Out[9]_i_6 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 15 -y 9920
load inst EX_MEM_MEM_din_Out[13]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 15450
load inst MEM_WB_RW_data_Out_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 3880
load inst EX_OP_sig_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 13190
load inst ID_EX_BR_addr_Out[9]_i_7 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 15 -y 10030
load inst ID_EX_RA_data_Out_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1290
load inst EX_PC_sig[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 6470
load inst ID_EX_BR_sub_PC_Out_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 13800
load inst FetchStage FETCH work:FETCH:NOFILE -autohide -attr @cell(#000000) FETCH -pinBusAttr D @name D[14:0] -pinBusAttr EX_MEM_BR_addr_Out_reg[15] @name EX_MEM_BR_addr_Out_reg[15][14:0] -pinBusAttr ID_EX_L_op_Out_reg[2]_0 @name ID_EX_L_op_Out_reg[2]_0[2:0] -pinBusAttr ID_OP_sig_reg[15] @name ID_OP_sig_reg[15][7:0] -pinBusAttr Q @name Q -pinBusAttr addrb @name addrb[9:0] -pg 1 -lvl 6 -y 3100
load inst EX_MEM_BR_addr_Out_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 4620
load inst ID_EX_BR_sub_PC_Out[4]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 15 -y 13260
load inst ID_EX_Shiftamt_Out[0]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 10260
load inst MEM_WB_RW_addr_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6810
load inst ID_EX_BR_En_Out_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -y 9370
load inst debug_console_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 4810
load inst ID_EX_RW_En_Out_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 10 -y 8010
load inst ID_OP_sig_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 7730
load inst MEM_WB_RW_data_Out_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 3730
load inst EX_MEM_MEM_din_Out_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 14530
load inst EX_PC_sig_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 7500
load inst ID_EX_RW_En_Out_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 9 -y 7920
load inst ID_EX_BR_sub_PC_Out[7]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 15 -y 13690
load inst ID_OP_sig_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 6580
load inst ID_PC_sig_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 5960
load inst EX_OP_sig_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 12490
load inst ID_EX_RA_data_Out_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 690
load inst ID_EX_ALU_op_Out[2]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 14 -y 8540
load inst EX_PC_sig[14]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 11410
load inst ID_EX_BR_addr_Out_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 3710
load inst MEM_OP_sig_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12530
load inst PMOD_In_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 6920
load inst ID_EX_ALU_op_Out[2]_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 13 -y 8650
load inst EX_OP_sig_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 11740
load inst EX_PC_sig_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 10890
load inst EX_MEM_RW_data_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 3650
load inst ID_EX_L_op_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 7910
load inst MEM_PC_sig[7]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16340
load inst Switch_In_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 9650
load inst EX_MEM_MEM_din_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 13810
load inst EX_MEM_BR_addr_Out[3]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 3640
load inst ID_EX_BR_sub_PC_Out_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5590
load inst MEM_PC_sig_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16320
load inst EX_OP_sig[5]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 12050
load inst EX_MEM_BR_addr_Out_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 5220
load inst ID_OP_sig_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 5980
load inst MEM_PC_sig[6]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16190
load inst PMOD_In_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 7060
load inst EX_PC_sig[12]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 9660
load inst EX_OP_sig_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 13040
load inst EX_MEM_MEM_din_Out[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 13620
load inst ID_EX_RA_data_Out_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1140
load inst MEM_OP_sig[10]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12190
load inst Switch_In_IBUF[8]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 9720
load inst ID_EX_BR_sub_PC_Out_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 13650
load inst ID_EX_RB_data_Out_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 10620
load inst MEM_WB_RW_En_Out_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7180
load inst MEM_WB_RW_data_Out_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 4030
load inst EX_OP_sig[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 9030
load inst MEM_OP_sig[7]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 11910
load inst EX_PC_sig[13]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 11320
load inst ID_EX_BR_addr_Out[8]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 18 -y 9180
load inst EX_PC_sig_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 7350
load inst EX_MEM_MEM_din_Out_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 14260
load inst ID_OP_sig_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 7880
load inst ID_OP_sig_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 6430
load inst EX_MEM_L_op_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 7800
load inst ID_EX_BR_sub_PC_Out[6]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 15 -y 13580
load inst ID_EX_RA_data_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 540
load inst EX_MEM_MEM_din_Out[12]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 15300
load inst ID_EX_BR_sub_PC_Out[6]_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 14 -y 11610
load inst ID_EX_BR_addr_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 3560
load inst MEM_OP_sig_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12380
load inst Switch_In_IBUF[9]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 9790
load inst EX_PC_sig_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 10740
load inst EX_MEM_L_op_Out[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 6290
load inst ID_EX_IN_En_Out_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9470
load inst ID_PC_sig_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 6410
load inst EX_MEM_RW_data_Out_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 6090
load inst ID_EX_L_op_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 7460
load inst ID_EX_RW_En_Out_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 8290
load inst EX_OP_sig_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 11890
load inst EX_PC_sig[6]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 7010
load inst EX_MEM_MEM_din_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 13660
load inst ID_EX_BR_sub_PC_Out_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5440
load inst EX_MEM_BR_addr_Out_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 5070
load inst EX_PC_sig_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 7050
load inst ID_EX_BR_Op_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8980
load inst ID_OP_sig_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 5830
load inst main_buffer_reg_i_20 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 4280
load inst EX_OP_sig_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 12890
load inst ID_EX_RA_data_Out_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 990
load inst MEM_OP_sig[9]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12100
load inst main_buffer_reg_i_21 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 4430
load inst vga_red_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 7100
load inst EX_MEM_MEM_din_Out[9]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 14850
load inst EX_MEM_RW_addr_Out[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 13530
load inst ID_EX_BR_sub_PC_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 12750
load inst ID_EX_BR_sub_PC_Out_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 13500
load inst MEM_OP_sig[14]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12640
load inst main_buffer_reg_i_22 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 4610
load inst MEM_OP_sig_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11900
load inst main_buffer_reg_i_23 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 4930
load inst EX_MEM_L_op_Out[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 7370
load inst EX_MEM_BR_addr_Out[14]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 5330
load inst ID_EX_RB_data_Out_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 10770
load inst ID_EX_Shiftamt_Out[1]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 10530
load inst PMOD_In_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 7290
load inst Switch_In_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 10690
load inst main_buffer_reg_i_24 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 5080
load inst EX_MEM_BR_addr_Out[13]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 5230
load inst EX_PC_sig[10]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 7550
load inst main_buffer_reg_i_25 FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 15 -y 5260
load inst EX_MEM_BR_addr_Out[6]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 4230
load inst ID_EX_RA_data_Out_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1890
load inst EX_MEM_MEM_din_Out[4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 13980
load inst EX_MEM_MEM_din_Out_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 15580
load inst ID_EX_BR_sub_PC_Out[2]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 15 -y 13020
load inst ID_OP_sig_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 6280
load inst ID_EX_RA_data_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 390
load inst board_clock_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 14 -y 4590
load inst ID_EX_ALU_op_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8130
load inst ID_EX_BR_addr_Out[3]_i_3 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 18 -y 8400
load inst ID_OP_sig_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 8030
load inst EX_MEM_BR_addr_Out[11]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 4940
load inst EX_MEM_L_op_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 7980
load inst EX_OP_sig[6]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 12140
load inst EX_MEM_BR_addr_Out[12]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 5090
load inst EX_PC_sig_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 10590
load inst EX_OP_sig_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 11440
load inst ID_EX_Shiftamt_Out[2]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 10700
load inst ID_PC_sig_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 6260
load inst EX_MEM_RW_data_Out_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 5870
load inst ID_PC_sig_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 7010
load inst MEM_PC_sig[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 15830
load inst PMOD_In_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 7430
load inst EX_PC_sig[5]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 6920
load inst ID_EX_BR_sub_PC_Out_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 14250
load inst ID_EX_L_op_Out[1]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 10 -y 7460
load inst EX_MEM_BR_addr_Out_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 4920
load inst ID_EX_L_op_Out[1]_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 9 -y 7350
load inst EX_MEM_RW_En_Out_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 7530
load inst ID_EX_L_op_Out[2]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 10 -y 7840
load inst ID_EX_Shiftamt_Out[3]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 10880
load inst MEM_OP_sig[13]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12550
load inst EX_PC_sig_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 7200
load inst EX_MEM_L_op_Out[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 7460
load inst EX_MEM_RW_data_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 3950
load inst ID_EX_RA_data_Out_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 840
load inst ID_EX_Shiftamt_Out[3]_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 13 -y 9730
load inst ID_EX_BR_addr_Out[5]_i_4 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 18 -y 8600
load inst ID_EX_BR_sub_PC_Out_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 13350
load inst EX_MEM_BR_addr_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 3320
load inst ID_EX_RW_addr_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 7960
load inst MEM_OP_sig_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10430
load inst PMOD_In_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 6990
load inst EX_MEM_RW_data_Out_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 5220
load inst EX_MEM_MEM_din_Out[10]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 15000
load inst ID_EX_RB_data_Out_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 9810
load inst MEM_PC_sig_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17370
load inst MEM_WB_RW_data_Out_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 2510
load inst EX_PC_sig[9]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 7280
load inst EX_MEM_MEM_din_Out[7]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 14550
load inst EX_MEM_MEM_din_Out_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 15430
load inst ID_EX_BR_sub_PC_Out[15]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 7980
load inst h_sync_signal_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9340
load inst ID_EX_BR_sub_PC_Out[12]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -y 7630
load inst ID_EX_BR_sub_PC_Out[15]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -y 11150
load inst ID_EX_RA_data_Out_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2040
load inst ID_EX_RA_data_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 240
load inst v_sync_signal_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9410
load inst Decoder DECODE work:DECODE:NOFILE -autohide -attr @cell(#000000) DECODE -pinBusAttr AR @name AR -pinBusAttr D @name D[10:0] -pinBusAttr EX_MEM_RW_data_In @name EX_MEM_RW_data_In[4:0] -pinBusAttr ID_EX_BR_addr_Out_reg[1] @name ID_EX_BR_addr_Out_reg[1] -pinBusAttr ID_EX_IN_En_Out_reg @name ID_EX_IN_En_Out_reg[1:0] -pinBusAttr ID_EX_RA_data_Out_reg[14] @name ID_EX_RA_data_Out_reg[14] -pinBusAttr ID_EX_RA_data_Out_reg[15] @name ID_EX_RA_data_Out_reg[15][11:0] -pinBusAttr ID_EX_RB_data_Out_reg[12] @name ID_EX_RB_data_Out_reg[12] -pinBusAttr ID_EX_RB_data_Out_reg[14] @name ID_EX_RB_data_Out_reg[14][1:0] -pinBusAttr ID_EX_RB_data_Out_reg[15] @name ID_EX_RB_data_Out_reg[15][14:0] -pinBusAttr ID_EX_RB_data_Out_reg[2] @name ID_EX_RB_data_Out_reg[2][1:0] -pinBusAttr ID_OP_sig_reg[11] @name ID_OP_sig_reg[11][7:0] -pinBusAttr ID_PC_sig_reg[15] @name ID_PC_sig_reg[15][10:0] -pinBusAttr MEM_WB_RW_addr_Out_reg[2] @name MEM_WB_RW_addr_Out_reg[2][2:0] -pinBusAttr MEM_WB_RW_data_Out_reg[15] @name MEM_WB_RW_data_Out_reg[15][15:0] -pinBusAttr Q @name Q[3:0] -pg 1 -lvl 19 -y 6750
load inst EX_OP_sig[10]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 12510
load inst ID_EX_BR_Op_Out[1]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 14 -y 9180
load inst EX_MEM_RW_data_Out_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 4770
load inst MEM_PC_sig[13]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 17240
load inst EX_PC_sig_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 9600
load inst ID_EX_RB_data_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 8930
load inst ID_OP_sig_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 8280
load inst MEM_WB_RW_data_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 1340
load inst EX_MEM_RW_addr_Out[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 12590
load inst EX_OP_sig_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 11590
load inst EX_PC_sig_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 6750
load inst EX_MEM_RW_addr_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 13210
load inst EX_MEM_RW_addr_Out[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 13440
load inst EX_MEM_BR_addr_Out_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 4770
load inst ID_PC_sig_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 7160
load inst vga_green_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9760
load inst EX_MEM_MEM_din_Out[5]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 14130
load inst ID_EX_RW_addr_Out[0]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 11 -y 8390
load inst vga_blue_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9550
load inst EX_OP_sig[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 8390
load inst EX_PC_sig[15]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 11500
load inst EX_MEM_RW_data_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 3800
load inst ID_EX_BR_sub_PC_Out_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 13200
load inst ID_EX_RW_addr_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 7810
load inst vga_green_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9830
load inst EX_MEM_BR_CTRL_Out_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 18 -y 6280
load inst ID_EX_RB_data_Out_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 10470
load inst MEM_WB_RW_data_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 2360
load inst EX_MEM_BR_addr_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 3470
load inst MEM_OP_sig_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11090
load inst EX_MEM_RW_data_Out_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 5370
load inst ID_EX_RA_data_Out_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1590
load inst ID_EX_RB_data_Out_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 9990
load inst ID_EX_Shiftamt_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10940
load inst MEM_PC_sig_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17520
load inst EX_MEM_MEM_din_Out_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 15280
load inst ExecuteStage EXECUTE work:EXECUTE:NOFILE -autohide -attr @cell(#000000) EXECUTE -pinBusAttr AR @name AR -pinBusAttr D @name D[4:0] -pinBusAttr EX_MEM_RW_data_Out_reg[11] @name EX_MEM_RW_data_Out_reg[11][10:0] -pinBusAttr EX_MEM_RW_data_Out_reg[14] @name EX_MEM_RW_data_Out_reg[14] -pinBusAttr EX_MEM_RW_data_Out_reg[15] @name EX_MEM_RW_data_Out_reg[15][6:0] -pinBusAttr EX_MEM_RW_data_Out_reg[15]_0 @name EX_MEM_RW_data_Out_reg[15]_0[15:0] -pinBusAttr ID_EX_ALU_op_Out_reg[2] @name ID_EX_ALU_op_Out_reg[2][2:0] -pinBusAttr ID_EX_BR_Op_Out_reg[1]_0 @name ID_EX_BR_Op_Out_reg[1]_0[1:0] -pinBusAttr ID_EX_BR_addr_Out_reg[13] @name ID_EX_BR_addr_Out_reg[13][1:0] -pinBusAttr ID_EX_BR_sub_PC_Out_reg[14] @name ID_EX_BR_sub_PC_Out_reg[14][12:0] -pinBusAttr ID_EX_L_op_Out_reg[2] @name ID_EX_L_op_Out_reg[2][2:0] -pinBusAttr ID_EX_RA_data_Out_reg[13] @name ID_EX_RA_data_Out_reg[13][3:0] -pinBusAttr ID_EX_RA_data_Out_reg[15] @name ID_EX_RA_data_Out_reg[15][15:0] -pinBusAttr ID_EX_Shiftamt_Out_reg[0]_10 @name ID_EX_Shiftamt_Out_reg[0]_10 -pinBusAttr ID_OP_sig_reg[11]_0 @name ID_OP_sig_reg[11]_0[2:0] -pinBusAttr ID_PC_sig_reg[13] @name ID_PC_sig_reg[13][3:0] -pinBusAttr MEM_WB_RW_data_Out_reg[11] @name MEM_WB_RW_data_Out_reg[11][10:0] -pinBusAttr PMOD_In_IBUF @name PMOD_In_IBUF[3:0] -pinBusAttr Q @name Q[15:0] -pinBusAttr Switch_In_IBUF @name Switch_In_IBUF[6:0] -pinBusAttr debug_buffer[548]_1 @name debug_buffer[548]_1[3:0] -pinBusAttr debug_buffer[549]_0 @name debug_buffer[549]_0[2:0] -pinBusAttr display_address_reg[2] @name display_address_reg[2] -pinBusAttr s3_reg_a @name s3_reg_a[1:0] -pinBusAttr s3_reg_b @name s3_reg_b[2:0] -pg 1 -lvl 17 -y 3830
load inst ID_PC_sig_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 6860
load inst MEM_PC_sig[8]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16490
load inst ID_EX_BR_sub_PC_Out[14]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 15 -y 14360
load inst MEM_PC_sig[5]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16100
load inst EX_MEM_MEM_din_Out[15]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 15690
load inst ID_EX_BR_sub_PC_Out[10]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 15 -y 14080
load inst EX_OP_sig_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 9010
load inst EX_PC_sig[7]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 7100
load inst EX_MEM_RW_data_Out_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 4920
load inst ID_EX_BR_sub_PC_Out[10]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 12 -y 11690
load inst ID_EX_BR_addr_Out[2]_i_3 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 18 -y 8310
load inst ID_EX_RB_data_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 9180
load inst MEM_PC_sig_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17220
load inst MEM_OP_sig[12]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12400
load inst EX_MEM_MEM_din_Out_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 15730
load inst EX_PC_sig[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 6620
load inst ID_OP_sig_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 7180
load inst EX_PC_sig[4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 6830
load inst EX_PC_sig_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 6900
load inst ID_EX_BR_sub_PC_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 13050
load inst ID_EX_BR_Op_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9180
load inst MEM_OP_sig_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7770
load inst EX_MEM_BR_addr_Out[7]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 4340
load inst ID_EX_RB_data_Out_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 9360
load inst MEM_PC_sig[10]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16790
load inst MEM_WB_RW_data_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 2180
load inst Switch_In_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 9580
load inst ID_EX_BR_En_Out_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 9670
load inst EX_MEM_RW_data_Out_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 4320
load inst ID_EX_BR_addr_Out[4]_i_3 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 18 -y 8500
load inst MEM_OP_sig[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 7880
load inst MEM_OP_sig[8]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12010
load inst EX_MEM_BR_addr_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 3620
load inst EX_MEM_MEM_din_Out_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 15130
load inst EX_MEM_RW_data_Out_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 5570
load inst ID_EX_RA_data_Out_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1740
load inst EX_MEM_RW_data_Out_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 4470
load inst ID_EX_RB_data_Out_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 11220
load inst EX_MEM_BR_CTRL_Out_reg_rep FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 5590
load inst ID_EX_RB_data_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 8580
load inst ID_PC_sig_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 5810
load inst MEM_OP_sig[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 8870
load inst EX_MEM_BR_addr_Out[10]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 4790
load inst EX_OP_sig_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 11040
load inst ID_EX_BR_addr_Out_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 4960
load inst EX_OP_sig[3]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 11870
load inst MEM_PC_sig_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17070
load inst EX_MEM_RW_addr_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 12910
load inst Clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -y 4300
load inst MEM_OP_sig[4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 11110
load inst EX_MEM_BR_addr_Out[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 3490
load inst ID_EX_Shiftamt_Out_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10280
load inst ID_OP_sig_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 7030
load inst ID_EX_BR_sub_PC_Out[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 15 -y 12930
load inst ID_EX_BR_sub_PC_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 12900
load inst MEM_WB_RW_data_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 1490
load inst EX_MEM_RW_data_Out_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 4100
load inst MEM_OP_sig_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7950
load inst RAM_inst RAM work:RAM:NOFILE -autohide -attr @cell(#000000) RAM -pinBusAttr AR @name AR -pinBusAttr D @name D -pinBusAttr EX_MEM_L_op_Out_reg[2] @name EX_MEM_L_op_Out_reg[2][2:0] -pinBusAttr EX_MEM_MEM_din_Out_reg[15] @name EX_MEM_MEM_din_Out_reg[15][15:0] -pinBusAttr ID_EX_BR_sub_PC_Out_reg[1] @name ID_EX_BR_sub_PC_Out_reg[1] -pinBusAttr MEM_WB_L_op_Out_reg[2] @name MEM_WB_L_op_Out_reg[2][2:0] -pinBusAttr MEM_WB_RW_data_Out_reg[15] @name MEM_WB_RW_data_Out_reg[15][15:0] -pinBusAttr PC_reg[11] @name PC_reg[11] -pinBusAttr Q @name Q[14:0] -pinBusAttr addrb @name addrb[9:0] -pinBusAttr douta @name douta[15:0] -pinBusAttr doutb @name doutb[15:0] -pinBusAttr reg_file_reg[0][15] @name reg_file_reg[0][15][15:0] -pg 1 -lvl 15 -y 2500
load inst EX_MEM_MEM_din_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 13510
load inst EX_MEM_BR_addr_Out[5]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 3970
load inst EX_OP_sig[9]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 12410
load inst ID_EX_RB_data_Out_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 9560
load inst ID_EX_Shiftamt_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10610
load inst ID_EX_RW_addr_Out_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 8110
load inst ID_PC_sig_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 6560
load inst MEM_OP_sig_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12830
load inst EX_MEM_BR_addr_Out_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -y 3770
load inst EX_MEM_RW_data_Out_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 5720
load inst MEM_PC_sig_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16620
load inst vga_blue_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 21 -y 9480
load inst ID_EX_ALU_op_Out[1]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 14 -y 8390
load inst EX_MEM_MEM_din_Out[6]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -y 14280
load inst EX_OP_sig[8]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 12320
load inst ID_PC_sig_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 5630
load inst PMOD_In_IBUF[8]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 16 -y 14660
load inst EX_MEM_RW_data_Out_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -y 4620
load inst ID_EX_RB_data_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -y 8730
load inst MEM_PC_sig_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16920
load inst ID_EX_BR_Op_Out[0]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 14 -y 8990
load inst EX_PC_sig[3]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -y 6740
load inst ID_EX_BR_addr_Out_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 5110
load inst ID_OP_sig_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -y 6880
load inst EX_MEM_RW_addr_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -y 13060
load inst ID_EX_RW_addr_Out[2]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 11 -y 8620
load inst MEM_PC_sig[3]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 15920
load inst ID_EX_BR_addr_Out_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 4660
load inst ID_EX_RW_addr_Out[2]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 10 -y 8190
load inst Switch_In_IBUF[14]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 15 -y 9860
load inst ID_EX_RW_addr_Out[2]_i_3 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 9 -y 8090
load inst ID_EX_ALU_op_Out_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8390
load net ID_EX_BR_sub_PC_Out_reg_n_0_[4] -attr @rip(#000000) 3 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][3] -pin ID_EX_BR_sub_PC_Out_reg[4] Q
load net EX_MEM_RW_addr_Out[1]_i_1_n_0 -pin EX_MEM_RW_addr_Out[1]_i_1 O -pin EX_MEM_RW_addr_Out_reg[1] D
netloc EX_MEM_RW_addr_Out[1]_i_1_n_0 1 13 1 5610
load net RAM_inst_n_57 -pin RAM_inst vga_red_reg[3]_9 -pin console_display display_address_reg[0]_rep__0_0
netloc RAM_inst_n_57 1 15 1 8540
load net RAM_doutb[4] -attr @rip(#000000) doutb[4] -pin RAM_inst doutb[4] -pin ROM_inst doutb[4]
load net NPC_sig[3] -attr @rip(#000000) addrb[2] -pin FetchStage addrb[2] -pin RAM_inst addrb[2] -pin ROM_inst addrb[2]
load net RAM_inst_n_58 -pin RAM_inst vga_red_reg[3]_10 -pin console_display display_address_reg[0]_rep__0_1
netloc RAM_inst_n_58 1 15 1 8440
load net RAM_inst_n_59 -attr @rip(#000000) D[0] -pin ID_EX_RB_data_Out_reg[1] D -pin RAM_inst D[0]
netloc RAM_inst_n_59 1 11 5 4310 8830 4630J 8820 5510J 8720 6650J 8800 7280
load net ID_EX_RA_data_Out[14] -attr @rip(#000000) 14 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][14] -pin ID_EX_RA_data_Out_reg[14] Q -pin console_display ID_EX_RA_data_Out_reg[15][14]
load net ID_EX_BR_addr_Out[9]_i_4_n_0 -pin Decoder ID_OP_sig_reg[8] -pin ExecuteStage ID_OP_sig_reg[8] -pin ID_EX_BR_addr_Out[9]_i_4 O
netloc ID_EX_BR_addr_Out[9]_i_4_n_0 1 16 3 14130 9990 NJ 9990 18660
load net ID_OP_sig[13] -attr @rip(#000000) D[13] -pin ID_OP_sig_reg[13] D -pin ROM_inst D[13]
load net EX_MEM_BR_addr_Out[7] -attr @rip(#000000) 6 -pin EX_MEM_BR_addr_Out_reg[7] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][6]
load net EX_MEM_RW_data_In[1] -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15][1] -pin ExecuteStage EX_MEM_RW_data_Out_reg[15][1] -pin RAM_inst ID_EX_BR_sub_PC_Out_reg[1][0]
load net MEM_PC_sig[2] -attr @rip(#000000) 1 -pin MEM_PC_sig_reg[2] Q -pin console_display MEM_PC_sig_reg[15][1]
load net ID_OP_sig_reg_n_0_[12] -pin EX_OP_sig[12]_i_1 I0 -pin FetchStage ID_OP_sig_reg[15][4] -pin ID_EX_ALU_op_Out[0]_i_1 I2 -pin ID_EX_ALU_op_Out[1]_i_1 I2 -pin ID_EX_ALU_op_Out[2]_i_1 I1 -pin ID_EX_BR_En_Out_i_1 I0 -pin ID_EX_BR_addr_Out[1]_i_2 I5 -pin ID_EX_BR_addr_Out[6]_i_5 I1 -pin ID_EX_BR_addr_Out[9]_i_7 I0 -pin ID_EX_IN_En_Out_i_2 I0 -pin ID_EX_L_op_Out[1]_i_2 I1 -pin ID_EX_L_op_Out[2]_i_1 I2 -pin ID_EX_RW_En_Out_i_1 I1 -pin ID_EX_RW_addr_Out[2]_i_3 I0 -pin ID_EX_Shiftamt_Out[3]_i_2 I0 -pin ID_OP_sig_reg[12] Q -pin console_display ID_OP_sig_reg[15][12]
load net ID_EX_Shiftamt_Out[3]_i_1_n_0 -pin ID_EX_Shiftamt_Out[3]_i_1 O -pin ID_EX_Shiftamt_Out_reg[3] D
netloc ID_EX_Shiftamt_Out[3]_i_1_n_0 1 14 1 6370
load net ID_EX_BR_sub_PC_Out[6]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[6]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[6] D
netloc ID_EX_BR_sub_PC_Out[6]_i_1_n_0 1 15 1 7280
load net ID_EX_BR_sub_PC_Out_reg_n_0_[5] -attr @rip(#000000) 4 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][4] -pin ID_EX_BR_sub_PC_Out_reg[5] Q
load net ID_EX_IN_En_Out -pin ID_EX_IN_En_Out_i_1 O -pin ID_EX_IN_En_Out_reg D
netloc ID_EX_IN_En_Out 1 14 1 6630
load net RAM_doutb[5] -attr @rip(#000000) doutb[5] -pin RAM_inst doutb[5] -pin ROM_inst doutb[5]
load net ID_EX_RA_data_Out[13] -attr @rip(#000000) 13 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][13] -pin ID_EX_RA_data_Out_reg[13] Q -pin console_display ID_EX_RA_data_Out_reg[15][13]
load net EX_MEM_BR_addr_Out[2]_i_1_n_0 -pin EX_MEM_BR_addr_Out[2]_i_1 O -pin EX_MEM_BR_addr_Out_reg[2] D
netloc EX_MEM_BR_addr_Out[2]_i_1_n_0 1 4 1 N
load net NPC_sig[8] -attr @rip(#000000) addrb[7] -pin FetchStage addrb[7] -pin RAM_inst addrb[7] -pin ROM_inst addrb[7]
load net RAM_inst_n_30 -attr @rip(#000000) reg_file_reg[0][15][12] -pin Decoder MEM_WB_RW_data_Out_reg[15][12] -pin RAM_inst reg_file_reg[0][15][12]
load net EX_MEM_BR_addr_Out[6] -attr @rip(#000000) 5 -pin EX_MEM_BR_addr_Out_reg[6] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][5]
load net RAM_inst_n_31 -attr @rip(#000000) reg_file_reg[0][15][11] -pin Decoder MEM_WB_RW_data_Out_reg[15][11] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][10] -pin RAM_inst reg_file_reg[0][15][11]
load net RAM_inst_n_32 -attr @rip(#000000) reg_file_reg[0][15][10] -pin Decoder MEM_WB_RW_data_Out_reg[15][10] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][9] -pin RAM_inst reg_file_reg[0][15][10]
load net EX_PC_sig[10] -attr @rip(#000000) 9 -pin EX_PC_sig_reg[10] Q -pin MEM_PC_sig[10]_i_1 I0 -pin console_display EX_PC_sig_reg[15][9]
load net RAM_inst_n_33 -attr @rip(#000000) reg_file_reg[0][15][9] -pin Decoder MEM_WB_RW_data_Out_reg[15][9] -pin RAM_inst reg_file_reg[0][15][9]
load net RAM_inst_n_34 -attr @rip(#000000) reg_file_reg[0][15][8] -pin Decoder MEM_WB_RW_data_Out_reg[15][8] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][8] -pin RAM_inst reg_file_reg[0][15][8]
load net RAM_inst_n_35 -attr @rip(#000000) reg_file_reg[0][15][7] -pin Decoder MEM_WB_RW_data_Out_reg[15][7] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][7] -pin RAM_inst reg_file_reg[0][15][7]
load net MEM_PC_sig[5] -attr @rip(#000000) 4 -pin MEM_PC_sig_reg[5] Q -pin console_display MEM_PC_sig_reg[15][4]
load net MEM_PC_sig[15] -attr @rip(#000000) 14 -pin MEM_PC_sig_reg[15] Q -pin console_display MEM_PC_sig_reg[15][14]
load net RAM_inst_n_36 -attr @rip(#000000) reg_file_reg[0][15][6] -pin Decoder MEM_WB_RW_data_Out_reg[15][6] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][6] -pin RAM_inst reg_file_reg[0][15][6]
load net ID_OP_sig_reg_n_0_[11] -pin Decoder ID_OP_sig_reg[11][7] -pin EX_OP_sig[11]_i_1 I0 -pin ExecuteStage ID_OP_sig_reg[11]_0[2] -pin FetchStage ID_OP_sig_reg[15][3] -pin ID_EX_ALU_op_Out[2]_i_2 I4 -pin ID_EX_BR_Op_Out[0]_i_1 I3 -pin ID_EX_BR_Op_Out[1]_i_1 I1 -pin ID_EX_BR_addr_Out[15]_i_5 I2 -pin ID_EX_BR_addr_Out[15]_i_7 I0 -pin ID_EX_BR_addr_Out[15]_i_8 I2 -pin ID_EX_BR_addr_Out[9]_i_6 I0 -pin ID_EX_L_op_Out[1]_i_2 I3 -pin ID_EX_L_op_Out[2]_i_1 I4 -pin ID_EX_RW_En_Out_i_2 I3 -pin ID_EX_RW_addr_Out[2]_i_2 I2 -pin ID_EX_Shiftamt_Out[0]_i_1 I1 -pin ID_EX_Shiftamt_Out[1]_i_1 I1 -pin ID_EX_Shiftamt_Out[2]_i_1 I4 -pin ID_EX_Shiftamt_Out[3]_i_1 I4 -pin ID_OP_sig_reg[11] Q -pin console_display ID_OP_sig_reg[15][11]
load net RAM_inst_n_37 -attr @rip(#000000) reg_file_reg[0][15][5] -pin Decoder MEM_WB_RW_data_Out_reg[15][5] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][5] -pin RAM_inst reg_file_reg[0][15][5]
load net RAM_inst_n_38 -attr @rip(#000000) reg_file_reg[0][15][4] -pin Decoder MEM_WB_RW_data_Out_reg[15][4] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][4] -pin RAM_inst reg_file_reg[0][15][4]
load net ID_EX_Shiftamt_Out[2]_i_1_n_0 -pin ID_EX_Shiftamt_Out[2]_i_1 O -pin ID_EX_Shiftamt_Out_reg[2] D
netloc ID_EX_Shiftamt_Out[2]_i_1_n_0 1 14 1 6370
load net EX_MEM_MEM_din_Out[14] -attr @rip(#000000) 14 -pin EX_MEM_MEM_din_Out_reg[14] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][14] -pin console_display EX_MEM_MEM_din_Out_reg[15][14]
load net ID_EX_RA_data_Out[12] -attr @rip(#000000) 12 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][12] -pin ID_EX_RA_data_Out_reg[12] Q -pin console_display ID_EX_RA_data_Out_reg[15][12]
load net ID_EX_BR_sub_PC_Out_reg_n_0_[6] -attr @rip(#000000) 5 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][5] -pin ID_EX_BR_sub_PC_Out_reg[6] Q
load net RAM_doutb[6] -attr @rip(#000000) doutb[6] -pin RAM_inst doutb[6] -pin ROM_inst doutb[6]
load net console_display_n_100 -pin ExecuteStage ID_EX_IN_En_Out_reg_1 -pin console_display EX_MEM_RW_data_Out_reg[9]_1
netloc console_display_n_100 1 16 1 12350
load net W_data[0] -attr @rip(#000000) 0 -pin MEM_WB_RW_data_Out_reg[0] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][0]
load net EX_MEM_RW_addr_Out[2] -attr @rip(#000000) 2 -pin EX_MEM_RW_addr_Out_reg[2] Q -pin MEM_WB_RW_addr_Out_reg[2] D -pin console_display EX_MEM_RW_addr_Out_reg[2][2]
load net ID_OP_sig[15] -attr @rip(#000000) D[15] -pin ID_OP_sig_reg[15] D -pin ROM_inst D[15]
load net NPC_sig[9] -attr @rip(#000000) addrb[8] -pin FetchStage addrb[8] -pin RAM_inst addrb[8]
load net EX_MEM_BR_addr_Out[9] -attr @rip(#000000) 8 -pin EX_MEM_BR_addr_Out_reg[9] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][8]
load net EX_PC_sig[3]_i_1_n_0 -pin EX_PC_sig[3]_i_1 O -pin EX_PC_sig_reg[3] D
netloc EX_PC_sig[3]_i_1_n_0 1 12 1 4830
load net RAM_inst_n_43 -pin Decoder EX_MEM_RW_data_Out_reg[15]_0 -pin RAM_inst ID_EX_RA_data_Out_reg[15]
netloc RAM_inst_n_43 1 15 4 NJ 2630 NJ 2630 NJ 2630 18600
load net MEM_PC_sig[4] -attr @rip(#000000) 3 -pin MEM_PC_sig_reg[4] Q -pin console_display MEM_PC_sig_reg[15][3]
load net RAM_inst_n_44 -pin Decoder EX_MEM_RW_data_Out_reg[14] -pin ExecuteStage EX_MEM_RW_data_Out_reg[14]_0 -pin RAM_inst ID_EX_RB_data_Out_reg[14]
netloc RAM_inst_n_44 1 15 4 NJ 2770 14410 3550 NJ 3550 18460
load net RAM_inst_n_45 -pin Decoder EX_MEM_RW_data_Out_reg[14]_0 -pin RAM_inst ID_EX_RA_data_Out_reg[14]
netloc RAM_inst_n_45 1 15 4 NJ 2610 NJ 2610 NJ 2610 18680
load net RAM_inst_n_46 -pin Decoder EX_MEM_RW_data_Out_reg[13] -pin ExecuteStage EX_MEM_RW_data_Out_reg[13]_0 -pin RAM_inst ID_EX_RB_data_Out_reg[13]
netloc RAM_inst_n_46 1 15 4 NJ 2750 14450 3530 NJ 3530 18520
load net MEM_PC_sig[1]_i_1_n_0 -pin MEM_PC_sig[1]_i_1 O -pin MEM_PC_sig_reg[1] D
netloc MEM_PC_sig[1]_i_1_n_0 1 14 1 6070
load net board_clock_IBUF -pin board_clock_IBUF_BUFG_inst I -pin board_clock_IBUF_inst O
netloc board_clock_IBUF 1 14 1 6490J
load net RAM_inst_n_47 -pin ExecuteStage EX_MEM_RW_data_Out_reg[13]_1 -pin RAM_inst ID_EX_BR_addr_Out_reg[13]
netloc RAM_inst_n_47 1 15 2 NJ 2590 14470
load net register_4[12] -attr @rip(#000000) ID_EX_RB_data_Out_reg[12][0] -pin Decoder ID_EX_RB_data_Out_reg[12][0] -pin console_display reg_file_reg[4][12][0]
netloc register_4[12] 1 15 5 10060 8930 13110J 9290 17110J 9390 NJ 9390 20460
load net RAM_inst_n_48 -pin Decoder EX_MEM_RW_data_Out_reg[12] -pin RAM_inst ID_EX_RB_data_Out_reg[12]
netloc RAM_inst_n_48 1 15 4 NJ 2730 NJ 2730 NJ 2730 18580
load net ID_EX_RA_data_Out[11] -attr @rip(#000000) 11 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][11] -pin ID_EX_RA_data_Out_reg[11] Q -pin console_display ID_EX_RA_data_Out_reg[15][11]
load net EX_MEM_MEM_din_Out[8] -attr @rip(#000000) 8 -pin EX_MEM_MEM_din_Out_reg[8] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][8] -pin console_display EX_MEM_MEM_din_Out_reg[15][8]
load net EX_MEM_MEM_din_Out[15] -attr @rip(#000000) 15 -pin EX_MEM_MEM_din_Out_reg[15] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][15] -pin console_display EX_MEM_MEM_din_Out_reg[15][15]
load net RAM_inst_n_49 -pin ExecuteStage EX_MEM_RW_data_Out_reg[12]_0 -pin RAM_inst ID_EX_BR_addr_Out_reg[12]
netloc RAM_inst_n_49 1 15 2 NJ 2570 14490
load net PMOD_In_IBUF[0] -attr @rip(#000000) 0 -pin PMOD_In_IBUF[0]_inst O -pin console_display PMOD_In_IBUF[0]
load net ID_OP_sig[10] -attr @rip(#000000) D[10] -pin ID_OP_sig_reg[10] D -pin ROM_inst D[10]
load net ID_EX_BR_sub_PC_Out_reg_n_0_[7] -attr @rip(#000000) 6 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][6] -pin ID_EX_BR_sub_PC_Out_reg[7] Q
load net RAM_doutb[7] -attr @rip(#000000) doutb[7] -pin RAM_inst doutb[7] -pin ROM_inst doutb[7]
load net NPC_sig[6] -attr @rip(#000000) addrb[5] -pin FetchStage addrb[5] -pin RAM_inst addrb[5] -pin ROM_inst addrb[5]
load net W_addr[2] -attr @rip(#000000) 2 -pin Decoder MEM_WB_RW_addr_Out_reg[2][2] -pin MEM_WB_RW_addr_Out_reg[2] Q -pin console_display MEM_WB_RW_addr_Out_reg[2][2]
load net EX_MEM_RW_addr_Out[1] -attr @rip(#000000) 1 -pin EX_MEM_RW_addr_Out_reg[1] Q -pin MEM_WB_RW_addr_Out_reg[1] D -pin console_display EX_MEM_RW_addr_Out_reg[2][1]
load net MEM_OP_sig[6]_i_1_n_0 -pin MEM_OP_sig[6]_i_1 O -pin MEM_OP_sig_reg[6] D
netloc MEM_OP_sig[6]_i_1_n_0 1 14 1 6690
load net EX_MEM_BR_addr_Out[8] -attr @rip(#000000) 7 -pin EX_MEM_BR_addr_Out_reg[8] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][7]
load net EX_MEM_RW_En_Out_reg_n_0 -pin EX_MEM_RW_En_Out_reg Q -pin MEM_WB_RW_En_Out_reg D -pin console_display EX_MEM_RW_En_Out_reg
netloc EX_MEM_RW_En_Out_reg_n_0 1 14 2 6230 6210 7840
load net ID_EX_BR_addr_Out[6]_i_5_n_0 -pin Decoder ID_OP_sig_reg[12] -pin ID_EX_BR_addr_Out[2]_i_3 I1 -pin ID_EX_BR_addr_Out[3]_i_3 I1 -pin ID_EX_BR_addr_Out[4]_i_3 I1 -pin ID_EX_BR_addr_Out[5]_i_4 I1 -pin ID_EX_BR_addr_Out[6]_i_3 I1 -pin ID_EX_BR_addr_Out[6]_i_5 O
netloc ID_EX_BR_addr_Out[6]_i_5_n_0 1 17 2 16710 8900 18600
load net EX_MEM_BR_addr_Out[7]_i_1_n_0 -pin EX_MEM_BR_addr_Out[7]_i_1 O -pin EX_MEM_BR_addr_Out_reg[7] D
netloc EX_MEM_BR_addr_Out[7]_i_1_n_0 1 4 1 N
load net RAM_doutb[0] -attr @rip(#000000) doutb[0] -pin RAM_inst doutb[0] -pin ROM_inst doutb[0]
load net EX_MEM_MEM_din_Out[12] -attr @rip(#000000) 12 -pin EX_MEM_MEM_din_Out_reg[12] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][12] -pin console_display EX_MEM_MEM_din_Out_reg[15][12]
load net MEM_PC_sig[7] -attr @rip(#000000) 6 -pin MEM_PC_sig_reg[7] Q -pin console_display MEM_PC_sig_reg[15][6]
load net EX_MEM_MEM_din_Out[7] -attr @rip(#000000) 7 -pin EX_MEM_MEM_din_Out_reg[7] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][7] -pin console_display EX_MEM_MEM_din_Out_reg[15][7]
load net PMOD_In_IBUF[1] -attr @rip(#000000) 1 -pin PMOD_In_IBUF[1]_inst O -pin console_display PMOD_In_IBUF[1]
load net ID_EX_BR_sub_PC_Out_reg_n_0_[8] -attr @rip(#000000) 7 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][7] -pin ID_EX_BR_sub_PC_Out_reg[8] Q
load net NPC_sig[7] -attr @rip(#000000) addrb[6] -pin FetchStage addrb[6] -pin RAM_inst addrb[6] -pin ROM_inst addrb[6]
load net W_data[2] -attr @rip(#000000) 2 -pin MEM_WB_RW_data_Out_reg[2] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][2]
load net RAM_doutb[1] -attr @rip(#000000) doutb[1] -pin RAM_inst doutb[1] -pin ROM_inst doutb[1]
load net MEM_PC_sig[6] -attr @rip(#000000) 5 -pin MEM_PC_sig_reg[6] Q -pin console_display MEM_PC_sig_reg[15][5]
load net EX_MEM_MEM_din_Out[13] -attr @rip(#000000) 13 -pin EX_MEM_MEM_din_Out_reg[13] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][13] -pin console_display EX_MEM_MEM_din_Out_reg[15][13]
load net ID_EX_BR_En_Out_reg_n_0 -pin ExecuteStage ID_EX_BR_En_Out_reg -pin ID_EX_BR_En_Out_reg Q
netloc ID_EX_BR_En_Out_reg_n_0 1 16 1 13650
load net W_addr[0] -attr @rip(#000000) 0 -pin Decoder MEM_WB_RW_addr_Out_reg[2][0] -pin MEM_WB_RW_addr_Out_reg[0] Q -pin console_display MEM_WB_RW_addr_Out_reg[2][0]
load net ID_OP_sig[12] -attr @rip(#000000) D[12] -pin ID_OP_sig_reg[12] D -pin ROM_inst D[12]
load net ID_EX_BR_sub_PC_Out_reg_n_0_[9] -attr @rip(#000000) 8 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][8] -pin ID_EX_BR_sub_PC_Out_reg[9] Q
load net W_data[1] -attr @rip(#000000) 1 -pin MEM_WB_RW_data_Out_reg[1] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][1]
load net console_display_n_111 -pin console_display clock_25Mhz_reg -pin h_dot_int_reg[10]_i_3 I
netloc console_display_n_111 1 13 4 5630 3570 6210J 3550 NJ 3550 11650
load net ID_EX_IN_En_Out_i_2_n_0 -pin ID_EX_IN_En_Out_i_1 I1 -pin ID_EX_IN_En_Out_i_2 O
netloc ID_EX_IN_En_Out_i_2_n_0 1 13 1 NJ
load net ID_EX_Shiftamt_Out[3]_i_2_n_0 -pin ID_EX_Shiftamt_Out[0]_i_1 I0 -pin ID_EX_Shiftamt_Out[1]_i_1 I0 -pin ID_EX_Shiftamt_Out[2]_i_1 I0 -pin ID_EX_Shiftamt_Out[3]_i_1 I0 -pin ID_EX_Shiftamt_Out[3]_i_2 O
netloc ID_EX_Shiftamt_Out[3]_i_2_n_0 1 13 1 5530
load net EX_MEM_MEM_din_Out[10] -attr @rip(#000000) 10 -pin EX_MEM_MEM_din_Out_reg[10] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][10] -pin console_display EX_MEM_MEM_din_Out_reg[15][10]
load net ID_EX_RB_data_Out[0] -attr @rip(#000000) 0 -pin EX_MEM_MEM_din_Out[0]_i_1 I0 -pin ExecuteStage Q[0] -pin ID_EX_RB_data_Out_reg[0] Q -pin console_display ID_EX_RB_data_Out_reg[15][0]
load net RAM_doutb[2] -attr @rip(#000000) doutb[2] -pin RAM_inst doutb[2] -pin ROM_inst doutb[2]
load net ID_EX_RA_data_Out[1] -attr @rip(#000000) 1 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][1] -pin ID_EX_RA_data_Out_reg[1] Q -pin console_display ID_EX_RA_data_Out_reg[15][1]
load net EX_MEM_BR_addr_Out[11]_i_1_n_0 -pin EX_MEM_BR_addr_Out[11]_i_1 O -pin EX_MEM_BR_addr_Out_reg[11] D
netloc EX_MEM_BR_addr_Out[11]_i_1_n_0 1 4 1 N
load net MEM_PC_sig[9] -attr @rip(#000000) 8 -pin MEM_PC_sig_reg[9] Q -pin console_display MEM_PC_sig_reg[15][8]
load net EX_MEM_MEM_din_Out[9] -attr @rip(#000000) 9 -pin EX_MEM_MEM_din_Out_reg[9] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][9] -pin console_display EX_MEM_MEM_din_Out_reg[15][9]
load net ID_OP_sig[11] -attr @rip(#000000) D[11] -pin ID_OP_sig_reg[11] D -pin ROM_inst D[11]
load net W_addr[1] -attr @rip(#000000) 1 -pin Decoder MEM_WB_RW_addr_Out_reg[2][1] -pin MEM_WB_RW_addr_Out_reg[1] Q -pin console_display MEM_WB_RW_addr_Out_reg[2][1]
load net ID_PC_sig[8] -attr @rip(#000000) D[7] -pin FetchStage D[7] -pin ID_PC_sig_reg[8] D
load net ID_EX_L_op_Out[0]_i_1_n_0 -pin ID_EX_L_op_Out[0]_i_1 O -pin ID_EX_L_op_Out_reg[0] D
netloc ID_EX_L_op_Out[0]_i_1_n_0 1 10 1 3790
load net W_data[4] -attr @rip(#000000) 4 -pin MEM_WB_RW_data_Out_reg[4] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][4]
load net PC[15] -pin Decoder ID_PC_sig_reg[15][10] -pin EX_PC_sig[15]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[15]_i_1 I5 -pin ID_PC_sig_reg[15] Q -pin console_display ID_PC_sig_reg[15][14]
load net ROM_douta[0] -attr @rip(#000000) douta[0] -pin RAM_inst douta[0] -pin ROM_inst douta[0]
load net EX_MEM_MEM_din_Out[11] -attr @rip(#000000) 11 -pin EX_MEM_MEM_din_Out_reg[11] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][11] -pin console_display EX_MEM_MEM_din_Out_reg[15][11]
load net ID_EX_RB_data_Out[1] -attr @rip(#000000) 1 -pin EX_MEM_MEM_din_Out[1]_i_1 I0 -pin ExecuteStage Q[1] -pin ID_EX_RB_data_Out_reg[1] Q -pin console_display ID_EX_RB_data_Out_reg[15][1]
load net EX_MEM_MEM_din_Out[4] -attr @rip(#000000) 4 -pin EX_MEM_MEM_din_Out_reg[4] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][4] -pin console_display EX_MEM_MEM_din_Out_reg[15][4]
load net ID_EX_RA_data_Out[0] -attr @rip(#000000) 0 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][0] -pin ID_EX_RA_data_Out_reg[0] Q -pin console_display ID_EX_RA_data_Out_reg[15][0]
load net RAM_doutb[3] -attr @rip(#000000) doutb[3] -pin RAM_inst doutb[3] -pin ROM_inst doutb[3]
load net MEM_PC_sig[8] -attr @rip(#000000) 7 -pin MEM_PC_sig_reg[8] Q -pin console_display MEM_PC_sig_reg[15][7]
load net Switch_In[0] -attr @rip(#000000) Switch_In[0] -port Switch_In[0] -pin Switch_In_IBUF[0]_inst I
load net IF_ID_PC_In[11] -attr @rip(#000000) Q[0] -pin FetchStage Q[0] -pin RAM_inst PC_reg[11][0] -pin ROM_inst Q[0] -pin console_display PC_reg[11][0]
netloc IF_ID_PC_In[11] 1 6 10 2320 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 4830J 5450 5610J 5690 6430 5690 8020J
load net ID_PC_sig[9] -attr @rip(#000000) D[8] -pin FetchStage D[8] -pin ID_PC_sig_reg[9] D
load net ID_EX_RW_En_Out -pin ID_EX_RW_En_Out_i_1 O -pin ID_EX_RW_En_Out_reg D -pin ID_EX_RW_addr_Out[0]_i_1 I0 -pin ID_EX_RW_addr_Out[1]_i_1 I0 -pin ID_EX_RW_addr_Out[2]_i_1 I0
netloc ID_EX_RW_En_Out 1 10 2 3730 8710 4090J
load net W_data[3] -attr @rip(#000000) 3 -pin MEM_WB_RW_data_Out_reg[3] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][3]
load net PC[14] -pin Decoder ID_PC_sig_reg[15][9] -pin EX_PC_sig[14]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[14]_i_1 I3 -pin ID_EX_BR_sub_PC_Out[15]_i_1 I1 -pin ID_PC_sig_reg[14] Q -pin console_display ID_PC_sig_reg[15][13]
load net EX_MEM_MEM_din_Out[3] -attr @rip(#000000) 3 -pin EX_MEM_MEM_din_Out_reg[3] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][3] -pin console_display EX_MEM_MEM_din_Out_reg[15][3]
load net ID_EX_RB_data_Out[2] -attr @rip(#000000) 2 -pin EX_MEM_MEM_din_Out[2]_i_1 I0 -pin ExecuteStage Q[2] -pin ID_EX_RB_data_Out_reg[2] Q -pin console_display ID_EX_RB_data_Out_reg[15][2]
load net MEM_PC_sig[9]_i_1_n_0 -pin MEM_PC_sig[9]_i_1 O -pin MEM_PC_sig_reg[9] D
netloc MEM_PC_sig[9]_i_1_n_0 1 14 1 N
load net MEM_WB_L_op_Out_reg_n_0_[2] -attr @rip(#000000) 2 -pin MEM_WB_L_op_Out_reg[2] Q -pin RAM_inst MEM_WB_L_op_Out_reg[2][2]
load net ID_PC_sig[6] -attr @rip(#000000) D[5] -pin FetchStage D[5] -pin ID_PC_sig_reg[6] D
load net Switch_In[1] -attr @rip(#000000) Switch_In[1] -port Switch_In[1] -pin Switch_In_IBUF[1]_inst I
load net EX_MEM_RW_data_Out[10] -pin EX_MEM_RW_data_Out_reg[10] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][9] -pin MEM_WB_RW_data_Out_reg[10] D -pin RAM_inst Q[9] -pin console_display Q[10]
load net MEM_PC_sig[10] -attr @rip(#000000) 9 -pin MEM_PC_sig_reg[10] Q -pin console_display MEM_PC_sig_reg[15][9]
load net PC[13] -pin EX_PC_sig[13]_i_1 I0 -pin ExecuteStage ID_PC_sig_reg[13][3] -pin ID_EX_BR_sub_PC_Out[13]_i_1 I3 -pin ID_EX_BR_sub_PC_Out[14]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[15]_i_1 I2 -pin ID_PC_sig_reg[13] Q -pin console_display ID_PC_sig_reg[15][12]
load net W_En -pin Decoder W_En -pin MEM_WB_RW_En_Out_reg Q -pin console_display W_En
netloc W_En 1 15 4 8820 8770 13730J 8450 16690J 8280 17880
load net ROM_douta[2] -attr @rip(#000000) douta[2] -pin RAM_inst douta[2] -pin ROM_inst douta[2]
load net display_address[1] -attr @rip(#000000) D[1] -pin console_display D[1] -pin main_buffer_reg_i_24 D
load net ID_EX_RB_data_Out[3] -attr @rip(#000000) 3 -pin EX_MEM_MEM_din_Out[3]_i_1 I0 -pin ExecuteStage Q[3] -pin ID_EX_RB_data_Out_reg[3] Q -pin console_display ID_EX_RB_data_Out_reg[15][3]
load net EX_MEM_MEM_din_Out[6] -attr @rip(#000000) 6 -pin EX_MEM_MEM_din_Out_reg[6] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][6] -pin console_display EX_MEM_MEM_din_Out_reg[15][6]
load net MEM_WB_L_op_Out_reg_n_0_[1] -attr @rip(#000000) 1 -pin MEM_WB_L_op_Out_reg[1] Q -pin RAM_inst MEM_WB_L_op_Out_reg[2][1]
load net EX_MEM_BR_addr_Out[9]_i_1_n_0 -pin EX_MEM_BR_addr_Out[9]_i_1 O -pin EX_MEM_BR_addr_Out_reg[9] D
netloc EX_MEM_BR_addr_Out[9]_i_1_n_0 1 4 1 N
load net ID_OP_sig[8] -attr @rip(#000000) D[8] -pin ID_OP_sig_reg[8] D -pin ROM_inst D[8]
load net ID_EX_RW_addr_Out[2]_i_1_n_0 -pin ID_EX_RW_addr_Out[2]_i_1 O -pin ID_EX_RW_addr_Out_reg[2] D
netloc ID_EX_RW_addr_Out[2]_i_1_n_0 1 11 1 4230
load net ID_PC_sig[7] -attr @rip(#000000) D[6] -pin FetchStage D[6] -pin ID_PC_sig_reg[7] D
load net ID_EX_BR_addr_Out[8]_i_4_n_0 -pin Decoder ID_OP_sig_reg[7] -pin ID_EX_BR_addr_Out[8]_i_4 O
netloc ID_EX_BR_addr_Out[8]_i_4_n_0 1 18 1 18540
load net Clk_IBUF_BUFG -pin Clk_IBUF_BUFG_inst O -pin Data_Out_reg C -pin Decoder CLK -pin EX_MEM_BR_CTRL_Out_reg C -pin EX_MEM_BR_CTRL_Out_reg_rep C -pin EX_MEM_BR_addr_Out_reg[10] C -pin EX_MEM_BR_addr_Out_reg[11] C -pin EX_MEM_BR_addr_Out_reg[12] C -pin EX_MEM_BR_addr_Out_reg[13] C -pin EX_MEM_BR_addr_Out_reg[14] C -pin EX_MEM_BR_addr_Out_reg[15] C -pin EX_MEM_BR_addr_Out_reg[1] C -pin EX_MEM_BR_addr_Out_reg[2] C -pin EX_MEM_BR_addr_Out_reg[3] C -pin EX_MEM_BR_addr_Out_reg[4] C -pin EX_MEM_BR_addr_Out_reg[5] C -pin EX_MEM_BR_addr_Out_reg[6] C -pin EX_MEM_BR_addr_Out_reg[7] C -pin EX_MEM_BR_addr_Out_reg[8] C -pin EX_MEM_BR_addr_Out_reg[9] C -pin EX_MEM_L_op_Out_reg[0] C -pin EX_MEM_L_op_Out_reg[1] C -pin EX_MEM_L_op_Out_reg[2] C -pin EX_MEM_MEM_din_Out_reg[0] C -pin EX_MEM_MEM_din_Out_reg[10] C -pin EX_MEM_MEM_din_Out_reg[11] C -pin EX_MEM_MEM_din_Out_reg[12] C -pin EX_MEM_MEM_din_Out_reg[13] C -pin EX_MEM_MEM_din_Out_reg[14] C -pin EX_MEM_MEM_din_Out_reg[15] C -pin EX_MEM_MEM_din_Out_reg[1] C -pin EX_MEM_MEM_din_Out_reg[2] C -pin EX_MEM_MEM_din_Out_reg[3] C -pin EX_MEM_MEM_din_Out_reg[4] C -pin EX_MEM_MEM_din_Out_reg[5] C -pin EX_MEM_MEM_din_Out_reg[6] C -pin EX_MEM_MEM_din_Out_reg[7] C -pin EX_MEM_MEM_din_Out_reg[8] C -pin EX_MEM_MEM_din_Out_reg[9] C -pin EX_MEM_RW_En_Out_reg C -pin EX_MEM_RW_addr_Out_reg[0] C -pin EX_MEM_RW_addr_Out_reg[1] C -pin EX_MEM_RW_addr_Out_reg[2] C -pin EX_MEM_RW_data_Out_reg[0] C -pin EX_MEM_RW_data_Out_reg[10] C -pin EX_MEM_RW_data_Out_reg[11] C -pin EX_MEM_RW_data_Out_reg[12] C -pin EX_MEM_RW_data_Out_reg[13] C -pin EX_MEM_RW_data_Out_reg[14] C -pin EX_MEM_RW_data_Out_reg[15] C -pin EX_MEM_RW_data_Out_reg[1] C -pin EX_MEM_RW_data_Out_reg[2] C -pin EX_MEM_RW_data_Out_reg[3] C -pin EX_MEM_RW_data_Out_reg[4] C -pin EX_MEM_RW_data_Out_reg[5] C -pin EX_MEM_RW_data_Out_reg[6] C -pin EX_MEM_RW_data_Out_reg[7] C -pin EX_MEM_RW_data_Out_reg[8] C -pin EX_MEM_RW_data_Out_reg[9] C -pin EX_OP_sig_reg[0] C -pin EX_OP_sig_reg[10] C -pin EX_OP_sig_reg[11] C -pin EX_OP_sig_reg[12] C -pin EX_OP_sig_reg[13] C -pin EX_OP_sig_reg[14] C -pin EX_OP_sig_reg[15] C -pin EX_OP_sig_reg[1] C -pin EX_OP_sig_reg[2] C -pin EX_OP_sig_reg[3] C -pin EX_OP_sig_reg[4] C -pin EX_OP_sig_reg[5] C -pin EX_OP_sig_reg[6] C -pin EX_OP_sig_reg[7] C -pin EX_OP_sig_reg[8] C -pin EX_OP_sig_reg[9] C -pin EX_PC_sig_reg[10] C -pin EX_PC_sig_reg[11] C -pin EX_PC_sig_reg[12] C -pin EX_PC_sig_reg[13] C -pin EX_PC_sig_reg[14] C -pin EX_PC_sig_reg[15] C -pin EX_PC_sig_reg[1] C -pin EX_PC_sig_reg[2] C -pin EX_PC_sig_reg[3] C -pin EX_PC_sig_reg[4] C -pin EX_PC_sig_reg[5] C -pin EX_PC_sig_reg[6] C -pin EX_PC_sig_reg[7] C -pin EX_PC_sig_reg[8] C -pin EX_PC_sig_reg[9] C -pin ExecuteStage CLK -pin FetchStage CLK -pin ID_EX_ALU_op_Out_reg[0] C -pin ID_EX_ALU_op_Out_reg[1] C -pin ID_EX_ALU_op_Out_reg[2] C -pin ID_EX_BR_En_Out_reg C -pin ID_EX_BR_Op_Out_reg[0] C -pin ID_EX_BR_Op_Out_reg[1] C -pin ID_EX_BR_addr_Out_reg[0] C -pin ID_EX_BR_addr_Out_reg[10] C -pin ID_EX_BR_addr_Out_reg[11] C -pin ID_EX_BR_addr_Out_reg[12] C -pin ID_EX_BR_addr_Out_reg[13] C -pin ID_EX_BR_addr_Out_reg[14] C -pin ID_EX_BR_addr_Out_reg[15] C -pin ID_EX_BR_addr_Out_reg[1] C -pin ID_EX_BR_addr_Out_reg[2] C -pin ID_EX_BR_addr_Out_reg[3] C -pin ID_EX_BR_addr_Out_reg[4] C -pin ID_EX_BR_addr_Out_reg[5] C -pin ID_EX_BR_addr_Out_reg[6] C -pin ID_EX_BR_addr_Out_reg[7] C -pin ID_EX_BR_addr_Out_reg[8] C -pin ID_EX_BR_addr_Out_reg[9] C -pin ID_EX_BR_sub_PC_Out_reg[10] C -pin ID_EX_BR_sub_PC_Out_reg[11] C -pin ID_EX_BR_sub_PC_Out_reg[12] C -pin ID_EX_BR_sub_PC_Out_reg[13] C -pin ID_EX_BR_sub_PC_Out_reg[14] C -pin ID_EX_BR_sub_PC_Out_reg[15] C -pin ID_EX_BR_sub_PC_Out_reg[1] C -pin ID_EX_BR_sub_PC_Out_reg[2] C -pin ID_EX_BR_sub_PC_Out_reg[3] C -pin ID_EX_BR_sub_PC_Out_reg[4] C -pin ID_EX_BR_sub_PC_Out_reg[5] C -pin ID_EX_BR_sub_PC_Out_reg[6] C -pin ID_EX_BR_sub_PC_Out_reg[7] C -pin ID_EX_BR_sub_PC_Out_reg[8] C -pin ID_EX_BR_sub_PC_Out_reg[9] C -pin ID_EX_IN_En_Out_reg C -pin ID_EX_L_op_Out_reg[0] C -pin ID_EX_L_op_Out_reg[1] C -pin ID_EX_L_op_Out_reg[2] C -pin ID_EX_RA_data_Out_reg[0] C -pin ID_EX_RA_data_Out_reg[10] C -pin ID_EX_RA_data_Out_reg[11] C -pin ID_EX_RA_data_Out_reg[12] C -pin ID_EX_RA_data_Out_reg[13] C -pin ID_EX_RA_data_Out_reg[14] C -pin ID_EX_RA_data_Out_reg[15] C -pin ID_EX_RA_data_Out_reg[1] C -pin ID_EX_RA_data_Out_reg[2] C -pin ID_EX_RA_data_Out_reg[3] C -pin ID_EX_RA_data_Out_reg[4] C -pin ID_EX_RA_data_Out_reg[5] C -pin ID_EX_RA_data_Out_reg[6] C -pin ID_EX_RA_data_Out_reg[7] C -pin ID_EX_RA_data_Out_reg[8] C -pin ID_EX_RA_data_Out_reg[9] C -pin ID_EX_RB_data_Out_reg[0] C -pin ID_EX_RB_data_Out_reg[10] C -pin ID_EX_RB_data_Out_reg[11] C -pin ID_EX_RB_data_Out_reg[12] C -pin ID_EX_RB_data_Out_reg[13] C -pin ID_EX_RB_data_Out_reg[14] C -pin ID_EX_RB_data_Out_reg[15] C -pin ID_EX_RB_data_Out_reg[1] C -pin ID_EX_RB_data_Out_reg[2] C -pin ID_EX_RB_data_Out_reg[3] C -pin ID_EX_RB_data_Out_reg[4] C -pin ID_EX_RB_data_Out_reg[5] C -pin ID_EX_RB_data_Out_reg[6] C -pin ID_EX_RB_data_Out_reg[7] C -pin ID_EX_RB_data_Out_reg[8] C -pin ID_EX_RB_data_Out_reg[9] C -pin ID_EX_RW_En_Out_reg C -pin ID_EX_RW_addr_Out_reg[0] C -pin ID_EX_RW_addr_Out_reg[1] C -pin ID_EX_RW_addr_Out_reg[2] C -pin ID_EX_Shiftamt_Out_reg[0] C -pin ID_EX_Shiftamt_Out_reg[1] C -pin ID_EX_Shiftamt_Out_reg[2] C -pin ID_EX_Shiftamt_Out_reg[3] C -pin ID_OP_sig_reg[0] C -pin ID_OP_sig_reg[10] C -pin ID_OP_sig_reg[11] C -pin ID_OP_sig_reg[12] C -pin ID_OP_sig_reg[13] C -pin ID_OP_sig_reg[14] C -pin ID_OP_sig_reg[15] C -pin ID_OP_sig_reg[1] C -pin ID_OP_sig_reg[2] C -pin ID_OP_sig_reg[3] C -pin ID_OP_sig_reg[4] C -pin ID_OP_sig_reg[5] C -pin ID_OP_sig_reg[6] C -pin ID_OP_sig_reg[7] C -pin ID_OP_sig_reg[8] C -pin ID_OP_sig_reg[9] C -pin ID_PC_sig_reg[10] C -pin ID_PC_sig_reg[11] C -pin ID_PC_sig_reg[12] C -pin ID_PC_sig_reg[13] C -pin ID_PC_sig_reg[14] C -pin ID_PC_sig_reg[15] C -pin ID_PC_sig_reg[1] C -pin ID_PC_sig_reg[2] C -pin ID_PC_sig_reg[3] C -pin ID_PC_sig_reg[4] C -pin ID_PC_sig_reg[5] C -pin ID_PC_sig_reg[6] C -pin ID_PC_sig_reg[7] C -pin ID_PC_sig_reg[8] C -pin ID_PC_sig_reg[9] C -pin MEM_OP_sig_reg[0] C -pin MEM_OP_sig_reg[10] C -pin MEM_OP_sig_reg[11] C -pin MEM_OP_sig_reg[12] C -pin MEM_OP_sig_reg[13] C -pin MEM_OP_sig_reg[14] C -pin MEM_OP_sig_reg[15] C -pin MEM_OP_sig_reg[1] C -pin MEM_OP_sig_reg[2] C -pin MEM_OP_sig_reg[3] C -pin MEM_OP_sig_reg[4] C -pin MEM_OP_sig_reg[5] C -pin MEM_OP_sig_reg[6] C -pin MEM_OP_sig_reg[7] C -pin MEM_OP_sig_reg[8] C -pin MEM_OP_sig_reg[9] C -pin MEM_PC_sig_reg[10] C -pin MEM_PC_sig_reg[11] C -pin MEM_PC_sig_reg[12] C -pin MEM_PC_sig_reg[13] C -pin MEM_PC_sig_reg[14] C -pin MEM_PC_sig_reg[15] C -pin MEM_PC_sig_reg[1] C -pin MEM_PC_sig_reg[2] C -pin MEM_PC_sig_reg[3] C -pin MEM_PC_sig_reg[4] C -pin MEM_PC_sig_reg[5] C -pin MEM_PC_sig_reg[6] C -pin MEM_PC_sig_reg[7] C -pin MEM_PC_sig_reg[8] C -pin MEM_PC_sig_reg[9] C -pin MEM_WB_L_op_Out_reg[0] C -pin MEM_WB_L_op_Out_reg[1] C -pin MEM_WB_L_op_Out_reg[2] C -pin MEM_WB_RW_En_Out_reg C -pin MEM_WB_RW_addr_Out_reg[0] C -pin MEM_WB_RW_addr_Out_reg[1] C -pin MEM_WB_RW_addr_Out_reg[2] C -pin MEM_WB_RW_data_Out_reg[0] C -pin MEM_WB_RW_data_Out_reg[10] C -pin MEM_WB_RW_data_Out_reg[11] C -pin MEM_WB_RW_data_Out_reg[12] C -pin MEM_WB_RW_data_Out_reg[13] C -pin MEM_WB_RW_data_Out_reg[14] C -pin MEM_WB_RW_data_Out_reg[15] C -pin MEM_WB_RW_data_Out_reg[1] C -pin MEM_WB_RW_data_Out_reg[2] C -pin MEM_WB_RW_data_Out_reg[3] C -pin MEM_WB_RW_data_Out_reg[4] C -pin MEM_WB_RW_data_Out_reg[5] C -pin MEM_WB_RW_data_Out_reg[6] C -pin MEM_WB_RW_data_Out_reg[7] C -pin MEM_WB_RW_data_Out_reg[8] C -pin MEM_WB_RW_data_Out_reg[9] C -pin RAM_inst CLK -pin ROM_inst CLK -pin console_display CLK
netloc Clk_IBUF_BUFG 1 2 18 370 5490 NJ 5490 1160 3850 1530 5270 2240 5750 2820 8180 NJ 8180 3330J 8340 3770 8340 4270 7710 4850 8620 5470 1570 6390 6410 8240 9190 13590 6880 16590 6880 18220 6180 20780
load net ID_EX_RA_data_In[13] -attr @rip(#000000) ID_EX_BR_addr_Out_reg[13][1] -pin Decoder ID_EX_IN_En_Out_reg[1] -pin ExecuteStage ID_EX_BR_addr_Out_reg[13][1]
load net Switch_In[2] -attr @rip(#000000) Switch_In[2] -port Switch_In[2] -pin Switch_In_IBUF[2]_inst I
load net ID_EX_BR_sub_PC_Out[15]_i_2_n_0 -pin ID_EX_BR_sub_PC_Out[12]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[13]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[14]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[15]_i_1 I3 -pin ID_EX_BR_sub_PC_Out[15]_i_2 O
netloc ID_EX_BR_sub_PC_Out[15]_i_2_n_0 1 13 2 5610 12730 6110J
load net PC[12] -pin EX_PC_sig[12]_i_1 I0 -pin ExecuteStage ID_PC_sig_reg[13][2] -pin ID_EX_BR_sub_PC_Out[12]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[13]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[14]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[15]_i_1 I4 -pin ID_PC_sig_reg[12] Q -pin console_display ID_PC_sig_reg[15][11]
load net ID_EX_BR_addr_Out[7]_i_4_n_0 -pin Decoder ID_OP_sig_reg[6] -pin ID_EX_BR_addr_Out[7]_i_4 O
netloc ID_EX_BR_addr_Out[7]_i_4_n_0 1 18 1 18460
load net console_display_n_0 -pin Decoder display_address_reg[6] -pin console_display vga_red_reg[3]_0
netloc console_display_n_0 1 16 3 13530 8020 NJ 8020 17900J
load net console_display_n_1 -pin Decoder display_address_reg[1]_rep__0 -pin ExecuteStage display_address_reg[1]_rep__0 -pin FetchStage display_address_reg[1]_rep__0 -pin RAM_inst display_address_reg[1]_rep__0 -pin console_display vga_red_reg[3]_1
netloc console_display_n_1 1 5 14 1750 3530 2340J 3510 NJ 3510 NJ 3510 NJ 3510 NJ 3510 NJ 3510 NJ 3510 NJ 3510 6550 4020 7360J 3890 13290 7900 NJ 7900 18000J
load net ROM_douta[1] -attr @rip(#000000) douta[1] -pin RAM_inst douta[1] -pin ROM_inst douta[1]
load net console_display_n_2 -attr @rip(#000000) vga_red_reg[3]_2[3] -pin Decoder Q[3] -pin console_display vga_red_reg[3]_2[3]
load net display_address[0] -attr @rip(#000000) D[0] -pin console_display D[0] -pin main_buffer_reg_i_25 D
load net console_display_n_3 -attr @rip(#000000) vga_red_reg[3]_2[2] -pin Decoder Q[2] -pin ExecuteStage display_address_reg[2][0] -pin console_display vga_red_reg[3]_2[2]
load net EX_MEM_MEM_din_Out[5] -attr @rip(#000000) 5 -pin EX_MEM_MEM_din_Out_reg[5] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][5] -pin console_display EX_MEM_MEM_din_Out_reg[15][5]
load net console_display_n_4 -attr @rip(#000000) vga_red_reg[3]_2[1] -pin Decoder Q[1] -pin console_display vga_red_reg[3]_2[1]
load net EX_PC_sig[4]_i_1_n_0 -pin EX_PC_sig[4]_i_1 O -pin EX_PC_sig_reg[4] D
netloc EX_PC_sig[4]_i_1_n_0 1 12 1 4950
load net MEM_WB_L_op_Out_reg_n_0_[0] -attr @rip(#000000) 0 -pin MEM_WB_L_op_Out_reg[0] Q -pin RAM_inst MEM_WB_L_op_Out_reg[2][0]
load net console_display_n_5 -attr @rip(#000000) vga_red_reg[3]_2[0] -pin Decoder Q[0] -pin console_display vga_red_reg[3]_2[0]
load net MEM_PC_sig[10]_i_1_n_0 -pin MEM_PC_sig[10]_i_1 O -pin MEM_PC_sig_reg[10] D
netloc MEM_PC_sig[10]_i_1_n_0 1 14 1 N
load net ID_PC_sig[4] -attr @rip(#000000) D[3] -pin FetchStage D[3] -pin ID_PC_sig_reg[4] D
load net console_display_n_6 -pin Decoder display_address_reg[0]_rep__0 -pin ExecuteStage display_address_reg[0]_rep__0 -pin FetchStage display_address_reg[0]_rep__0 -pin RAM_inst display_address_reg[0]_rep__0 -pin console_display vga_red_reg[3]_3
netloc console_display_n_6 1 5 14 1710 3490 2240J 3470 NJ 3470 NJ 3470 NJ 3470 NJ 3470 NJ 3470 NJ 3470 NJ 3470 6530 3980 7480J 3850 13110 7820 NJ 7820 18100J
load net ID_EX_RB_data_Out[4] -attr @rip(#000000) 4 -pin EX_MEM_MEM_din_Out[4]_i_1 I0 -pin ExecuteStage Q[4] -pin ID_EX_RB_data_Out_reg[4] Q -pin console_display ID_EX_RB_data_Out_reg[15][4]
load net ID_EX_BR_addr_Out[1]_i_2_n_0 -pin Decoder ID_OP_sig_reg[13] -pin ExecuteStage ID_OP_sig_reg[13] -pin ID_EX_BR_addr_Out[15]_i_7 I3 -pin ID_EX_BR_addr_Out[15]_i_8 I3 -pin ID_EX_BR_addr_Out[1]_i_2 O
netloc ID_EX_BR_addr_Out[1]_i_2_n_0 1 15 4 7620 9230 14010 8780 NJ 8780 17640J
load net console_display_n_7 -pin Decoder display_address_reg[0]_rep__2 -pin ExecuteStage display_address_reg[0]_rep__2 -pin FetchStage display_address_reg[0]_rep__2 -pin console_display vga_red_reg[3]_4
netloc console_display_n_7 1 5 14 1670 4220 NJ 4220 NJ 4220 NJ 4220 NJ 4220 NJ 4220 NJ 4220 NJ 4220 5250J 4650 6450J 4850 7640J 7950 12850 7860 NJ 7860 18080J
load net ID_OP_sig[9] -attr @rip(#000000) D[9] -pin ID_OP_sig_reg[9] D -pin ROM_inst D[9]
load net ID_EX_BR_addr_Out[2]_i_3_n_0 -pin Decoder ID_OP_sig_reg[1]_0 -pin ID_EX_BR_addr_Out[2]_i_3 O
netloc ID_EX_BR_addr_Out[2]_i_3_n_0 1 18 1 18140
load net console_display_n_8 -pin Decoder display_address_reg[0]_rep -pin ExecuteStage display_address_reg[0]_rep -pin FetchStage display_address_reg[0]_rep -pin RAM_inst display_address_reg[0]_rep -pin console_display vga_red_reg[3]_5
netloc console_display_n_8 1 5 14 1690 3470 2220J 3450 NJ 3450 NJ 3450 NJ 3450 NJ 3450 NJ 3450 NJ 3450 NJ 3450 6090 3960 7460J 3830 13130 7800 NJ 7800 18160J
load net ID_EX_RA_data_Out[5] -attr @rip(#000000) 5 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][5] -pin ID_EX_RA_data_Out_reg[5] Q -pin console_display ID_EX_RA_data_Out_reg[15][5]
load net console_display_n_9 -pin Decoder display_address_reg[0]_rep__1 -pin ExecuteStage display_address_reg[0]_rep__1 -pin FetchStage display_address_reg[0]_rep__1 -pin RAM_inst display_address_reg[0]_rep__1 -pin console_display vga_red_reg[3]_6
netloc console_display_n_9 1 5 14 1730 3510 2300J 3490 NJ 3490 NJ 3490 NJ 3490 NJ 3490 NJ 3490 NJ 3490 NJ 3490 6130 4000 7500J 3870 13330 7840 NJ 7840 17480J
load net EX_MEM_RW_addr_Out[0]_i_1_n_0 -pin EX_MEM_RW_addr_Out[0]_i_1 O -pin EX_MEM_RW_addr_Out_reg[0] D
netloc EX_MEM_RW_addr_Out[0]_i_1_n_0 1 13 1 5250
load net Switch_In[3] -attr @rip(#000000) Switch_In[3] -port Switch_In[3] -pin Switch_In_IBUF[3]_inst I
load net PC[11] -pin EX_PC_sig[11]_i_1 I0 -pin ExecuteStage ID_PC_sig_reg[13][1] -pin ID_EX_BR_sub_PC_Out[11]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[15]_i_2 I5 -pin ID_PC_sig_reg[11] Q -pin console_display ID_PC_sig_reg[15][10]
load net ID_EX_BR_addr_Out[6]_i_3_n_0 -pin Decoder ID_OP_sig_reg[5] -pin ID_EX_BR_addr_Out[6]_i_3 O
netloc ID_EX_BR_addr_Out[6]_i_3_n_0 1 18 1 17620
load net EX_OP_sig_reg_n_0_[11] -attr @rip(#000000) 3 -pin EX_OP_sig_reg[11] Q -pin MEM_OP_sig[11]_i_1 I0 -pin console_display EX_OP_sig_reg[15][3]
load net EX_MEM_MEM_din_Out[0] -attr @rip(#000000) 0 -pin EX_MEM_MEM_din_Out_reg[0] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][0] -pin console_display EX_MEM_MEM_din_Out_reg[15][0]
load net ID_EX_IN_En_Out_reg_n_0 -pin ExecuteStage ID_EX_IN_En_Out_reg -pin ID_EX_IN_En_Out_reg Q -pin console_display ID_EX_IN_En_Out_reg_1
netloc ID_EX_IN_En_Out_reg_n_0 1 15 2 7600 9210 12570
load net ID_EX_RW_addr_Out[1]_i_1_n_0 -pin ID_EX_RW_addr_Out[1]_i_1 O -pin ID_EX_RW_addr_Out_reg[1] D
netloc ID_EX_RW_addr_Out[1]_i_1_n_0 1 11 1 4170
load net ROM_douta[4] -attr @rip(#000000) douta[4] -pin RAM_inst douta[4] -pin ROM_inst douta[4]
load net ID_EX_RB_data_Out[5] -attr @rip(#000000) 5 -pin EX_MEM_MEM_din_Out[5]_i_1 I0 -pin ExecuteStage Q[5] -pin ID_EX_RB_data_Out_reg[5] Q -pin console_display ID_EX_RB_data_Out_reg[15][5]
load net ID_PC_sig[5] -attr @rip(#000000) D[4] -pin FetchStage D[4] -pin ID_PC_sig_reg[5] D
load net ID_EX_RA_data_Out[4] -attr @rip(#000000) 4 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][4] -pin ID_EX_RA_data_Out_reg[4] Q -pin console_display ID_EX_RA_data_Out_reg[15][4]
load net console_display_n_70 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_1 -pin console_display EX_MEM_RW_data_Out_reg[3]
netloc console_display_n_70 1 16 1 12830
load net Switch_In[4] -attr @rip(#000000) Switch_In[4] -port Switch_In[4] -pin Switch_In_IBUF[4]_inst I
load net EX_PC_sig[2] -attr @rip(#000000) 1 -pin EX_PC_sig_reg[2] Q -pin MEM_PC_sig[2]_i_1 I0 -pin console_display EX_PC_sig_reg[15][1]
load net console_display_n_71 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[15] -pin console_display EX_MEM_RW_data_Out_reg[15]_3
netloc console_display_n_71 1 16 1 13250
load net EX_OP_sig_reg_n_0_[12] -attr @rip(#000000) 4 -pin EX_OP_sig_reg[12] Q -pin MEM_OP_sig[12]_i_1 I0 -pin console_display EX_OP_sig_reg[15][4]
load net console_display_n_72 -pin ExecuteStage ID_EX_BR_Op_Out_reg[0]_3 -pin console_display EX_MEM_RW_data_Out_reg[15]_4
netloc console_display_n_72 1 16 1 13230
load net console_display_n_73 -pin ExecuteStage ID_EX_BR_Op_Out_reg[0]_2 -pin console_display vga_red_reg[3]_14
netloc console_display_n_73 1 16 1 13390
load net EX_PC_sig[1]_i_1_n_0 -pin EX_PC_sig[1]_i_1 O -pin EX_PC_sig_reg[1] D
netloc EX_PC_sig[1]_i_1_n_0 1 12 1 N
load net console_display_n_74 -pin ExecuteStage ID_EX_BR_Op_Out_reg[0]_1 -pin console_display vga_red_reg[3]_15
netloc console_display_n_74 1 16 1 13370
load net console_display_n_75 -pin ExecuteStage ID_EX_BR_Op_Out_reg[0] -pin console_display EX_MEM_RW_data_Out_reg[12]_1
netloc console_display_n_75 1 16 1 12270
load net ID_EX_BR_sub_PC_Out[10]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[10]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[10] D
netloc ID_EX_BR_sub_PC_Out[10]_i_1_n_0 1 15 1 N
load net console_display_n_76 -pin ExecuteStage ID_EX_BR_Op_Out_reg[0]_0 -pin console_display EX_MEM_RW_data_Out_reg[12]_2
netloc console_display_n_76 1 16 1 12310
load net ROM_douta[3] -attr @rip(#000000) douta[3] -pin RAM_inst douta[3] -pin ROM_inst douta[3]
load net console_display_n_77 -pin ExecuteStage ID_EX_BR_Op_Out_reg[1] -pin console_display EX_MEM_RW_data_Out_reg[4]_1
netloc console_display_n_77 1 16 1 12030
load net console_display_n_78 -pin ExecuteStage ID_EX_RA_data_Out_reg[13]_0 -pin console_display EX_MEM_RW_data_Out_reg[14]_2
netloc console_display_n_78 1 16 1 11490
load net console_display_n_79 -pin ExecuteStage ID_EX_ALU_op_Out_reg[1] -pin console_display EX_MEM_RW_data_Out_reg[15]_5
netloc console_display_n_79 1 16 1 12690
load net ID_EX_RA_data_Out[3] -attr @rip(#000000) 3 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][3] -pin ID_EX_RA_data_Out_reg[3] Q -pin console_display ID_EX_RA_data_Out_reg[15][3]
load net ID_EX_RB_data_Out[6] -attr @rip(#000000) 6 -pin EX_MEM_MEM_din_Out[6]_i_1 I0 -pin ExecuteStage Q[6] -pin ID_EX_RB_data_Out_reg[6] Q -pin console_display ID_EX_RB_data_Out_reg[15][6]
load net MEM_OP_sig[15] -attr @rip(#000000) 15 -pin MEM_OP_sig_reg[15] Q -pin console_display MEM_OP_sig_reg[15][15]
load net ID_EX_RA_data_In[14] -attr @rip(#000000) ID_EX_RA_data_Out_reg[14][0] -pin Decoder ID_EX_RA_data_Out_reg[14][0] -pin ExecuteStage EX_MEM_RW_data_Out_reg[14][0] -pin console_display EX_MEM_RW_data_Out_reg[14]_3[0]
netloc ID_EX_RA_data_In[14] 1 15 5 9480 7830 12950 6920 16050J 6380 17580J 6220 19660
load net NPC_sig[1] -attr @rip(#000000) addrb[0] -pin FetchStage addrb[0] -pin RAM_inst addrb[0] -pin ROM_inst addrb[0]
load net EX_PC_sig[7]_i_1_n_0 -pin EX_PC_sig[7]_i_1 O -pin EX_PC_sig_reg[7] D
netloc EX_PC_sig[7]_i_1_n_0 1 12 1 4950
load net console_display_n_60 -pin ExecuteStage ID_EX_ALU_op_Out_reg[0]_0 -pin console_display EX_MEM_RW_data_Out_reg[0]_0
netloc console_display_n_60 1 16 1 11770
load net console_display_n_61 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0] -pin console_display EX_MEM_RW_data_Out_reg[14]_1
netloc console_display_n_61 1 16 1 12530
load net W_data[15] -attr @rip(#000000) 15 -pin MEM_WB_RW_data_Out_reg[15] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][15]
load net Switch_In[5] -attr @rip(#000000) Switch_In[5] -port Switch_In[5] -pin Switch_In_IBUF[5]_inst I
load net console_display_n_62 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_7 -pin console_display EX_MEM_RW_data_Out_reg[12]_0
netloc console_display_n_62 1 16 1 13470
load net EX_PC_sig[3] -attr @rip(#000000) 2 -pin EX_PC_sig_reg[3] Q -pin MEM_PC_sig[3]_i_1 I0 -pin console_display EX_PC_sig_reg[15][2]
load net MEM_OP_sig[1]_i_1_n_0 -pin MEM_OP_sig[1]_i_1 O -pin MEM_OP_sig_reg[1] D
netloc MEM_OP_sig[1]_i_1_n_0 1 14 1 6350
load net console_display_n_63 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_6 -pin console_display EX_MEM_RW_data_Out_reg[11]_1
netloc console_display_n_63 1 16 1 12510
load net EX_MEM_MEM_din_Out[11]_i_1_n_0 -pin EX_MEM_MEM_din_Out[11]_i_1 O -pin EX_MEM_MEM_din_Out_reg[11] D
netloc EX_MEM_MEM_din_Out[11]_i_1_n_0 1 13 1 N
load net console_display_n_64 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_5 -pin console_display EX_MEM_RW_data_Out_reg[10]
netloc console_display_n_64 1 16 1 12410
load net EX_MEM_MEM_din_Out[2] -attr @rip(#000000) 2 -pin EX_MEM_MEM_din_Out_reg[2] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][2] -pin console_display EX_MEM_MEM_din_Out_reg[15][2]
load net console_display_n_65 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_4 -pin console_display EX_MEM_RW_data_Out_reg[9]
netloc console_display_n_65 1 16 1 13310
load net console_display_n_66 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_3 -pin console_display EX_MEM_RW_data_Out_reg[8]_0
netloc console_display_n_66 1 16 1 13270
load net console_display_n_67 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_14 -pin console_display EX_MEM_RW_data_Out_reg[7]
netloc console_display_n_67 1 16 1 11910
load net console_display_n_68 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_2 -pin console_display EX_MEM_RW_data_Out_reg[5]
netloc console_display_n_68 1 16 1 12790
load net MEM_OP_sig[11]_i_1_n_0 -pin MEM_OP_sig[11]_i_1 O -pin MEM_OP_sig_reg[11] D
netloc MEM_OP_sig[11]_i_1_n_0 1 14 1 6690
load net console_display_n_69 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_12 -pin console_display EX_MEM_RW_data_Out_reg[4]_0
netloc console_display_n_69 1 16 1 12490
load net ID_EX_RA_data_Out[2] -attr @rip(#000000) 2 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][2] -pin ID_EX_RA_data_Out_reg[2] Q -pin console_display ID_EX_RA_data_Out_reg[15][2]
load net ROM_douta[6] -attr @rip(#000000) douta[6] -pin RAM_inst douta[6] -pin ROM_inst douta[6]
load net s3_reg_a[2] -attr @rip(#000000) 0 -pin EX_OP_sig_reg[8] Q -pin MEM_OP_sig[8]_i_1 I0 -pin console_display EX_OP_sig_reg[15][0]
load net ID_EX_RB_data_Out[7] -attr @rip(#000000) 7 -pin EX_MEM_MEM_din_Out[7]_i_1 I0 -pin ExecuteStage Q[7] -pin ID_EX_RB_data_Out_reg[7] Q -pin console_display ID_EX_RB_data_Out_reg[15][7]
load net ID_PC_sig[1] -attr @rip(#000000) D[0] -pin FetchStage D[0] -pin ID_PC_sig_reg[1] D
load net EX_MEM_BR_addr_Out[10]_i_1_n_0 -pin EX_MEM_BR_addr_Out[10]_i_1 O -pin EX_MEM_BR_addr_Out_reg[10] D
netloc EX_MEM_BR_addr_Out[10]_i_1_n_0 1 4 1 N
load net console_display_n_50 -pin ExecuteStage ID_EX_ALU_op_Out_reg[0]_1 -pin console_display EX_MEM_RW_data_Out_reg[0]
netloc console_display_n_50 1 16 1 11790
load net PC[10] -pin Decoder ID_PC_sig_reg[15][8] -pin EX_PC_sig[10]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_1 I5 -pin ID_EX_BR_sub_PC_Out[11]_i_2 I4 -pin ID_EX_BR_sub_PC_Out[15]_i_2 I0 -pin ID_PC_sig_reg[10] Q -pin console_display ID_PC_sig_reg[15][9]
load net console_display_n_51 -pin ExecuteStage ID_EX_ALU_op_Out_reg[0]_2 -pin console_display EX_MEM_RW_data_Out_reg[15]_2
netloc console_display_n_51 1 16 1 12390
load net W_data[14] -attr @rip(#000000) 14 -pin MEM_WB_RW_data_Out_reg[14] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][14]
load net ID_EX_BR_addr_Out[15]_i_5_n_0 -pin Decoder ID_OP_sig_reg[10] -pin ExecuteStage ID_OP_sig_reg[10] -pin ID_EX_BR_addr_Out[15]_i_5 O -pin ID_EX_BR_addr_Out[6]_i_5 I0 -pin ID_EX_BR_addr_Out[7]_i_4 I1 -pin ID_EX_BR_addr_Out[8]_i_4 I1 -pin ID_EX_BR_addr_Out[9]_i_4 I1
netloc ID_EX_BR_addr_Out[15]_i_5_n_0 1 15 4 7280 9890 14070 8990 17210 8940 18580
load net EX_OP_sig_reg_n_0_[10] -attr @rip(#000000) 2 -pin EX_OP_sig_reg[10] Q -pin MEM_OP_sig[10]_i_1 I0 -pin console_display EX_OP_sig_reg[15][2]
load net Output_sig -pin Data_Out_reg D -pin Decoder Output_sig -pin console_display Output_sig
netloc Output_sig 1 15 5 8840 10370 NJ 10370 NJ 10370 NJ 10370 20760
load net console_display_n_52 -pin ExecuteStage ID_EX_RA_data_Out_reg[10]_0 -pin console_display EX_MEM_RW_data_Out_reg[11]
netloc console_display_n_52 1 16 1 12970
load net console_display_n_53 -pin ExecuteStage ID_EX_ALU_op_Out_reg[0] -pin console_display EX_MEM_RW_data_Out_reg[14]_0
netloc console_display_n_53 1 16 1 12230
load net Switch_In[6] -attr @rip(#000000) Switch_In[6] -port Switch_In[6] -pin Switch_In_IBUF[6]_inst I
load net console_display_n_54 -pin ExecuteStage ID_EX_RB_data_Out_reg[8] -pin console_display EX_MEM_RW_data_Out_reg[11]_0
netloc console_display_n_54 1 16 1 12590
load net Data_Out_OBUF -pin Data_Out_OBUF_inst I -pin Data_Out_reg Q
netloc Data_Out_OBUF 1 20 1 NJ
load net EX_MEM_MEM_din_Out[1] -attr @rip(#000000) 1 -pin EX_MEM_MEM_din_Out_reg[1] Q -pin RAM_inst EX_MEM_MEM_din_Out_reg[15][1] -pin console_display EX_MEM_MEM_din_Out_reg[15][1]
load net console_display_n_55 -pin ExecuteStage ID_EX_ALU_op_Out_reg[2]_2 -pin console_display EX_MEM_RW_data_Out_reg[8]
netloc console_display_n_55 1 16 1 12010
load net EX_MEM_MEM_din_Out[4]_i_1_n_0 -pin EX_MEM_MEM_din_Out[4]_i_1 O -pin EX_MEM_MEM_din_Out_reg[4] D
netloc EX_MEM_MEM_din_Out[4]_i_1_n_0 1 13 1 N
load net console_display_n_56 -pin ExecuteStage ID_EX_ALU_op_Out_reg[2]_3 -pin console_display EX_MEM_RW_data_Out_reg[4]
netloc console_display_n_56 1 16 1 11810
load net console_display_n_57 -pin ExecuteStage ID_EX_ALU_op_Out_reg[2]_1 -pin console_display EX_MEM_RW_data_Out_reg[13]
netloc console_display_n_57 1 16 1 11590
load net console_display_n_58 -pin ExecuteStage ID_EX_ALU_op_Out_reg[2]_0 -pin console_display EX_MEM_RW_data_Out_reg[13]_0
netloc console_display_n_58 1 16 1 11510
load net console_display_n_59 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_13 -pin console_display EX_MEM_RW_data_Out_reg[6]
netloc console_display_n_59 1 16 1 12290
load net ID_EX_BR_sub_PC_Out[10]_i_2_n_0 -pin ID_EX_BR_sub_PC_Out[10]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[10]_i_2 O -pin ID_EX_BR_sub_PC_Out[11]_i_2 I2 -pin ID_EX_BR_sub_PC_Out[15]_i_2 I2 -pin ID_EX_BR_sub_PC_Out[7]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[8]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[9]_i_1 I2
netloc ID_EX_BR_sub_PC_Out[10]_i_2_n_0 1 12 3 4630 11300 5270 12710 6170
load net ROM_douta[5] -attr @rip(#000000) douta[5] -pin RAM_inst douta[5] -pin ROM_inst douta[5]
load net ID_EX_RB_data_Out[8] -attr @rip(#000000) 8 -pin EX_MEM_MEM_din_Out[8]_i_1 I0 -pin ExecuteStage Q[8] -pin ID_EX_RB_data_Out_reg[8] Q -pin console_display ID_EX_RB_data_Out_reg[15][8]
load net ID_EX_BR_sub_PC_Out[3]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[3]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[3] D
netloc ID_EX_BR_sub_PC_Out[3]_i_1_n_0 1 15 1 7280
load net console_display_n_40 -pin Decoder ID_OP_sig_reg[8]_1 -pin console_display ID_EX_RA_data_Out_reg[2]
netloc console_display_n_40 1 16 3 11570 7620 NJ 7620 18120J
load net console_display_n_41 -pin Decoder ID_OP_sig_reg[7]_0 -pin console_display ID_EX_BR_addr_Out_reg[1]_0
netloc console_display_n_41 1 16 3 13610 7580 NJ 7580 18260J
load net RAM_doutb[10] -attr @rip(#000000) doutb[10] -pin RAM_inst doutb[10] -pin ROM_inst doutb[10] -pin console_display doutb[1]
load net console_display_n_42 -pin Decoder ID_OP_sig_reg[9] -pin console_display Data_Out_reg
netloc console_display_n_42 1 16 3 11530 7640 NJ 7640 18240J
load net ID_EX_L_imm_In[0] -attr @rip(#000000) 0 -pin Decoder ID_OP_sig_reg[11][0] -pin EX_OP_sig[0]_i_1 I0 -pin ID_EX_Shiftamt_Out[0]_i_1 I5 -pin ID_OP_sig_reg[0] Q -pin console_display ID_OP_sig_reg[15][0]
load net EX_PC_sig[1] -attr @rip(#000000) 0 -pin EX_PC_sig_reg[1] Q -pin MEM_PC_sig[1]_i_1 I0 -pin console_display EX_PC_sig_reg[15][0]
load net console_display_n_43 -pin ID_EX_IN_En_Out_i_1 I0 -pin console_display ID_EX_IN_En_Out_reg
netloc console_display_n_43 1 13 4 5750 10050 6570J 10140 7960J 10210 11470
load net ID_EX_RA_data_Out[9] -attr @rip(#000000) 9 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][9] -pin ID_EX_RA_data_Out_reg[9] Q -pin console_display ID_EX_RA_data_Out_reg[15][9]
load net EX_OP_sig[10]_i_1_n_0 -pin EX_OP_sig[10]_i_1 O -pin EX_OP_sig_reg[10] D
netloc EX_OP_sig[10]_i_1_n_0 1 12 1 N
load net console_display_n_44 -pin ExecuteStage EX_OP_sig_reg[7] -pin console_display EX_MEM_RW_data_Out_reg[15]
netloc console_display_n_44 1 16 1 12250
load net EX_MEM_BR_addr_Out[13]_i_1_n_0 -pin EX_MEM_BR_addr_Out[13]_i_1 O -pin EX_MEM_BR_addr_Out_reg[13] D
netloc EX_MEM_BR_addr_Out[13]_i_1_n_0 1 4 1 1080
load net console_display_n_45 -pin ExecuteStage ID_EX_IN_En_Out_reg_0 -pin console_display EX_MEM_RW_data_Out_reg[15]_0
netloc console_display_n_45 1 16 1 12850
load net Switch_In[7] -attr @rip(#000000) Switch_In[7] -port Switch_In[7] -pin Switch_In_IBUF[7]_inst I
load net console_display_n_46 -pin ExecuteStage EX_OP_sig_reg[6] -pin console_display EX_MEM_RW_data_Out_reg[14]
netloc console_display_n_46 1 16 1 12170
load net console_display_n_47 -pin ExecuteStage ID_EX_L_op_Out_reg[1] -pin console_display EX_MEM_RW_data_Out_reg[12]
netloc console_display_n_47 1 16 1 12430
load net EX_OP_sig_reg_n_0_[15] -attr @rip(#000000) 7 -pin EX_OP_sig_reg[15] Q -pin MEM_OP_sig[15]_i_1 I0 -pin console_display EX_OP_sig_reg[15][7]
load net console_display_n_48 -pin ExecuteStage ID_EX_L_op_Out_reg[1]_0 -pin console_display EX_MEM_RW_data_Out_reg[15]_1
netloc console_display_n_48 1 16 1 11470
load net console_display_n_49 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_11 -pin console_display EX_MEM_RW_data_Out_reg[2]
netloc console_display_n_49 1 16 1 12770
load net ROM_douta[8] -attr @rip(#000000) douta[8] -pin RAM_inst douta[8] -pin ROM_inst douta[8]
load net display_address[7] -attr @rip(#000000) D[7] -pin console_display D[7] -pin main_buffer_reg_i_18 D
load net ID_EX_BR_sub_PC_Out[9]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[9]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[9] D
netloc ID_EX_BR_sub_PC_Out[9]_i_1_n_0 1 15 1 N
load net ID_EX_RB_data_Out[9] -attr @rip(#000000) 9 -pin EX_MEM_MEM_din_Out[9]_i_1 I0 -pin ExecuteStage Q[9] -pin ID_EX_RB_data_Out_reg[9] Q -pin console_display ID_EX_RB_data_Out_reg[15][9]
load net ID_EX_RA_data_Out[8] -attr @rip(#000000) 8 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][8] -pin ID_EX_RA_data_Out_reg[8] Q -pin console_display ID_EX_RA_data_Out_reg[15][8]
load net ID_PC_sig[3] -attr @rip(#000000) D[2] -pin FetchStage D[2] -pin ID_PC_sig_reg[3] D
load net s3_reg_a[1] -attr @rip(#000000) 1 -pin EX_OP_sig_reg[7] Q -pin ExecuteStage s3_reg_a[1] -pin MEM_OP_sig[7]_i_1 I0 -pin console_display s3_reg_a[1]
load net RAM_doutb[11] -attr @rip(#000000) doutb[11] -pin RAM_inst doutb[11] -pin ROM_inst doutb[11] -pin console_display doutb[2]
load net ID_EX_ALU_op_Out[2]_i_2_n_0 -pin ID_EX_ALU_op_Out[2]_i_1 I0 -pin ID_EX_ALU_op_Out[2]_i_2 O
netloc ID_EX_ALU_op_Out[2]_i_2_n_0 1 13 1 5390
load net MEM_PC_sig[1] -attr @rip(#000000) 0 -pin MEM_PC_sig_reg[1] Q -pin console_display MEM_PC_sig_reg[15][0]
load net EX_OP_sig[1]_i_1_n_0 -pin EX_OP_sig[1]_i_1 O -pin EX_OP_sig_reg[1] D
netloc EX_OP_sig[1]_i_1_n_0 1 12 1 N
load net Switch_In[8] -attr @rip(#000000) Switch_In[8] -port Switch_In[8] -pin Switch_In_IBUF[8]_inst I
load net ID_EX_BR_addr_Out[8] -attr @rip(#000000) 8 -pin EX_MEM_BR_addr_Out[8]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[8] Q -pin console_display ID_EX_BR_addr_Out_reg[15][8]
load net EX_PC_sig[12]_i_1_n_0 -pin EX_PC_sig[12]_i_1 O -pin EX_PC_sig_reg[12] D
netloc EX_PC_sig[12]_i_1_n_0 1 12 1 4710
load net EX_MEM_L_op_Out[0] -attr @rip(#000000) 0 -pin EX_MEM_L_op_Out_reg[0] Q -pin MEM_WB_L_op_Out_reg[0] D -pin RAM_inst EX_MEM_L_op_Out_reg[2][0]
load net ROM_douta[7] -attr @rip(#000000) douta[7] -pin RAM_inst douta[7] -pin ROM_inst douta[7]
load net display_address[6] -attr @rip(#000000) D[6] -pin console_display D[6] -pin main_buffer_reg_i_19 D
load net ID_PC_sig[2] -attr @rip(#000000) D[1] -pin FetchStage D[1] -pin ID_PC_sig_reg[2] D
load net ID_EX_RA_data_Out[7] -attr @rip(#000000) 7 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][7] -pin ID_EX_RA_data_Out_reg[7] Q -pin console_display ID_EX_RA_data_Out_reg[15][7]
load net s3_reg_a[0] -attr @rip(#000000) 0 -pin EX_OP_sig_reg[6] Q -pin ExecuteStage s3_reg_a[0] -pin MEM_OP_sig[6]_i_1 I0 -pin console_display s3_reg_a[0]
load net EX_OP_sig[7]_i_1_n_0 -pin EX_OP_sig[7]_i_1 O -pin EX_OP_sig_reg[7] D
netloc EX_OP_sig[7]_i_1_n_0 1 12 1 4930
load net ID_EX_BR_sub_PC_Out[8]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[8]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[8] D
netloc ID_EX_BR_sub_PC_Out[8]_i_1_n_0 1 15 1 N
load net Switch_In[14] -attr @rip(#000000) Switch_In[14] -port Switch_In[14] -pin Switch_In_IBUF[14]_inst I
load net ID_EX_RW_En_Out_i_2_n_0 -pin ID_EX_RW_En_Out_i_1 I0 -pin ID_EX_RW_En_Out_i_2 O
netloc ID_EX_RW_En_Out_i_2_n_0 1 9 1 3390
load net RAM_doutb[12] -attr @rip(#000000) doutb[12] -pin RAM_inst doutb[12] -pin ROM_inst doutb[12] -pin console_display doutb[3]
load net ID_EX_L_imm_In[2] -attr @rip(#000000) 2 -pin Decoder ID_OP_sig_reg[11][2] -pin EX_OP_sig[2]_i_1 I0 -pin ID_EX_BR_addr_Out[3]_i_3 I0 -pin ID_EX_Shiftamt_Out[2]_i_1 I5 -pin ID_OP_sig_reg[2] Q -pin console_display ID_OP_sig_reg[15][2]
load net EX_OP_sig_reg_n_0_[13] -attr @rip(#000000) 5 -pin EX_OP_sig_reg[13] Q -pin MEM_OP_sig[13]_i_1 I0 -pin console_display EX_OP_sig_reg[15][5]
load net Switch_In[9] -attr @rip(#000000) Switch_In[9] -port Switch_In[9] -pin Switch_In_IBUF[9]_inst I
load net ID_EX_BR_addr_Out[9] -attr @rip(#000000) 9 -pin EX_MEM_BR_addr_Out[9]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[9] Q -pin console_display ID_EX_BR_addr_Out_reg[15][9]
load net EX_MEM_L_op_Out[1] -attr @rip(#000000) 1 -pin EX_MEM_L_op_Out_reg[1] Q -pin MEM_WB_L_op_Out_reg[1] D -pin RAM_inst EX_MEM_L_op_Out_reg[2][1]
load net ID_EX_RA_data_Out[6] -attr @rip(#000000) 6 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][6] -pin ID_EX_RA_data_Out_reg[6] Q -pin console_display ID_EX_RA_data_Out_reg[15][6]
load net debug_console -port debug_console -pin debug_console_IBUF_inst I
netloc debug_console 1 0 15 NJ 4260 NJ 4260 NJ 4260 760J 4200 NJ 4200 NJ 4200 NJ 4200 NJ 4200 NJ 4200 NJ 4200 NJ 4200 NJ 4200 NJ 4200 5270J 4630 6470J
load net EX_PC_sig[10]_i_1_n_0 -pin EX_PC_sig[10]_i_1 O -pin EX_PC_sig_reg[10] D
netloc EX_PC_sig[10]_i_1_n_0 1 12 1 4750
load net Data_Out -port Data_Out -pin Data_Out_OBUF_inst O
netloc Data_Out 1 21 1 NJ
load net ID_EX_L_imm_In[1] -attr @rip(#000000) 1 -pin Decoder ID_OP_sig_reg[11][1] -pin EX_OP_sig[1]_i_1 I0 -pin ID_EX_BR_addr_Out[2]_i_3 I0 -pin ID_EX_Shiftamt_Out[1]_i_1 I5 -pin ID_OP_sig_reg[1] Q -pin console_display ID_OP_sig_reg[15][1]
load net ID_EX_BR_sub_PC_Out_reg_n_0_[13] -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][11] -pin ID_EX_BR_sub_PC_Out_reg[13] Q -pin console_display ID_EX_BR_sub_PC_Out_reg[15][1]
load net console_display_n_90 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_0 -pin console_display EX_MEM_RW_data_Out_reg[1]_0
netloc console_display_n_90 1 16 1 12410
load net FetchStage_n_22 -pin FetchStage PC_reg[12]_0 -pin ROM_inst ID_EX_L_op_Out_reg[1]
netloc FetchStage_n_22 1 6 1 2360
load net debug_buffer[548]_0[5] -attr @rip(#000000) debug_buffer[548]_1[3] -pin ExecuteStage debug_buffer[548]_1[3] -pin console_display debug_buffer[548]_1[3]
load net RAM_doutb[13] -attr @rip(#000000) doutb[13] -pin RAM_inst doutb[13] -pin ROM_inst doutb[13] -pin console_display doutb[4]
load net s3_reg_b[0] -attr @rip(#000000) 0 -pin EX_OP_sig_reg[3] Q -pin ExecuteStage s3_reg_b[0] -pin MEM_OP_sig[3]_i_1 I0 -pin console_display s3_reg_b[0]
load net console_display_n_91 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_8 -pin console_display EX_MEM_RW_data_Out_reg[13]_2
netloc console_display_n_91 1 16 1 13530
load net FetchStage_n_23 -pin FetchStage ID_EX_L_op_Out_reg[2] -pin ID_EX_ALU_op_Out[0]_i_1 I3 -pin ID_EX_ALU_op_Out[1]_i_1 I3 -pin ID_EX_L_op_Out[1]_i_2 I0 -pin ID_EX_L_op_Out[2]_i_1 I1 -pin console_display ID_OP_sig_reg[15]_0
netloc FetchStage_n_23 1 6 10 2280 5730 NJ 5730 3050 7500 3430 8160 NJ 8160 4190J 8190 4710J 8360 5630 5670 6190J 5730 7980J
load net console_display_n_92 -pin ExecuteStage ID_EX_RB_data_Out_reg[6]_0 -pin console_display EX_MEM_RW_data_Out_reg[6]_0
netloc console_display_n_92 1 16 1 12470
load net FetchStage_n_24 -pin FetchStage vga_red_reg[3]_10 -pin console_display PC_reg[13]
netloc FetchStage_n_24 1 6 10 NJ 3430 NJ 3430 NJ 3430 NJ 3430 NJ 3430 NJ 3430 NJ 3430 NJ 3430 NJ 3430 8260
load net ID_EX_L_op_Out[1]_i_1_n_0 -pin ID_EX_L_op_Out[1]_i_1 O -pin ID_EX_L_op_Out_reg[1] D
netloc ID_EX_L_op_Out[1]_i_1_n_0 1 10 1 N
load net EX_OP_sig_reg_n_0_[14] -attr @rip(#000000) 6 -pin EX_OP_sig_reg[14] Q -pin MEM_OP_sig[14]_i_1 I0 -pin console_display EX_OP_sig_reg[15][6]
load net console_display_n_93 -pin ExecuteStage ID_EX_RB_data_Out_reg[12] -pin console_display EX_MEM_RW_data_Out_reg[12]_3
netloc console_display_n_93 1 16 1 13350
load net console_display_n_94 -pin ExecuteStage ID_EX_RA_data_Out_reg[12] -pin console_display EX_MEM_RW_data_Out_reg[13]_3
netloc console_display_n_94 1 16 1 11570
load net MEM_OP_sig[9] -attr @rip(#000000) 9 -pin MEM_OP_sig_reg[9] Q -pin console_display MEM_OP_sig_reg[15][9]
load net console_display_n_95 -pin ExecuteStage ID_EX_RA_data_Out_reg[5]_0 -pin console_display EX_MEM_RW_data_Out_reg[5]_0
netloc console_display_n_95 1 16 1 12290
load net EX_OP_sig[5]_i_1_n_0 -pin EX_OP_sig[5]_i_1 O -pin EX_OP_sig_reg[5] D
netloc EX_OP_sig[5]_i_1_n_0 1 12 1 4630
load net console_display_n_96 -pin ExecuteStage ID_EX_RA_data_Out_reg[9] -pin console_display EX_MEM_RW_data_Out_reg[9]_0
netloc console_display_n_96 1 16 1 12450
load net console_display_n_97 -pin ExecuteStage ID_EX_RA_data_Out_reg[7]_0 -pin console_display EX_MEM_RW_data_Out_reg[7]_1
netloc console_display_n_97 1 16 1 12370
load net console_display_n_98 -pin ExecuteStage ID_EX_RA_data_Out_reg[3]_0 -pin console_display EX_MEM_RW_data_Out_reg[3]_0
netloc console_display_n_98 1 16 1 12190
load net EX_OP_sig[12]_i_1_n_0 -pin EX_OP_sig[12]_i_1 O -pin EX_OP_sig_reg[12] D
netloc EX_OP_sig[12]_i_1_n_0 1 12 1 N
load net console_display_n_99 -pin ExecuteStage ID_EX_IN_En_Out_reg_2 -pin console_display EX_MEM_RW_data_Out_reg[6]_1
netloc console_display_n_99 1 16 1 12210
load net Decoder_n_40 -pin Decoder vga_red_reg[3]_32 -pin console_display display_address_reg[2]_rep_4
netloc Decoder_n_40 1 15 5 9000 9530 11570J 9650 16810J 9850 NJ 9850 20560
load net EX_MEM_BR_CTRL_Out_reg_n_0 -pin Decoder EX_MEM_BR_CTRL_Out_reg -pin EX_MEM_BR_CTRL_Out_reg Q -pin EX_MEM_BR_addr_Out[10]_i_1 I1 -pin EX_MEM_BR_addr_Out[11]_i_1 I1 -pin EX_MEM_BR_addr_Out[12]_i_1 I1 -pin EX_MEM_BR_addr_Out[13]_i_1 I1 -pin EX_MEM_BR_addr_Out[14]_i_1 I1 -pin EX_MEM_BR_addr_Out[15]_i_1 I1 -pin EX_OP_sig[0]_i_1 I1 -pin EX_OP_sig[10]_i_1 I1 -pin EX_OP_sig[11]_i_1 I1 -pin EX_OP_sig[12]_i_1 I1 -pin EX_OP_sig[13]_i_1 I1 -pin EX_OP_sig[14]_i_1 I1 -pin EX_OP_sig[15]_i_1 I1 -pin EX_OP_sig[1]_i_1 I1 -pin EX_OP_sig[2]_i_1 I1 -pin EX_OP_sig[3]_i_1 I1 -pin EX_OP_sig[4]_i_1 I1 -pin EX_OP_sig[5]_i_1 I1 -pin EX_OP_sig[6]_i_1 I1 -pin EX_OP_sig[7]_i_1 I1 -pin EX_OP_sig[8]_i_1 I1 -pin EX_OP_sig[9]_i_1 I1 -pin EX_PC_sig[10]_i_1 I1 -pin EX_PC_sig[11]_i_1 I1 -pin EX_PC_sig[12]_i_1 I1 -pin EX_PC_sig[13]_i_1 I1 -pin EX_PC_sig[14]_i_1 I1 -pin EX_PC_sig[15]_i_1 I1 -pin EX_PC_sig[1]_i_1 I1 -pin EX_PC_sig[2]_i_1 I1 -pin EX_PC_sig[3]_i_1 I1 -pin EX_PC_sig[4]_i_1 I1 -pin EX_PC_sig[5]_i_1 I1 -pin EX_PC_sig[6]_i_1 I1 -pin EX_PC_sig[7]_i_1 I1 -pin EX_PC_sig[8]_i_1 I1 -pin EX_PC_sig[9]_i_1 I1 -pin ExecuteStage EX_MEM_BR_CTRL_Out_reg -pin FetchStage EX_MEM_BR_CTRL_Out_reg -pin ID_EX_ALU_op_Out[0]_i_1 I0 -pin ID_EX_ALU_op_Out[1]_i_1 I0 -pin ID_EX_ALU_op_Out[2]_i_1 I3 -pin ID_EX_BR_En_Out_i_1 I5 -pin ID_EX_BR_sub_PC_Out[10]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[11]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[12]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[13]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[14]_i_1 I4 -pin ID_EX_BR_sub_PC_Out[15]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[1]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[2]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[3]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[4]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[5]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[6]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[7]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[8]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[9]_i_1 I0 -pin ID_EX_IN_En_Out_i_1 I4 -pin ID_EX_L_op_Out[1]_i_2 I4 -pin ID_EX_L_op_Out[2]_i_1 I5 -pin ID_EX_RW_En_Out_i_1 I2 -pin ID_EX_Shiftamt_Out[3]_i_2 I2 -pin ROM_inst EX_MEM_BR_CTRL_Out_reg
netloc EX_MEM_BR_CTRL_Out_reg_n_0 1 3 16 820 4300 1140J 4220 1550 5290 2260 5450 NJ 5450 3070 7520 3410 8140 NJ 8140 4150 9890 4750 9680 5690 10500 6350 10510 7280J 10820 13630 7420 16690J 6900 17560
load net vga_green[2] -attr @rip(#000000) 2 -port vga_green[2] -pin vga_green_OBUF[2]_inst O
load net Decoder_n_41 -pin Decoder vga_red_reg[3]_33 -pin console_display display_address_reg[2]_rep_6
netloc Decoder_n_41 1 15 5 9020 9750 NJ 9750 16790J 9870 NJ 9870 20540
load net ROM_douta[9] -attr @rip(#000000) douta[9] -pin RAM_inst douta[9] -pin ROM_inst douta[9] -pin console_display douta[0]
load net Decoder_n_42 -pin Decoder vga_red_reg[3]_34 -pin console_display display_address_reg[2]_rep_11
netloc Decoder_n_42 1 15 5 9080 9770 NJ 9770 16770J 9890 NJ 9890 20520
load net display_address[8] -attr @rip(#000000) D[8] -pin console_display D[8] -pin main_buffer_reg_i_17 D
load net Decoder_n_43 -pin Decoder vga_red_reg[3]_35 -pin console_display display_address_reg[2]_rep_12
netloc Decoder_n_43 1 15 5 9100 9790 NJ 9790 16750J 9910 NJ 9910 20500
load net Decoder_n_44 -pin Decoder vga_red_reg[3]_36 -pin console_display display_address_reg[2]_rep_9
netloc Decoder_n_44 1 15 5 9040 9810 NJ 9810 15530J 9930 NJ 9930 20480
load net ID_EX_BR_sub_PC_Out_reg_n_0_[12] -attr @rip(#000000) 0 -pin ID_EX_BR_sub_PC_Out_reg[12] Q -pin console_display ID_EX_BR_sub_PC_Out_reg[15][0]
load net console_display_n_80 -pin ExecuteStage ID_EX_RB_data_Out_reg[13] -pin console_display EX_MEM_RW_data_Out_reg[15]_6
netloc console_display_n_80 1 16 1 12670
load net console_display_n_81 -pin ExecuteStage ID_EX_RA_data_Out_reg[1] -pin console_display EX_MEM_RW_data_Out_reg[2]_0
netloc console_display_n_81 1 16 1 12090
load net console_display_n_82 -pin ExecuteStage ID_EX_RA_data_Out_reg[0]_0 -pin console_display EX_MEM_RW_data_Out_reg[1]
netloc console_display_n_82 1 16 1 12050
load net Decoder_n_47 -pin Decoder vga_red_reg[3]_37 -pin console_display reg_file_reg[5][4]
netloc Decoder_n_47 1 15 5 9720 10310 NJ 10310 NJ 10310 NJ 10310 20720
load net RAM_doutb[14] -attr @rip(#000000) doutb[14] -pin RAM_inst doutb[14] -pin ROM_inst doutb[14] -pin console_display doutb[5]
load net console_display_n_83 -pin ExecuteStage PMOD_In[1] -pin console_display EX_MEM_RW_data_Out_reg[7]_0
netloc console_display_n_83 1 16 1 11770
load net Decoder_n_48 -pin Decoder vga_red_reg[3]_38 -pin console_display reg_file_reg[5][6]_0
netloc Decoder_n_48 1 15 5 9800 10290 NJ 10290 NJ 10290 NJ 10290 20640
load net ID_EX_BR_addr_Out[3]_i_3_n_0 -pin Decoder ID_OP_sig_reg[2]_0 -pin ID_EX_BR_addr_Out[3]_i_3 O
netloc ID_EX_BR_addr_Out[3]_i_3_n_0 1 18 1 18040
load net EX_MEM_MEM_din_Out[0]_i_1_n_0 -pin EX_MEM_MEM_din_Out[0]_i_1 O -pin EX_MEM_MEM_din_Out_reg[0] D
netloc EX_MEM_MEM_din_Out[0]_i_1_n_0 1 13 1 5450
load net console_display_n_84 -pin ExecuteStage PMOD_In[2] -pin console_display EX_MEM_RW_data_Out_reg[8]_1
netloc console_display_n_84 1 16 1 13730
load net Decoder_n_49 -pin Decoder vga_red_reg[3]_39 -pin console_display display_address_reg[1]_4
netloc Decoder_n_49 1 15 5 8980 9370 11730J 9610 16830J 9810 NJ 9810 19960
load net MEM_OP_sig[8] -attr @rip(#000000) 8 -pin MEM_OP_sig_reg[8] Q -pin console_display MEM_OP_sig_reg[15][8]
load net console_display_n_85 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[2] -pin console_display EX_MEM_RW_data_Out_reg[15]_7
netloc console_display_n_85 1 16 1 12870
load net console_display_n_86 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_9 -pin console_display EX_MEM_RW_data_Out_reg[15]_8
netloc console_display_n_86 1 16 1 12830
load net EX_PC_sig[15] -attr @rip(#000000) 14 -pin EX_PC_sig_reg[15] Q -pin MEM_PC_sig[15]_i_1 I0 -pin console_display EX_PC_sig_reg[15][14]
load net console_display_n_87 -pin ExecuteStage EX_OP_sig_reg[3] -pin console_display EX_MEM_RW_data_Out_reg[11]_2
netloc console_display_n_87 1 16 1 11990
load net console_display_n_88 -pin ExecuteStage ID_EX_RA_data_Out_reg[13]_1 -pin console_display EX_MEM_RW_data_Out_reg[13]_1
netloc console_display_n_88 1 16 1 11690
load net display_address[3] -attr @rip(#000000) D[3] -pin console_display D[3] -pin main_buffer_reg_i_22 D
load net console_display_n_89 -pin ExecuteStage ID_EX_RA_data_Out_reg[15]_0 -pin console_display EX_MEM_RW_data_Out_reg[15]_9
netloc console_display_n_89 1 16 1 11610
load net vga_green[1] -attr @rip(#000000) 1 -port vga_green[1] -pin vga_green_OBUF[1]_inst O
load net Decoder_n_50 -pin Decoder vga_red_reg[3]_40 -pin console_display display_address_reg[3]_1
netloc Decoder_n_50 1 15 5 9120 9830 NJ 9830 15370J 9950 NJ 9950 20180
load net Decoder_n_51 -pin Decoder vga_red_reg[3]_41 -pin console_display display_address_reg[3]_2
netloc Decoder_n_51 1 15 5 9140 10090 NJ 10090 NJ 10090 NJ 10090 20160
load net Decoder_n_52 -pin Decoder vga_red_reg[3]_42 -pin console_display display_address_reg[3]_9
netloc Decoder_n_52 1 15 5 9220 10110 NJ 10110 NJ 10110 NJ 10110 20140
load net ID_EX_BR_Op_Out[1]_i_1_n_0 -pin ID_EX_BR_Op_Out[1]_i_1 O -pin ID_EX_BR_Op_Out_reg[1] D
netloc ID_EX_BR_Op_Out[1]_i_1_n_0 1 14 1 N
load net Decoder_n_53 -pin Decoder vga_red_reg[3]_43 -pin console_display display_address_reg[3]_5
netloc Decoder_n_53 1 15 5 9160 10130 NJ 10130 NJ 10130 NJ 10130 20120
load net debug_buffer[548]_0[3] -attr @rip(#000000) debug_buffer[548]_1[1] -pin ExecuteStage debug_buffer[548]_1[1] -pin console_display debug_buffer[548]_1[1]
load net main_buffer_reg_i_17_n_0 -pin console_display main_buffer_reg_i_17 -pin main_buffer_reg_i_17 Q
netloc main_buffer_reg_i_17_n_0 1 15 1 7300
load net Decoder_n_54 -pin Decoder vga_red_reg[3]_44 -pin console_display display_address_reg[3]_10
netloc Decoder_n_54 1 15 5 9180 10150 NJ 10150 NJ 10150 NJ 10150 20100
load net EX_OP_sig[6]_i_1_n_0 -pin EX_OP_sig[6]_i_1 O -pin EX_OP_sig_reg[6] D
netloc EX_OP_sig[6]_i_1_n_0 1 12 1 4710
load net Decoder_n_55 -pin Decoder vga_red_reg[3]_45 -pin console_display display_address_reg[3]_11
netloc Decoder_n_55 1 15 5 9200 10170 NJ 10170 NJ 10170 NJ 10170 20080
load net board_clock_IBUF_BUFG -pin board_clock_IBUF_BUFG_inst O -pin console_display board_clock_IBUF_BUFG
netloc board_clock_IBUF_BUFG 1 15 1 8100J
load net Decoder_n_56 -pin Decoder vga_red_reg[3]_46 -pin console_display display_address_reg[1]_rep__0_1
netloc Decoder_n_56 1 15 5 8960 9050 12250J 9450 15410J 9630 NJ 9630 19740
load net ID_EX_BR_sub_PC_Out_reg_n_0_[15] -attr @rip(#000000) 2 -pin ID_EX_BR_sub_PC_Out_reg[15] Q -pin console_display ID_EX_BR_sub_PC_Out_reg[15][2]
load net ID_EX_ALU_op_Out[0]_i_1_n_0 -pin ID_EX_ALU_op_Out[0]_i_1 O -pin ID_EX_ALU_op_Out_reg[0] D
netloc ID_EX_ALU_op_Out[0]_i_1_n_0 1 14 1 6330
load net EX_MEM_RW_data_In[14] -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15][5] -pin Decoder EX_MEM_RW_data_In[3] -pin ExecuteStage EX_MEM_RW_data_Out_reg[15][5]
load net Decoder_n_57 -pin Decoder vga_red_reg[3]_47 -pin console_display display_address_reg[0]_rep__1_10
netloc Decoder_n_57 1 15 5 8920 9070 12150J 9470 16970J 9650 NJ 9650 19720
load net RAM_doutb[15] -attr @rip(#000000) doutb[15] -pin RAM_inst doutb[15] -pin ROM_inst doutb[15] -pin console_display doutb[6]
load net EX_MEM_MEM_din_Out[5]_i_1_n_0 -pin EX_MEM_MEM_din_Out[5]_i_1 O -pin EX_MEM_MEM_din_Out_reg[5] D
netloc EX_MEM_MEM_din_Out[5]_i_1_n_0 1 13 1 N
load net MEM_OP_sig[7] -attr @rip(#000000) 7 -pin MEM_OP_sig_reg[7] Q -pin console_display MEM_OP_sig_reg[15][7]
load net Decoder_n_58 -pin Decoder vga_red_reg[3]_48 -pin console_display display_address_reg[0]_rep__1_8
netloc Decoder_n_58 1 15 5 8900 9090 12030J 9490 16950J 9670 NJ 9670 19700
load net EX_MEM_L_op_Out[2]_i_1_n_0 -pin EX_MEM_L_op_Out[2]_i_1 O -pin EX_MEM_L_op_Out_reg[2] D
netloc EX_MEM_L_op_Out[2]_i_1_n_0 1 12 1 4770
load net Decoder_n_59 -pin Decoder vga_red_reg[3]_49 -pin console_display display_address_reg[0]_rep__1_2
netloc Decoder_n_59 1 15 5 8880 9110 11930J 9510 16930J 9690 NJ 9690 19680
load net EX_PC_sig[14] -attr @rip(#000000) 13 -pin EX_PC_sig_reg[14] Q -pin MEM_PC_sig[14]_i_1 I0 -pin console_display EX_PC_sig_reg[15][13]
load net display_address[2] -attr @rip(#000000) D[2] -pin console_display D[2] -pin main_buffer_reg_i_23 D
load net ID_EX_Shiftamt_Out[1]_i_1_n_0 -pin ID_EX_Shiftamt_Out[1]_i_1 O -pin ID_EX_Shiftamt_Out_reg[1] D
netloc ID_EX_Shiftamt_Out[1]_i_1_n_0 1 14 1 6370
load net Decoder_n_20 -pin Decoder vga_red_reg[3]_14 -pin console_display reg_file_reg[0][4]
netloc Decoder_n_20 1 15 5 10440 8370 14150J 7240 16390J 6700 18280J 6540 20120
load net vga_green[0] -attr @rip(#000000) 0 -port vga_green[0] -pin vga_green_OBUF[0]_inst O
load net Decoder_n_21 -pin Decoder vga_red_reg[3]_15 -pin console_display display_address_reg[2]_rep_1
netloc Decoder_n_21 1 15 5 9740 8390 14170J 7260 16410J 6720 18300J 6560 20100
load net board_clock -port board_clock -pin board_clock_IBUF_inst I
netloc board_clock 1 0 14 NJ 4240 NJ 4240 NJ 4240 740J 4180 NJ 4180 NJ 4180 NJ 4180 NJ 4180 NJ 4180 NJ 4180 NJ 4180 NJ 4180 NJ 4180 5330J
load net Decoder_n_22 -pin Decoder vga_red_reg[3]_16 -pin console_display display_address_reg[2]_rep_2
netloc Decoder_n_22 1 15 5 9760 8410 14210J 7280 16430J 6740 18320J 6580 20080
load net EX_OP_sig[3]_i_1_n_0 -pin EX_OP_sig[3]_i_1 O -pin EX_OP_sig_reg[3] D
netloc EX_OP_sig[3]_i_1_n_0 1 12 1 4930
load net ID_EX_BR_addr_Out[15]_i_8_n_0 -pin Decoder ID_OP_sig_reg[9]_1 -pin ExecuteStage ID_OP_sig_reg[9] -pin ID_EX_BR_addr_Out[15]_i_8 O
netloc ID_EX_BR_addr_Out[15]_i_8_n_0 1 16 3 12990 8950 16550J 8960 18520
load net EX_OP_sig[8]_i_1_n_0 -pin EX_OP_sig[8]_i_1 O -pin EX_OP_sig_reg[8] D
netloc EX_OP_sig[8]_i_1_n_0 1 12 1 4950
load net ID_EX_ALU_op_Out_reg_n_0_[2] -attr @rip(#000000) 2 -pin ExecuteStage ID_EX_ALU_op_Out_reg[2][2] -pin ID_EX_ALU_op_Out_reg[2] Q -pin console_display ID_EX_ALU_op_Out_reg[2][2]
load net EX_MEM_MEM_din_Out[3]_i_1_n_0 -pin EX_MEM_MEM_din_Out[3]_i_1 O -pin EX_MEM_MEM_din_Out_reg[3] D
netloc EX_MEM_MEM_din_Out[3]_i_1_n_0 1 13 1 5710
load net Decoder_n_24 -pin Decoder vga_red_reg[3]_17 -pin console_display reg_file_reg[1][4]
netloc Decoder_n_24 1 15 5 10480 8430 14250J 7300 16550J 6760 17900J 6600 20060
load net Decoder_n_25 -pin Decoder vga_red_reg[3]_18 -pin console_display display_address_reg[3]_3
netloc Decoder_n_25 1 15 5 10040 8450 11590J 7320 16570J 6780 17540J 6620 20040
load net Decoder_n_26 -pin Decoder vga_red_reg[3]_19 -pin console_display display_address_reg[1]_1
netloc Decoder_n_26 1 15 5 9320 8470 11710J 7340 16610J 6800 17920J 6640 20020
load net Decoder_n_27 -pin Decoder vga_red_reg[3]_20 -pin console_display display_address_reg[2]_rep_0
netloc Decoder_n_27 1 15 5 9400 8490 14270J 7360 16630J 6820 18340J 6660 20000
load net debug_buffer[548]_0[4] -attr @rip(#000000) debug_buffer[548]_1[2] -pin ExecuteStage debug_buffer[548]_1[2] -pin console_display debug_buffer[548]_1[2]
load net Decoder_n_28 -pin Decoder vga_red_reg[3]_21 -pin console_display display_address_reg[2]_rep_3
netloc Decoder_n_28 1 15 5 9440 8510 14290J 7380 16650J 6840 18360J 6680 19980
load net PC[1] -attr @rip(#000000) 0 -pin Decoder ID_PC_sig_reg[15][0] -pin EX_PC_sig[1]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_2 I2 -pin ID_EX_BR_sub_PC_Out[1]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[2]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[3]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[4]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[5]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[6]_i_2 I2 -pin ID_PC_sig_reg[1] Q -pin console_display ID_PC_sig_reg[15][0]
load net EX_MEM_BR_addr_Out[1]_i_1_n_0 -pin EX_MEM_BR_addr_Out[1]_i_1 O -pin EX_MEM_BR_addr_Out_reg[1] D
netloc EX_MEM_BR_addr_Out[1]_i_1_n_0 1 4 1 N
load net ID_EX_BR_sub_PC_Out_reg_n_0_[14] -attr @rip(#000000) 12 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][12] -pin ID_EX_BR_sub_PC_Out_reg[14] Q
load net MEM_OP_sig[6] -attr @rip(#000000) 6 -pin MEM_OP_sig_reg[6] Q -pin console_display MEM_OP_sig_reg[15][6]
load net Decoder_n_29 -pin Decoder vga_red_reg[3]_22 -pin console_display display_address_reg[2]_rep_5
netloc Decoder_n_29 1 15 5 9640 8530 14310J 7400 16030J 6860 18380J 6700 19960
load net EX_MEM_BR_CTRL_Out_reg_rep_n_0 -pin Decoder EX_MEM_BR_CTRL_Out_reg_rep -pin EX_MEM_BR_CTRL_Out_reg_rep Q -pin EX_MEM_BR_addr_Out[1]_i_1 I1 -pin EX_MEM_BR_addr_Out[2]_i_1 I1 -pin EX_MEM_BR_addr_Out[3]_i_1 I1 -pin EX_MEM_BR_addr_Out[4]_i_1 I1 -pin EX_MEM_BR_addr_Out[5]_i_1 I1 -pin EX_MEM_BR_addr_Out[6]_i_1 I1 -pin EX_MEM_BR_addr_Out[7]_i_1 I1 -pin EX_MEM_BR_addr_Out[8]_i_1 I1 -pin EX_MEM_BR_addr_Out[9]_i_1 I1 -pin EX_MEM_L_op_Out[0]_i_1 I1 -pin EX_MEM_L_op_Out[1]_i_1 I1 -pin EX_MEM_L_op_Out[2]_i_1 I1 -pin EX_MEM_MEM_din_Out[0]_i_1 I1 -pin EX_MEM_MEM_din_Out[10]_i_1 I1 -pin EX_MEM_MEM_din_Out[11]_i_1 I1 -pin EX_MEM_MEM_din_Out[12]_i_1 I1 -pin EX_MEM_MEM_din_Out[13]_i_1 I1 -pin EX_MEM_MEM_din_Out[14]_i_1 I1 -pin EX_MEM_MEM_din_Out[15]_i_1 I1 -pin EX_MEM_MEM_din_Out[1]_i_1 I1 -pin EX_MEM_MEM_din_Out[2]_i_1 I1 -pin EX_MEM_MEM_din_Out[3]_i_1 I1 -pin EX_MEM_MEM_din_Out[4]_i_1 I1 -pin EX_MEM_MEM_din_Out[5]_i_1 I1 -pin EX_MEM_MEM_din_Out[6]_i_1 I1 -pin EX_MEM_MEM_din_Out[7]_i_1 I1 -pin EX_MEM_MEM_din_Out[8]_i_1 I1 -pin EX_MEM_MEM_din_Out[9]_i_1 I1 -pin EX_MEM_RW_En_Out_i_1 I1 -pin EX_MEM_RW_addr_Out[0]_i_1 I1 -pin EX_MEM_RW_addr_Out[1]_i_1 I1 -pin EX_MEM_RW_addr_Out[2]_i_1 I1 -pin ExecuteStage EX_MEM_BR_CTRL_Out_reg_rep_0 -pin FetchStage EX_MEM_BR_CTRL_Out_reg_rep -pin MEM_OP_sig[0]_i_1 I1 -pin MEM_OP_sig[10]_i_1 I1 -pin MEM_OP_sig[11]_i_1 I1 -pin MEM_OP_sig[12]_i_1 I1 -pin MEM_OP_sig[13]_i_1 I1 -pin MEM_OP_sig[14]_i_1 I1 -pin MEM_OP_sig[15]_i_1 I1 -pin MEM_OP_sig[1]_i_1 I1 -pin MEM_OP_sig[2]_i_1 I1 -pin MEM_OP_sig[3]_i_1 I1 -pin MEM_OP_sig[4]_i_1 I1 -pin MEM_OP_sig[5]_i_1 I1 -pin MEM_OP_sig[6]_i_1 I1 -pin MEM_OP_sig[7]_i_1 I1 -pin MEM_OP_sig[8]_i_1 I1 -pin MEM_OP_sig[9]_i_1 I1 -pin MEM_PC_sig[10]_i_1 I1 -pin MEM_PC_sig[11]_i_1 I1 -pin MEM_PC_sig[12]_i_1 I1 -pin MEM_PC_sig[13]_i_1 I1 -pin MEM_PC_sig[14]_i_1 I1 -pin MEM_PC_sig[15]_i_1 I1 -pin MEM_PC_sig[1]_i_1 I1 -pin MEM_PC_sig[2]_i_1 I1 -pin MEM_PC_sig[3]_i_1 I1 -pin MEM_PC_sig[4]_i_1 I1 -pin MEM_PC_sig[5]_i_1 I1 -pin MEM_PC_sig[6]_i_1 I1 -pin MEM_PC_sig[7]_i_1 I1 -pin MEM_PC_sig[8]_i_1 I1 -pin MEM_PC_sig[9]_i_1 I1 -pin RAM_inst EX_MEM_BR_CTRL_Out_reg_rep
netloc EX_MEM_BR_CTRL_Out_reg_rep_n_0 1 3 16 800 5630 NJ 5630 1470 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 4210 8460 4790 11320 5430 7950 6110 3880 7320J 3630 13970 6700 15830J 6020 17960J
load net vga_blue[0] -attr @rip(#000000) 0 -port vga_blue[0] -pin vga_blue_OBUF[0]_inst O
load net EX_MEM_RW_data_In[15] -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15][6] -pin Decoder EX_MEM_RW_data_In[4] -pin ExecuteStage EX_MEM_RW_data_Out_reg[15][6]
load net EX_PC_sig[13] -attr @rip(#000000) 12 -pin EX_PC_sig_reg[13] Q -pin MEM_PC_sig[13]_i_1 I0 -pin console_display EX_PC_sig_reg[15][12]
load net v_sync_signal -port v_sync_signal -pin v_sync_signal_OBUF_inst O
netloc v_sync_signal 1 21 1 NJ
load net video_clock -pin console_display video_clock -pin h_dot_int_reg[10]_i_3 O -pin main_buffer_reg_i_17 C -pin main_buffer_reg_i_18 C -pin main_buffer_reg_i_19 C -pin main_buffer_reg_i_20 C -pin main_buffer_reg_i_21 C -pin main_buffer_reg_i_22 C -pin main_buffer_reg_i_23 C -pin main_buffer_reg_i_24 C -pin main_buffer_reg_i_25 C
netloc video_clock 1 14 2 6590 5180 7580
load net ID_EX_BR_addr_Out[7] -attr @rip(#000000) 7 -pin EX_MEM_BR_addr_Out[7]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[7] Q -pin console_display ID_EX_BR_addr_Out_reg[15][7]
load net display_address[5] -attr @rip(#000000) D[5] -pin console_display D[5] -pin main_buffer_reg_i_20 D
load net Decoder_n_30 -pin Decoder vga_red_reg[3]_23 -pin console_display display_address_reg[2]_rep_7
netloc Decoder_n_30 1 15 5 9660 8570 14350J 8250 16490J 8080 17600J 8620 19920
load net Decoder_n_31 -pin Decoder vga_red_reg[3]_24 -pin console_display display_address_reg[3]_8
netloc Decoder_n_31 1 15 5 9980 8590 14370J 8270 16510J 8100 17520J 8640 19900
load net Decoder_n_32 -pin Decoder vga_red_reg[3]_25 -pin console_display display_address_reg[2]_rep_8
netloc Decoder_n_32 1 15 5 9460 8610 14390J 8290 16530J 8120 17500J 8660 19880
load net Decoder_n_33 -pin Decoder vga_red_reg[3]_26 -pin console_display display_address_reg[2]_rep_10
netloc Decoder_n_33 1 15 5 9680 8630 14410J 8310 16550J 8140 17460J 8680 19860
load net vga_green_OBUF[0] -attr @rip(#000000) vga_green[3][0] -pin console_display vga_green[3][0] -pin vga_green_OBUF[0]_inst I -pin vga_green_OBUF[1]_inst I
load net Decoder_n_34 -pin Decoder vga_red_reg[3]_27 -pin console_display display_address_reg[3]_12
netloc Decoder_n_34 1 15 5 10020 8650 14430J 8330 16570J 8160 17760J 8700 19840
load net Decoder_n_35 -pin Decoder vga_red_reg[3]_28 -pin console_display display_address_reg[1]_2
netloc Decoder_n_35 1 15 5 9240 8670 14450J 8350 16590J 8180 17740J 8720 19820
load net PMOD_In[7] -attr @rip(#000000) PMOD_In[7] -port PMOD_In[7] -pin PMOD_In_IBUF[7]_inst I
load net EX_MEM_RW_En_Out -pin EX_MEM_RW_En_Out_i_1 O -pin EX_MEM_RW_En_Out_reg D
netloc EX_MEM_RW_En_Out 1 13 1 5330
load net Decoder_n_37 -pin Decoder vga_red_reg[3]_29 -pin console_display display_address_reg[1]_3
netloc Decoder_n_37 1 15 5 9260 8690 14470J 8370 16610J 8200 17700J 8740 19800
load net EX_MEM_RW_data_In[8] -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15][2] -pin Decoder EX_MEM_RW_data_In[0] -pin ExecuteStage EX_MEM_RW_data_Out_reg[15][2]
load net Decoder_n_38 -pin Decoder vga_red_reg[3]_30 -pin console_display reg_file_reg[4][14]
netloc Decoder_n_38 1 15 5 10400 8710 14490J 8390 16630J 8220 17680J 8760 19780
load net main_buffer_reg_i_21_n_0 -pin console_display main_buffer_reg_i_21 -pin main_buffer_reg_i_21 Q
netloc main_buffer_reg_i_21_n_0 1 15 1 7820
load net Decoder_n_39 -pin Decoder vga_red_reg[3]_31 -pin console_display reg_file_reg[4][4]
netloc Decoder_n_39 1 15 5 10300 8730 14510J 8410 16650J 8240 17660J 8780 19760
load net vga_blue_OBUF[0] -attr @rip(#000000) vga_blue[3][0] -pin console_display vga_blue[3][0] -pin vga_blue_OBUF[0]_inst I -pin vga_blue_OBUF[1]_inst I
load net vga_blue[1] -attr @rip(#000000) 1 -port vga_blue[1] -pin vga_blue_OBUF[1]_inst O
load net ID_EX_BR_addr_Out[6] -attr @rip(#000000) 6 -pin EX_MEM_BR_addr_Out[6]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[6] Q -pin console_display ID_EX_BR_addr_Out_reg[15][6]
load net display_address[4] -attr @rip(#000000) D[4] -pin console_display D[4] -pin main_buffer_reg_i_21 D
load net ID_EX_BR_sub_PC_Out[11]_i_2_n_0 -pin ID_EX_BR_sub_PC_Out[11]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[11]_i_2 O
netloc ID_EX_BR_sub_PC_Out[11]_i_2_n_0 1 14 1 6210
load net ID_EX_ALU_op_Out_reg_n_0_[0] -attr @rip(#000000) 0 -pin ExecuteStage ID_EX_ALU_op_Out_reg[2][0] -pin ID_EX_ALU_op_Out_reg[0] Q -pin console_display ID_EX_ALU_op_Out_reg[2][0]
load net ID_EX_RW_addr_Out[2]_i_3_n_0 -pin ID_EX_RW_addr_Out[2]_i_2 I0 -pin ID_EX_RW_addr_Out[2]_i_3 O
netloc ID_EX_RW_addr_Out[2]_i_3_n_0 1 9 1 3350
load net EX_MEM_MEM_din_Out[6]_i_1_n_0 -pin EX_MEM_MEM_din_Out[6]_i_1 O -pin EX_MEM_MEM_din_Out_reg[6] D
netloc EX_MEM_MEM_din_Out[6]_i_1_n_0 1 13 1 N
load net EX_MEM_RW_addr_Out[0] -attr @rip(#000000) 0 -pin EX_MEM_RW_addr_Out_reg[0] Q -pin MEM_WB_RW_addr_Out_reg[0] D -pin console_display EX_MEM_RW_addr_Out_reg[2][0]
load net Decoder_n_101 -pin Decoder ID_EX_BR_addr_Out_reg[11]_2 -pin ExecuteStage ID_PC_sig_reg[10]_0
netloc Decoder_n_101 1 16 4 14470 6800 15930J 6120 18100J 6100 19940
load net Decoder_n_102 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][14] -pin Decoder ID_EX_RB_data_Out_reg[15][14] -pin ID_EX_RB_data_Out_reg[15] D
load net Decoder_n_103 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][13] -pin Decoder ID_EX_RB_data_Out_reg[15][13] -pin ID_EX_RB_data_Out_reg[14] D
load net debug_buffer[549]_1[4] -attr @rip(#000000) debug_buffer[549]_0[1] -pin ExecuteStage debug_buffer[549]_0[1] -pin console_display debug_buffer[549]_0[1]
load net Decoder_n_104 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][12] -pin Decoder ID_EX_RB_data_Out_reg[15][12] -pin ID_EX_RB_data_Out_reg[13] D
load net PMOD_In[8] -attr @rip(#000000) PMOD_In[8] -port PMOD_In[8] -pin PMOD_In_IBUF[8]_inst I
load net Decoder_n_105 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][11] -pin Decoder ID_EX_RB_data_Out_reg[15][11] -pin ID_EX_RB_data_Out_reg[12] D
load net Decoder_n_106 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][10] -pin Decoder ID_EX_RB_data_Out_reg[15][10] -pin ID_EX_RB_data_Out_reg[11] D
load net ID_EX_BR_addr_Out[5] -attr @rip(#000000) 5 -pin EX_MEM_BR_addr_Out[5]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[5] Q -pin console_display ID_EX_BR_addr_Out_reg[15][5]
load net Decoder_n_107 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][9] -pin Decoder ID_EX_RB_data_Out_reg[15][9] -pin ID_EX_RB_data_Out_reg[10] D
load net Decoder_n_108 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][8] -pin Decoder ID_EX_RB_data_Out_reg[15][8] -pin ID_EX_RB_data_Out_reg[9] D
load net vga_blue[2] -attr @rip(#000000) 2 -port vga_blue[2] -pin vga_blue_OBUF[2]_inst O
load net Decoder_n_109 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][7] -pin Decoder ID_EX_RB_data_Out_reg[15][7] -pin ID_EX_RB_data_Out_reg[8] D
load net ExecuteStage_n_60 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[2] -pin EX_MEM_RW_data_Out_reg[2] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[2]
load net ExecuteStage_n_61 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[1] -pin EX_MEM_RW_data_Out_reg[1] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[1]
load net EX_MEM_BR_addr_Out[4]_i_1_n_0 -pin EX_MEM_BR_addr_Out[4]_i_1 O -pin EX_MEM_BR_addr_Out_reg[4] D
netloc EX_MEM_BR_addr_Out[4]_i_1_n_0 1 4 1 N
load net Decoder_n_10 -pin Decoder vga_red_reg[3]_6 -pin console_display display_address_reg[2]_4
netloc Decoder_n_10 1 15 5 10240 8230 13950J 7100 16250J 6560 17820J 6400 20260
load net ExecuteStage_n_62 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[0] -pin EX_MEM_RW_data_Out_reg[0] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[0]
load net Decoder_n_11 -pin Decoder vga_red_reg[3]_7 -pin console_display display_address_reg[2]_2
netloc Decoder_n_11 1 15 5 10120 8250 13970J 7120 16270J 6580 17840J 6420 20240
load net ExecuteStage_n_63 -pin Decoder EX_MEM_RW_data_Out_reg[0] -pin ExecuteStage ID_EX_RA_data_Out_reg[0]
netloc ExecuteStage_n_63 1 17 2 NJ 4820 18640
load net ID_EX_BR_sub_PC_Out[15]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[15]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[15] D
netloc ID_EX_BR_sub_PC_Out[15]_i_1_n_0 1 14 1 6250
load net Decoder_n_12 -pin Decoder vga_red_reg[3]_8 -pin console_display display_address_reg[3]_0
netloc Decoder_n_12 1 15 5 10220 8270 13990J 7140 16290J 6600 17880J 6440 20220
load net ExecuteStage_n_64 -pin Decoder EX_MEM_RW_data_Out_reg[0]_0 -pin ExecuteStage ID_EX_RB_data_Out_reg[0]
netloc ExecuteStage_n_64 1 17 2 17110 6940 18420J
load net ID_EX_ALU_op_Out_reg_n_0_[1] -attr @rip(#000000) 1 -pin ExecuteStage ID_EX_ALU_op_Out_reg[2][1] -pin ID_EX_ALU_op_Out_reg[1] Q -pin console_display ID_EX_ALU_op_Out_reg[2][1]
load net console_display_n_30 -pin Decoder ID_EX_RW_En_Out_reg_0 -pin ExecuteStage ID_EX_RW_En_Out_reg -pin console_display ID_EX_BR_addr_Out_reg[12]_1
netloc console_display_n_30 1 16 3 12730 7480 NJ 7480 18340J
load net ExecuteStage_n_65 -attr @rip(#000000) ID_EX_RA_data_Out_reg[13][3] -pin ExecuteStage ID_EX_RA_data_Out_reg[13][3] -pin ID_EX_RA_data_Out_reg[13] D
load net console_display_n_31 -pin ExecuteStage EX_MEM_RW_En_Out_reg -pin RAM_inst EX_MEM_RW_En_Out_reg_0 -pin console_display ID_EX_BR_addr_Out_reg[12]_2
netloc console_display_n_31 1 14 3 6630 3510 NJ 3510 12070
load net ExecuteStage_n_66 -attr @rip(#000000) ID_EX_RA_data_Out_reg[13][2] -pin ExecuteStage ID_EX_RA_data_Out_reg[13][2] -pin ID_EX_RA_data_Out_reg[12] D
load net W_data[7] -attr @rip(#000000) 7 -pin MEM_WB_RW_data_Out_reg[7] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][7]
load net console_display_n_32 -pin Decoder ID_OP_sig_reg[6]_0 -pin console_display ID_EX_BR_addr_Out_reg[1]
netloc console_display_n_32 1 16 3 11610 7560 NJ 7560 18280J
load net Decoder_n_15 -pin Decoder vga_red_reg[3]_9 -pin console_display display_address_reg[3]_4
netloc Decoder_n_15 1 15 5 10320 8290 14030J 7160 16310J 6620 17520J 6460 20200
load net ExecuteStage_n_67 -attr @rip(#000000) ID_EX_RA_data_Out_reg[13][1] -pin ExecuteStage ID_EX_RA_data_Out_reg[13][1] -pin ID_EX_RA_data_Out_reg[11] D
load net ID_EX_BR_sub_PC_Out_reg_n_0_[11] -attr @rip(#000000) 10 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][10] -pin ID_EX_BR_sub_PC_Out_reg[11] Q
load net Decoder_n_110 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][6] -pin Decoder ID_EX_RB_data_Out_reg[15][6] -pin ID_EX_RB_data_Out_reg[7] D
load net console_display_n_33 -pin Decoder MEM_WB_RW_En_Out_reg -pin RAM_inst MEM_WB_RW_En_Out_reg_1 -pin console_display ID_EX_RB_data_Out_reg[11]
netloc console_display_n_33 1 14 5 6730 3150 NJ 3150 11550 7740 NJ 7740 18220J
load net Decoder_n_16 -pin Decoder vga_red_reg[3]_10 -pin console_display display_address_reg[1]_0
netloc Decoder_n_16 1 15 5 9300 8550 14330J 8230 16470J 8060 17800J 8600 19940
load net ExecuteStage_n_68 -attr @rip(#000000) ID_EX_RA_data_Out_reg[13][0] -pin ExecuteStage ID_EX_RA_data_Out_reg[13][0] -pin ID_EX_RA_data_Out_reg[9] D
load net EX_PC_sig[14]_i_1_n_0 -pin EX_PC_sig[14]_i_1 O -pin EX_PC_sig_reg[14] D
netloc EX_PC_sig[14]_i_1_n_0 1 12 1 4730
load net Decoder_n_111 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][5] -pin Decoder ID_EX_RB_data_Out_reg[15][5] -pin ID_EX_RB_data_Out_reg[6] D
load net Decoder_n_3 -pin Decoder vga_red_reg[3] -pin console_display display_address_reg[1]_rep__0_0
netloc Decoder_n_3 1 15 5 9900 8090 13790J 6960 16090J 6420 17620J 6260 20400
load net console_display_n_34 -pin ExecuteStage MEM_WB_RW_En_Out_reg_1 -pin RAM_inst MEM_WB_RW_En_Out_reg -pin console_display ID_EX_RB_data_Out_reg[11]_0
netloc console_display_n_34 1 14 3 6610 3940 7440J 3790 11850
load net Decoder_n_17 -pin Decoder vga_red_reg[3]_11 -pin console_display display_address_reg[3]_6
netloc Decoder_n_17 1 15 5 10360 8310 14050J 7180 16330J 6640 17860J 6480 20180
load net debug_buffer[549]_1[3] -attr @rip(#000000) debug_buffer[549]_0[0] -pin ExecuteStage debug_buffer[549]_0[0] -pin console_display debug_buffer[549]_0[0]
load net ExecuteStage_n_69 -pin Decoder EX_MEM_RW_data_Out_reg[11] -pin ExecuteStage ID_EX_RB_data_Out_reg[11]
netloc ExecuteStage_n_69 1 17 2 16670 7260 NJ
load net vga_green_OBUF[2] -attr @rip(#000000) vga_green[3][1] -pin console_display vga_green[3][1] -pin vga_green_OBUF[2]_inst I
load net MEM_PC_sig[15]_i_1_n_0 -pin MEM_PC_sig[15]_i_1 O -pin MEM_PC_sig_reg[15] D
netloc MEM_PC_sig[15]_i_1_n_0 1 14 1 6130
load net Decoder_n_112 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][4] -pin Decoder ID_EX_RB_data_Out_reg[15][4] -pin ID_EX_RB_data_Out_reg[5] D
load net Decoder_n_4 -pin Decoder vga_red_reg[3]_0 -pin console_display EX_MEM_RW_data_Out_reg[15]_10
netloc Decoder_n_4 1 15 5 9380 8110 13810J 6980 16110J 6440 17640J 6280 20380
load net console_display_n_35 -pin Decoder ID_EX_RW_En_Out_reg -pin ExecuteStage ID_EX_RW_En_Out_reg_0 -pin RAM_inst ID_EX_RW_En_Out_reg -pin console_display ID_EX_RB_data_Out_reg[11]_1
netloc console_display_n_35 1 14 5 6650 3900 7340J 3730 11950 7460 NJ 7460 18360J
load net Decoder_n_18 -pin Decoder vga_red_reg[3]_12 -pin console_display display_address_reg[3]_7
netloc Decoder_n_18 1 15 5 10380 8330 14090J 7200 16350J 6660 18240J 6500 20160
load net Decoder_n_113 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][3] -pin Decoder ID_EX_RB_data_Out_reg[15][3] -pin ID_EX_RB_data_Out_reg[4] D
load net Decoder_n_5 -pin Decoder vga_red_reg[3]_1 -pin console_display display_address_reg[0]_rep_2
netloc Decoder_n_5 1 15 5 9860 8130 13850J 7000 16130J 6460 17480J 6300 20360
load net console_display_n_36 -pin ExecuteStage EX_MEM_RW_En_Out_reg_0 -pin RAM_inst EX_MEM_RW_En_Out_reg -pin console_display ID_EX_RB_data_Out_reg[11]_2
netloc console_display_n_36 1 14 3 6590 3530 NJ 3530 12110
load net ID_EX_BR_addr_Out[4]_i_3_n_0 -pin Decoder ID_OP_sig_reg[3] -pin ID_EX_BR_addr_Out[4]_i_3 O
netloc ID_EX_BR_addr_Out[4]_i_3_n_0 1 18 1 17840
load net Decoder_n_19 -pin Decoder vga_red_reg[3]_13 -pin console_display reg_file_reg[0][6]
netloc Decoder_n_19 1 15 5 10460 8350 14110J 7220 16370J 6680 18260J 6520 20140
load net Decoder_n_114 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][2] -pin Decoder ID_EX_RB_data_Out_reg[15][2] -pin ID_EX_RB_data_Out_reg[3] D
load net Decoder_n_6 -pin Decoder vga_red_reg[3]_2 -pin console_display display_address_reg[0]_rep__0_4
netloc Decoder_n_6 1 15 5 9420 8150 13870J 7020 16150J 6480 17740J 6320 20340
load net console_display_n_37 -pin Decoder ID_OP_sig_reg[0] -pin console_display ID_EX_RB_data_Out_reg[11]_3
netloc console_display_n_37 1 16 3 11510 7500 NJ 7500 18320J
load net PMOD_In[9] -attr @rip(#000000) PMOD_In[9] -port PMOD_In[9] -pin PMOD_In_IBUF[9]_inst I
load net ID_EX_BR_addr_Out[4] -attr @rip(#000000) 4 -pin EX_MEM_BR_addr_Out[4]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[4] Q -pin console_display ID_EX_BR_addr_Out_reg[15][4]
load net Decoder_n_115 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][1] -pin Decoder ID_EX_RB_data_Out_reg[15][1] -pin ID_EX_RB_data_Out_reg[2] D
load net Decoder_n_7 -pin Decoder vga_red_reg[3]_3 -pin console_display display_address_reg[2]_0
netloc Decoder_n_7 1 15 5 10200 8170 13890J 7040 16170J 6500 17760J 6340 20320
load net console_display_n_38 -pin Decoder ID_OP_sig_reg[1] -pin console_display ID_EX_RB_data_Out_reg[11]_4
netloc console_display_n_38 1 16 3 11690 7520 NJ 7520 17540J
load net EX_MEM_MEM_din_Out[9]_i_1_n_0 -pin EX_MEM_MEM_din_Out[9]_i_1 O -pin EX_MEM_MEM_din_Out_reg[9] D
netloc EX_MEM_MEM_din_Out[9]_i_1_n_0 1 13 1 N
load net Decoder_n_116 -attr @rip(#000000) ID_EX_RB_data_Out_reg[15][0] -pin Decoder ID_EX_RB_data_Out_reg[15][0] -pin ID_EX_RB_data_Out_reg[0] D
load net Decoder_n_8 -pin Decoder vga_red_reg[3]_4 -pin console_display display_address_reg[2]_3
netloc Decoder_n_8 1 15 5 10280 8190 13910J 7060 16190J 6520 17780J 6360 20300
load net console_display_n_39 -pin Decoder ID_OP_sig_reg[2] -pin console_display ID_EX_RB_data_Out_reg[11]_5
netloc console_display_n_39 1 16 3 11490 7540 NJ 7540 18300J
load net Decoder_n_117 -pin Decoder vga_red_reg[3]_58 -pin console_display reg_file_reg[1][3]
netloc Decoder_n_117 1 15 5 10100 8790 12690J 8820 NJ 8820 NJ 8820 19540
load net Decoder_n_9 -pin Decoder vga_red_reg[3]_5 -pin console_display display_address_reg[2]_1
netloc Decoder_n_9 1 15 5 10180 8210 13930J 7080 16210J 6540 17800J 6380 20280
load net ExecuteStage_n_50 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[12] -pin EX_MEM_RW_data_Out_reg[12] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[12]
load net vga_blue_OBUF[2] -attr @rip(#000000) vga_blue[3][1] -pin console_display vga_blue[3][1] -pin vga_blue_OBUF[2]_inst I
load net Decoder_n_118 -pin Decoder vga_red_reg[3]_59 -pin console_display reg_file_reg[1][0]
netloc Decoder_n_118 1 15 5 10000 8850 12630J 8880 NJ 8880 NJ 8880 19560
load net ExecuteStage_n_51 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[11] -pin EX_MEM_RW_data_Out_reg[11] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[11]
load net vga_blue[3] -attr @rip(#000000) 3 -port vga_blue[3] -pin vga_blue_OBUF[3]_inst O
load net Decoder_n_119 -pin Decoder vga_red_reg[3]_60 -pin console_display reg_file_reg[5][3]_1
netloc Decoder_n_119 1 15 5 10420 8810 12670J 8840 NJ 8840 NJ 8840 19520
load net ExecuteStage_n_52 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[10] -pin EX_MEM_RW_data_Out_reg[10] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[10]
load net ExecuteStage_n_53 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[9] -pin EX_MEM_RW_data_Out_reg[9] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[9]
load net ExecuteStage_n_54 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[8] -pin EX_MEM_RW_data_Out_reg[8] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[8]
load net MEM_PC_sig[7]_i_1_n_0 -pin MEM_PC_sig[7]_i_1 O -pin MEM_PC_sig_reg[7] D
netloc MEM_PC_sig[7]_i_1_n_0 1 14 1 N
load net EX_MEM_BR_addr_Out[5]_i_1_n_0 -pin EX_MEM_BR_addr_Out[5]_i_1 O -pin EX_MEM_BR_addr_Out_reg[5] D
netloc EX_MEM_BR_addr_Out[5]_i_1_n_0 1 4 1 N
load net MEM_PC_sig[14]_i_1_n_0 -pin MEM_PC_sig[14]_i_1 O -pin MEM_PC_sig_reg[14] D
netloc MEM_PC_sig[14]_i_1_n_0 1 14 1 N
load net ExecuteStage_n_55 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[7] -pin EX_MEM_RW_data_Out_reg[7] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[7]
load net ExecuteStage_n_56 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[6] -pin EX_MEM_RW_data_Out_reg[6] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[6]
load net s3_reg_b[1] -attr @rip(#000000) 1 -pin EX_OP_sig_reg[4] Q -pin ExecuteStage s3_reg_b[1] -pin MEM_OP_sig[4]_i_1 I0 -pin console_display s3_reg_b[1]
load net debug_buffer[548]_0[0] -attr @rip(#000000) debug_buffer[548]_1[0] -pin ExecuteStage debug_buffer[548]_1[0] -pin console_display debug_buffer[548]_1[0]
load net ExecuteStage_n_57 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[5] -pin EX_MEM_RW_data_Out_reg[5] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[5]
load net ID_EX_BR_sub_PC_Out_reg_n_0_[10] -attr @rip(#000000) 9 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][9] -pin ID_EX_BR_sub_PC_Out_reg[10] Q
load net ExecuteStage_n_58 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[4] -pin EX_MEM_RW_data_Out_reg[4] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[4]
load net W_data[8] -attr @rip(#000000) 8 -pin MEM_WB_RW_data_Out_reg[8] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][8]
load net ExecuteStage_n_59 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[3] -pin EX_MEM_RW_data_Out_reg[3] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[3]
load net FetchStage_n_10 -pin FetchStage vga_red_reg[3]_8 -pin console_display PC_reg[3]_0
netloc FetchStage_n_10 1 6 10 NJ 3390 NJ 3390 NJ 3390 NJ 3390 NJ 3390 NJ 3390 NJ 3390 NJ 3390 NJ 3390 8340
load net Decoder_n_120 -pin Decoder vga_red_reg[3]_61 -pin console_display reg_file_reg[5][0]
netloc Decoder_n_120 1 15 5 10340 8830 12650J 8860 NJ 8860 NJ 8860 19500
load net EX_OP_sig[15]_i_1_n_0 -pin EX_OP_sig[15]_i_1 O -pin EX_OP_sig_reg[15] D
netloc EX_OP_sig[15]_i_1_n_0 1 12 1 4670
load net ID_EX_RA_data_In[9] -attr @rip(#000000) ID_EX_BR_addr_Out_reg[13][0] -pin Decoder ID_EX_IN_En_Out_reg[0] -pin ExecuteStage ID_EX_BR_addr_Out_reg[13][0]
load net FetchStage_n_11 -pin FetchStage vga_red_reg[3]_9 -pin console_display PC_reg[2]
netloc FetchStage_n_11 1 6 10 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 8360
load net Decoder_n_121 -pin Decoder vga_red_reg[3]_62 -pin console_display display_address_reg[0]_rep__1_3
netloc Decoder_n_121 1 15 5 9060 8750 14530J 8430 16670J 8260 17560J 8800 19460
load net vga_green_OBUF[3] -attr @rip(#000000) vga_green[3][2] -pin console_display vga_green[3][2] -pin vga_green_OBUF[3]_inst I
load net Decoder_n_122 -pin Decoder vga_red_reg[3]_63 -pin console_display reg_file_reg[5][3]
netloc Decoder_n_122 1 15 5 10140 8970 13070J 9370 17050J 9470 NJ 9470 19640
load net MEM_OP_sig[2]_i_1_n_0 -pin MEM_OP_sig[2]_i_1 O -pin MEM_OP_sig_reg[2] D
netloc MEM_OP_sig[2]_i_1_n_0 1 14 1 6070
load net ID_EX_BR_addr_Out[3] -attr @rip(#000000) 3 -pin EX_MEM_BR_addr_Out[3]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[3] Q -pin console_display ID_EX_BR_addr_Out_reg[15][3]
load net Decoder_n_123 -pin Decoder vga_red_reg[3]_64 -pin console_display EX_MEM_RW_data_Out_reg[15]_11
netloc Decoder_n_123 1 15 5 9500 3610 NJ 3610 NJ 3610 NJ 3610 20740
load net console_display_n_28 -pin Decoder MEM_WB_RW_En_Out_reg_0 -pin ExecuteStage MEM_WB_RW_En_Out_reg -pin console_display ID_EX_BR_addr_Out_reg[12]
netloc console_display_n_28 1 16 3 13710 7760 NJ 7760 18200J
load net Decoder_n_124 -pin Decoder vga_red_reg[3]_65 -pin console_display reg_file_reg[5][3]_0
netloc Decoder_n_124 1 15 5 10160 8990 13050J 9390 17030J 9490 NJ 9490 19620
load net EX_MEM_RW_data_In[9] -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15][3] -pin Decoder EX_MEM_RW_data_In[1] -pin ExecuteStage EX_MEM_RW_data_Out_reg[15][3]
load net console_display_n_29 -pin ExecuteStage MEM_WB_RW_En_Out_reg_0 -pin RAM_inst MEM_WB_RW_En_Out_reg_0 -pin console_display ID_EX_BR_addr_Out_reg[12]_0
netloc console_display_n_29 1 14 3 6670 3920 7420J 3770 11830
load net Decoder_n_125 -pin Decoder vga_red_reg[3]_66 -pin console_display reg_file_reg[0][15]_0
netloc Decoder_n_125 1 15 5 9920 9010 13030J 9410 17010J 9510 NJ 9510 19600
load net Decoder_n_126 -pin Decoder vga_red_reg[3]_67 -pin console_display reg_file_reg[0][15]
netloc Decoder_n_126 1 15 5 9880 9030 13010J 9430 16990J 9610 NJ 9610 19580
load net ID_PC_sig[13] -attr @rip(#000000) D[12] -pin FetchStage D[12] -pin ID_PC_sig_reg[13] D
load net Decoder_n_127 -pin Decoder vga_red_reg[3]_68 -pin console_display reg_file_reg[4][15]
netloc Decoder_n_127 1 15 5 10080 8950 11710J 9350 15450J 9450 NJ 9450 19480
load net EX_MEM_MEM_din_Out[7]_i_1_n_0 -pin EX_MEM_MEM_din_Out[7]_i_1 O -pin EX_MEM_MEM_din_Out_reg[7] D
netloc EX_MEM_MEM_din_Out[7]_i_1_n_0 1 13 1 N
load net ExecuteStage_n_80 -pin Decoder EX_MEM_RW_data_Out_reg[2] -pin ExecuteStage ID_EX_RA_data_Out_reg[2]
netloc ExecuteStage_n_80 1 17 2 NJ 4840 18540
load net console_display_n_10 -pin Decoder display_address_reg[2]_rep_0 -pin console_display vga_red_reg[3]_7
netloc console_display_n_10 1 16 3 13550 7960 NJ 7960 17960J
load net ExecuteStage_n_81 -pin Decoder EX_MEM_RW_data_Out_reg[2]_0 -pin ExecuteStage ID_EX_RB_data_Out_reg[2]
netloc ExecuteStage_n_81 1 17 2 17050 6960 18440J
load net console_display_n_11 -pin Decoder display_address_reg[1]_rep -pin console_display vga_red_reg[3]_8
netloc console_display_n_11 1 16 3 13570 7880 NJ 7880 18060J
load net ExecuteStage_n_82 -pin Decoder EX_MEM_RW_data_Out_reg[3]_0 -pin ExecuteStage ID_EX_RB_data_Out_reg[3]
netloc ExecuteStage_n_82 1 17 2 17010 6980 NJ
load net W_data[5] -attr @rip(#000000) 5 -pin MEM_WB_RW_data_Out_reg[5] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][5]
load net console_display_n_12 -pin Decoder display_address_reg[7] -pin console_display vga_red_reg[3]_9
netloc console_display_n_12 1 16 3 13490 8040 NJ 8040 17860J
load net PMOD_In[3] -attr @rip(#000000) PMOD_In[3] -port PMOD_In[3] -pin PMOD_In_IBUF[3]_inst I
load net console_display_n_13 -pin Decoder display_address_reg[2]_rep_1 -pin console_display vga_red_reg[3]_10
netloc console_display_n_13 1 16 3 13510 7980 NJ 7980 17940J
load net s3_reg_b[2] -attr @rip(#000000) 2 -pin EX_OP_sig_reg[5] Q -pin ExecuteStage s3_reg_b[2] -pin MEM_OP_sig[5]_i_1 I0 -pin console_display s3_reg_b[2]
load net vga_green[3] -attr @rip(#000000) 3 -port vga_green[3] -pin vga_green_OBUF[3]_inst O
load net EX_PC_sig[8]_i_1_n_0 -pin EX_PC_sig[8]_i_1 O -pin EX_PC_sig_reg[8] D
netloc EX_PC_sig[8]_i_1_n_0 1 12 1 4750
load net console_display_n_14 -pin Decoder display_address_reg[2] -pin console_display vga_red_reg[3]_11
netloc console_display_n_14 1 16 3 12830 7920 NJ 7920 17980J
load net ExecuteStage_n_85 -pin EX_MEM_BR_CTRL_Out_reg_rep D -pin ExecuteStage EX_MEM_BR_CTRL_Out_reg_rep
netloc ExecuteStage_n_85 1 2 16 450 5780 NJ 5780 NJ 5780 NJ 5780 2420J 5710 NJ 5710 NJ 5710 NJ 5710 NJ 5710 NJ 5710 4890J 5990 NJ 5990 NJ 5990 7560J 8050 13470J 6620 15750
load net console_display_n_15 -pin Decoder display_address_reg[2]_rep -pin console_display vga_red_reg[3]_12
netloc console_display_n_15 1 16 3 12870 7940 NJ 7940 17780J
load net ExecuteStage_n_86 -pin ExecuteStage vga_red_reg[3]_12 -pin console_display ID_EX_BR_sub_PC_Out_reg[5]
netloc ExecuteStage_n_86 1 15 3 9560 3990 13810J 6260 15350
load net MEM_OP_sig[4]_i_1_n_0 -pin MEM_OP_sig[4]_i_1 O -pin MEM_OP_sig_reg[4] D
netloc MEM_OP_sig[4]_i_1_n_0 1 14 1 N
load net console_display_n_16 -pin Decoder display_address_reg[2]_0 -pin console_display vga_red_reg[3]_13
netloc console_display_n_16 1 16 3 12930 8000 NJ 8000 17920J
load net ExecuteStage_n_87 -pin Decoder ID_EX_BR_sub_PC_Out_reg[14] -pin ExecuteStage vga_red_reg[3]_13
netloc ExecuteStage_n_87 1 17 2 16450 8570 17820J
load net console_display_n_17 -pin console_display display_address_reg[0]_0 -pin main_buffer_reg_i_17 CE -pin main_buffer_reg_i_18 CE -pin main_buffer_reg_i_19 CE -pin main_buffer_reg_i_20 CE -pin main_buffer_reg_i_21 CE -pin main_buffer_reg_i_22 CE -pin main_buffer_reg_i_23 CE -pin main_buffer_reg_i_24 CE -pin main_buffer_reg_i_25 CE
netloc console_display_n_17 1 14 3 6690 4200 7560J 3910 11630
load net ExecuteStage_n_88 -pin ExecuteStage vga_red_reg[3]_14 -pin console_display display_address_reg[0]_rep__1_7
netloc ExecuteStage_n_88 1 15 3 9720 4190 11970J 6420 15430
load net ID_EX_BR_addr_Out[2] -attr @rip(#000000) 2 -pin EX_MEM_BR_addr_Out[2]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[2] Q -pin console_display ID_EX_BR_addr_Out_reg[15][2]
load net debug_buffer[549]_1[5] -attr @rip(#000000) debug_buffer[549]_0[2] -pin ExecuteStage debug_buffer[549]_0[2] -pin console_display debug_buffer[549]_0[2]
load net ExecuteStage_n_89 -pin ExecuteStage vga_red_reg[3]_15 -pin console_display display_address_reg[1]_rep__0_2
netloc ExecuteStage_n_89 1 15 3 9960 7770 13670J 6520 15490
load net ID_OP_sig_reg_n_0_[9] -pin Decoder ID_OP_sig_reg[11][5] -pin EX_OP_sig[9]_i_1 I0 -pin ExecuteStage ID_OP_sig_reg[11]_0[0] -pin FetchStage ID_OP_sig_reg[15][1] -pin ID_EX_ALU_op_Out[0]_i_1 I1 -pin ID_EX_BR_Op_Out[0]_i_1 I1 -pin ID_EX_BR_Op_Out[1]_i_1 I2 -pin ID_EX_BR_addr_Out[15]_i_5 I1 -pin ID_EX_BR_addr_Out[15]_i_7 I2 -pin ID_EX_BR_addr_Out[15]_i_8 I0 -pin ID_EX_BR_addr_Out[7]_i_5 I0 -pin ID_EX_BR_addr_Out[9]_i_6 I2 -pin ID_EX_IN_En_Out_i_2 I1 -pin ID_EX_L_op_Out[0]_i_1 I2 -pin ID_EX_L_op_Out[1]_i_1 I0 -pin ID_EX_RW_En_Out_i_2 I2 -pin ID_EX_RW_addr_Out[2]_i_2 I5 -pin ID_EX_Shiftamt_Out[3]_i_2 I4 -pin ID_OP_sig_reg[9] Q -pin console_display ID_OP_sig_reg[15][9]
load net ExecuteStage_n_70 -pin Decoder EX_MEM_RW_data_Out_reg[10]_0 -pin ExecuteStage ID_EX_RA_data_Out_reg[10]
netloc ExecuteStage_n_70 1 17 2 16830 7240 NJ
load net ID_PC_sig[14] -attr @rip(#000000) D[13] -pin FetchStage D[13] -pin ID_PC_sig_reg[14] D
load net ExecuteStage_n_71 -pin Decoder EX_MEM_RW_data_Out_reg[8] -pin ExecuteStage ID_EX_RA_data_Out_reg[8]
netloc ExecuteStage_n_71 1 17 2 16890 7160 NJ
load net ExecuteStage_n_72 -pin Decoder EX_MEM_RW_data_Out_reg[7] -pin ExecuteStage ID_EX_RB_data_Out_reg[7]
netloc ExecuteStage_n_72 1 17 2 16710 7120 NJ
load net ExecuteStage_n_73 -pin Decoder EX_MEM_RW_data_Out_reg[7]_0 -pin ExecuteStage ID_EX_RA_data_Out_reg[7]
netloc ExecuteStage_n_73 1 17 2 16970 7140 NJ
load net ExecuteStage_n_74 -pin Decoder EX_MEM_RW_data_Out_reg[6] -pin ExecuteStage ID_EX_RB_data_Out_reg[6]
netloc ExecuteStage_n_74 1 17 2 16810 7080 NJ
load net ROM_douta[14] -attr @rip(#000000) douta[14] -pin RAM_inst douta[14] -pin ROM_inst douta[14] -pin console_display douta[5]
load net ExecuteStage_n_75 -pin Decoder EX_MEM_RW_data_Out_reg[6]_0 -pin ExecuteStage ID_EX_RA_data_Out_reg[6]
netloc ExecuteStage_n_75 1 17 2 17030 7100 NJ
load net MEM_PC_sig[6]_i_1_n_0 -pin MEM_PC_sig[6]_i_1 O -pin MEM_PC_sig_reg[6] D
netloc MEM_PC_sig[6]_i_1_n_0 1 14 1 N
load net W_data[6] -attr @rip(#000000) 6 -pin MEM_WB_RW_data_Out_reg[6] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][6]
load net ExecuteStage_n_76 -pin Decoder EX_MEM_RW_data_Out_reg[5] -pin ExecuteStage ID_EX_RB_data_Out_reg[5]
netloc ExecuteStage_n_76 1 17 2 16870 7040 NJ
load net PMOD_In[4] -attr @rip(#000000) PMOD_In[4] -port PMOD_In[4] -pin PMOD_In_IBUF[4]_inst I
load net MEM_OP_sig[15]_i_1_n_0 -pin MEM_OP_sig[15]_i_1 O -pin MEM_OP_sig_reg[15] D
netloc MEM_OP_sig[15]_i_1_n_0 1 14 1 6150
load net ExecuteStage_n_77 -pin Decoder EX_MEM_RW_data_Out_reg[5]_0 -pin ExecuteStage ID_EX_RA_data_Out_reg[5]
netloc ExecuteStage_n_77 1 17 2 17130 7060 NJ
load net ExecuteStage_n_78 -pin Decoder EX_MEM_RW_data_Out_reg[1]_0 -pin ExecuteStage ID_EX_BR_addr_Out_reg[1]
netloc ExecuteStage_n_78 1 17 2 NJ 4620 18660
load net ExecuteStage_n_79 -pin Decoder EX_MEM_RW_data_Out_reg[3] -pin ExecuteStage ID_EX_RA_data_Out_reg[3]
netloc ExecuteStage_n_79 1 17 2 NJ 4860 18500
load net ID_EX_BR_addr_Out[1] -attr @rip(#000000) 1 -pin EX_MEM_BR_addr_Out[1]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[1] Q -pin console_display ID_EX_BR_addr_Out_reg[15][1]
load net MEM_PC_sig[11]_i_1_n_0 -pin MEM_PC_sig[11]_i_1 O -pin MEM_PC_sig_reg[11] D
netloc MEM_PC_sig[11]_i_1_n_0 1 14 1 N
load net ExecuteStage_n_21 -pin ExecuteStage vga_red_reg[3]_6 -pin console_display display_address_reg[0]_rep__1_6
netloc ExecuteStage_n_21 1 15 3 9700 4170 11870J 6400 15550
load net ID_EX_BR_sub_PC_Out[13]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[13]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[13] D
netloc ID_EX_BR_sub_PC_Out[13]_i_1_n_0 1 14 1 6210
load net ExecuteStage_n_22 -pin ExecuteStage vga_red_reg[3]_7 -pin console_display display_address_reg[0]_rep_3
netloc ExecuteStage_n_22 1 15 3 9780 4250 11750J 6480 15630
load net <const0> -ground -pin Data_Out_reg R -pin main_buffer_reg_i_17 R -pin main_buffer_reg_i_18 R -pin main_buffer_reg_i_19 R -pin main_buffer_reg_i_20 R -pin main_buffer_reg_i_21 R -pin main_buffer_reg_i_22 R -pin main_buffer_reg_i_23 R -pin main_buffer_reg_i_24 R -pin main_buffer_reg_i_25 R
load net ExecuteStage_n_23 -pin ExecuteStage vga_red_reg[3]_8 -pin console_display ID_EX_BR_sub_PC_Out_reg[3]
netloc ExecuteStage_n_23 1 15 3 9540 3970 13950J 6240 15370
load net vga_blue_OBUF[3] -attr @rip(#000000) vga_blue[3][2] -pin console_display vga_blue[3][2] -pin vga_blue_OBUF[3]_inst I
load net ID_PC_sig[15] -attr @rip(#000000) D[14] -pin FetchStage D[14] -pin ID_PC_sig_reg[15] D
load net ExecuteStage_n_28 -pin ExecuteStage vga_red_reg[3]_9 -pin console_display display_address_reg[0]_rep__2_1
netloc ExecuteStage_n_28 1 15 3 9760 4230 12130J 6460 15530
load net ExecuteStage_n_29 -pin ExecuteStage vga_red_reg[3]_10 -pin console_display display_address_reg[0]_rep__0_6
netloc ExecuteStage_n_29 1 15 3 9600 4070 12930J 6300 15390
load net ROM_douta[15] -attr @rip(#000000) douta[15] -pin RAM_inst douta[15] -pin ROM_inst douta[15] -pin console_display douta[6]
load net ID_EX_BR_Op_Out[1] -attr @rip(#000000) 1 -pin ExecuteStage ID_EX_BR_Op_Out_reg[1]_0[1] -pin ID_EX_BR_Op_Out_reg[1] Q -pin console_display ID_EX_BR_Op_Out_reg[1][1]
load net RAM_doutb[9] -attr @rip(#000000) doutb[9] -pin RAM_inst doutb[9] -pin ROM_inst doutb[9] -pin console_display doutb[0]
load net PMOD_In[5] -attr @rip(#000000) PMOD_In[5] -port PMOD_In[5] -pin PMOD_In_IBUF[5]_inst I
load net ID_EX_BR_addr_Out[0] -attr @rip(#000000) 0 -pin ID_EX_BR_addr_Out_reg[0] Q -pin console_display ID_EX_BR_addr_Out_reg[15][0]
load net main_buffer_reg_i_20_n_0 -pin console_display main_buffer_reg_i_20 -pin main_buffer_reg_i_20 Q
netloc main_buffer_reg_i_20_n_0 1 15 1 7900
load net ExecuteStage_n_12 -pin ExecuteStage vga_red_reg[3]_0 -pin console_display display_address_reg[0]_rep__1_5
netloc ExecuteStage_n_12 1 15 3 9680 4150 11890J 6380 15650
load net ExecuteStage_n_13 -pin ExecuteStage vga_red_reg[3]_1 -pin console_display display_address_reg[0]_rep__0_8
netloc ExecuteStage_n_13 1 15 3 9640 4110 12330J 6340 15610
load net main_buffer_reg_i_18_n_0 -pin console_display main_buffer_reg_i_18 -pin main_buffer_reg_i_18 Q
netloc main_buffer_reg_i_18_n_0 1 15 1 7400
load net ExecuteStage_n_14 -pin ExecuteStage vga_red_reg[3]_2 -pin console_display display_address_reg[0]_rep__1_4
netloc ExecuteStage_n_14 1 15 3 9660 4130 11930J 6360 15590
load net <const1> -power -pin EX_MEM_BR_CTRL_Out_reg CE -pin EX_MEM_BR_CTRL_Out_reg_rep CE -pin EX_MEM_BR_addr_Out_reg[10] CE -pin EX_MEM_BR_addr_Out_reg[11] CE -pin EX_MEM_BR_addr_Out_reg[12] CE -pin EX_MEM_BR_addr_Out_reg[13] CE -pin EX_MEM_BR_addr_Out_reg[14] CE -pin EX_MEM_BR_addr_Out_reg[15] CE -pin EX_MEM_BR_addr_Out_reg[1] CE -pin EX_MEM_BR_addr_Out_reg[2] CE -pin EX_MEM_BR_addr_Out_reg[3] CE -pin EX_MEM_BR_addr_Out_reg[4] CE -pin EX_MEM_BR_addr_Out_reg[5] CE -pin EX_MEM_BR_addr_Out_reg[6] CE -pin EX_MEM_BR_addr_Out_reg[7] CE -pin EX_MEM_BR_addr_Out_reg[8] CE -pin EX_MEM_BR_addr_Out_reg[9] CE -pin EX_MEM_L_op_Out_reg[0] CE -pin EX_MEM_L_op_Out_reg[1] CE -pin EX_MEM_L_op_Out_reg[2] CE -pin EX_MEM_MEM_din_Out_reg[0] CE -pin EX_MEM_MEM_din_Out_reg[10] CE -pin EX_MEM_MEM_din_Out_reg[11] CE -pin EX_MEM_MEM_din_Out_reg[12] CE -pin EX_MEM_MEM_din_Out_reg[13] CE -pin EX_MEM_MEM_din_Out_reg[14] CE -pin EX_MEM_MEM_din_Out_reg[15] CE -pin EX_MEM_MEM_din_Out_reg[1] CE -pin EX_MEM_MEM_din_Out_reg[2] CE -pin EX_MEM_MEM_din_Out_reg[3] CE -pin EX_MEM_MEM_din_Out_reg[4] CE -pin EX_MEM_MEM_din_Out_reg[5] CE -pin EX_MEM_MEM_din_Out_reg[6] CE -pin EX_MEM_MEM_din_Out_reg[7] CE -pin EX_MEM_MEM_din_Out_reg[8] CE -pin EX_MEM_MEM_din_Out_reg[9] CE -pin EX_MEM_RW_En_Out_reg CE -pin EX_MEM_RW_addr_Out_reg[0] CE -pin EX_MEM_RW_addr_Out_reg[1] CE -pin EX_MEM_RW_addr_Out_reg[2] CE -pin EX_MEM_RW_data_Out_reg[0] CE -pin EX_MEM_RW_data_Out_reg[10] CE -pin EX_MEM_RW_data_Out_reg[11] CE -pin EX_MEM_RW_data_Out_reg[12] CE -pin EX_MEM_RW_data_Out_reg[13] CE -pin EX_MEM_RW_data_Out_reg[14] CE -pin EX_MEM_RW_data_Out_reg[15] CE -pin EX_MEM_RW_data_Out_reg[1] CE -pin EX_MEM_RW_data_Out_reg[2] CE -pin EX_MEM_RW_data_Out_reg[3] CE -pin EX_MEM_RW_data_Out_reg[4] CE -pin EX_MEM_RW_data_Out_reg[5] CE -pin EX_MEM_RW_data_Out_reg[6] CE -pin EX_MEM_RW_data_Out_reg[7] CE -pin EX_MEM_RW_data_Out_reg[8] CE -pin EX_MEM_RW_data_Out_reg[9] CE -pin EX_OP_sig_reg[0] CE -pin EX_OP_sig_reg[10] CE -pin EX_OP_sig_reg[11] CE -pin EX_OP_sig_reg[12] CE -pin EX_OP_sig_reg[13] CE -pin EX_OP_sig_reg[14] CE -pin EX_OP_sig_reg[15] CE -pin EX_OP_sig_reg[1] CE -pin EX_OP_sig_reg[2] CE -pin EX_OP_sig_reg[3] CE -pin EX_OP_sig_reg[4] CE -pin EX_OP_sig_reg[5] CE -pin EX_OP_sig_reg[6] CE -pin EX_OP_sig_reg[7] CE -pin EX_OP_sig_reg[8] CE -pin EX_OP_sig_reg[9] CE -pin EX_PC_sig_reg[10] CE -pin EX_PC_sig_reg[11] CE -pin EX_PC_sig_reg[12] CE -pin EX_PC_sig_reg[13] CE -pin EX_PC_sig_reg[14] CE -pin EX_PC_sig_reg[15] CE -pin EX_PC_sig_reg[1] CE -pin EX_PC_sig_reg[2] CE -pin EX_PC_sig_reg[3] CE -pin EX_PC_sig_reg[4] CE -pin EX_PC_sig_reg[5] CE -pin EX_PC_sig_reg[6] CE -pin EX_PC_sig_reg[7] CE -pin EX_PC_sig_reg[8] CE -pin EX_PC_sig_reg[9] CE -pin ID_EX_ALU_op_Out_reg[0] CE -pin ID_EX_ALU_op_Out_reg[1] CE -pin ID_EX_ALU_op_Out_reg[2] CE -pin ID_EX_BR_En_Out_reg CE -pin ID_EX_BR_Op_Out_reg[0] CE -pin ID_EX_BR_Op_Out_reg[1] CE -pin ID_EX_BR_addr_Out_reg[0] CE -pin ID_EX_BR_addr_Out_reg[10] CE -pin ID_EX_BR_addr_Out_reg[11] CE -pin ID_EX_BR_addr_Out_reg[12] CE -pin ID_EX_BR_addr_Out_reg[13] CE -pin ID_EX_BR_addr_Out_reg[14] CE -pin ID_EX_BR_addr_Out_reg[15] CE -pin ID_EX_BR_addr_Out_reg[1] CE -pin ID_EX_BR_addr_Out_reg[2] CE -pin ID_EX_BR_addr_Out_reg[3] CE -pin ID_EX_BR_addr_Out_reg[4] CE -pin ID_EX_BR_addr_Out_reg[5] CE -pin ID_EX_BR_addr_Out_reg[6] CE -pin ID_EX_BR_addr_Out_reg[7] CE -pin ID_EX_BR_addr_Out_reg[8] CE -pin ID_EX_BR_addr_Out_reg[9] CE -pin ID_EX_BR_sub_PC_Out_reg[10] CE -pin ID_EX_BR_sub_PC_Out_reg[11] CE -pin ID_EX_BR_sub_PC_Out_reg[12] CE -pin ID_EX_BR_sub_PC_Out_reg[13] CE -pin ID_EX_BR_sub_PC_Out_reg[14] CE -pin ID_EX_BR_sub_PC_Out_reg[15] CE -pin ID_EX_BR_sub_PC_Out_reg[1] CE -pin ID_EX_BR_sub_PC_Out_reg[2] CE -pin ID_EX_BR_sub_PC_Out_reg[3] CE -pin ID_EX_BR_sub_PC_Out_reg[4] CE -pin ID_EX_BR_sub_PC_Out_reg[5] CE -pin ID_EX_BR_sub_PC_Out_reg[6] CE -pin ID_EX_BR_sub_PC_Out_reg[7] CE -pin ID_EX_BR_sub_PC_Out_reg[8] CE -pin ID_EX_BR_sub_PC_Out_reg[9] CE -pin ID_EX_IN_En_Out_reg CE -pin ID_EX_L_op_Out_reg[0] CE -pin ID_EX_L_op_Out_reg[1] CE -pin ID_EX_L_op_Out_reg[2] CE -pin ID_EX_RA_data_Out_reg[0] CE -pin ID_EX_RA_data_Out_reg[10] CE -pin ID_EX_RA_data_Out_reg[11] CE -pin ID_EX_RA_data_Out_reg[12] CE -pin ID_EX_RA_data_Out_reg[13] CE -pin ID_EX_RA_data_Out_reg[14] CE -pin ID_EX_RA_data_Out_reg[15] CE -pin ID_EX_RA_data_Out_reg[1] CE -pin ID_EX_RA_data_Out_reg[2] CE -pin ID_EX_RA_data_Out_reg[3] CE -pin ID_EX_RA_data_Out_reg[4] CE -pin ID_EX_RA_data_Out_reg[5] CE -pin ID_EX_RA_data_Out_reg[6] CE -pin ID_EX_RA_data_Out_reg[7] CE -pin ID_EX_RA_data_Out_reg[8] CE -pin ID_EX_RA_data_Out_reg[9] CE -pin ID_EX_RB_data_Out_reg[0] CE -pin ID_EX_RB_data_Out_reg[10] CE -pin ID_EX_RB_data_Out_reg[11] CE -pin ID_EX_RB_data_Out_reg[12] CE -pin ID_EX_RB_data_Out_reg[13] CE -pin ID_EX_RB_data_Out_reg[14] CE -pin ID_EX_RB_data_Out_reg[15] CE -pin ID_EX_RB_data_Out_reg[1] CE -pin ID_EX_RB_data_Out_reg[2] CE -pin ID_EX_RB_data_Out_reg[3] CE -pin ID_EX_RB_data_Out_reg[4] CE -pin ID_EX_RB_data_Out_reg[5] CE -pin ID_EX_RB_data_Out_reg[6] CE -pin ID_EX_RB_data_Out_reg[7] CE -pin ID_EX_RB_data_Out_reg[8] CE -pin ID_EX_RB_data_Out_reg[9] CE -pin ID_EX_RW_En_Out_reg CE -pin ID_EX_RW_addr_Out_reg[0] CE -pin ID_EX_RW_addr_Out_reg[1] CE -pin ID_EX_RW_addr_Out_reg[2] CE -pin ID_EX_Shiftamt_Out_reg[0] CE -pin ID_EX_Shiftamt_Out_reg[1] CE -pin ID_EX_Shiftamt_Out_reg[2] CE -pin ID_EX_Shiftamt_Out_reg[3] CE -pin ID_OP_sig_reg[0] CE -pin ID_OP_sig_reg[10] CE -pin ID_OP_sig_reg[11] CE -pin ID_OP_sig_reg[12] CE -pin ID_OP_sig_reg[13] CE -pin ID_OP_sig_reg[14] CE -pin ID_OP_sig_reg[15] CE -pin ID_OP_sig_reg[1] CE -pin ID_OP_sig_reg[2] CE -pin ID_OP_sig_reg[3] CE -pin ID_OP_sig_reg[4] CE -pin ID_OP_sig_reg[5] CE -pin ID_OP_sig_reg[6] CE -pin ID_OP_sig_reg[7] CE -pin ID_OP_sig_reg[8] CE -pin ID_OP_sig_reg[9] CE -pin ID_PC_sig_reg[10] CE -pin ID_PC_sig_reg[11] CE -pin ID_PC_sig_reg[12] CE -pin ID_PC_sig_reg[13] CE -pin ID_PC_sig_reg[14] CE -pin ID_PC_sig_reg[15] CE -pin ID_PC_sig_reg[1] CE -pin ID_PC_sig_reg[2] CE -pin ID_PC_sig_reg[3] CE -pin ID_PC_sig_reg[4] CE -pin ID_PC_sig_reg[5] CE -pin ID_PC_sig_reg[6] CE -pin ID_PC_sig_reg[7] CE -pin ID_PC_sig_reg[8] CE -pin ID_PC_sig_reg[9] CE -pin MEM_OP_sig_reg[0] CE -pin MEM_OP_sig_reg[10] CE -pin MEM_OP_sig_reg[11] CE -pin MEM_OP_sig_reg[12] CE -pin MEM_OP_sig_reg[13] CE -pin MEM_OP_sig_reg[14] CE -pin MEM_OP_sig_reg[15] CE -pin MEM_OP_sig_reg[1] CE -pin MEM_OP_sig_reg[2] CE -pin MEM_OP_sig_reg[3] CE -pin MEM_OP_sig_reg[4] CE -pin MEM_OP_sig_reg[5] CE -pin MEM_OP_sig_reg[6] CE -pin MEM_OP_sig_reg[7] CE -pin MEM_OP_sig_reg[8] CE -pin MEM_OP_sig_reg[9] CE -pin MEM_PC_sig_reg[10] CE -pin MEM_PC_sig_reg[11] CE -pin MEM_PC_sig_reg[12] CE -pin MEM_PC_sig_reg[13] CE -pin MEM_PC_sig_reg[14] CE -pin MEM_PC_sig_reg[15] CE -pin MEM_PC_sig_reg[1] CE -pin MEM_PC_sig_reg[2] CE -pin MEM_PC_sig_reg[3] CE -pin MEM_PC_sig_reg[4] CE -pin MEM_PC_sig_reg[5] CE -pin MEM_PC_sig_reg[6] CE -pin MEM_PC_sig_reg[7] CE -pin MEM_PC_sig_reg[8] CE -pin MEM_PC_sig_reg[9] CE -pin MEM_WB_L_op_Out_reg[0] CE -pin MEM_WB_L_op_Out_reg[1] CE -pin MEM_WB_L_op_Out_reg[2] CE -pin MEM_WB_RW_En_Out_reg CE -pin MEM_WB_RW_addr_Out_reg[0] CE -pin MEM_WB_RW_addr_Out_reg[1] CE -pin MEM_WB_RW_addr_Out_reg[2] CE -pin MEM_WB_RW_data_Out_reg[0] CE -pin MEM_WB_RW_data_Out_reg[10] CE -pin MEM_WB_RW_data_Out_reg[11] CE -pin MEM_WB_RW_data_Out_reg[12] CE -pin MEM_WB_RW_data_Out_reg[13] CE -pin MEM_WB_RW_data_Out_reg[14] CE -pin MEM_WB_RW_data_Out_reg[15] CE -pin MEM_WB_RW_data_Out_reg[1] CE -pin MEM_WB_RW_data_Out_reg[2] CE -pin MEM_WB_RW_data_Out_reg[3] CE -pin MEM_WB_RW_data_Out_reg[4] CE -pin MEM_WB_RW_data_Out_reg[5] CE -pin MEM_WB_RW_data_Out_reg[6] CE -pin MEM_WB_RW_data_Out_reg[7] CE -pin MEM_WB_RW_data_Out_reg[8] CE -pin MEM_WB_RW_data_Out_reg[9] CE
load net ExecuteStage_n_15 -pin ExecuteStage vga_red_reg[3]_3 -pin console_display display_address_reg[0]_rep__0_7
netloc ExecuteStage_n_15 1 15 3 9620 4090 12750J 6320 15510
load net MEM_PC_sig[8]_i_1_n_0 -pin MEM_PC_sig[8]_i_1 O -pin MEM_PC_sig_reg[8] D
netloc MEM_PC_sig[8]_i_1_n_0 1 14 1 N
load net ExecuteStage_n_16 -pin ExecuteStage vga_red_reg[3]_4 -pin console_display ID_EX_BR_sub_PC_Out_reg[1]
netloc ExecuteStage_n_16 1 15 3 9520 3950 11710J 6220 15410
load net ExecuteStage_n_17 -pin ExecuteStage vga_red_reg[3]_5 -pin console_display display_address_reg[0]_rep__0_5
netloc ExecuteStage_n_17 1 15 3 9580 4050 13790J 6280 15450
load net ROM_douta[12] -attr @rip(#000000) douta[12] -pin RAM_inst douta[12] -pin ROM_inst douta[12] -pin console_display douta[3]
load net Rst_Load -port Rst_Load -pin Rst_Load_IBUF_inst I
netloc Rst_Load 1 0 5 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ
load net MEM_PC_sig[5]_i_1_n_0 -pin MEM_PC_sig[5]_i_1 O -pin MEM_PC_sig_reg[5] D
netloc MEM_PC_sig[5]_i_1_n_0 1 14 1 6690
load net EX_MEM_BR_addr_Out[1] -attr @rip(#000000) 0 -pin EX_MEM_BR_addr_Out_reg[1] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][0]
load net ID_EX_BR_Op_Out[0] -attr @rip(#000000) 0 -pin ExecuteStage ID_EX_BR_Op_Out_reg[1]_0[0] -pin ID_EX_BR_Op_Out_reg[0] Q -pin console_display ID_EX_BR_Op_Out_reg[1][0]
load net RAM_doutb[8] -attr @rip(#000000) doutb[8] -pin RAM_inst doutb[8] -pin ROM_inst doutb[8]
load net Reset -attr @rip(#000000) AR[0] -pin Decoder AR[0] -pin EX_MEM_BR_CTRL_Out_reg CLR -pin EX_MEM_BR_CTRL_Out_reg_rep CLR -pin EX_MEM_BR_addr_Out_reg[10] CLR -pin EX_MEM_BR_addr_Out_reg[11] CLR -pin EX_MEM_BR_addr_Out_reg[12] CLR -pin EX_MEM_BR_addr_Out_reg[13] CLR -pin EX_MEM_BR_addr_Out_reg[14] CLR -pin EX_MEM_BR_addr_Out_reg[15] CLR -pin EX_MEM_BR_addr_Out_reg[1] CLR -pin EX_MEM_BR_addr_Out_reg[2] CLR -pin EX_MEM_BR_addr_Out_reg[3] CLR -pin EX_MEM_BR_addr_Out_reg[4] CLR -pin EX_MEM_BR_addr_Out_reg[5] CLR -pin EX_MEM_BR_addr_Out_reg[6] CLR -pin EX_MEM_BR_addr_Out_reg[7] CLR -pin EX_MEM_BR_addr_Out_reg[8] CLR -pin EX_MEM_BR_addr_Out_reg[9] CLR -pin EX_MEM_L_op_Out_reg[0] CLR -pin EX_MEM_L_op_Out_reg[1] CLR -pin EX_MEM_L_op_Out_reg[2] CLR -pin EX_MEM_MEM_din_Out_reg[0] CLR -pin EX_MEM_MEM_din_Out_reg[10] CLR -pin EX_MEM_MEM_din_Out_reg[11] CLR -pin EX_MEM_MEM_din_Out_reg[12] CLR -pin EX_MEM_MEM_din_Out_reg[13] CLR -pin EX_MEM_MEM_din_Out_reg[14] CLR -pin EX_MEM_MEM_din_Out_reg[15] CLR -pin EX_MEM_MEM_din_Out_reg[1] CLR -pin EX_MEM_MEM_din_Out_reg[2] CLR -pin EX_MEM_MEM_din_Out_reg[3] CLR -pin EX_MEM_MEM_din_Out_reg[4] CLR -pin EX_MEM_MEM_din_Out_reg[5] CLR -pin EX_MEM_MEM_din_Out_reg[6] CLR -pin EX_MEM_MEM_din_Out_reg[7] CLR -pin EX_MEM_MEM_din_Out_reg[8] CLR -pin EX_MEM_MEM_din_Out_reg[9] CLR -pin EX_MEM_RW_En_Out_reg CLR -pin EX_MEM_RW_addr_Out_reg[0] CLR -pin EX_MEM_RW_addr_Out_reg[1] CLR -pin EX_MEM_RW_addr_Out_reg[2] CLR -pin EX_MEM_RW_data_Out_reg[0] CLR -pin EX_MEM_RW_data_Out_reg[10] CLR -pin EX_MEM_RW_data_Out_reg[11] CLR -pin EX_MEM_RW_data_Out_reg[12] CLR -pin EX_MEM_RW_data_Out_reg[13] CLR -pin EX_MEM_RW_data_Out_reg[14] CLR -pin EX_MEM_RW_data_Out_reg[15] CLR -pin EX_MEM_RW_data_Out_reg[1] CLR -pin EX_MEM_RW_data_Out_reg[2] CLR -pin EX_MEM_RW_data_Out_reg[3] CLR -pin EX_MEM_RW_data_Out_reg[4] CLR -pin EX_MEM_RW_data_Out_reg[5] CLR -pin EX_MEM_RW_data_Out_reg[6] CLR -pin EX_MEM_RW_data_Out_reg[7] CLR -pin EX_MEM_RW_data_Out_reg[8] CLR -pin EX_MEM_RW_data_Out_reg[9] CLR -pin EX_OP_sig_reg[0] CLR -pin EX_OP_sig_reg[10] CLR -pin EX_OP_sig_reg[11] CLR -pin EX_OP_sig_reg[12] CLR -pin EX_OP_sig_reg[13] CLR -pin EX_OP_sig_reg[14] CLR -pin EX_OP_sig_reg[15] CLR -pin EX_OP_sig_reg[1] CLR -pin EX_OP_sig_reg[2] CLR -pin EX_OP_sig_reg[3] CLR -pin EX_OP_sig_reg[4] CLR -pin EX_OP_sig_reg[5] CLR -pin EX_OP_sig_reg[6] CLR -pin EX_OP_sig_reg[7] CLR -pin EX_OP_sig_reg[8] CLR -pin EX_OP_sig_reg[9] CLR -pin EX_PC_sig_reg[10] CLR -pin EX_PC_sig_reg[11] CLR -pin EX_PC_sig_reg[12] CLR -pin EX_PC_sig_reg[13] CLR -pin EX_PC_sig_reg[14] CLR -pin EX_PC_sig_reg[15] CLR -pin EX_PC_sig_reg[1] CLR -pin EX_PC_sig_reg[2] CLR -pin EX_PC_sig_reg[3] CLR -pin EX_PC_sig_reg[4] CLR -pin EX_PC_sig_reg[5] CLR -pin EX_PC_sig_reg[6] CLR -pin EX_PC_sig_reg[7] CLR -pin EX_PC_sig_reg[8] CLR -pin EX_PC_sig_reg[9] CLR -pin ExecuteStage AR[0] -pin ID_EX_ALU_op_Out_reg[0] CLR -pin ID_EX_ALU_op_Out_reg[1] CLR -pin ID_EX_ALU_op_Out_reg[2] CLR -pin ID_EX_BR_En_Out_reg CLR -pin ID_EX_BR_Op_Out_reg[0] CLR -pin ID_EX_BR_Op_Out_reg[1] CLR -pin ID_EX_BR_addr_Out_reg[0] CLR -pin ID_EX_BR_addr_Out_reg[10] CLR -pin ID_EX_BR_addr_Out_reg[11] CLR -pin ID_EX_BR_addr_Out_reg[12] CLR -pin ID_EX_BR_addr_Out_reg[13] CLR -pin ID_EX_BR_addr_Out_reg[14] CLR -pin ID_EX_BR_addr_Out_reg[15] CLR -pin ID_EX_BR_addr_Out_reg[1] CLR -pin ID_EX_BR_addr_Out_reg[2] CLR -pin ID_EX_BR_addr_Out_reg[3] CLR -pin ID_EX_BR_addr_Out_reg[4] CLR -pin ID_EX_BR_addr_Out_reg[5] CLR -pin ID_EX_BR_addr_Out_reg[6] CLR -pin ID_EX_BR_addr_Out_reg[7] CLR -pin ID_EX_BR_addr_Out_reg[8] CLR -pin ID_EX_BR_addr_Out_reg[9] CLR -pin ID_EX_BR_sub_PC_Out_reg[10] CLR -pin ID_EX_BR_sub_PC_Out_reg[11] CLR -pin ID_EX_BR_sub_PC_Out_reg[12] CLR -pin ID_EX_BR_sub_PC_Out_reg[13] CLR -pin ID_EX_BR_sub_PC_Out_reg[14] CLR -pin ID_EX_BR_sub_PC_Out_reg[15] CLR -pin ID_EX_BR_sub_PC_Out_reg[1] CLR -pin ID_EX_BR_sub_PC_Out_reg[2] CLR -pin ID_EX_BR_sub_PC_Out_reg[3] CLR -pin ID_EX_BR_sub_PC_Out_reg[4] CLR -pin ID_EX_BR_sub_PC_Out_reg[5] CLR -pin ID_EX_BR_sub_PC_Out_reg[6] CLR -pin ID_EX_BR_sub_PC_Out_reg[7] CLR -pin ID_EX_BR_sub_PC_Out_reg[8] CLR -pin ID_EX_BR_sub_PC_Out_reg[9] CLR -pin ID_EX_IN_En_Out_reg CLR -pin ID_EX_L_op_Out_reg[0] CLR -pin ID_EX_L_op_Out_reg[1] CLR -pin ID_EX_L_op_Out_reg[2] CLR -pin ID_EX_RA_data_Out_reg[0] CLR -pin ID_EX_RA_data_Out_reg[10] CLR -pin ID_EX_RA_data_Out_reg[11] CLR -pin ID_EX_RA_data_Out_reg[12] CLR -pin ID_EX_RA_data_Out_reg[13] CLR -pin ID_EX_RA_data_Out_reg[14] CLR -pin ID_EX_RA_data_Out_reg[15] CLR -pin ID_EX_RA_data_Out_reg[1] CLR -pin ID_EX_RA_data_Out_reg[2] CLR -pin ID_EX_RA_data_Out_reg[3] CLR -pin ID_EX_RA_data_Out_reg[4] CLR -pin ID_EX_RA_data_Out_reg[5] CLR -pin ID_EX_RA_data_Out_reg[6] CLR -pin ID_EX_RA_data_Out_reg[7] CLR -pin ID_EX_RA_data_Out_reg[8] CLR -pin ID_EX_RA_data_Out_reg[9] CLR -pin ID_EX_RB_data_Out_reg[0] CLR -pin ID_EX_RB_data_Out_reg[10] CLR -pin ID_EX_RB_data_Out_reg[11] CLR -pin ID_EX_RB_data_Out_reg[12] CLR -pin ID_EX_RB_data_Out_reg[13] CLR -pin ID_EX_RB_data_Out_reg[14] CLR -pin ID_EX_RB_data_Out_reg[15] CLR -pin ID_EX_RB_data_Out_reg[1] CLR -pin ID_EX_RB_data_Out_reg[2] CLR -pin ID_EX_RB_data_Out_reg[3] CLR -pin ID_EX_RB_data_Out_reg[4] CLR -pin ID_EX_RB_data_Out_reg[5] CLR -pin ID_EX_RB_data_Out_reg[6] CLR -pin ID_EX_RB_data_Out_reg[7] CLR -pin ID_EX_RB_data_Out_reg[8] CLR -pin ID_EX_RB_data_Out_reg[9] CLR -pin ID_EX_RW_En_Out_reg CLR -pin ID_EX_RW_addr_Out_reg[0] CLR -pin ID_EX_RW_addr_Out_reg[1] CLR -pin ID_EX_RW_addr_Out_reg[2] CLR -pin ID_EX_Shiftamt_Out_reg[0] CLR -pin ID_EX_Shiftamt_Out_reg[1] CLR -pin ID_EX_Shiftamt_Out_reg[2] CLR -pin ID_EX_Shiftamt_Out_reg[3] CLR -pin ID_OP_sig_reg[0] CLR -pin ID_OP_sig_reg[10] CLR -pin ID_OP_sig_reg[11] CLR -pin ID_OP_sig_reg[12] CLR -pin ID_OP_sig_reg[13] CLR -pin ID_OP_sig_reg[14] CLR -pin ID_OP_sig_reg[15] CLR -pin ID_OP_sig_reg[1] CLR -pin ID_OP_sig_reg[2] CLR -pin ID_OP_sig_reg[3] CLR -pin ID_OP_sig_reg[4] CLR -pin ID_OP_sig_reg[5] CLR -pin ID_OP_sig_reg[6] CLR -pin ID_OP_sig_reg[7] CLR -pin ID_OP_sig_reg[8] CLR -pin ID_OP_sig_reg[9] CLR -pin ID_PC_sig_reg[10] CLR -pin ID_PC_sig_reg[11] CLR -pin ID_PC_sig_reg[12] CLR -pin ID_PC_sig_reg[13] CLR -pin ID_PC_sig_reg[14] CLR -pin ID_PC_sig_reg[15] CLR -pin ID_PC_sig_reg[1] CLR -pin ID_PC_sig_reg[2] CLR -pin ID_PC_sig_reg[3] CLR -pin ID_PC_sig_reg[4] CLR -pin ID_PC_sig_reg[5] CLR -pin ID_PC_sig_reg[6] CLR -pin ID_PC_sig_reg[7] CLR -pin ID_PC_sig_reg[8] CLR -pin ID_PC_sig_reg[9] CLR -pin MEM_OP_sig_reg[0] CLR -pin MEM_OP_sig_reg[10] CLR -pin MEM_OP_sig_reg[11] CLR -pin MEM_OP_sig_reg[12] CLR -pin MEM_OP_sig_reg[13] CLR -pin MEM_OP_sig_reg[14] CLR -pin MEM_OP_sig_reg[15] CLR -pin MEM_OP_sig_reg[1] CLR -pin MEM_OP_sig_reg[2] CLR -pin MEM_OP_sig_reg[3] CLR -pin MEM_OP_sig_reg[4] CLR -pin MEM_OP_sig_reg[5] CLR -pin MEM_OP_sig_reg[6] CLR -pin MEM_OP_sig_reg[7] CLR -pin MEM_OP_sig_reg[8] CLR -pin MEM_OP_sig_reg[9] CLR -pin MEM_PC_sig_reg[10] CLR -pin MEM_PC_sig_reg[11] CLR -pin MEM_PC_sig_reg[12] CLR -pin MEM_PC_sig_reg[13] CLR -pin MEM_PC_sig_reg[14] CLR -pin MEM_PC_sig_reg[15] CLR -pin MEM_PC_sig_reg[1] CLR -pin MEM_PC_sig_reg[2] CLR -pin MEM_PC_sig_reg[3] CLR -pin MEM_PC_sig_reg[4] CLR -pin MEM_PC_sig_reg[5] CLR -pin MEM_PC_sig_reg[6] CLR -pin MEM_PC_sig_reg[7] CLR -pin MEM_PC_sig_reg[8] CLR -pin MEM_PC_sig_reg[9] CLR -pin MEM_WB_L_op_Out_reg[0] CLR -pin MEM_WB_L_op_Out_reg[1] CLR -pin MEM_WB_L_op_Out_reg[2] CLR -pin MEM_WB_RW_En_Out_reg CLR -pin MEM_WB_RW_addr_Out_reg[0] CLR -pin MEM_WB_RW_addr_Out_reg[1] CLR -pin MEM_WB_RW_addr_Out_reg[2] CLR -pin MEM_WB_RW_data_Out_reg[0] CLR -pin MEM_WB_RW_data_Out_reg[10] CLR -pin MEM_WB_RW_data_Out_reg[11] CLR -pin MEM_WB_RW_data_Out_reg[12] CLR -pin MEM_WB_RW_data_Out_reg[13] CLR -pin MEM_WB_RW_data_Out_reg[14] CLR -pin MEM_WB_RW_data_Out_reg[15] CLR -pin MEM_WB_RW_data_Out_reg[1] CLR -pin MEM_WB_RW_data_Out_reg[2] CLR -pin MEM_WB_RW_data_Out_reg[3] CLR -pin MEM_WB_RW_data_Out_reg[4] CLR -pin MEM_WB_RW_data_Out_reg[5] CLR -pin MEM_WB_RW_data_Out_reg[6] CLR -pin MEM_WB_RW_data_Out_reg[7] CLR -pin MEM_WB_RW_data_Out_reg[8] CLR -pin MEM_WB_RW_data_Out_reg[9] CLR -pin RAM_inst AR[0]
netloc Reset 1 2 18 390 5670 NJ 5670 1120 5800 NJ 5800 NJ 5800 2800 8360 NJ 8360 NJ 8360 3810 8360 4250 11840 4870 11340 5490 11330 6410 11320 8760 9570 13150 6900 16010 6360 17520J 6200 19460
load net EX_PC_sig[2]_i_1_n_0 -pin EX_PC_sig[2]_i_1 O -pin EX_PC_sig_reg[2] D
netloc EX_PC_sig[2]_i_1_n_0 1 12 1 N
load net PMOD_In[6] -attr @rip(#000000) PMOD_In[6] -port PMOD_In[6] -pin PMOD_In_IBUF[6]_inst I
load net ID_EX_L_op_Out[2] -attr @rip(#000000) 2 -pin EX_MEM_L_op_Out[2]_i_1 I0 -pin ExecuteStage ID_EX_L_op_Out_reg[2][2] -pin FetchStage ID_EX_L_op_Out_reg[2]_0[2] -pin ID_EX_L_op_Out_reg[2] Q -pin console_display ID_EX_L_op_Out_reg[2][2]
load net MEM_OP_sig[14]_i_1_n_0 -pin MEM_OP_sig[14]_i_1 O -pin MEM_OP_sig_reg[14] D
netloc MEM_OP_sig[14]_i_1_n_0 1 14 1 6230
load net EX_PC_sig[9]_i_1_n_0 -pin EX_PC_sig[9]_i_1 O -pin EX_PC_sig_reg[9] D
netloc EX_PC_sig[9]_i_1_n_0 1 12 1 4830
load net NPC_sig[10] -attr @rip(#000000) addrb[9] -pin FetchStage addrb[9] -pin RAM_inst addrb[9]
load net Switch_In_IBUF[9] -attr @rip(#000000) 3 -pin Switch_In_IBUF[9]_inst O -pin console_display Switch_In_IBUF[3]
load net ExecuteStage_n_40 -pin Decoder ID_OP_sig_reg[9]_2 -pin ExecuteStage ID_EX_BR_addr_Out_reg[11]
netloc ExecuteStage_n_40 1 17 2 16910 7680 17800J
load net ExecuteStage_n_41 -pin Decoder ID_EX_BR_sub_PC_Out_reg[11] -pin ExecuteStage ID_EX_BR_addr_Out_reg[11]_0
netloc ExecuteStage_n_41 1 17 2 17070 7360 18440J
load net ExecuteStage_n_42 -pin Decoder ID_OP_sig_reg[8]_0 -pin ExecuteStage ID_EX_BR_addr_Out_reg[15]
netloc ExecuteStage_n_42 1 17 2 16850 7600 17520J
load net ExecuteStage_n_43 -pin Decoder ID_OP_sig_reg[9]_0 -pin ExecuteStage ID_EX_BR_addr_Out_reg[15]_0
netloc ExecuteStage_n_43 1 17 2 16790 7660 18020J
load net MEM_OP_sig[8]_i_1_n_0 -pin MEM_OP_sig[8]_i_1 O -pin MEM_OP_sig_reg[8] D
netloc MEM_OP_sig[8]_i_1_n_0 1 14 1 6670
load net ExecuteStage_n_44 -pin Decoder ID_PC_sig_reg[13] -pin ExecuteStage ID_EX_BR_addr_Out_reg[13]_0
netloc ExecuteStage_n_44 1 17 2 16730 7720 17540J
load net ExecuteStage_n_45 -pin Decoder EX_MEM_RW_data_Out_reg[4] -pin ExecuteStage ID_EX_BR_addr_Out_reg[4]
netloc ExecuteStage_n_45 1 17 2 NJ 4640 18560
load net ExecuteStage_n_46 -pin Decoder EX_MEM_RW_data_Out_reg[4]_0 -pin ExecuteStage ID_EX_RB_data_Out_reg[4]
netloc ExecuteStage_n_46 1 17 2 16950 7020 NJ
load net ROM_douta[13] -attr @rip(#000000) douta[13] -pin RAM_inst douta[13] -pin ROM_inst douta[13] -pin console_display douta[4]
load net ExecuteStage_n_47 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[15] -pin EX_MEM_RW_data_Out_reg[15] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[15]
load net EX_MEM_MEM_din_Out[1]_i_1_n_0 -pin EX_MEM_MEM_din_Out[1]_i_1 O -pin EX_MEM_MEM_din_Out_reg[1] D
netloc EX_MEM_MEM_din_Out[1]_i_1_n_0 1 13 1 5730
load net ExecuteStage_n_48 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[14] -pin EX_MEM_RW_data_Out_reg[14] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[14]
load net ID_OP_sig[3] -attr @rip(#000000) D[3] -pin ID_OP_sig_reg[3] D -pin ROM_inst D[3]
load net EX_MEM_BR_addr_Out[2] -attr @rip(#000000) 1 -pin EX_MEM_BR_addr_Out_reg[2] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][1]
load net ExecuteStage_n_49 -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15]_0[13] -pin EX_MEM_RW_data_Out_reg[13] D -pin ExecuteStage EX_MEM_RW_data_Out_reg[15]_0[13]
load net W_data[9] -attr @rip(#000000) 9 -pin MEM_WB_RW_data_Out_reg[9] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][9]
load net main_buffer_reg_i_19_n_0 -pin console_display main_buffer_reg_i_19 -pin main_buffer_reg_i_19 Q
netloc main_buffer_reg_i_19_n_0 1 15 1 7920
load net ID_EX_L_op_Out[1] -attr @rip(#000000) 1 -pin EX_MEM_L_op_Out[1]_i_1 I0 -pin ExecuteStage ID_EX_L_op_Out_reg[2][1] -pin FetchStage ID_EX_L_op_Out_reg[2]_0[1] -pin ID_EX_L_op_Out_reg[1] Q -pin console_display ID_EX_L_op_Out_reg[2][1]
load net register_5[1] -attr @rip(#000000) ID_EX_RB_data_Out_reg[2][0] -pin Decoder ID_EX_RB_data_Out_reg[2][0] -pin console_display reg_file_reg[5][2][0]
load net EX_OP_sig[14]_i_1_n_0 -pin EX_OP_sig[14]_i_1 O -pin EX_OP_sig_reg[14] D
netloc EX_OP_sig[14]_i_1_n_0 1 12 1 N
load net Switch_In_IBUF[8] -attr @rip(#000000) 2 -pin Switch_In_IBUF[8]_inst O -pin console_display Switch_In_IBUF[2]
load net ID_EX_BR_addr_Out[9]_i_6_n_0 -pin ID_EX_BR_addr_Out[7]_i_4 I3 -pin ID_EX_BR_addr_Out[8]_i_4 I3 -pin ID_EX_BR_addr_Out[9]_i_4 I3 -pin ID_EX_BR_addr_Out[9]_i_6 O
netloc ID_EX_BR_addr_Out[9]_i_6_n_0 1 15 3 7300 9910 NJ 9910 16730
load net ExecuteStage_n_30 -pin ExecuteStage vga_red_reg[3]_11 -pin console_display display_address_reg[0]_rep__2_0
netloc ExecuteStage_n_30 1 15 3 9740 4210 12150J 6440 15470
load net ID_EX_BR_sub_PC_Out[11]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[11]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[11] D
netloc ID_EX_BR_sub_PC_Out[11]_i_1_n_0 1 15 1 N
load net ExecuteStage_n_31 -attr @rip(#000000) D[4] -pin ExecuteStage D[4] -pin ID_EX_BR_addr_Out_reg[14] D
load net register_1[1] -attr @rip(#000000) ID_EX_BR_addr_Out_reg[1][0] -pin Decoder ID_EX_BR_addr_Out_reg[1][0] -pin console_display reg_file_reg[1][1][0]
netloc register_1[1] 1 15 5 9940 8910 13130J 9250 15690J 9350 NJ 9350 20620
load net ExecuteStage_n_32 -attr @rip(#000000) D[3] -pin ExecuteStage D[3] -pin ID_EX_BR_addr_Out_reg[13] D
load net EX_MEM_BR_addr_Out[14]_i_1_n_0 -pin EX_MEM_BR_addr_Out[14]_i_1 O -pin EX_MEM_BR_addr_Out_reg[14] D
netloc EX_MEM_BR_addr_Out[14]_i_1_n_0 1 4 1 1100
load net ExecuteStage_n_33 -attr @rip(#000000) D[2] -pin ExecuteStage D[2] -pin ID_EX_BR_addr_Out_reg[12] D
load net ExecuteStage_n_34 -attr @rip(#000000) D[1] -pin ExecuteStage D[1] -pin ID_EX_BR_addr_Out_reg[11] D
load net ExecuteStage_n_35 -attr @rip(#000000) D[0] -pin ExecuteStage D[0] -pin ID_EX_BR_addr_Out_reg[9] D
load net MEM_PC_sig[12]_i_1_n_0 -pin MEM_PC_sig[12]_i_1 O -pin MEM_PC_sig_reg[12] D
netloc MEM_PC_sig[12]_i_1_n_0 1 14 1 N
load net ExecuteStage_n_36 -pin Decoder ID_PC_sig_reg[9] -pin ExecuteStage ID_EX_BR_addr_Out_reg[9]
netloc ExecuteStage_n_36 1 17 2 16930 7700 17560J
load net PMOD_In[0] -attr @rip(#000000) PMOD_In[0] -port PMOD_In[0] -pin PMOD_In_IBUF[0]_inst I
load net ID_EX_BR_addr_Out[15]_i_7_n_0 -pin Decoder ID_OP_sig_reg[11]_0 -pin ExecuteStage ID_OP_sig_reg[11] -pin ID_EX_BR_addr_Out[15]_i_7 O
netloc ID_EX_BR_addr_Out[15]_i_7_n_0 1 16 3 13090 8970 16410J 8980 18640
load net Switch_In_IBUF[14] -pin ExecuteStage Switch_In_IBUF[6] -pin Switch_In_IBUF[14]_inst O -pin console_display Switch_In_IBUF[4]
load net MEM_OP_sig[9]_i_1_n_0 -pin MEM_OP_sig[9]_i_1 O -pin MEM_OP_sig_reg[9] D
netloc MEM_OP_sig[9]_i_1_n_0 1 14 1 6250
load net ID_OP_sig[2] -attr @rip(#000000) D[2] -pin ID_OP_sig_reg[2] D -pin ROM_inst D[2]
load net EX_OP_sig[9]_i_1_n_0 -pin EX_OP_sig[9]_i_1 O -pin EX_OP_sig_reg[9] D
netloc EX_OP_sig[9]_i_1_n_0 1 12 1 4950
load net ExecuteStage_n_39 -pin Decoder ID_EX_IN_En_Out_reg_0 -pin ExecuteStage ID_EX_BR_addr_Out_reg[12] -pin console_display ID_EX_IN_En_Out_reg_0
netloc ExecuteStage_n_39 1 15 4 8940 8870 12610J 9170 16230 7400 18400J
load net EX_MEM_L_op_Out[2] -attr @rip(#000000) 2 -pin EX_MEM_L_op_Out_reg[2] Q -pin MEM_WB_L_op_Out_reg[2] D -pin RAM_inst EX_MEM_L_op_Out_reg[2][2]
load net ExecuteStage_n_2 -pin ExecuteStage vga_red_reg[3] -pin console_display display_address_reg[0]_rep_4
netloc ExecuteStage_n_2 1 15 3 9800 4270 11730J 6500 15670
load net debug_console_IBUF -pin console_display debug_console_IBUF -pin debug_console_IBUF_inst O
netloc debug_console_IBUF 1 15 1 7560J
load net EX_MEM_BR_addr_Out[3] -attr @rip(#000000) 2 -pin EX_MEM_BR_addr_Out_reg[3] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][2]
load net ExecuteStage_n_3 -pin Decoder ID_EX_IN_En_Out_reg_1 -pin ExecuteStage EX_MEM_RW_data_Out_reg[12]
netloc ExecuteStage_n_3 1 17 2 17150 7420 18380J
load net ExecuteStage_n_4 -pin Decoder ID_EX_IN_En_Out_reg_2 -pin ExecuteStage EX_MEM_RW_data_Out_reg[13]
netloc ExecuteStage_n_4 1 17 2 17090 7440 17560J
load net ID_EX_L_op_Out[0] -attr @rip(#000000) 0 -pin EX_MEM_L_op_Out[0]_i_1 I0 -pin ExecuteStage ID_EX_L_op_Out_reg[2][0] -pin FetchStage ID_EX_L_op_Out_reg[2]_0[0] -pin ID_EX_L_op_Out_reg[0] Q -pin console_display ID_EX_L_op_Out_reg[2][0]
load net Decoder_n_80 -pin Decoder ID_EX_BR_addr_Out_reg[11]_0 -pin ExecuteStage ID_OP_sig_reg[8]_0
netloc Decoder_n_80 1 16 4 14350 6660 15790J 5980 NJ 5980 20520
load net EX_PC_sig[13]_i_1_n_0 -pin EX_PC_sig[13]_i_1 O -pin EX_PC_sig_reg[13] D
netloc EX_PC_sig[13]_i_1_n_0 1 12 1 4710
load net Decoder_n_81 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][11] -pin Decoder ID_EX_RA_data_Out_reg[15][11] -pin ID_EX_RA_data_Out_reg[15] D
load net MEM_PC_sig[2]_i_1_n_0 -pin MEM_PC_sig[2]_i_1 O -pin MEM_PC_sig_reg[2] D
netloc MEM_PC_sig[2]_i_1_n_0 1 14 1 6130
load net Decoder_n_82 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][10] -pin Decoder ID_EX_RA_data_Out_reg[15][10] -pin ID_EX_RA_data_Out_reg[14] D
load net ID_EX_L_op_Out[2]_i_1_n_0 -pin ID_EX_L_op_Out[2]_i_1 O -pin ID_EX_L_op_Out_reg[2] D
netloc ID_EX_L_op_Out[2]_i_1_n_0 1 10 1 3730
load net Decoder_n_83 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][9] -pin Decoder ID_EX_RA_data_Out_reg[15][9] -pin ID_EX_RA_data_Out_reg[10] D
load net ID_EX_BR_addr_Out[7]_i_5_n_0 -pin Decoder ID_OP_sig_reg[9]_3 -pin ID_EX_BR_addr_Out[7]_i_5 O
netloc ID_EX_BR_addr_Out[7]_i_5_n_0 1 18 1 18620
load net Decoder_n_84 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][8] -pin Decoder ID_EX_RA_data_Out_reg[15][8] -pin ID_EX_RA_data_Out_reg[8] D
load net Decoder_n_85 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][7] -pin Decoder ID_EX_RA_data_Out_reg[15][7] -pin ID_EX_RA_data_Out_reg[7] D
load net Decoder_n_86 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][6] -pin Decoder ID_EX_RA_data_Out_reg[15][6] -pin ID_EX_RA_data_Out_reg[6] D
load net EX_PC_sig[7] -attr @rip(#000000) 6 -pin EX_PC_sig_reg[7] Q -pin MEM_PC_sig[7]_i_1 I0 -pin console_display EX_PC_sig_reg[15][6]
load net Decoder_n_87 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][5] -pin Decoder ID_EX_RA_data_Out_reg[15][5] -pin ID_EX_RA_data_Out_reg[5] D
load net EX_MEM_RW_data_Out[8] -pin EX_MEM_RW_data_Out_reg[8] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][8] -pin MEM_WB_RW_data_Out_reg[8] D -pin RAM_inst Q[7] -pin console_display Q[8]
load net main_buffer_reg_i_23_n_0 -pin console_display main_buffer_reg_i_23 -pin main_buffer_reg_i_23 Q
netloc main_buffer_reg_i_23_n_0 1 15 1 7700
load net Decoder_n_88 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][4] -pin Decoder ID_EX_RA_data_Out_reg[15][4] -pin ID_EX_RA_data_Out_reg[4] D
load net MEM_PC_sig[3]_i_1_n_0 -pin MEM_PC_sig[3]_i_1 O -pin MEM_PC_sig_reg[3] D
netloc MEM_PC_sig[3]_i_1_n_0 1 14 1 6670
load net Decoder_n_89 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][3] -pin Decoder ID_EX_RA_data_Out_reg[15][3] -pin ID_EX_RA_data_Out_reg[3] D
load net ID_OP_sig[1] -attr @rip(#000000) D[1] -pin ID_OP_sig_reg[1] D -pin ROM_inst D[1]
load net PMOD_In[1] -attr @rip(#000000) PMOD_In[1] -port PMOD_In[1] -pin PMOD_In_IBUF[1]_inst I
load net ID_EX_Shiftamt_Out[0]_i_1_n_0 -pin ID_EX_Shiftamt_Out[0]_i_1 O -pin ID_EX_Shiftamt_Out_reg[0] D
netloc ID_EX_Shiftamt_Out[0]_i_1_n_0 1 14 1 N
load net EX_MEM_BR_addr_Out[4] -attr @rip(#000000) 3 -pin EX_MEM_BR_addr_Out_reg[4] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][3]
load net EX_OP_sig[13]_i_1_n_0 -pin EX_OP_sig[13]_i_1 O -pin EX_OP_sig_reg[13] D
netloc EX_OP_sig[13]_i_1_n_0 1 12 1 N
load net Decoder_n_90 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][2] -pin Decoder ID_EX_RA_data_Out_reg[15][2] -pin ID_EX_RA_data_Out_reg[2] D
load net ID_EX_BR_sub_PC_Out[12]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[12]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[12] D
netloc ID_EX_BR_sub_PC_Out[12]_i_1_n_0 1 14 1 6150
load net Decoder_n_91 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][1] -pin Decoder ID_EX_RA_data_Out_reg[15][1] -pin ID_EX_RA_data_Out_reg[1] D
load net Decoder_n_92 -attr @rip(#000000) ID_EX_RA_data_Out_reg[15][0] -pin Decoder ID_EX_RA_data_Out_reg[15][0] -pin ID_EX_RA_data_Out_reg[0] D
load net EX_MEM_RW_En_In -pin EX_MEM_RW_En_Out_i_1 I0 -pin ID_EX_RW_En_Out_reg Q -pin console_display EX_MEM_RW_En_In
netloc EX_MEM_RW_En_In 1 12 4 4810 6350 5330J 6210 6190J 6190 7800J
load net Decoder_n_93 -pin Decoder ID_EX_BR_addr_Out_reg[12] -pin ExecuteStage ID_OP_sig_reg[8]_1
netloc Decoder_n_93 1 16 4 14370 6680 15810J 6000 NJ 6000 20560
load net Decoder_n_94 -pin Decoder vga_red_reg[3]_56 -pin ExecuteStage reg_file_reg[3][13]
netloc Decoder_n_94 1 16 4 14510 6840 15970J 6160 18140J 6140 20700
load net EX_PC_sig[6] -attr @rip(#000000) 5 -pin EX_PC_sig_reg[6] Q -pin MEM_PC_sig[6]_i_1 I0 -pin console_display EX_PC_sig_reg[15][5]
load net EX_MEM_RW_data_Out[15] -pin EX_MEM_RW_data_Out_reg[15] Q -pin MEM_WB_RW_data_Out_reg[15] D -pin RAM_inst Q[14] -pin console_display Q[15]
load net Decoder_n_95 -pin Decoder vga_red_reg[3]_57 -pin ExecuteStage reg_file_reg[3][14]
netloc Decoder_n_95 1 16 4 14530 6860 15990J 6180 18200J 6160 20680
load net Decoder_n_96 -pin Decoder ID_EX_BR_addr_Out_reg[13] -pin ExecuteStage ID_OP_sig_reg[8]_2
netloc Decoder_n_96 1 16 4 14390 6720 15850J 6040 17980J 6020 20540
load net Decoder_n_97 -pin Decoder ID_EX_BR_addr_Out_reg[11]_1 -pin ExecuteStage ID_OP_sig_reg[8]_3
netloc Decoder_n_97 1 16 4 14410 6740 15870J 6060 18000J 6040 20460
load net EX_MEM_RW_data_Out[9] -pin EX_MEM_RW_data_Out_reg[9] Q -pin MEM_WB_RW_data_Out_reg[9] D -pin RAM_inst Q[8] -pin console_display Q[9]
load net Decoder_n_98 -pin Decoder ID_EX_BR_addr_Out_reg[9]_0 -pin ExecuteStage ID_OP_sig_reg[8]_4
netloc Decoder_n_98 1 16 4 14430 6760 15890J 6080 18020J 6060 19500
load net Decoder_n_99 -pin Decoder ID_EX_RB_data_Out_reg[1] -pin RAM_inst ID_OP_sig_reg[2]
netloc Decoder_n_99 1 14 6 6670 2450 NJ 2450 NJ 2450 NJ 2450 NJ 2450 20580
load net ID_OP_sig[0] -attr @rip(#000000) D[0] -pin ID_OP_sig_reg[0] D -pin ROM_inst D[0]
load net PMOD_In[2] -attr @rip(#000000) PMOD_In[2] -port PMOD_In[2] -pin PMOD_In_IBUF[2]_inst I
load net EX_OP_sig[0]_i_1_n_0 -pin EX_OP_sig[0]_i_1 O -pin EX_OP_sig_reg[0] D
netloc EX_OP_sig[0]_i_1_n_0 1 12 1 4750
load net Decoder_n_60 -pin Decoder vga_red_reg[3]_50 -pin console_display reg_file_reg[0][7]
netloc Decoder_n_60 1 15 5 9280 10230 NJ 10230 NJ 10230 NJ 10230 20020
load net Decoder_n_61 -pin Decoder vga_red_reg[3]_51 -pin console_display reg_file_reg[1][7]
netloc Decoder_n_61 1 15 5 9340 10250 NJ 10250 NJ 10250 NJ 10250 20000
load net EX_PC_sig[11]_i_1_n_0 -pin EX_PC_sig[11]_i_1 O -pin EX_PC_sig_reg[11] D
netloc EX_PC_sig[11]_i_1_n_0 1 12 1 4730
load net ID_EX_BR_addr_Out[10] -attr @rip(#000000) 10 -pin EX_MEM_BR_addr_Out[10]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[10] Q -pin console_display ID_EX_BR_addr_Out_reg[15][10]
load net Decoder_n_62 -pin Decoder vga_red_reg[3]_52 -pin console_display reg_file_reg[4][7]
netloc Decoder_n_62 1 15 5 9360 10270 NJ 10270 NJ 10270 NJ 10270 19980
load net EX_MEM_BR_addr_Out[5] -attr @rip(#000000) 4 -pin EX_MEM_BR_addr_Out_reg[5] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][4]
load net Decoder_n_63 -pin Decoder vga_red_reg[3]_53 -pin console_display reg_file_reg[5][7]
netloc Decoder_n_63 1 15 5 9780 10330 NJ 10330 NJ 10330 NJ 10330 20060
load net Decoder_n_64 -pin Decoder vga_red_reg[3]_54 -pin console_display reg_file_reg[5][6]
netloc Decoder_n_64 1 15 5 9700 10350 NJ 10350 NJ 10350 NJ 10350 20040
load net ID_EX_BR_sub_PC_Out[1]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[1]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[1] D
netloc ID_EX_BR_sub_PC_Out[1]_i_1_n_0 1 15 1 8640
load net Decoder_n_65 -pin Decoder vga_red_reg[3]_55 -pin console_display display_address_reg[0]_rep__1_1
netloc Decoder_n_65 1 15 5 8860 9130 11850J 9530 16910J 9710 NJ 9710 19660
load net register_5[2] -attr @rip(#000000) ID_EX_RB_data_Out_reg[2][1] -pin Decoder ID_EX_RB_data_Out_reg[2][1] -pin console_display reg_file_reg[5][2][1]
load net EX_PC_sig[5] -attr @rip(#000000) 4 -pin EX_PC_sig_reg[5] Q -pin MEM_PC_sig[5]_i_1 I0 -pin console_display EX_PC_sig_reg[15][4]
load net Decoder_n_66 -attr @rip(#000000) D[10] -pin Decoder D[10] -pin ID_EX_BR_addr_Out_reg[15] D
load net ID_EX_BR_sub_PC_Out[7]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[7]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[7] D
netloc ID_EX_BR_sub_PC_Out[7]_i_1_n_0 1 15 1 10500
load net Decoder_n_67 -attr @rip(#000000) D[9] -pin Decoder D[9] -pin ID_EX_BR_addr_Out_reg[10] D
load net EX_MEM_RW_data_Out[6] -pin EX_MEM_RW_data_Out_reg[6] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][6] -pin MEM_WB_RW_data_Out_reg[6] D -pin RAM_inst Q[5] -pin console_display Q[6]
load net Decoder_n_68 -attr @rip(#000000) D[8] -pin Decoder D[8] -pin ID_EX_BR_addr_Out_reg[8] D
load net Decoder_n_69 -attr @rip(#000000) D[7] -pin Decoder D[7] -pin ID_EX_BR_addr_Out_reg[7] D
load net MEM_PC_sig[4]_i_1_n_0 -pin MEM_PC_sig[4]_i_1 O -pin MEM_PC_sig_reg[4] D
netloc MEM_PC_sig[4]_i_1_n_0 1 14 1 6110
load net MEM_OP_sig[10]_i_1_n_0 -pin MEM_OP_sig[10]_i_1 O -pin MEM_OP_sig_reg[10] D
netloc MEM_OP_sig[10]_i_1_n_0 1 14 1 6290
load net MEM_OP_sig[12]_i_1_n_0 -pin MEM_OP_sig[12]_i_1 O -pin MEM_OP_sig_reg[12] D
netloc MEM_OP_sig[12]_i_1_n_0 1 14 1 N
load net Switch_In_IBUF[4] -attr @rip(#000000) 4 -pin ExecuteStage Switch_In_IBUF[4] -pin Switch_In_IBUF[4]_inst O
load net Decoder_n_70 -attr @rip(#000000) D[6] -pin Decoder D[6] -pin ID_EX_BR_addr_Out_reg[6] D
load net Decoder_n_71 -attr @rip(#000000) D[5] -pin Decoder D[5] -pin ID_EX_BR_addr_Out_reg[5] D
load net Decoder_n_72 -attr @rip(#000000) D[4] -pin Decoder D[4] -pin ID_EX_BR_addr_Out_reg[4] D
load net ID_OP_sig[7] -attr @rip(#000000) D[7] -pin ID_OP_sig_reg[7] D -pin ROM_inst D[7]
load net Decoder_n_73 -attr @rip(#000000) D[3] -pin Decoder D[3] -pin ID_EX_BR_addr_Out_reg[3] D
load net EX_PC_sig[4] -attr @rip(#000000) 3 -pin EX_PC_sig_reg[4] Q -pin MEM_PC_sig[4]_i_1 I0 -pin console_display EX_PC_sig_reg[15][3]
load net Decoder_n_74 -attr @rip(#000000) D[2] -pin Decoder D[2] -pin ID_EX_BR_addr_Out_reg[2] D
load net EX_MEM_RW_data_Out[13] -pin EX_MEM_RW_data_Out_reg[13] Q -pin MEM_WB_RW_data_Out_reg[13] D -pin RAM_inst Q[12] -pin console_display Q[13]
load net Decoder_n_75 -attr @rip(#000000) D[1] -pin Decoder D[1] -pin ID_EX_BR_addr_Out_reg[1] D
load net Decoder_n_76 -attr @rip(#000000) D[0] -pin Decoder D[0] -pin ID_EX_BR_addr_Out_reg[0] D
load net ID_PC_sig[12] -attr @rip(#000000) D[11] -pin FetchStage D[11] -pin ID_PC_sig_reg[12] D
load net Decoder_n_77 -pin Decoder ID_EX_BR_addr_Out_reg[11] -pin ExecuteStage ID_PC_sig_reg[10]
netloc Decoder_n_77 1 16 4 14450 6780 15910J 6100 18040J 6080 19480
load net EX_MEM_RW_data_Out[7] -pin EX_MEM_RW_data_Out_reg[7] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][7] -pin MEM_WB_RW_data_Out_reg[7] D -pin RAM_inst Q[6] -pin console_display Q[7]
load net Decoder_n_78 -pin Decoder ID_EX_BR_addr_Out_reg[9] -pin ExecuteStage ID_OP_sig_reg[7]
netloc Decoder_n_78 1 16 4 14330 6640 15770J 5960 NJ 5960 20480
load net Decoder_n_79 -pin Decoder ID_EX_BR_addr_Out_reg[14] -pin ExecuteStage ID_PC_sig_reg[14]
netloc Decoder_n_79 1 16 4 14490 6820 15950J 6140 18120J 6120 20440
load net ID_EX_ALU_op_Out[1]_i_1_n_0 -pin ID_EX_ALU_op_Out[1]_i_1 O -pin ID_EX_ALU_op_Out_reg[1] D
netloc ID_EX_ALU_op_Out[1]_i_1_n_0 1 14 1 6570
load net EX_MEM_MEM_din_Out[8]_i_1_n_0 -pin EX_MEM_MEM_din_Out[8]_i_1 O -pin EX_MEM_MEM_din_Out_reg[8] D
netloc EX_MEM_MEM_din_Out[8]_i_1_n_0 1 13 1 N
load net EX_MEM_MEM_din_Out[15]_i_1_n_0 -pin EX_MEM_MEM_din_Out[15]_i_1 O -pin EX_MEM_MEM_din_Out_reg[15] D
netloc EX_MEM_MEM_din_Out[15]_i_1_n_0 1 13 1 5250
load net ID_EX_RW_addr_Out[2] -attr @rip(#000000) 2 -pin EX_MEM_RW_addr_Out[2]_i_1 I0 -pin ID_EX_RW_addr_Out_reg[2] Q -pin console_display ID_EX_RW_addr_Out_reg[2][2]
load net MEM_PC_sig[13]_i_1_n_0 -pin MEM_PC_sig[13]_i_1 O -pin MEM_PC_sig_reg[13] D
netloc MEM_PC_sig[13]_i_1_n_0 1 14 1 N
load net Switch_In_IBUF[5] -attr @rip(#000000) 5 -pin ExecuteStage Switch_In_IBUF[5] -pin Switch_In_IBUF[5]_inst O
load net ID_OP_sig[6] -attr @rip(#000000) D[6] -pin ID_OP_sig_reg[6] D -pin ROM_inst D[6]
load net ID_EX_ALU_op_Out[2]_i_1_n_0 -pin ID_EX_ALU_op_Out[2]_i_1 O -pin ID_EX_ALU_op_Out_reg[2] D
netloc ID_EX_ALU_op_Out[2]_i_1_n_0 1 14 1 N
load net ID_EX_BR_addr_Out[12] -attr @rip(#000000) 12 -pin EX_MEM_BR_addr_Out[12]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[12] Q -pin console_display ID_EX_BR_addr_Out_reg[15][12]
load net EX_MEM_RW_data_Out[4] -pin EX_MEM_RW_data_Out_reg[4] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][4] -pin MEM_WB_RW_data_Out_reg[4] D -pin RAM_inst Q[3] -pin console_display Q[4]
load net EX_MEM_BR_CTRL_Out -pin EX_MEM_BR_CTRL_Out_reg D -pin ExecuteStage EX_MEM_BR_CTRL_Out
netloc EX_MEM_BR_CTRL_Out 1 17 1 17170
load net EX_MEM_RW_data_Out[14] -pin EX_MEM_RW_data_Out_reg[14] Q -pin MEM_WB_RW_data_Out_reg[14] D -pin RAM_inst Q[13] -pin console_display Q[14]
load net ID_PC_sig[11] -attr @rip(#000000) D[10] -pin FetchStage D[10] -pin ID_PC_sig_reg[11] D
load net EX_MEM_BR_addr_Out[15] -attr @rip(#000000) 14 -pin EX_MEM_BR_addr_Out_reg[15] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][14]
load net EX_OP_sig_reg_n_0_[9] -attr @rip(#000000) 1 -pin EX_OP_sig_reg[9] Q -pin MEM_OP_sig[9]_i_1 I0 -pin console_display EX_OP_sig_reg[15][1]
load net EX_MEM_L_op_Out[1]_i_1_n_0 -pin EX_MEM_L_op_Out[1]_i_1 O -pin EX_MEM_L_op_Out_reg[1] D
netloc EX_MEM_L_op_Out[1]_i_1_n_0 1 12 1 4790
load net ID_EX_RW_addr_Out[1] -attr @rip(#000000) 1 -pin EX_MEM_RW_addr_Out[1]_i_1 I0 -pin ID_EX_RW_addr_Out_reg[1] Q -pin console_display ID_EX_RW_addr_Out_reg[2][1]
load net ID_EX_RB_data_Out[13] -attr @rip(#000000) 13 -pin EX_MEM_MEM_din_Out[13]_i_1 I0 -pin ExecuteStage Q[13] -pin ID_EX_RB_data_Out_reg[13] Q -pin console_display ID_EX_RB_data_Out_reg[15][13]
load net ID_OP_sig[5] -attr @rip(#000000) D[5] -pin ID_OP_sig_reg[5] D -pin ROM_inst D[5]
load net ID_EX_BR_addr_Out[5]_i_4_n_0 -pin Decoder ID_OP_sig_reg[4] -pin ID_EX_BR_addr_Out[5]_i_4 O
netloc ID_EX_BR_addr_Out[5]_i_4_n_0 1 18 1 17580
load net Switch_In_IBUF[6] -attr @rip(#000000) 0 -pin Switch_In_IBUF[6]_inst O -pin console_display Switch_In_IBUF[0]
load net ID_EX_BR_addr_Out[11] -attr @rip(#000000) 11 -pin EX_MEM_BR_addr_Out[11]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[11] Q -pin console_display ID_EX_BR_addr_Out_reg[15][11]
load net ID_EX_RA_data_Out[10] -attr @rip(#000000) 10 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][10] -pin ID_EX_RA_data_Out_reg[10] Q -pin console_display ID_EX_RA_data_Out_reg[15][10]
load net EX_MEM_RW_data_Out[11] -pin EX_MEM_RW_data_Out_reg[11] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][10] -pin MEM_WB_RW_data_Out_reg[11] D -pin RAM_inst Q[10] -pin console_display Q[11]
load net ID_PC_sig[10] -attr @rip(#000000) D[9] -pin FetchStage D[9] -pin ID_PC_sig_reg[10] D
load net h_sync_signal_OBUF -pin console_display opcode_reg[0]_0 -pin h_sync_signal_OBUF_inst I
netloc h_sync_signal_OBUF 1 16 5 11630J 9270 17130J 9370 NJ 9370 20800J 9340 NJ
load net EX_MEM_RW_data_Out[5] -pin EX_MEM_RW_data_Out_reg[5] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][5] -pin MEM_WB_RW_data_Out_reg[5] D -pin RAM_inst Q[4] -pin console_display Q[5]
load net EX_MEM_RW_data_In[10] -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15][4] -pin Decoder EX_MEM_RW_data_In[2] -pin ExecuteStage EX_MEM_RW_data_Out_reg[15][4]
load net ID_EX_RW_addr_Out[0] -attr @rip(#000000) 0 -pin EX_MEM_RW_addr_Out[0]_i_1 I0 -pin ID_EX_RW_addr_Out_reg[0] Q -pin console_display ID_EX_RW_addr_Out_reg[2][0]
load net Clk -port Clk -pin Clk_IBUF_inst I
netloc Clk 1 0 1 NJ
load net vga_red_OBUF[3] -attr @rip(#000000) vga_red[3][2] -pin console_display vga_red[3][2] -pin vga_red_OBUF[3]_inst I
load net ID_OP_sig[4] -attr @rip(#000000) D[4] -pin ID_OP_sig_reg[4] D -pin ROM_inst D[4]
load net ID_EX_RB_data_Out[12] -attr @rip(#000000) 12 -pin EX_MEM_MEM_din_Out[12]_i_1 I0 -pin ExecuteStage Q[12] -pin ID_EX_RB_data_Out_reg[12] Q -pin console_display ID_EX_RB_data_Out_reg[15][12]
load net ID_EX_BR_sub_PC_Out[6]_i_2_n_0 -pin ID_EX_BR_sub_PC_Out[6]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[6]_i_2 O
netloc ID_EX_BR_sub_PC_Out[6]_i_2_n_0 1 14 1 6270
load net EX_MEM_RW_data_Out[2] -pin EX_MEM_RW_data_Out_reg[2] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][2] -pin MEM_WB_RW_data_Out_reg[2] D -pin RAM_inst Q[1] -pin console_display Q[2]
load net Switch_In_IBUF[7] -attr @rip(#000000) 1 -pin Switch_In_IBUF[7]_inst O -pin console_display Switch_In_IBUF[1]
load net EX_MEM_RW_data_Out[12] -pin EX_MEM_RW_data_Out_reg[12] Q -pin MEM_WB_RW_data_Out_reg[12] D -pin RAM_inst Q[11] -pin console_display Q[12]
load net EX_MEM_BR_addr_Out[13] -attr @rip(#000000) 12 -pin EX_MEM_BR_addr_Out_reg[13] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][12]
load net ID_EX_BR_addr_Out[14] -attr @rip(#000000) 14 -pin EX_MEM_BR_addr_Out[14]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[14] Q -pin console_display ID_EX_BR_addr_Out_reg[15][14]
load net EX_PC_sig[9] -attr @rip(#000000) 8 -pin EX_PC_sig_reg[9] Q -pin MEM_PC_sig[9]_i_1 I0 -pin console_display EX_PC_sig_reg[15][8]
load net ID_EX_BR_Op_Out[0]_i_1_n_0 -pin ID_EX_BR_Op_Out[0]_i_1 O -pin ID_EX_BR_Op_Out_reg[0] D
netloc ID_EX_BR_Op_Out[0]_i_1_n_0 1 14 1 6650
load net ID_EX_BR_sub_PC_Out[4]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[4]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[4] D
netloc ID_EX_BR_sub_PC_Out[4]_i_1_n_0 1 15 1 7280
load net vga_red_OBUF[2] -attr @rip(#000000) vga_red[3][1] -pin console_display vga_red[3][1] -pin vga_red_OBUF[2]_inst I
load net Switch_In_IBUF[0] -attr @rip(#000000) 0 -pin ExecuteStage Switch_In_IBUF[0] -pin Switch_In_IBUF[0]_inst O
load net ID_WB_data[0] -attr @rip(#000000) reg_file_reg[0][15][0] -pin Decoder MEM_WB_RW_data_Out_reg[15][0] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][0] -pin RAM_inst reg_file_reg[0][15][0]
load net ID_EX_RB_data_Out[11] -attr @rip(#000000) 11 -pin EX_MEM_MEM_din_Out[11]_i_1 I0 -pin ExecuteStage Q[11] -pin ID_EX_RB_data_Out_reg[11] Q -pin console_display ID_EX_RB_data_Out_reg[15][11]
load net Clk_IBUF -pin Clk_IBUF_BUFG_inst I -pin Clk_IBUF_inst O
netloc Clk_IBUF 1 1 1 NJ
load net EX_MEM_RW_data_Out[3] -pin EX_MEM_RW_data_Out_reg[3] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][3] -pin MEM_WB_RW_data_Out_reg[3] D -pin RAM_inst Q[2] -pin console_display Q[3]
load net h_sync_signal -port h_sync_signal -pin h_sync_signal_OBUF_inst O
netloc h_sync_signal 1 21 1 NJ
load net ID_EX_BR_addr_Out[13] -attr @rip(#000000) 13 -pin EX_MEM_BR_addr_Out[13]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[13] Q -pin console_display ID_EX_BR_addr_Out_reg[15][13]
load net ID_EX_BR_sub_PC_Out[14]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[14]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[14] D
netloc ID_EX_BR_sub_PC_Out[14]_i_1_n_0 1 15 1 7280
load net EX_MEM_BR_addr_Out[14] -attr @rip(#000000) 13 -pin EX_MEM_BR_addr_Out_reg[14] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][13]
load net EX_PC_sig[8] -attr @rip(#000000) 7 -pin EX_PC_sig_reg[8] Q -pin MEM_PC_sig[8]_i_1 I0 -pin console_display EX_PC_sig_reg[15][7]
load net ROM_douta[10] -attr @rip(#000000) douta[10] -pin RAM_inst douta[10] -pin ROM_inst douta[10] -pin console_display douta[1]
load net MEM_OP_sig[4] -attr @rip(#000000) 4 -pin MEM_OP_sig_reg[4] Q -pin console_display MEM_OP_sig_reg[15][4]
load net ID_EX_BR_addr_Out[9]_i_7_n_0 -pin Decoder ID_OP_sig_reg[12]_0 -pin ID_EX_BR_addr_Out[7]_i_4 I4 -pin ID_EX_BR_addr_Out[8]_i_4 I4 -pin ID_EX_BR_addr_Out[9]_i_4 I4 -pin ID_EX_BR_addr_Out[9]_i_7 O
netloc ID_EX_BR_addr_Out[9]_i_7_n_0 1 15 4 7300 10800 NJ 10800 17170 9770 18680
load net p_0_in -pin Data_Out_reg CE -pin Decoder p_0_in -pin FetchStage p_0_in -pin ID_EX_BR_En_Out_i_1 I4 -pin ID_EX_BR_addr_Out[6]_i_5 I5 -pin ID_EX_BR_addr_Out[7]_i_4 I0 -pin ID_EX_BR_addr_Out[8]_i_4 I0 -pin ID_EX_BR_addr_Out[9]_i_4 I0 -pin ID_EX_IN_En_Out_i_1 I2 -pin ID_EX_Shiftamt_Out[0]_i_1 I3 -pin ID_EX_Shiftamt_Out[1]_i_1 I3 -pin ID_EX_Shiftamt_Out[2]_i_1 I2 -pin ID_EX_Shiftamt_Out[3]_i_1 I2 -pin RAM_inst p_0_in
netloc p_0_in 1 5 15 1650 9460 NJ 9460 NJ 9460 NJ 9460 NJ 9460 NJ 9460 NJ 9460 4930 9700 5730 9290 6290 9080 7380 9870 14530 9190 17130 8920 NJ 8920 20780
load net ID_EX_RB_data_Out[10] -attr @rip(#000000) 10 -pin EX_MEM_MEM_din_Out[10]_i_1 I0 -pin ExecuteStage Q[10] -pin ID_EX_RB_data_Out_reg[10] Q -pin console_display ID_EX_RB_data_Out_reg[15][10]
load net Switch_In_IBUF[1] -attr @rip(#000000) 1 -pin ExecuteStage Switch_In_IBUF[1] -pin Switch_In_IBUF[1]_inst O
load net MEM_OP_sig[7]_i_1_n_0 -pin MEM_OP_sig[7]_i_1 O -pin MEM_OP_sig_reg[7] D
netloc MEM_OP_sig[7]_i_1_n_0 1 14 1 6230
load net MEM_OP_sig[10] -attr @rip(#000000) 10 -pin MEM_OP_sig_reg[10] Q -pin console_display MEM_OP_sig_reg[15][10]
load net EX_MEM_BR_addr_Out[11] -attr @rip(#000000) 10 -pin EX_MEM_BR_addr_Out_reg[11] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][10]
load net MEM_OP_sig[13]_i_1_n_0 -pin MEM_OP_sig[13]_i_1 O -pin MEM_OP_sig_reg[13] D
netloc MEM_OP_sig[13]_i_1_n_0 1 14 1 N
load net PMOD_In_IBUF[4] -attr @rip(#000000) 0 -pin ExecuteStage PMOD_In_IBUF[0] -pin PMOD_In_IBUF[4]_inst O
load net ID_EX_BR_sub_PC_Out[2]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[2]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[2] D
netloc ID_EX_BR_sub_PC_Out[2]_i_1_n_0 1 15 1 8700
load net ROM_douta[11] -attr @rip(#000000) douta[11] -pin RAM_inst douta[11] -pin ROM_inst douta[11] -pin console_display douta[2]
load net MEM_OP_sig[5] -attr @rip(#000000) 5 -pin MEM_OP_sig_reg[5] Q -pin console_display MEM_OP_sig_reg[15][5]
load net MEM_OP_sig[5]_i_1_n_0 -pin MEM_OP_sig[5]_i_1 O -pin MEM_OP_sig_reg[5] D
netloc MEM_OP_sig[5]_i_1_n_0 1 14 1 N
load net Switch_In_IBUF[2] -attr @rip(#000000) 2 -pin ExecuteStage Switch_In_IBUF[2] -pin Switch_In_IBUF[2]_inst O
load net ID_WB_data[2] -attr @rip(#000000) reg_file_reg[0][15][2] -pin Decoder MEM_WB_RW_data_Out_reg[15][2] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][2] -pin RAM_inst reg_file_reg[0][15][2]
load net FetchStage_n_0 -pin FetchStage vga_red_reg[3] -pin console_display PC_reg[10]
netloc FetchStage_n_0 1 6 10 NJ 3210 NJ 3210 NJ 3210 NJ 3210 NJ 3210 NJ 3210 NJ 3210 NJ 3210 NJ 3210 8660
load net MEM_OP_sig[11] -attr @rip(#000000) 11 -pin MEM_OP_sig_reg[11] Q -pin console_display MEM_OP_sig_reg[15][11]
load net EX_OP_sig_reg_n_0_[2] -pin EX_OP_sig_reg[2] Q -pin ExecuteStage EX_OP_sig_reg[2] -pin MEM_OP_sig[2]_i_1 I0 -pin console_display EX_OP_sig_reg[2]
netloc EX_OP_sig_reg_n_0_[2] 1 13 4 5550 8940 6150J 8860 8060 7890 13210
load net FetchStage_n_2 -pin FetchStage vga_red_reg[3]_0 -pin console_display display_address_reg[1]_rep__0_9
netloc FetchStage_n_2 1 6 10 NJ 3230 NJ 3230 NJ 3230 NJ 3230 NJ 3230 NJ 3230 NJ 3230 NJ 3230 NJ 3230 8140
load net BR_CTRL -pin ExecuteStage BR_CTRL -pin console_display BR_CTRL
netloc BR_CTRL 1 15 3 9480 3570 NJ 3570 15350
load net EX_MEM_BR_addr_Out[12] -attr @rip(#000000) 11 -pin EX_MEM_BR_addr_Out_reg[12] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][11]
load net FetchStage_n_3 -pin FetchStage vga_red_reg[3]_1 -pin console_display PC_reg[1]
netloc FetchStage_n_3 1 6 10 NJ 3250 NJ 3250 NJ 3250 NJ 3250 NJ 3250 NJ 3250 NJ 3250 NJ 3250 NJ 3250 8700
load net ID_EX_BR_addr_Out[15] -attr @rip(#000000) 15 -pin EX_MEM_BR_addr_Out[15]_i_1 I0 -pin ID_EX_BR_addr_Out_reg[15] Q -pin console_display ID_EX_BR_addr_Out_reg[15][15]
load net FetchStage_n_4 -pin FetchStage vga_red_reg[3]_2 -pin console_display PC_reg[3]
netloc FetchStage_n_4 1 6 10 NJ 3270 NJ 3270 NJ 3270 NJ 3270 NJ 3270 NJ 3270 NJ 3270 NJ 3270 NJ 3270 8640
load net Rst_Ex -port Rst_Ex -pin Rst_Ex_IBUF_inst I
netloc Rst_Ex 1 0 5 NJ 5690 NJ 5690 NJ 5690 NJ 5690 1180J
load net FetchStage_n_5 -pin FetchStage vga_red_reg[3]_3 -pin console_display PC_reg[3]_1
netloc FetchStage_n_5 1 6 10 NJ 3290 NJ 3290 NJ 3290 NJ 3290 NJ 3290 NJ 3290 NJ 3290 NJ 3290 NJ 3290 8460
load net FetchStage_n_6 -pin FetchStage vga_red_reg[3]_4 -pin console_display display_address_reg[0]_rep_0
netloc FetchStage_n_6 1 6 10 NJ 3310 NJ 3310 NJ 3310 NJ 3310 NJ 3310 NJ 3310 NJ 3310 NJ 3310 NJ 3310 8180
load net FetchStage_n_7 -pin FetchStage vga_red_reg[3]_5 -pin console_display display_address_reg[1]_rep__0_5
netloc FetchStage_n_7 1 6 10 NJ 3330 NJ 3330 NJ 3330 NJ 3330 NJ 3330 NJ 3330 NJ 3330 NJ 3330 NJ 3330 8120
load net MEM_OP_sig[2] -attr @rip(#000000) 2 -pin MEM_OP_sig_reg[2] Q -pin console_display MEM_OP_sig_reg[15][2]
load net FetchStage_n_8 -pin FetchStage vga_red_reg[3]_6 -pin console_display display_address_reg[1]_rep__0_7
netloc FetchStage_n_8 1 6 10 NJ 3350 NJ 3350 NJ 3350 NJ 3350 NJ 3350 NJ 3350 NJ 3350 NJ 3350 NJ 3350 8080
load net PMOD_In_IBUF[5] -attr @rip(#000000) 1 -pin ExecuteStage PMOD_In_IBUF[1] -pin PMOD_In_IBUF[5]_inst O
load net s2_reg_b[1] -attr @rip(#000000) 4 -pin Decoder ID_OP_sig_reg[11][4] -pin EX_OP_sig[4]_i_1 I0 -pin ID_EX_BR_addr_Out[5]_i_4 I0 -pin ID_OP_sig_reg[4] Q -pin console_display ID_OP_sig_reg[15][4]
load net FetchStage_n_9 -pin FetchStage vga_red_reg[3]_7 -pin console_display PC_reg[11]_0
netloc FetchStage_n_9 1 6 10 NJ 3370 NJ 3370 NJ 3370 NJ 3370 NJ 3370 NJ 3370 NJ 3370 NJ 3370 NJ 3370 8300
load net EX_MEM_MEM_din_Out[2]_i_1_n_0 -pin EX_MEM_MEM_din_Out[2]_i_1 O -pin EX_MEM_MEM_din_Out_reg[2] D
netloc EX_MEM_MEM_din_Out[2]_i_1_n_0 1 13 1 5450
load net EX_MEM_BR_addr_Out[3]_i_1_n_0 -pin EX_MEM_BR_addr_Out[3]_i_1 O -pin EX_MEM_BR_addr_Out_reg[3] D
netloc EX_MEM_BR_addr_Out[3]_i_1_n_0 1 4 1 N
load net ID_WB_data[1] -attr @rip(#000000) reg_file_reg[0][15][1] -pin Decoder MEM_WB_RW_data_Out_reg[15][1] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][1] -pin RAM_inst reg_file_reg[0][15][1]
load net Switch_In_IBUF[3] -attr @rip(#000000) 3 -pin ExecuteStage Switch_In_IBUF[3] -pin Switch_In_IBUF[3]_inst O
load net EX_OP_sig[11]_i_1_n_0 -pin EX_OP_sig[11]_i_1 O -pin EX_OP_sig_reg[11] D
netloc EX_OP_sig[11]_i_1_n_0 1 12 1 N
load net main_buffer_reg_i_22_n_0 -pin console_display main_buffer_reg_i_22 -pin main_buffer_reg_i_22 Q
netloc main_buffer_reg_i_22_n_0 1 15 1 7780
load net PC[7] -attr @rip(#000000) 6 -pin Decoder ID_PC_sig_reg[15][6] -pin EX_PC_sig[7]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_1 I3 -pin ID_EX_BR_sub_PC_Out[11]_i_2 I1 -pin ID_EX_BR_sub_PC_Out[15]_i_2 I3 -pin ID_EX_BR_sub_PC_Out[7]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[8]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[9]_i_1 I1 -pin ID_PC_sig_reg[7] Q -pin console_display ID_PC_sig_reg[15][6]
load net MEM_OP_sig[12] -attr @rip(#000000) 12 -pin MEM_OP_sig_reg[12] Q -pin console_display MEM_OP_sig_reg[15][12]
load net Rst_Ex_IBUF -pin Decoder Rst_Ex_IBUF -pin FetchStage Rst_Ex_IBUF -pin ID_EX_ALU_op_Out[2]_i_2 I1 -pin ID_EX_BR_addr_Out[1]_i_2 I1 -pin ID_EX_RW_En_Out_i_1 I3 -pin Rst_Ex_IBUF_inst O -pin console_display Rst_Ex_IBUF
netloc Rst_Ex_IBUF 1 5 14 1570 8160 NJ 8160 NJ 8160 NJ 8160 3390 8480 NJ 8480 NJ 8480 4710 8800 5450J 8700 6650 8290 8800 9510 11690J 9630 15390J 9830 18700J
load net PMOD_In_IBUF[2] -attr @rip(#000000) 2 -pin PMOD_In_IBUF[2]_inst O -pin console_display PMOD_In_IBUF[2]
load net EX_PC_sig[15]_i_1_n_0 -pin EX_PC_sig[15]_i_1 O -pin EX_PC_sig_reg[15] D
netloc EX_PC_sig[15]_i_1_n_0 1 12 1 4750
load net Rst_Load_IBUF -pin Decoder Rst_Load_IBUF -pin FetchStage Rst_Load_IBUF -pin ID_EX_ALU_op_Out[2]_i_2 I2 -pin ID_EX_BR_addr_Out[1]_i_2 I0 -pin ID_EX_RW_En_Out_i_1 I4 -pin Rst_Load_IBUF_inst O -pin console_display Rst_Load_IBUF
netloc Rst_Load_IBUF 1 5 14 1590 7480 NJ 7480 NJ 7480 NJ 7480 3370 8810 NJ 8810 NJ 8810 4610 8780 5410J 8680 6570 8620 8780 9850 NJ 9850 15350J 9970 18740J
load net s2_reg_b[0] -attr @rip(#000000) 3 -pin Decoder ID_OP_sig_reg[11][3] -pin EX_OP_sig[3]_i_1 I0 -pin ID_EX_BR_addr_Out[4]_i_3 I0 -pin ID_EX_Shiftamt_Out[3]_i_1 I5 -pin ID_OP_sig_reg[3] Q -pin console_display ID_OP_sig_reg[15][3]
load net EX_MEM_RW_data_Out[1] -pin EX_MEM_RW_data_Out_reg[1] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][1] -pin MEM_WB_RW_data_Out_reg[1] D -pin RAM_inst Q[0] -pin console_display Q[1]
load net MEM_OP_sig[3] -attr @rip(#000000) 3 -pin MEM_OP_sig_reg[3] Q -pin console_display MEM_OP_sig_reg[15][3]
load net W_data[10] -attr @rip(#000000) 10 -pin MEM_WB_RW_data_Out_reg[10] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][10]
load net EX_MEM_L_op_Out[0]_i_1_n_0 -pin EX_MEM_L_op_Out[0]_i_1 O -pin EX_MEM_L_op_Out_reg[0] D
netloc EX_MEM_L_op_Out[0]_i_1_n_0 1 12 1 N
load net PC[6] -attr @rip(#000000) 5 -pin Decoder ID_PC_sig_reg[15][5] -pin EX_PC_sig[6]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_2 I5 -pin ID_EX_BR_sub_PC_Out[6]_i_1 I2 -pin ID_PC_sig_reg[6] Q -pin console_display ID_PC_sig_reg[15][5]
load net EX_OP_sig_reg_n_0_[0] -pin EX_OP_sig_reg[0] Q -pin ExecuteStage EX_OP_sig_reg[0] -pin MEM_OP_sig[0]_i_1 I0 -pin console_display EX_OP_sig_reg[0]
netloc EX_OP_sig_reg_n_0_[0] 1 13 4 5370 8210 NJ 8210 8000 7850 12650
load net EX_MEM_BR_addr_Out[10] -attr @rip(#000000) 9 -pin EX_MEM_BR_addr_Out_reg[10] Q -pin FetchStage EX_MEM_BR_addr_Out_reg[15][9]
load net ID_EX_RB_data_Out[15] -attr @rip(#000000) 15 -pin EX_MEM_MEM_din_Out[15]_i_1 I0 -pin ExecuteStage Q[15] -pin ID_EX_RB_data_Out_reg[15] Q -pin console_display ID_EX_RB_data_Out_reg[15][15]
load net MEM_OP_sig[13] -attr @rip(#000000) 13 -pin MEM_OP_sig_reg[13] Q -pin console_display MEM_OP_sig_reg[15][13]
load net EX_MEM_RW_addr_Out[2]_i_1_n_0 -pin EX_MEM_RW_addr_Out[2]_i_1 O -pin EX_MEM_RW_addr_Out_reg[2] D
netloc EX_MEM_RW_addr_Out[2]_i_1_n_0 1 13 1 5670
load net register_0[12] -attr @rip(#000000) ID_EX_RB_data_Out_reg[14][0] -pin Decoder ID_EX_RB_data_Out_reg[14][0] -pin console_display reg_file_reg[0][14][0]
load net EX_MEM_MEM_din_Out[12]_i_1_n_0 -pin EX_MEM_MEM_din_Out[12]_i_1 O -pin EX_MEM_MEM_din_Out_reg[12] D
netloc EX_MEM_MEM_din_Out[12]_i_1_n_0 1 13 1 N
load net ID_EX_Shiftamt_Out[2] -attr @rip(#000000) 2 -pin ID_EX_Shiftamt_Out_reg[2] Q -pin console_display ID_EX_Shiftamt_Out_reg[3][2]
load net MEM_OP_sig[0] -attr @rip(#000000) 0 -pin MEM_OP_sig_reg[0] Q -pin console_display MEM_OP_sig_reg[15][0]
load net main_buffer_reg_i_24_n_0 -pin console_display main_buffer_reg_i_24 -pin main_buffer_reg_i_24 Q
netloc main_buffer_reg_i_24_n_0 1 15 1 7660
load net PMOD_In_IBUF[3] -attr @rip(#000000) 3 -pin PMOD_In_IBUF[3]_inst O -pin console_display PMOD_In_IBUF[3]
load net EX_MEM_RW_data_Out[0] -attr @rip(#000000) 0 -pin EX_MEM_RW_data_Out_reg[0] Q -pin ExecuteStage EX_MEM_RW_data_Out_reg[11][0] -pin MEM_WB_RW_data_Out_reg[0] D -pin console_display Q[0]
load net vga_red[0] -attr @rip(#000000) 0 -port vga_red[0] -pin vga_red_OBUF[0]_inst O
load net ID_EX_L_op_Out[1]_i_2_n_0 -pin ID_EX_L_op_Out[0]_i_1 I3 -pin ID_EX_L_op_Out[1]_i_1 I2 -pin ID_EX_L_op_Out[1]_i_2 O
netloc ID_EX_L_op_Out[1]_i_2_n_0 1 9 1 3470
load net EX_MEM_BR_addr_Out[6]_i_1_n_0 -pin EX_MEM_BR_addr_Out[6]_i_1 O -pin EX_MEM_BR_addr_Out_reg[6] D
netloc EX_MEM_BR_addr_Out[6]_i_1_n_0 1 4 1 1080
load net W_data[11] -attr @rip(#000000) 11 -pin MEM_WB_RW_data_Out_reg[11] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][11]
load net MEM_PC_sig[14] -attr @rip(#000000) 13 -pin MEM_PC_sig_reg[14] Q -pin console_display MEM_PC_sig_reg[15][13]
load net ID_WB_data[3] -attr @rip(#000000) reg_file_reg[0][15][3] -pin Decoder MEM_WB_RW_data_Out_reg[15][3] -pin ExecuteStage MEM_WB_RW_data_Out_reg[11][3] -pin RAM_inst reg_file_reg[0][15][3]
load net ID_EX_RB_data_Out[14] -attr @rip(#000000) 14 -pin EX_MEM_MEM_din_Out[14]_i_1 I0 -pin ExecuteStage Q[14] -pin ID_EX_RB_data_Out_reg[14] Q -pin console_display ID_EX_RB_data_Out_reg[15][14]
load net EX_OP_sig_reg_n_0_[1] -pin EX_OP_sig_reg[1] Q -pin ExecuteStage EX_OP_sig_reg[1] -pin MEM_OP_sig[1]_i_1 I0 -pin console_display EX_OP_sig_reg[1]
netloc EX_OP_sig_reg_n_0_[1] 1 13 4 5530 8820 NJ 8820 8040 7870 12810
load net ID_OP_sig_reg_n_0_[14] -pin EX_OP_sig[14]_i_1 I0 -pin FetchStage ID_OP_sig_reg[15][6] -pin ID_EX_ALU_op_Out[2]_i_2 I3 -pin ID_EX_BR_En_Out_i_1 I1 -pin ID_EX_BR_addr_Out[1]_i_2 I4 -pin ID_EX_BR_addr_Out[6]_i_5 I2 -pin ID_EX_BR_addr_Out[9]_i_7 I1 -pin ID_EX_IN_En_Out_i_1 I5 -pin ID_EX_RW_En_Out_i_2 I0 -pin ID_EX_RW_addr_Out[2]_i_2 I1 -pin ID_EX_Shiftamt_Out[0]_i_1 I2 -pin ID_EX_Shiftamt_Out[1]_i_1 I2 -pin ID_EX_Shiftamt_Out[2]_i_1 I3 -pin ID_EX_Shiftamt_Out[3]_i_1 I3 -pin ID_OP_sig_reg[14] Q -pin console_display ID_OP_sig_reg[15][14]
load net PC[9] -pin EX_PC_sig[9]_i_1 I0 -pin ExecuteStage ID_PC_sig_reg[13][0] -pin ID_EX_BR_sub_PC_Out[10]_i_1 I4 -pin ID_EX_BR_sub_PC_Out[11]_i_2 I0 -pin ID_EX_BR_sub_PC_Out[15]_i_2 I4 -pin ID_EX_BR_sub_PC_Out[9]_i_1 I4 -pin ID_PC_sig_reg[9] Q -pin console_display ID_PC_sig_reg[15][8]
load net s2_reg_b[2] -attr @rip(#000000) 5 -pin EX_OP_sig[5]_i_1 I0 -pin ID_EX_BR_addr_Out[6]_i_3 I0 -pin ID_EX_BR_addr_Out[7]_i_4 I5 -pin ID_EX_BR_addr_Out[8]_i_4 I5 -pin ID_EX_BR_addr_Out[9]_i_4 I5 -pin ID_OP_sig_reg[5] Q -pin console_display ID_OP_sig_reg[15][5]
load net MEM_OP_sig[14] -attr @rip(#000000) 14 -pin MEM_OP_sig_reg[14] Q -pin console_display MEM_OP_sig_reg[15][14]
load net ID_EX_Shiftamt_Out[3] -attr @rip(#000000) 3 -pin ID_EX_Shiftamt_Out_reg[3] Q -pin console_display ID_EX_Shiftamt_Out_reg[3][3]
load net MEM_OP_sig[1] -attr @rip(#000000) 1 -pin MEM_OP_sig_reg[1] Q -pin console_display MEM_OP_sig_reg[15][1]
load net vga_red_OBUF[0] -attr @rip(#000000) vga_red[3][0] -pin console_display vga_red[3][0] -pin vga_red_OBUF[0]_inst I -pin vga_red_OBUF[1]_inst I
load net vga_red[1] -attr @rip(#000000) 1 -port vga_red[1] -pin vga_red_OBUF[1]_inst O
load net zero_flag -pin ExecuteStage zero_flag -pin console_display zero_flag
netloc zero_flag 1 15 3 10540 8030 13450J 6600 15570
load net PMOD_In_IBUF[8] -attr @rip(#000000) 3 -pin ExecuteStage PMOD_In_IBUF[3] -pin PMOD_In_IBUF[8]_inst O
load net MEM_PC_sig[13] -attr @rip(#000000) 12 -pin MEM_PC_sig_reg[13] Q -pin console_display MEM_PC_sig_reg[15][12]
load net RAM_inst_n_16 -pin RAM_inst vga_red_reg[3] -pin console_display display_address_reg[0]_rep_1
netloc RAM_inst_n_16 1 15 1 8680
load net ID_EX_RW_addr_Out[0]_i_1_n_0 -pin ID_EX_RW_addr_Out[0]_i_1 O -pin ID_EX_RW_addr_Out_reg[0] D
netloc ID_EX_RW_addr_Out[0]_i_1_n_0 1 11 1 4110
load net W_data[12] -attr @rip(#000000) 12 -pin MEM_WB_RW_data_Out_reg[12] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][12]
load net RAM_inst_n_17 -pin RAM_inst vga_red_reg[3]_0 -pin console_display display_address_reg[1]_rep__0_3
netloc RAM_inst_n_17 1 15 1 8620
load net RAM_inst_n_18 -pin RAM_inst vga_red_reg[3]_1 -pin console_display display_address_reg[1]_rep__0_4
netloc RAM_inst_n_18 1 15 1 8500
load net EX_MEM_BR_addr_Out[8]_i_1_n_0 -pin EX_MEM_BR_addr_Out[8]_i_1 O -pin EX_MEM_BR_addr_Out_reg[8] D
netloc EX_MEM_BR_addr_Out[8]_i_1_n_0 1 4 1 N
load net RAM_inst_n_19 -pin RAM_inst vga_red_reg[3]_2 -pin console_display display_address_reg[1]_rep__0_6
netloc RAM_inst_n_19 1 15 1 8380
load net ID_OP_sig_reg_n_0_[13] -pin EX_OP_sig[13]_i_1 I0 -pin FetchStage ID_OP_sig_reg[15][5] -pin ID_EX_ALU_op_Out[0]_i_1 I4 -pin ID_EX_ALU_op_Out[1]_i_1 I4 -pin ID_EX_ALU_op_Out[2]_i_2 I0 -pin ID_EX_BR_En_Out_i_1 I3 -pin ID_EX_BR_addr_Out[1]_i_2 I2 -pin ID_EX_BR_addr_Out[6]_i_5 I4 -pin ID_EX_BR_addr_Out[9]_i_7 I3 -pin ID_EX_L_op_Out[1]_i_2 I2 -pin ID_EX_L_op_Out[2]_i_1 I3 -pin ID_EX_RW_En_Out_i_2 I5 -pin ID_EX_RW_addr_Out[2]_i_2 I4 -pin ID_EX_Shiftamt_Out[0]_i_1 I4 -pin ID_EX_Shiftamt_Out[1]_i_1 I4 -pin ID_EX_Shiftamt_Out[2]_i_1 I1 -pin ID_EX_Shiftamt_Out[3]_i_1 I1 -pin ID_OP_sig_reg[13] Q -pin console_display ID_OP_sig_reg[15][13]
load net PC[8] -attr @rip(#000000) 7 -pin Decoder ID_PC_sig_reg[15][7] -pin EX_PC_sig[8]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[11]_i_2 I3 -pin ID_EX_BR_sub_PC_Out[15]_i_2 I1 -pin ID_EX_BR_sub_PC_Out[8]_i_1 I3 -pin ID_EX_BR_sub_PC_Out[9]_i_1 I3 -pin ID_PC_sig_reg[8] Q -pin console_display ID_PC_sig_reg[15][7]
load net ID_EX_Shiftamt_Out[0] -attr @rip(#000000) 0 -pin ExecuteStage ID_EX_Shiftamt_Out_reg[0]_10[0] -pin ID_EX_Shiftamt_Out_reg[0] Q -pin console_display ID_EX_Shiftamt_Out_reg[3][0]
load net register_0[14] -attr @rip(#000000) ID_EX_RB_data_Out_reg[14][1] -pin Decoder ID_EX_RB_data_Out_reg[14][1] -pin console_display reg_file_reg[0][14][1]
load net RAM_inst_n_20 -pin RAM_inst vga_red_reg[3]_3 -pin console_display display_address_reg[1]_rep__0_8
netloc RAM_inst_n_20 1 15 1 8320
load net ID_EX_RW_addr_Out[2]_i_2_n_0 -pin ID_EX_RW_addr_Out[0]_i_1 I1 -pin ID_EX_RW_addr_Out[1]_i_1 I1 -pin ID_EX_RW_addr_Out[2]_i_1 I1 -pin ID_EX_RW_addr_Out[2]_i_2 O
netloc ID_EX_RW_addr_Out[2]_i_2_n_0 1 10 1 3710
load net s2_reg_a[0] -attr @rip(#000000) 6 -pin EX_OP_sig[6]_i_1 I0 -pin ID_EX_BR_addr_Out[7]_i_4 I2 -pin ID_EX_RW_addr_Out[0]_i_1 I2 -pin ID_OP_sig_reg[6] Q -pin console_display ID_OP_sig_reg[15][6]
load net RAM_inst_n_21 -pin RAM_inst vga_red_reg[3]_4 -pin console_display display_address_reg[0]_rep__1_9
netloc RAM_inst_n_21 1 15 1 8560
load net RAM_inst_n_22 -pin RAM_inst vga_red_reg[3]_5 -pin console_display display_address_reg[1]_rep__0_10
netloc RAM_inst_n_22 1 15 1 8280
load net vga_red[2] -attr @rip(#000000) 2 -port vga_red[2] -pin vga_red_OBUF[2]_inst O
load net RAM_inst_n_23 -pin RAM_inst vga_red_reg[3]_6 -pin console_display display_address_reg[0]_rep__0_2
netloc RAM_inst_n_23 1 15 1 8600
load net MEM_PC_sig[12] -attr @rip(#000000) 11 -pin MEM_PC_sig_reg[12] Q -pin console_display MEM_PC_sig_reg[15][11]
load net RAM_inst_n_24 -pin RAM_inst vga_red_reg[3]_7 -pin console_display display_address_reg[0]_rep__0_3
netloc RAM_inst_n_24 1 15 1 8480
load net RAM_inst_n_25 -pin RAM_inst vga_red_reg[3]_8 -pin console_display display_address_reg[0]_rep__1_0
netloc RAM_inst_n_25 1 15 1 8420
load net PC[3] -attr @rip(#000000) 2 -pin Decoder ID_PC_sig_reg[15][2] -pin EX_PC_sig[3]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_2 I1 -pin ID_EX_BR_sub_PC_Out[3]_i_1 I3 -pin ID_EX_BR_sub_PC_Out[4]_i_1 I3 -pin ID_EX_BR_sub_PC_Out[5]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[6]_i_2 I3 -pin ID_PC_sig_reg[3] Q -pin console_display ID_PC_sig_reg[15][2]
load net PMOD_In_IBUF[9] -attr @rip(#000000) 6 -pin PMOD_In_IBUF[9]_inst O -pin console_display PMOD_In_IBUF[6]
load net RAM_inst_n_26 -pin Decoder EX_MEM_RW_data_Out_reg[15] -pin RAM_inst ID_EX_RB_data_Out_reg[15]
netloc RAM_inst_n_26 1 15 4 NJ 2790 NJ 2790 NJ 2790 18480
load net ID_EX_BR_En_Out -pin Decoder ID_EX_BR_En_Out -pin ExecuteStage ID_EX_BR_En_Out -pin ID_EX_BR_En_Out_i_1 O -pin ID_EX_BR_En_Out_reg D -pin ID_EX_BR_Op_Out[0]_i_1 I0 -pin ID_EX_BR_Op_Out[1]_i_1 I0
netloc ID_EX_BR_En_Out 1 13 6 5570 8960 6170J 8880 7400 9550 11670 7440 16710J 7340 18460J
load net W_data[13] -attr @rip(#000000) 13 -pin MEM_WB_RW_data_Out_reg[13] Q -pin RAM_inst MEM_WB_RW_data_Out_reg[15][13]
load net ID_EX_BR_sub_PC_Out_reg_n_0_[1] -attr @rip(#000000) 0 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][0] -pin ID_EX_BR_sub_PC_Out_reg[1] Q
load net RAM_inst_n_27 -attr @rip(#000000) reg_file_reg[0][15][15] -pin Decoder MEM_WB_RW_data_Out_reg[15][15] -pin RAM_inst reg_file_reg[0][15][15]
load net RAM_inst_n_28 -attr @rip(#000000) reg_file_reg[0][15][14] -pin Decoder MEM_WB_RW_data_Out_reg[15][14] -pin RAM_inst reg_file_reg[0][15][14]
load net RAM_inst_n_29 -attr @rip(#000000) reg_file_reg[0][15][13] -pin Decoder MEM_WB_RW_data_Out_reg[15][13] -pin RAM_inst reg_file_reg[0][15][13]
load net EX_PC_sig[5]_i_1_n_0 -pin EX_PC_sig[5]_i_1 O -pin EX_PC_sig_reg[5] D
netloc EX_PC_sig[5]_i_1_n_0 1 12 1 4930
load net main_buffer_reg_i_25_n_0 -pin console_display main_buffer_reg_i_25 -pin main_buffer_reg_i_25 Q
netloc main_buffer_reg_i_25_n_0 1 15 1 7340
load net ID_EX_Shiftamt_Out[1] -attr @rip(#000000) 1 -pin ID_EX_Shiftamt_Out_reg[1] Q -pin console_display ID_EX_Shiftamt_Out_reg[3][1]
load net NPC_sig[4] -attr @rip(#000000) addrb[3] -pin FetchStage addrb[3] -pin RAM_inst addrb[3] -pin ROM_inst addrb[3]
load net MEM_OP_sig[0]_i_1_n_0 -pin MEM_OP_sig[0]_i_1 O -pin MEM_OP_sig_reg[0] D
netloc MEM_OP_sig[0]_i_1_n_0 1 14 1 6270
load net ID_EX_BR_sub_PC_Out[5]_i_1_n_0 -pin ID_EX_BR_sub_PC_Out[5]_i_1 O -pin ID_EX_BR_sub_PC_Out_reg[5] D
netloc ID_EX_BR_sub_PC_Out[5]_i_1_n_0 1 15 1 7280
load net PMOD_In_IBUF[6] -attr @rip(#000000) 4 -pin PMOD_In_IBUF[6]_inst O -pin console_display PMOD_In_IBUF[4]
load net MEM_PC_sig[11] -attr @rip(#000000) 10 -pin MEM_PC_sig_reg[11] Q -pin console_display MEM_PC_sig_reg[15][10]
load net vga_red[3] -attr @rip(#000000) 3 -port vga_red[3] -pin vga_red_OBUF[3]_inst O
load net PC[2] -attr @rip(#000000) 1 -pin Decoder ID_PC_sig_reg[15][1] -pin EX_PC_sig[2]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_2 I3 -pin ID_EX_BR_sub_PC_Out[2]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[3]_i_1 I2 -pin ID_EX_BR_sub_PC_Out[4]_i_1 I1 -pin ID_EX_BR_sub_PC_Out[5]_i_1 I3 -pin ID_EX_BR_sub_PC_Out[6]_i_2 I1 -pin ID_PC_sig_reg[2] Q -pin console_display ID_PC_sig_reg[15][1]
load net EX_OP_sig[2]_i_1_n_0 -pin EX_OP_sig[2]_i_1 O -pin EX_OP_sig_reg[2] D
netloc EX_OP_sig[2]_i_1_n_0 1 12 1 4770
load net ID_EX_BR_sub_PC_Out_reg_n_0_[2] -attr @rip(#000000) 1 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][1] -pin ID_EX_BR_sub_PC_Out_reg[2] Q
load net ID_OP_sig_reg_n_0_[15] -pin EX_OP_sig[15]_i_1 I0 -pin FetchStage ID_OP_sig_reg[15][7] -pin ID_EX_ALU_op_Out[2]_i_1 I2 -pin ID_EX_BR_En_Out_i_1 I2 -pin ID_EX_BR_addr_Out[1]_i_2 I3 -pin ID_EX_BR_addr_Out[6]_i_5 I3 -pin ID_EX_BR_addr_Out[9]_i_7 I2 -pin ID_EX_IN_En_Out_i_1 I3 -pin ID_EX_RW_En_Out_i_2 I4 -pin ID_EX_RW_addr_Out[2]_i_3 I1 -pin ID_EX_Shiftamt_Out[3]_i_2 I1 -pin ID_OP_sig_reg[15] Q -pin console_display ID_OP_sig_reg[15][15]
load net EX_MEM_BR_addr_Out[15]_i_1_n_0 -pin EX_MEM_BR_addr_Out[15]_i_1 O -pin EX_MEM_BR_addr_Out_reg[15] D
netloc EX_MEM_BR_addr_Out[15]_i_1_n_0 1 4 1 1080
load net NPC_sig[5] -attr @rip(#000000) addrb[4] -pin FetchStage addrb[4] -pin RAM_inst addrb[4] -pin ROM_inst addrb[4]
load net MEM_OP_sig[3]_i_1_n_0 -pin MEM_OP_sig[3]_i_1 O -pin MEM_OP_sig_reg[3] D
netloc MEM_OP_sig[3]_i_1_n_0 1 14 1 6090
load net EX_OP_sig[4]_i_1_n_0 -pin EX_OP_sig[4]_i_1 O -pin EX_OP_sig_reg[4] D
netloc EX_OP_sig[4]_i_1_n_0 1 12 1 4950
load net EX_MEM_MEM_din_Out[13]_i_1_n_0 -pin EX_MEM_MEM_din_Out[13]_i_1 O -pin EX_MEM_MEM_din_Out_reg[13] D
netloc EX_MEM_MEM_din_Out[13]_i_1_n_0 1 13 1 N
load net s2_reg_a[2] -pin EX_OP_sig[8]_i_1 I0 -pin FetchStage ID_OP_sig_reg[15][0] -pin ID_EX_BR_addr_Out[9]_i_4 I2 -pin ID_EX_L_op_Out[0]_i_1 I1 -pin ID_EX_RW_addr_Out[2]_i_1 I2 -pin ID_OP_sig_reg[8] Q -pin console_display ID_OP_sig_reg[15][8]
load net PMOD_In_IBUF[7] -pin ExecuteStage PMOD_In_IBUF[2] -pin PMOD_In_IBUF[7]_inst O -pin console_display PMOD_In_IBUF[5]
load net EX_PC_sig[11] -attr @rip(#000000) 10 -pin EX_PC_sig_reg[11] Q -pin MEM_PC_sig[11]_i_1 I0 -pin console_display EX_PC_sig_reg[15][10]
load net EX_MEM_BR_addr_Out[12]_i_1_n_0 -pin EX_MEM_BR_addr_Out[12]_i_1 O -pin EX_MEM_BR_addr_Out_reg[12] D
netloc EX_MEM_BR_addr_Out[12]_i_1_n_0 1 4 1 N
load net EX_MEM_MEM_din_Out[10]_i_1_n_0 -pin EX_MEM_MEM_din_Out[10]_i_1 O -pin EX_MEM_MEM_din_Out_reg[10] D
netloc EX_MEM_MEM_din_Out[10]_i_1_n_0 1 13 1 N
load net ID_OP_sig_reg_n_0_[10] -pin Decoder ID_OP_sig_reg[11][6] -pin EX_OP_sig[10]_i_1 I0 -pin ExecuteStage ID_OP_sig_reg[11]_0[1] -pin FetchStage ID_OP_sig_reg[15][2] -pin ID_EX_ALU_op_Out[1]_i_1 I1 -pin ID_EX_BR_Op_Out[0]_i_1 I2 -pin ID_EX_BR_Op_Out[1]_i_1 I3 -pin ID_EX_BR_addr_Out[15]_i_5 I0 -pin ID_EX_BR_addr_Out[15]_i_7 I1 -pin ID_EX_BR_addr_Out[15]_i_8 I1 -pin ID_EX_BR_addr_Out[7]_i_5 I1 -pin ID_EX_BR_addr_Out[9]_i_6 I1 -pin ID_EX_L_op_Out[0]_i_1 I0 -pin ID_EX_L_op_Out[1]_i_1 I1 -pin ID_EX_L_op_Out[2]_i_1 I0 -pin ID_EX_RW_En_Out_i_2 I1 -pin ID_EX_RW_addr_Out[2]_i_2 I3 -pin ID_EX_Shiftamt_Out[3]_i_2 I3 -pin ID_OP_sig_reg[10] Q -pin console_display ID_OP_sig_reg[15][10]
load net PC[5] -attr @rip(#000000) 4 -pin Decoder ID_PC_sig_reg[15][4] -pin EX_PC_sig[5]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_2 I0 -pin ID_EX_BR_sub_PC_Out[5]_i_1 I5 -pin ID_EX_BR_sub_PC_Out[6]_i_2 I4 -pin ID_PC_sig_reg[5] Q -pin console_display ID_PC_sig_reg[15][4]
load net v_sync_signal_OBUF -pin console_display v_sync_signal_OBUF -pin v_sync_signal_OBUF_inst I
netloc v_sync_signal_OBUF 1 16 5 13410J 9310 17090J 9410 NJ 9410 NJ 9410 NJ
load net ID_EX_BR_sub_PC_Out_reg_n_0_[3] -attr @rip(#000000) 2 -pin ExecuteStage ID_EX_BR_sub_PC_Out_reg[14][2] -pin ID_EX_BR_sub_PC_Out_reg[3] Q
load net NPC_sig[2] -attr @rip(#000000) addrb[1] -pin FetchStage addrb[1] -pin RAM_inst addrb[1] -pin ROM_inst addrb[1]
load net EX_MEM_MEM_din_Out[14]_i_1_n_0 -pin EX_MEM_MEM_din_Out[14]_i_1 O -pin EX_MEM_MEM_din_Out_reg[14] D
netloc EX_MEM_MEM_din_Out[14]_i_1_n_0 1 13 1 N
load net ID_EX_RA_data_Out[15] -attr @rip(#000000) 15 -pin ExecuteStage ID_EX_RA_data_Out_reg[15][15] -pin ID_EX_RA_data_Out_reg[15] Q -pin console_display ID_EX_RA_data_Out_reg[15][15]
load net ID_OP_sig[14] -attr @rip(#000000) D[14] -pin ID_OP_sig_reg[14] D -pin ROM_inst D[14]
load net EX_PC_sig[6]_i_1_n_0 -pin EX_PC_sig[6]_i_1 O -pin EX_PC_sig_reg[6] D
netloc EX_PC_sig[6]_i_1_n_0 1 12 1 4790
load net negative_flag -pin ExecuteStage negative_flag -pin console_display negative_flag
netloc negative_flag 1 15 3 10500 7970 13430J 6580 15690
load net s2_reg_a[1] -attr @rip(#000000) 7 -pin EX_OP_sig[7]_i_1 I0 -pin ID_EX_BR_addr_Out[8]_i_4 I2 -pin ID_EX_RW_addr_Out[1]_i_1 I2 -pin ID_OP_sig_reg[7] Q -pin console_display ID_OP_sig_reg[15][7]
load net RAM_inst_n_50 -pin ExecuteStage EX_MEM_RW_data_Out_reg[11]_0 -pin RAM_inst ID_EX_BR_addr_Out_reg[11]
netloc RAM_inst_n_50 1 15 2 NJ 2550 14510
load net EX_MEM_RW_data_In[0] -attr @rip(#000000) EX_MEM_RW_data_Out_reg[15][0] -pin ExecuteStage EX_MEM_RW_data_Out_reg[15][0] -pin console_display ID_EX_BR_Op_Out_reg[0][0]
load net RAM_inst_n_51 -pin Decoder EX_MEM_RW_data_Out_reg[10] -pin RAM_inst ID_EX_RB_data_Out_reg[10]
netloc RAM_inst_n_51 1 15 4 NJ 2710 NJ 2710 NJ 2710 18620
load net RAM_inst_n_52 -pin Decoder EX_MEM_RW_data_Out_reg[9] -pin RAM_inst ID_EX_RB_data_Out_reg[9]
netloc RAM_inst_n_52 1 15 4 NJ 2690 NJ 2690 NJ 2690 18700
load net EX_PC_sig[12] -attr @rip(#000000) 11 -pin EX_PC_sig_reg[12] Q -pin MEM_PC_sig[12]_i_1 I0 -pin console_display EX_PC_sig_reg[15][11]
load net MEM_PC_sig[3] -attr @rip(#000000) 2 -pin MEM_PC_sig_reg[3] Q -pin console_display MEM_PC_sig_reg[15][2]
load net PC[4] -attr @rip(#000000) 3 -pin Decoder ID_PC_sig_reg[15][3] -pin EX_PC_sig[4]_i_1 I0 -pin ID_EX_BR_sub_PC_Out[10]_i_2 I4 -pin ID_EX_BR_sub_PC_Out[4]_i_1 I4 -pin ID_EX_BR_sub_PC_Out[5]_i_1 I4 -pin ID_EX_BR_sub_PC_Out[6]_i_2 I0 -pin ID_PC_sig_reg[4] Q -pin console_display ID_PC_sig_reg[15][3]
load net RAM_inst_n_53 -pin ExecuteStage EX_MEM_RW_data_Out_reg[9] -pin RAM_inst ID_EX_BR_addr_Out_reg[9]
netloc RAM_inst_n_53 1 15 2 NJ 2530 14530
load net RAM_inst_n_54 -pin Decoder EX_MEM_RW_data_Out_reg[8]_0 -pin RAM_inst ID_EX_RB_data_Out_reg[8]
netloc RAM_inst_n_54 1 15 4 NJ 2670 NJ 2670 NJ 2670 18720
load net RAM_inst_n_55 -pin Decoder EX_MEM_RW_data_Out_reg[1] -pin RAM_inst ID_EX_RB_data_Out_reg[1]
netloc RAM_inst_n_55 1 15 4 NJ 2650 NJ 2650 NJ 2650 18740
load net RAM_inst_n_56 -pin RAM_inst main_buffer_reg -pin console_display EX_MEM_L_op_Out_reg[2]
netloc RAM_inst_n_56 1 15 1 8740
load netBundle @Switch_In_IBUF 6 Switch_In_IBUF[5] Switch_In_IBUF[4] Switch_In_IBUF[3] Switch_In_IBUF[2] Switch_In_IBUF[1] Switch_In_IBUF[0] -autobundled
netbloc @Switch_In_IBUF 1 16 1 14190
load netBundle @register_5 2 register_5[2] register_5[1] -autobundled
netbloc @register_5 1 15 5 10260 8890 11570J 9230 17150J 9330 NJ 9330 20440
load netBundle @ID_EX_BR_sub_PC_Out_reg_n_0_ 12 ID_EX_BR_sub_PC_Out_reg_n_0_[14] ID_EX_BR_sub_PC_Out_reg_n_0_[11] ID_EX_BR_sub_PC_Out_reg_n_0_[10] ID_EX_BR_sub_PC_Out_reg_n_0_[9] ID_EX_BR_sub_PC_Out_reg_n_0_[8] ID_EX_BR_sub_PC_Out_reg_n_0_[7] ID_EX_BR_sub_PC_Out_reg_n_0_[6] ID_EX_BR_sub_PC_Out_reg_n_0_[5] ID_EX_BR_sub_PC_Out_reg_n_0_[4] ID_EX_BR_sub_PC_Out_reg_n_0_[3] ID_EX_BR_sub_PC_Out_reg_n_0_[2] ID_EX_BR_sub_PC_Out_reg_n_0_[1] -autobundled
netbloc @ID_EX_BR_sub_PC_Out_reg_n_0_ 1 16 1 13750
load netBundle @EX_PC_sig 15 EX_PC_sig[15] EX_PC_sig[14] EX_PC_sig[13] EX_PC_sig[12] EX_PC_sig[11] EX_PC_sig[10] EX_PC_sig[9] EX_PC_sig[8] EX_PC_sig[7] EX_PC_sig[6] EX_PC_sig[5] EX_PC_sig[4] EX_PC_sig[3] EX_PC_sig[2] EX_PC_sig[1] -autobundled
netbloc @EX_PC_sig 1 13 3 5290 6230 NJ 6230 7960
load netBundle @s3_reg_b 3 s3_reg_b[2] s3_reg_b[1] s3_reg_b[0] -autobundled
netbloc @s3_reg_b 1 13 4 5670 10850 6690J 10840 8380 8010 12910
load netBundle @EX_MEM_RW_data_In 7 EX_MEM_RW_data_In[15] EX_MEM_RW_data_In[14] EX_MEM_RW_data_In[10] EX_MEM_RW_data_In[9] EX_MEM_RW_data_In[8] EX_MEM_RW_data_In[1] EX_MEM_RW_data_In[0] -autobundled
netbloc @EX_MEM_RW_data_In 1 14 5 6710 3130 8720 3590 NJ 3590 17190 6920 18400J
load netBundle @ID_EX_RA_data_Out 16 ID_EX_RA_data_Out[15] ID_EX_RA_data_Out[14] ID_EX_RA_data_Out[13] ID_EX_RA_data_Out[12] ID_EX_RA_data_Out[11] ID_EX_RA_data_Out[10] ID_EX_RA_data_Out[9] ID_EX_RA_data_Out[8] ID_EX_RA_data_Out[7] ID_EX_RA_data_Out[6] ID_EX_RA_data_Out[5] ID_EX_RA_data_Out[4] ID_EX_RA_data_Out[3] ID_EX_RA_data_Out[2] ID_EX_RA_data_Out[1] ID_EX_RA_data_Out[0] -autobundled
netbloc @ID_EX_RA_data_Out 1 15 2 8840 2430 14430
load netBundle @MEM_WB_L_op_Out_reg_n_0_ 3 MEM_WB_L_op_Out_reg_n_0_[2] MEM_WB_L_op_Out_reg_n_0_[1] MEM_WB_L_op_Out_reg_n_0_[0] -autobundled
netbloc @MEM_WB_L_op_Out_reg_n_0_ 1 14 1 6350
load netBundle @console_display_n_2 4 console_display_n_2 console_display_n_3 console_display_n_4 console_display_n_5 -autobundled
netbloc @console_display_n_2 1 16 3 13830 7780 NJ 7780 18180J
load netBundle @MEM_PC_sig 15 MEM_PC_sig[15] MEM_PC_sig[14] MEM_PC_sig[13] MEM_PC_sig[12] MEM_PC_sig[11] MEM_PC_sig[10] MEM_PC_sig[9] MEM_PC_sig[8] MEM_PC_sig[7] MEM_PC_sig[6] MEM_PC_sig[5] MEM_PC_sig[4] MEM_PC_sig[3] MEM_PC_sig[2] MEM_PC_sig[1] -autobundled
netbloc @MEM_PC_sig 1 15 1 8580
load netBundle @ExecuteStage_n_65 4 ExecuteStage_n_65 ExecuteStage_n_66 ExecuteStage_n_67 ExecuteStage_n_68 -autobundled
netbloc @ExecuteStage_n_65 1 14 4 6570 3470 NJ 3470 NJ 3470 15410
load netBundle @Decoder_n_81,Decoder_n_82 12 Decoder_n_81 Decoder_n_82 Decoder_n_83 Decoder_n_84 Decoder_n_85 Decoder_n_86 Decoder_n_87 Decoder_n_88 Decoder_n_89 Decoder_n_90 Decoder_n_91 Decoder_n_92 -autobundled
netbloc @Decoder_n_81,Decoder_n_82 1 14 6 6670 2120 NJ 2120 NJ 2120 NJ 2120 NJ 2120 20600
load netBundle @ID_EX_Shiftamt_Out 4 ID_EX_Shiftamt_Out[3] ID_EX_Shiftamt_Out[2] ID_EX_Shiftamt_Out[1] ID_EX_Shiftamt_Out[0] -autobundled
netbloc @ID_EX_Shiftamt_Out 1 15 2 7860 3750 14230J
load netBundle @Decoder_n_102,Decoder_n_103 15 Decoder_n_102 Decoder_n_103 Decoder_n_104 Decoder_n_105 Decoder_n_106 Decoder_n_107 Decoder_n_108 Decoder_n_109 Decoder_n_110 Decoder_n_111 Decoder_n_112 Decoder_n_113 Decoder_n_114 Decoder_n_115 Decoder_n_116 -autobundled
netbloc @Decoder_n_102,Decoder_n_103 1 11 9 4290 9260 NJ 9260 5590J 9100 6650J 9060 7420J 9150 11790J 9590 16850J 9790 NJ 9790 20660
load netBundle @debug_buffer_1 4 debug_buffer[548]_0[5] debug_buffer[548]_0[4] debug_buffer[548]_0[3] debug_buffer[548]_0[0] -autobundled
netbloc @debug_buffer_1 1 15 3 9820 7790 12790J 6540 15730
load netBundle @PMOD_In_IBUF 3 PMOD_In_IBUF[8] PMOD_In_IBUF[5] PMOD_In_IBUF[4] -autobundled
netbloc @PMOD_In_IBUF 1 16 1 14230
load netBundle @display_address 9 display_address[8] display_address[7] display_address[6] display_address[5] display_address[4] display_address[3] display_address[2] display_address[1] display_address[0] -autobundled
netbloc @display_address 1 14 3 6710 4530 7600J 3930 11530
load netBundle @ID_EX_BR_Op_Out 2 ID_EX_BR_Op_Out[1] ID_EX_BR_Op_Out[0] -autobundled
netbloc @ID_EX_BR_Op_Out 1 15 2 7720 3690 14330J
load netBundle @Decoder_n_66,Decoder_n_67 11 Decoder_n_66 Decoder_n_67 Decoder_n_68 Decoder_n_69 Decoder_n_70 Decoder_n_71 Decoder_n_72 Decoder_n_73 Decoder_n_74 Decoder_n_75 Decoder_n_76 -autobundled
netbloc @Decoder_n_66,Decoder_n_67 1 2 18 430 3160 NJ 3160 1180J 3220 1510J 3550 2380J 3530 NJ 3530 NJ 3530 NJ 3530 NJ 3530 NJ 3530 NJ 3530 NJ 3530 6150J 3450 NJ 3450 NJ 3450 NJ 3450 NJ 3450 20500
load netBundle @Switch_In 11 Switch_In[14] Switch_In[9] Switch_In[8] Switch_In[7] Switch_In[6] Switch_In[5] Switch_In[4] Switch_In[3] Switch_In[2] Switch_In[1] Switch_In[0] -autobundled
netbloc @Switch_In 1 0 16 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 NJ 10070 6650 10160 7900
load netBundle @ExecuteStage_n_31 5 ExecuteStage_n_31 ExecuteStage_n_32 ExecuteStage_n_33 ExecuteStage_n_34 ExecuteStage_n_35 -autobundled
netbloc @ExecuteStage_n_31 1 2 16 410 2980 NJ 2980 NJ 2980 NJ 2980 2440J 3190 NJ 3190 NJ 3190 NJ 3190 NJ 3190 NJ 3190 NJ 3190 NJ 3190 NJ 3190 NJ 3190 NJ 3190 15390
load netBundle @EX_MEM_L_op_Out 3 EX_MEM_L_op_Out[2] EX_MEM_L_op_Out[1] EX_MEM_L_op_Out[0] -autobundled
netbloc @EX_MEM_L_op_Out 1 13 2 5310 1900 6310
load netBundle @RAM_doutb 16 RAM_doutb[15] RAM_doutb[14] RAM_doutb[13] RAM_doutb[12] RAM_doutb[11] RAM_doutb[10] RAM_doutb[9] RAM_doutb[8] RAM_doutb[7] RAM_doutb[6] RAM_doutb[5] RAM_doutb[4] RAM_doutb[3] RAM_doutb[2] RAM_doutb[1] RAM_doutb[0] -autobundled
netbloc @RAM_doutb 1 6 10 2380 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 4930J 5950 NJ 5950 NJ 5950 8400
load netBundle @EX_MEM_RW_data_Out 16 EX_MEM_RW_data_Out[15] EX_MEM_RW_data_Out[14] EX_MEM_RW_data_Out[13] EX_MEM_RW_data_Out[12] EX_MEM_RW_data_Out[11] EX_MEM_RW_data_Out[10] EX_MEM_RW_data_Out[9] EX_MEM_RW_data_Out[8] EX_MEM_RW_data_Out[7] EX_MEM_RW_data_Out[6] EX_MEM_RW_data_Out[5] EX_MEM_RW_data_Out[4] EX_MEM_RW_data_Out[3] EX_MEM_RW_data_Out[2] EX_MEM_RW_data_Out[1] EX_MEM_RW_data_Out[0] -autobundled
netbloc @EX_MEM_RW_data_Out 1 13 4 5290 2260 6490 3170 8520 3650 14390J
load netBundle @ID_EX_RA_data_In 2 ID_EX_RA_data_In[13] ID_EX_RA_data_In[9] -autobundled
netbloc @ID_EX_RA_data_In 1 17 2 16990 7380 18420J
load netBundle @vga_blue 4 vga_blue[3] vga_blue[2] vga_blue[1] vga_blue[0] -autobundled
netbloc @vga_blue 1 21 1 21210
load netBundle @ID_EX_RB_data_Out 16 ID_EX_RB_data_Out[15] ID_EX_RB_data_Out[14] ID_EX_RB_data_Out[13] ID_EX_RB_data_Out[12] ID_EX_RB_data_Out[11] ID_EX_RB_data_Out[10] ID_EX_RB_data_Out[9] ID_EX_RB_data_Out[8] ID_EX_RB_data_Out[7] ID_EX_RB_data_Out[6] ID_EX_RB_data_Out[5] ID_EX_RB_data_Out[4] ID_EX_RB_data_Out[3] ID_EX_RB_data_Out[2] ID_EX_RB_data_Out[1] ID_EX_RB_data_Out[0] -autobundled
netbloc @ID_EX_RB_data_Out 1 12 5 4650 8840 NJ 8840 NJ 8840 7760 3810 13990J
load netBundle @ROM_douta 16 ROM_douta[15] ROM_douta[14] ROM_douta[13] ROM_douta[12] ROM_douta[11] ROM_douta[10] ROM_douta[9] ROM_douta[8] ROM_douta[7] ROM_douta[6] ROM_douta[5] ROM_douta[4] ROM_douta[3] ROM_douta[2] ROM_douta[1] ROM_douta[0] -autobundled
netbloc @ROM_douta 1 7 9 2860J 5510 NJ 5510 NJ 5510 NJ 5510 NJ 5510 4910J 5970 NJ 5970 6510 8030 8220J
load netBundle @MEM_OP_sig 16 MEM_OP_sig[15] MEM_OP_sig[14] MEM_OP_sig[13] MEM_OP_sig[12] MEM_OP_sig[11] MEM_OP_sig[10] MEM_OP_sig[9] MEM_OP_sig[8] MEM_OP_sig[7] MEM_OP_sig[6] MEM_OP_sig[5] MEM_OP_sig[4] MEM_OP_sig[3] MEM_OP_sig[2] MEM_OP_sig[1] MEM_OP_sig[0] -autobundled
netbloc @MEM_OP_sig 1 15 1 7320
load netBundle @ID_EX_BR_sub_PC_Out_reg_n_0__1 3 ID_EX_BR_sub_PC_Out_reg_n_0_[15] ID_EX_BR_sub_PC_Out_reg_n_0_[13] ID_EX_BR_sub_PC_Out_reg_n_0_[12] -autobundled
netbloc @ID_EX_BR_sub_PC_Out_reg_n_0__1 1 15 2 7540 4010 14130
load netBundle @EX_MEM_BR_addr_Out 15 EX_MEM_BR_addr_Out[15] EX_MEM_BR_addr_Out[14] EX_MEM_BR_addr_Out[13] EX_MEM_BR_addr_Out[12] EX_MEM_BR_addr_Out[11] EX_MEM_BR_addr_Out[10] EX_MEM_BR_addr_Out[9] EX_MEM_BR_addr_Out[8] EX_MEM_BR_addr_Out[7] EX_MEM_BR_addr_Out[6] EX_MEM_BR_addr_Out[5] EX_MEM_BR_addr_Out[4] EX_MEM_BR_addr_Out[3] EX_MEM_BR_addr_Out[2] EX_MEM_BR_addr_Out[1] -autobundled
netbloc @EX_MEM_BR_addr_Out 1 5 1 1490
load netBundle @ID_PC_sig 15 ID_PC_sig[15] ID_PC_sig[14] ID_PC_sig[13] ID_PC_sig[12] ID_PC_sig[11] ID_PC_sig[10] ID_PC_sig[9] ID_PC_sig[8] ID_PC_sig[7] ID_PC_sig[6] ID_PC_sig[5] ID_PC_sig[4] ID_PC_sig[3] ID_PC_sig[2] ID_PC_sig[1] -autobundled
netbloc @ID_PC_sig 1 6 5 2420 5230 NJ 5230 NJ 5230 NJ 5230 3830
load netBundle @PC 15 PC[15] PC[14] PC[13] PC[12] PC[11] PC[10] PC[9] PC[8] PC[7] PC[6] PC[5] PC[4] PC[3] PC[2] PC[1] -autobundled
netbloc @PC 1 11 8 4130 11660 4830 11120 5650 11490 6330 10180 8200 7910 12710 8800 NJ 8800 17540J
load netBundle @ID_EX_ALU_op_Out_reg_n_0_ 3 ID_EX_ALU_op_Out_reg_n_0_[2] ID_EX_ALU_op_Out_reg_n_0_[1] ID_EX_ALU_op_Out_reg_n_0_[0] -autobundled
netbloc @ID_EX_ALU_op_Out_reg_n_0_ 1 15 2 7620 3670 14350J
load netBundle @PMOD_In_IBUF_1 7 PMOD_In_IBUF[9] PMOD_In_IBUF[7] PMOD_In_IBUF[6] PMOD_In_IBUF[3] PMOD_In_IBUF[2] PMOD_In_IBUF[1] PMOD_In_IBUF[0] -autobundled
netbloc @PMOD_In_IBUF_1 1 15 2 7380 4030 13830
load netBundle @PMOD_In 10 PMOD_In[9] PMOD_In[8] PMOD_In[7] PMOD_In[6] PMOD_In[5] PMOD_In[4] PMOD_In[3] PMOD_In[2] PMOD_In[1] PMOD_In[0] -autobundled
netbloc @PMOD_In 1 0 16 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 NJ 14430 6190 14490 8660
load netBundle @register_0 2 register_0[14] register_0[12] -autobundled
netbloc @register_0 1 15 5 10520 8070 13770J 6940 16070J 6400 17600J 6240 20420
load netBundle @W_addr 3 W_addr[2] W_addr[1] W_addr[0] -autobundled
netbloc @W_addr 1 15 4 8740 10190 NJ 10190 NJ 10190 18720J
load netBundle @ExecuteStage_n_47 16 ExecuteStage_n_47 ExecuteStage_n_48 ExecuteStage_n_49 ExecuteStage_n_50 ExecuteStage_n_51 ExecuteStage_n_52 ExecuteStage_n_53 ExecuteStage_n_54 ExecuteStage_n_55 ExecuteStage_n_56 ExecuteStage_n_57 ExecuteStage_n_58 ExecuteStage_n_59 ExecuteStage_n_60 ExecuteStage_n_61 ExecuteStage_n_62 -autobundled
netbloc @ExecuteStage_n_47 1 12 6 4950 3550 NJ 3550 6190J 3490 NJ 3490 NJ 3490 15370
load netBundle @debug_buffer 3 debug_buffer[549]_1[5] debug_buffer[549]_1[4] debug_buffer[549]_1[3] -autobundled
netbloc @debug_buffer 1 15 3 9840 7810 12970J 6560 15710
load netBundle @vga_green_OBUF 3 vga_green_OBUF[3] vga_green_OBUF[2] vga_green_OBUF[0] -autobundled
netbloc @vga_green_OBUF 1 16 5 13170J 9570 16870J 9750 NJ 9750 NJ 9750 20960
load netBundle @ID_OP_sig_reg_n_0_,s2_reg_a 16 ID_OP_sig_reg_n_0_[15] ID_OP_sig_reg_n_0_[14] ID_OP_sig_reg_n_0_[13] ID_OP_sig_reg_n_0_[12] ID_OP_sig_reg_n_0_[11] ID_OP_sig_reg_n_0_[10] ID_OP_sig_reg_n_0_[9] s2_reg_a[2] s2_reg_a[1] s2_reg_a[0] s2_reg_b[2] s2_reg_b[1] s2_reg_b[0] ID_EX_L_imm_In[2] ID_EX_L_imm_In[1] ID_EX_L_imm_In[0] -autobundled
netbloc @ID_OP_sig_reg_n_0_,s2_reg_a 1 5 14 1630 5250 NJ 5250 NJ 5250 3090 8200 3450 7810 3750 8730 4190 9440 4950 9280 5710 9120 6710 9370 8720 9170 12590 9210 17190 8760 18360
load netBundle @EX_OP_sig_reg_n_0_,s3_reg_a 8 EX_OP_sig_reg_n_0_[15] EX_OP_sig_reg_n_0_[14] EX_OP_sig_reg_n_0_[13] EX_OP_sig_reg_n_0_[12] EX_OP_sig_reg_n_0_[11] EX_OP_sig_reg_n_0_[10] EX_OP_sig_reg_n_0_[9] s3_reg_a[2] -autobundled
netbloc @EX_OP_sig_reg_n_0_,s3_reg_a 1 13 3 5450 11980 NJ 11980 8160
load netBundle @Switch_In_IBUF_1 5 Switch_In_IBUF[14] Switch_In_IBUF[9] Switch_In_IBUF[8] Switch_In_IBUF[7] Switch_In_IBUF[6] -autobundled
netbloc @Switch_In_IBUF_1 1 15 2 7360 7930 12550
load netBundle @ID_EX_BR_addr_Out 16 ID_EX_BR_addr_Out[15] ID_EX_BR_addr_Out[14] ID_EX_BR_addr_Out[13] ID_EX_BR_addr_Out[12] ID_EX_BR_addr_Out[11] ID_EX_BR_addr_Out[10] ID_EX_BR_addr_Out[9] ID_EX_BR_addr_Out[8] ID_EX_BR_addr_Out[7] ID_EX_BR_addr_Out[6] ID_EX_BR_addr_Out[5] ID_EX_BR_addr_Out[4] ID_EX_BR_addr_Out[3] ID_EX_BR_addr_Out[2] ID_EX_BR_addr_Out[1] ID_EX_BR_addr_Out[0] -autobundled
netbloc @ID_EX_BR_addr_Out 1 3 13 780 5300 NJ 5300 1450J 5310 2220J 5470 NJ 5470 NJ 5470 NJ 5470 NJ 5470 NJ 5470 NJ 5470 5530J 5710 6090J 5750 7940
load netBundle @vga_blue_OBUF 3 vga_blue_OBUF[3] vga_blue_OBUF[2] vga_blue_OBUF[0] -autobundled
netbloc @vga_blue_OBUF 1 16 5 13190J 9550 16890J 9730 NJ 9730 NJ 9730 20960
load netBundle @vga_red_OBUF 3 vga_red_OBUF[3] vga_red_OBUF[2] vga_red_OBUF[0] -autobundled
netbloc @vga_red_OBUF 1 16 5 13310J 9330 17070J 9430 NJ 9430 NJ 9430 20960
load netBundle @RAM_inst_n_27,RAM_inst_n_28 16 RAM_inst_n_27 RAM_inst_n_28 RAM_inst_n_29 RAM_inst_n_30 RAM_inst_n_31 RAM_inst_n_32 RAM_inst_n_33 RAM_inst_n_34 RAM_inst_n_35 RAM_inst_n_36 RAM_inst_n_37 RAM_inst_n_38 ID_WB_data[3] ID_WB_data[2] ID_WB_data[1] ID_WB_data[0] -autobundled
netbloc @RAM_inst_n_27,RAM_inst_n_28 1 15 4 NJ 2850 13690 8470 NJ 8470 17720J
load netBundle @vga_green 4 vga_green[3] vga_green[2] vga_green[1] vga_green[0] -autobundled
netbloc @vga_green 1 21 1 21210
load netBundle @vga_red 4 vga_red[3] vga_red[2] vga_red[1] vga_red[0] -autobundled
netbloc @vga_red 1 21 1 21210
load netBundle @ID_EX_RW_addr_Out 3 ID_EX_RW_addr_Out[2] ID_EX_RW_addr_Out[1] ID_EX_RW_addr_Out[0] -autobundled
netbloc @ID_EX_RW_addr_Out 1 12 4 4690 7880 5350J 7850 NJ 7850 7880
load netBundle @EX_MEM_RW_addr_Out 3 EX_MEM_RW_addr_Out[2] EX_MEM_RW_addr_Out[1] EX_MEM_RW_addr_Out[0] -autobundled
netbloc @EX_MEM_RW_addr_Out 1 14 2 6130 5710 7740J
load netBundle @ID_EX_L_op_Out 3 ID_EX_L_op_Out[2] ID_EX_L_op_Out[1] ID_EX_L_op_Out[0] -autobundled
netbloc @ID_EX_L_op_Out 1 5 12 1610 5210 NJ 5210 NJ 5210 NJ 5210 NJ 5210 NJ 5210 4090 6170 NJ 6170 NJ 6170 NJ 6170 7520 3710 14310J
load netBundle @ID_OP_sig 16 ID_OP_sig[15] ID_OP_sig[14] ID_OP_sig[13] ID_OP_sig[12] ID_OP_sig[11] ID_OP_sig[10] ID_OP_sig[9] ID_OP_sig[8] ID_OP_sig[7] ID_OP_sig[6] ID_OP_sig[5] ID_OP_sig[4] ID_OP_sig[3] ID_OP_sig[2] ID_OP_sig[1] ID_OP_sig[0] -autobundled
netbloc @ID_OP_sig 1 7 1 2840
load netBundle @W_data 16 W_data[15] W_data[14] W_data[13] W_data[12] W_data[11] W_data[10] W_data[9] W_data[8] W_data[7] W_data[6] W_data[5] W_data[4] W_data[3] W_data[2] W_data[1] W_data[0] -autobundled
netbloc @W_data 1 14 1 6070
load netBundle @NPC_sig 10 NPC_sig[10] NPC_sig[9] NPC_sig[8] NPC_sig[7] NPC_sig[6] NPC_sig[5] NPC_sig[4] NPC_sig[3] NPC_sig[2] NPC_sig[1] -autobundled
netbloc @NPC_sig 1 6 9 2400 2080 NJ 2080 NJ 2080 NJ 2080 NJ 2080 NJ 2080 NJ 2080 NJ 2080 6550J
load netBundle @s3_reg_a 2 s3_reg_a[1] s3_reg_a[0] -autobundled
netbloc @s3_reg_a 1 13 4 5250 11470 6370J 11500 8480 7990 12890
load netBundle @EX_MEM_MEM_din_Out 16 EX_MEM_MEM_din_Out[15] EX_MEM_MEM_din_Out[14] EX_MEM_MEM_din_Out[13] EX_MEM_MEM_din_Out[12] EX_MEM_MEM_din_Out[11] EX_MEM_MEM_din_Out[10] EX_MEM_MEM_din_Out[9] EX_MEM_MEM_din_Out[8] EX_MEM_MEM_din_Out[7] EX_MEM_MEM_din_Out[6] EX_MEM_MEM_din_Out[5] EX_MEM_MEM_din_Out[4] EX_MEM_MEM_din_Out[3] EX_MEM_MEM_din_Out[2] EX_MEM_MEM_din_Out[1] EX_MEM_MEM_din_Out[0] -autobundled
netbloc @EX_MEM_MEM_din_Out 1 14 2 6310 5670 7680J
levelinfo -pg 1 0 40 190 560 920 1280 1990 2640 2920 3180 3560 3940 4440 5080 5880 7000 10790 14780 17300 18990 20850 21000 21230 -top 0 -bot 17600
show
fullfit
#
# initialize ictrl to current module CONTROL work:CONTROL:NOFILE
ictrl init topinfo |
