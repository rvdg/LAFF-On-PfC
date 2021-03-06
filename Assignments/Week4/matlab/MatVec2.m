function [ y_out ] = MatVec2( A, x, y )
% Compute y := A x + y 

% Extract the row and column size of A
[ m, n ] = size( A );

% (Strictly speaking you should check that x is a vector size n and y is a
% vector of size m...)

% Copy y into y_out
y_out = y;

% Compute y_out = A * x + y_out
for j = 1:n
    for i=1:m
        y_out( i ) = A( i,j ) * x( j ) + y_out( i );
    end
end

end

