// blinky.v
// Blink the green LED with frequency 12e6/2^24 = 0.7Hz approx.
module top (clk_in, led_green_out, led_red_out);  
    input clk_in;
    output led_green_out;
    output [3:0]led_red_out;


    reg [23:0] counter;
    assign led_green_out = counter[23];
    assign led_red_out[3:0] = counter[25:22];

    always @ (posedge clk_in) begin
        counter <= counter + 1;
    end

endmodule
