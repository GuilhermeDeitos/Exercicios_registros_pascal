program Ex1Registro;
uses crt;
type
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
	escolha : char;
	cliente : record
		nome : string;
		ender:endereco;
		telefone : string;
		cpf : string;
	end;

begin
	repeat
		Writeln('Para inserir as informaçoes do cliente ----- tecle 1');
		writeln('Para consultar as informações do cliente ----- tecle 2');
		writeln('Para sair do programa ----- tecle 0');
		readln(escolha);
			if (escolha = '1') then
	begin
			writeln('Qual o nome do paciente');
			readln(cliente.nome);
			writeln('------------endereço------------');
			writeln('Rua do cliente');
			readln(cliente.ender.rua);
			writeln('Numero da casa do cliente');
			readln(cliente.ender.numero);
			writeln('complemento do endereço  do cliente');
			readln(cliente.ender.complemento);
			writeln('bairro do cliente');
			readln(cliente.ender.bairro);
			writeln('CEP do cliente');
			readln(cliente.ender.cep);
			writeln('Cidade do cliente');
			readln(cliente.ender.cidade);
			writeln('Estado do cliente');
			readln(cliente.ender.estado);
			writeln('Qual o telefone do cliente');
			readln(cliente.telefone);
			writeln('Qual o cpf do cliente');
			readln(cliente.cpf);
	end;
	if (escolha = '2') then
	begin
		writeln('o nome do cliente é : ',cliente.nome);
		writeln('o endereço do cliente é : Rua : ',cliente.ender.rua,' Numero da casa do cliente : ',cliente.ender.numero,' complemento do endereço  do cliente : ',cliente.ender.complemento,' bairro do cliente : ',cliente.ender.bairro, ' CEP do cliente :',cliente.ender.cep,' Cidade do cliente : ',cliente.ender.cidade,' Estado do cliente :',cliente.ender.estado);
		writeln('o telefone do cliente é : ',cliente.telefone);
		writeln('o cpf do cliente é : ',cliente.cpf);
	end;	
	until escolha = '0';
end.
