########################################################################
#
#    FILE: Constraints file
#  VENDOR: Altera
# PROGRAM: Quartus II
# VERSION: Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition
#    DATE: Tue Jun 15 14:41:45 2021
#
########################################################################


#**************************************************************
# Create Clock
#**************************************************************

create_clock -name timercount:comb_4|timerclock:c|clk_out -period 1.000 -waveform { 0.000 0.500 } $_col14
create_clock -name clk -period 1.000 -waveform { 0.000 0.500 } $_col3
create_clock -name game:comb_5|score[0] -period 1.000 -waveform { 0.000 0.500 } $_col15
create_clock -name game:comb_5|current_state.1110 -period 1.000 -waveform { 0.000 0.500 } $_col16


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Propagated Clock
#**************************************************************

set_propagated_clock [all_clocks]


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -setup -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {game:comb_5|current_state.1110}] 0.010
set_clock_uncertainty -setup -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {game:comb_5|current_state.1110}] 0.010
set_clock_uncertainty -setup -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {game:comb_5|current_state.1110}] 0.010
set_clock_uncertainty -setup -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {game:comb_5|current_state.1110}] 0.010
set_clock_uncertainty -hold -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {game:comb_5|current_state.1110}] 0.010
set_clock_uncertainty -hold -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {game:comb_5|current_state.1110}] 0.010
set_clock_uncertainty -hold -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {game:comb_5|current_state.1110}] 0.010
set_clock_uncertainty -hold -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {game:comb_5|current_state.1110}] 0.010
set_clock_uncertainty -setup -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {clk}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {clk}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {clk}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {clk}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {clk}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {clk}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -rise_to [get_clocks {clk}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {timercount:comb_4|timerclock:c|clk_out}] -fall_to [get_clocks {clk}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {game:comb_5|score[0]}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {game:comb_5|score[0]}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {game:comb_5|score[0]}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {game:comb_5|score[0]}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {game:comb_5|score[0]}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {game:comb_5|score[0]}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {game:comb_5|score[0]}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {game:comb_5|score[0]}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {game:comb_5|current_state.1110}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.010
set_clock_uncertainty -setup -rise_from [get_clocks {game:comb_5|current_state.1110}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.010
set_clock_uncertainty -setup -fall_from [get_clocks {game:comb_5|current_state.1110}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.010
set_clock_uncertainty -setup -fall_from [get_clocks {game:comb_5|current_state.1110}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.010
set_clock_uncertainty -hold -rise_from [get_clocks {game:comb_5|current_state.1110}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.010
set_clock_uncertainty -hold -rise_from [get_clocks {game:comb_5|current_state.1110}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.010
set_clock_uncertainty -hold -fall_from [get_clocks {game:comb_5|current_state.1110}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.010
set_clock_uncertainty -hold -fall_from [get_clocks {game:comb_5|current_state.1110}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.010
set_clock_uncertainty -setup -rise_from [get_clocks {game:comb_5|current_state.1110}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {game:comb_5|current_state.1110}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {game:comb_5|current_state.1110}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {game:comb_5|current_state.1110}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {game:comb_5|current_state.1110}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {game:comb_5|current_state.1110}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {game:comb_5|current_state.1110}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {game:comb_5|current_state.1110}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -rise_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -fall_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -rise_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -fall_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -rise_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -fall_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -rise_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -fall_to [get_clocks {timercount:comb_4|timerclock:c|clk_out}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.030
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.030
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -rise_to [get_clocks {game:comb_5|score[0]}] 0.030
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -fall_to [get_clocks {game:comb_5|score[0]}] 0.030
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -rise_to [get_clocks {game:comb_5|current_state.1110}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -fall_to [get_clocks {game:comb_5|current_state.1110}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -rise_to [get_clocks {game:comb_5|current_state.1110}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -fall_to [get_clocks {game:comb_5|current_state.1110}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -rise_to [get_clocks {game:comb_5|current_state.1110}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -fall_to [get_clocks {game:comb_5|current_state.1110}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -rise_to [get_clocks {game:comb_5|current_state.1110}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -fall_to [get_clocks {game:comb_5|current_state.1110}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -setup -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -hold -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

