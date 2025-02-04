% data for training point and test point 

format long;

trainP = [ -0.5000,-1.8791161 ;
    -0.4111,-1.4863026 ;
    -0.3222,-1.2340791 ;
    -0.2333,-1.0889126 ;
    -0.1444,-1.0210957 ;
    -0.0556,-1.0012003 ;
    0.0333,-0.9997407 ;
    0.1222,-0.9872194 ;
    0.2111,-0.9341338 ;
    0.3000,-0.8109635 ;
    0.3889,-0.5884439 ;
    0.4778,-0.2398145 ;
    0.5667,0.2504693 ;
    0.6556,0.8644380 ;
    0.7444,1.5092225 ;
    0.8333,1.9638191 ;
    0.9222,1.8573017 ;
    1.0111,0.8153058 ;
    1.1000,-0.8237622 ;
    ] ;

tpX = trainP( : , 1 ) ;
tpY = trainP( : , 2 ) ;

testP = [-0.4556 , -1.6626043;
    -0.2778 , -1.1499897;
    -0.1444 , -1.0210957;
    0.0333 , -0.9997407;
    0.2111 , -0.9341338;
    0.3889 , -0.5884439;
    0.6111 , 0.5454266;
    0.7889 , 1.7803107;
    0.9667 , 1.4644281;
    1.1444 , -1.0369071;
    ] ;

testX = testP( : , 1 ) ;
testY = testP( : ,2 ) ;

% point selection
n = size(trainP,1);
for i = 2 : n
    index = floor(linspace(1,n,i));
    x = tpX(index) ;
    y = tpY(index) ;
    scatter(testX,testY,'r') ;
    text(-.58,1.85,'O','FontSize',20);
    text(-.50,1.72,num2str(i-1),'FontSize',13);
    hold on;
    % dd function 
    ndd(x,y,trainP,testP,i-1) ;
    pause ;
    clf ;
end


