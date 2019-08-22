a=imread('training_set/wax (34).jpg');
a=rgb2gray(a);
  [m n]=size(a);
pi = 3.142857;
  for i = 1: m 
    for j = 1:n 
        if (i == 1)
            ci = 1 / sqrt(m);
        else
            ci = sqrt(2) / sqrt(m);
        end
        
        if (j == 1)
            cj = 1 / sqrt(n);
        else
            cj = sqrt(2) / sqrt(n);
        end
                
        sum = 0;
        for k = 1:m
            for l = 1:n
                nn=double(a(k,l));
                dct1 = nn * cosd((2 * k + 1) * i * pi / (2 * m)) * cosd((2 * l + 1) * j * pi / (2 * n));
                sum = sum + dct1;
            end
        end
        dct(i,j) = ci * cj * sum;
    end
  end
  