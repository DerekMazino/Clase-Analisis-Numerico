function[L,U, P] = my_lu_Camilo_Marin(A)
N=length(A);
U=A; 
L=zeros(N);
P=eye(N);
    for i=1:N
        while U(i,i)==0
        L_temp=L(i,1:N);
        U_temp=U(i,1:N);
        L(i,1:N)=L(i+1,1:N);
        U(i,1:N)=U(i+1,1:N);
        L(i+1,1:N)=L_temp;
        U(i+1,1:N)=U_temp;
        P_temp=P(i,1:N);
        P(i,1:N)=P(i+1,1:N);
        P(i+1,1:N)=P_temp;
        % Esta parte se encarga de permutar las filas, 
        % si el pivote llega a ser cero.
        end
        L(i+1:N,i)=(U(i+1:N,i)/U(i,i));
        % Inserta el multiplicador en la matriz L.
        for k=2:N
            U(k,i:N)= U(k,i:N)-(L(k,i)*U(i,i:N));
            % Eliminicación de elementos mediante multiplicadores.
        end
        L(i,i)=1;
    end
end