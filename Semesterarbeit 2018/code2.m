clear
close all

path='/Users/besmirasabani/Documents/MATLAB/H0221480.5';
jpeg_files = dir(fullfile(path,'*.jpeg'));
nfiles = length(jpeg_files);

for i = 1 : 4
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 750 100 100]);
    figure
    image(I2);
    
    for j=1:3
        i_min=min(min(I2(:,:,j)));
        i_max=max(max(I2(:,:,j)));
        clear l;
        for k=i_min+1:i_max+1
            M=I2(:,:,j);
            v=M(:);
            p=find(v==k);
            l(k)=length(p);
        end
        f1(i,j)=find(l==max(l))-1; % Farbzahl die am haeufigsten auftaucht  
        %l(f1(i,j))=0;              % Lösche die Farbzahl 
        %f2(i,j)=find(l==max(l))-1; % Farbzahl die am 2t-haeufigsten auftaucht       
        m1(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

mm(1,:)=mean(f1);
m(1,:)=mean(m1);

%return

%s4=std(m1);

for i = 5 : 8
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2 =imcrop(I,[800 750 100 100]);
    figure
    image(I2);
    
    for j=1:3
        i_min=min(min(I2(:,:,j)));
        i_max=max(max(I2(:,:,j)));
        clear l;
        for k=i_min+1:i_max+1
            M=I2(:,:,j);
            v=M(:);
            p=find(v==k);
            l(k)=length(p);
        end
        f1(i,j)=find(l==max(l))-1;
        
        m5(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

mm(2,:)=mean(f1);
m(2,:)=mean(m5);

for i = 9 : 12
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2 =imcrop(I,[800 750 100 100]);
    figure
    image(I2);
    
    for j=1:3
        m9(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

m(3,:)=mean(m9);
mm(3,:)=mean(f1);


for i = 13 : 16
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 750 100 100]);
    figure
    image(I2);
    
    for j=1:3
        i_min=min(min(I2(:,:,j)));
        i_max=max(max(I2(:,:,j)));
        clear l;
        for k=i_min+1:i_max+1
            M=I2(:,:,j);
            v=M(:);
            p=find(v==k);
            l(k)=length(p);
        end
        f1(i,j)=find(l==max(l))-1;
        
        m13(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

m(4,:)=mean(m13);
mm(4,:)=mean(f1);

for i = 17 : 20
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 750 100 100]);
    figure
    image(I2);
    
    for j=1:3
        m17(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

m(5,:)=mean(m17);
mm(5,:)=mean(f1);

for i = 21 : 24
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 650 100 100]);
    figure
    image(I2);
    
    for j=1:3
        i_min=min(min(I2(:,:,j)));
        i_max=max(max(I2(:,:,j)));
        clear l;
        for k=i_min+1:i_max+1
            M=I2(:,:,j);
            v=M(:);
            p=find(v==k);
            l(k)=length(p);
        end
        f1(i,j)=find(l==max(l))-1;
        
        m21(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

m(6,:)=mean(m21);
mm(6,:)=mean(f1);


for i = 25 : 28
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 800 100 100]);
    figure
    image(I2);
    
    for j=1:3
        i_min=min(min(I2(:,:,j)));
        i_max=max(max(I2(:,:,j)));
        clear l;
        for k=i_min+1:i_max+1
            M=I2(:,:,j);
            v=M(:);
            p=find(v==k);
            l(k)=length(p);
        end
        f1(i,j)=find(l==max(l))-1;
        
        m25(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

m(7,:)=mean(m25);
mm(7,:)=mean(f1);


for i = 29 : 32
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 800 100 100]);
    figure
    image(I2);
    
    for j=1:3
        m29(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

m(8,:)=mean(m29);
mm(8,:)=mean(f1);


for i = 33 : 36
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 750 100 100]);
    figure
    image(I2);
    
    
    
end

m(9,:)=mean(m33);
mm(9,:)=mean(f1);



for i = 37 : 40
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 750 100 100]);
    figure
    image(I2);
    
    for j=1:3
        i_min=min(min(I2(:,:,j)));
        i_max=max(max(I2(:,:,j)));
        clear l;
        for k=i_min+1:i_max+1
            M=I2(:,:,j);
            v=M(:);
            p=find(v==k);
            l(k)=length(p);
        end
        f1(i,j)=find(l==max(l))-1;
        
        m37(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

m(10,:)=mean(m37);
mm(10,:)=mean(f1);



for i = 41 : 44
    I = imread(fullfile(path,jpeg_files(i).name));
    %figure,
    %imshow(I);
    I2=imcrop(I,[800 780 100 100]);
    figure
    image(I2);
    
    for j=1:3       i_min=min(min(I2(:,:,j)));
        i_max=max(max(I2(:,:,j)));
        clear l;
        for k=i_min+1:i_max+1
            M=I2(:,:,j);
            v=M(:);
            p=find(v==k);
            l(k)=length(p);
        end
        f1(i,j)=find(l==max(l))-1;
        
        m41(i,j)=mean(mean(I2(:,:,j)));
    end
    
end

m(11,:)=mean(m41);
mm(11,:)=mean(f1);



X=xlsread('Zeitplan_Semesterarbeit_8Wochen', 'OD Flasche 1', 'C2:C11');
Y=xlsread('Zeitplan_Semesterarbeit_8Wochen', 'OD Flasche 1', 'F2:F11');

for i=1:3
    subplot(3,1,i)
    %plot(20.5,m4(i),'o')
    hold on
    plot(0:0.5:4.5,flip(m(1:10,i)),'o')
    %    plot(X,Y,'*');
    hold on
    plot(0:0.5:4.5,flip(mm(1:10,i)),'+')
    hold off
    grid on
    xlabel('time');
end