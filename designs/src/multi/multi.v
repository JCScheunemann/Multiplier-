module multiplicador(clk,A,B,S); //Definicao das ports
	parameter TAM=8;
	input [TAM-1:0] A;	//sinal de entrada A
	input [TAM-1:0] B; 	//sinal de entrada B
	input clk;			//sinal de clock
	output reg [(TAM+TAM-1):0] S; // sinal de saida
	
	//A cada borda de subida do clk, o sinal de saida S ira receber o valor da multiplicacao
	always @(posedge clk) begin
		S<=A*B;
	end	
endmodule
