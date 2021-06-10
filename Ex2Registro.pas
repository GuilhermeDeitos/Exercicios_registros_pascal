program Ex2Registro;
uses crt;
// Registros podem ser representados por tipos simples como caracter,numero ou logico e também por tipos compostos como vetores,matrizes ou ate mesmo outro registro
type 
	animal = record
		nome:string;
		especie:string;
		raca:string;
		porte:string;
		DtdeNscimento:string;
	end;
		endereco = record
		rua:string;
		numero:string;
		complemento:string;
		bairro:string;
		cidade:string;
		estado:string;
		cep:string;
	end;
var
	i:integer;
	escolha:char;
	escolha2:char;
	cliente : record
		nome:string;
		ender : endereco;
		telefone :string;
		cif:string;
		nPets:integer;
		pets:array [1..7] of animal;
	end;
begin
	repeat
		writeln('============================================================');
		writeln('Para digitar as informações do cliente ---- digite 1');
		writeln('para sair ---- digite 0');
		readln(escolha);
			if(escolha = '1') then
	begin
		repeat
		writeln('============================================================');
		writeln('Para Informar o nome do cliente ---- digite 1');
		writeln('para informar o endereço do cliente ---- digite 2');
		writeln('para Informar o telefone do cliente ---- digite 3');
		writeln('para Informar o cif do cliente ---- digite 4');
		writeln('para Informar a quantidade de pets do cliente ---- digite 5');
		writeln('Para consultar as informações do cliente ---- digite 6');
		writeln('para sair do programa ---- digite 0');
		readln(escolha2);
		if (escolha2 = '1') then
		begin
			writeln('Qual o nome do cliente');
			readln(cliente.nome);
		end;
		if (escolha2 = '2') then
		begin
			writeln('============================== endereço =====================');
			writeln('============================== Rua do cliente ==============================');
			readln(cliente.ender.rua);
			writeln('==============================Numero da casa do cliente==============================');
			readln(cliente.ender.numero);
			writeln('==============================complemento do endereço  do cliente==============================');
			readln(cliente.ender.complemento);
			writeln('==============================bairro do cliente==============================');
			readln(cliente.ender.bairro);
			writeln('==============================CEP do cliente==============================');
			readln(cliente.ender.cep);
			writeln('==============================Cidade do cliente==============================');
			readln(cliente.ender.cidade);
			writeln('==============================Estado do cliente==============================');
			readln(cliente.ender.estado);
			writeln('============================================================');
		end;
		if (escolha2 = '3') then
		begin
			writeln('============================================================');
			writeln('==============================Qual o telefone do cliente==============================');
			readln(cliente.telefone);
			writeln('============================================================');
		end;
		if (escolha2 = '4') then
		begin
			writeln('============================================================');
			writeln('==============================Qual o cif do cliente==============================');
			readln(cliente.cif);
			writeln('============================================================');
		end;
		if (escolha2 = '5') then
		begin
			writeln('============================================================');
			writeln('==============================Qual  a quantidade de pets do cliente==============================');
			readln(cliente.npets);
			for i:= 1 to cliente.npets do
			begin
				writeln('==============================Qual o nome do animal ?==============================');
				readln(cliente.pets[i].nome);
				writeln('==============================Qual a especie do animal ?==============================');
				readln(cliente.pets[i].especie);
				writeln('==============================Qual a raça do animal ?==============================');
				readln(cliente.pets[i].raca);
				writeln('==============================Qual o porte  do animal ?==============================');
				readln(cliente.pets[i].porte);
				writeln('==============================Qual a data de nascimento do animal do animal ?==============================');
				readln(cliente.pets[i].DtdeNscimento);
			end;
		end;
		if (escolha2 = '6') then
		begin
			writeln('o nome do cliente é : ',cliente.nome);
			writeln('o endereço do cliente é : Rua : ',cliente.ender.rua,'||Numero da casa do cliente : ',cliente.ender.numero,'||Complemento do endereço  do cliente : ',cliente.ender.complemento,'||Bairro do cliente : ',cliente.ender.bairro, '||CEP do cliente :',cliente.ender.cep,'||Cidade do cliente : ',cliente.ender.cidade,'||Estado do cliente :',cliente.ender.estado);
			writeln('o telefone de clienet é : ',cliente.telefone);
			writeln('o cif do cliente é : ',cliente.cif);
			for i:= 1 to cliente.npets do
			writeln('os pets do cliente são : ',cliente.npets,' e suas informações são : ', ' Nome : ',cliente.pets[i].nome,'||Especie : ',cliente.pets[i].especie,'||Raça : ',cliente.pets[i].raca,'||Porte : ',cliente.pets[i].porte,'||Data de nascimento : ',cliente.pets[i].DtdeNscimento);
		end;
		until escolha2 = '0';
	end;
	
	until escolha = '0';

end.
