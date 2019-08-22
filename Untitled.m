img=[43  654 756 8 85 54 6 5 25 32 6 3 459 56 956 85 7 46 3 23 2 5 5 7  5 96 85  4 3 523 523 42 35 235 23 23  43 5 36 347 54 845 8 ];
[data index]=sort(img);
[dd ff]=size(index);
c=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]
for i=1:ff
    if (index(1,i) >= 1) & (index(1,i) <=40)
        c(1,1) = c(1,1)+1;
    
    else if index(1,i) >=41 & index(1,i) <=80
            c(1,2) = c(1,2) +1;
        
    else if index(1,i) >=81 & index(1,i) <=120
            c(1,3) = c(1,3) +1;
        
    else if index(1,i) >=121 & index(1,i) <=160
            c(1,4) = c(1,2) +1;
        
    else if index(1,i) >=161 & index(1,i) <=200
            c(1,5) = c(1,2) +1;
        
    else if index(1,i) >=201 & index(1,i) <=240
            c(1,6) = c(1,2) +1;
        
    else if index(1,i) >=241 & index(1,i) <=280
            c(1,7) = c(1,2) +1;
        
    else if index(1,i) >=281 & index(1,i) <=320
            c(1,8) = c(1,2) +1;
        
    else if index(1,i) >=321 & index(1,i) <=360
            c(192) = c(1,2) +1;
        
    else if index(1,i) >=361 & index(1,i) <=400
            c(1,10) = c(1,2) +1;
        
    else if index(1,i) >=401 & index(1,i) <=440
            c(1,11) = c(1,2) +1;
        
    else if index(1,i) >=441 & index(1,i) <=480
            c(1,12) = c(1,2) +1;
        
    else if index(1,i) >=481 & index(1,i) 520
            c(1,13) = c(1,2) +1;
        
    else if index(1,i) >=521 & index(1,i) <=560
            c(1,14) = c(1,2) +1;
        
    else if index(1,i) >=561 & index(1,i) <=600
            c(1,15) = c(1,2) +1;
        
    else if index(1,i) >=601 & index(1,i) <=640
            c(1,16) = c(1,2) +1;
        
    else if index(1,i) >=641 & index(1,i) <=680
            c(1,17) = c(1,2) +1;
        
    else if index(1,i) >=681 & index(1,i) <=720
            c(1,18) = c(1,2) +1;
        
    else if index(1,i) >=721 & index(1,i) <=760
            c(1,19) = c(1,2) +1;
        
    else if index(1,i) >=761 & index(1,i) <=800
            c(1,20) = c(1,2) +1;
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
        end
    end
end

for i=1:20
    c(1,i)=c(1,i)/ff;
end
    [class result]=sort(c,'descend');
    
    disp(strcat('hasil ',num2str(result(1,1))));
    