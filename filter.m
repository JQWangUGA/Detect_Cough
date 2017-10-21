function output=open(input,SE)
    n=length(input);
    m=length(SE);
    input=[zeros(1,m/2) input zeros(1,m/2)];
    
    X=zeros(m,n);
    for i=1:m
        X(i,:)=input(i:n+i-1)+ones(1,n)*SE(i);
    end
    A=max(X,[],1);
    A=[zeros(1,m/2) A zeros(1,m/2)];
    for i=1:m
        X(i,:)=A(i:n-1+i)-ones(1,n)*SE(i);
    end
    output=min(X,[],1);
    
end
