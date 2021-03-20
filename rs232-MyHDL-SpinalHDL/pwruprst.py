from myhdl import *

@block
def pwruprst(clk,reset,pwrup):

    @always(clk.posedge)
    def logic2():

        if((reset==0)and(pwrup==40)):
            reset.next=1

        else:
            if(pwrup<=60):
                pwrup.next = pwrup+1
        if(pwrup==60):
            reset.next=0

    return logic2

def convert_pwruprst(hdl):
    clk=Signal(bool(0))
    reset=Signal(bool(0))
    pwrup=Signal(intbv(0)[6:])
    pwruprst_1 = pwruprst(clk,reset,pwrup)

    pwruprst_1.convert(hdl=hdl)

#convert_pwruprst(hdl='Verilog')

