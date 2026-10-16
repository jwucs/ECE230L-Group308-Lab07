module ones_compliment(
    input [3:0] A, [3:0] B,
    output [3:0] Y
);

wire [3:0] initial_sum;
wire [3:0] carry;
wire [3:0] carry2;

genvar i;
generate
    full_adder fa0(
        .A(A[0]),
        .B(B[0]),
        .Y(initial_sum[0]),
        .Cin(1'b0),
        .Cout(carry[0])
    );

  for (i = 1; i < 4; i = i + 1) begin : adder_seq
    full_adder adder(
    .A(A[i]),
    .B(B[i]),
    .Y(initial_sum[i]),
    .Cin(carry[i-1]),
    .Cout(carry[i])
    );
  end
endgenerate

generate
   full_adder fb0(
    .A(initial_sum[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(carry[3]),
    .Cout(carry2[0])
    );
  for (i = 1; i < 4; i = i + 1) begin : adder_seq1 // This just resets i
    full_adder adder(
    .A(initial_sum[i]),
    .B(1'b0),
    .Y(Y[i]),
    .Cin(carry2[i-1]),
    .Cout(carry2[i])
    );
  end
endgenerate

endmodule