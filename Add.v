module full_adder(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module four_bit_adder(a, b, cin, sum, cout);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;
    wire [3:0] c;
    full_adder fa0(a[0],b[0],cin,sum[0],c[0]);
    full_adder fa1(a[1],b[1],c[0],sum[1],c[1]);
    full_adder fa2(a[2],b[2],c[1],sum[2],c[2]);
    full_adder fa3(a[3],b[3],c[2],sum[3],cout);
endmodule
