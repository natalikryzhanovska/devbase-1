program hw6_7_1;
uses crt;
var
	I,s,b,r,p,s2: Integer;

begin
	randomize;
	writeln('Enter your bet:');
	readln(b);
	s:=0;
	s2:=0;
	i:=1;
	
	if b=1 then
		writeln('You choose Jay');
	if b=2 then
		writeln('You choose Bob');		
	if b>2 then
		writeln('Invalid bet');			
			while i<=7 do
				begin						
					if (s2<20) and (s<20) then	
					begin		
						r:=random(4)+3;
						p:=random(4)+3;
						writeln ('Day',i);
						writeln('Jay caught',' ',r,' ','pokemons (now he has',' ',r+s,')');
						s:=s+r;		
						writeln('Bob caught',' ',p,' ','pokemons (now he has',' ',p+s2,')');
						s2:=s2+p;
					end;
					i:=i+1;		
				end;		
			writeln();
			writeln('Jay got',' ',s,' ','pokemons');	
			writeln('Bob got',' ',s2,' ','pokemons');
			writeln();
			
				if s>s2 then
					begin		
						writeln('Jay wins!');
						if b=2 then
							writeln('You lose the bet.');
					end;	
				if s<s2 then
					begin
						writeln('Bob wins!');
						if b=1 then
							writeln('You lose the bet.');
					end;
				if s=s2 then
					begin
						writeln('It is a tie.');
						writeln('You lose the bet.');		
			
					end;	
readln();
end.