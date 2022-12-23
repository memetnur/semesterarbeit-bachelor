clear
close all

path='C:\Users\Nurcan Memeti.DESKTOP-T1DPSEA\OneDrive - ZHAW\ZHAW\Semesterarbeit 2018\Fotos_H022\20180911_Flasche18';
jpeg_files = dir(fullfile(path,'*.jpeg'));
nfiles = length(jpeg_files);
n = nfiles;

for y = 1:n
    
    for i = 1:4
        I = imread(fullfile(path,jpeg_files((y-1)*4+i).name));
        I2 = imcrop(I,[800 700 100 70]);
        I3=I2;
        %hsv = rgb2hsv(I2);
        %I3 = hsv;
        %lab = rgb2lab(I2);
        %I3 = lab;
        %xyz = rgb2xyz(I2);
        %I3 = xyz;
        %gray = rgb2gray(I2);
        %I3 = gray;
        
        %figure
        %image(I2);
        
        for j=1:3
            M=I3(:,:,j);
            v=(M(:));
            clear l k;
            k=1;
            while ~isempty(v)
                l1(k)=sum(v==v(1));
                l2(k)=v(1);
                p=find(v~=v(1));
                v=v(p);
                k=k+1;
            end
            p=find(l1==max(l1));
            f(i,j)=l2(p(1)); % Farbzahl die am haeufigsten auftaucht
            m1(i,j)=mean(mean(I3(:,:,j)));
            
        end
        
    end
    
    
    mm(y,:)=mean(f);
    m(y,:)=mean(m1);
    
    
end

X=xlsread('Zeitplan_Semesterarbeit_8Wochen1 - Verknüpfung', 'OD Flasche 18', 'C2:C28');
Y=xlsread('Zeitplan_Semesterarbeit_8Wochen1 - Verknüpfung', 'OD Flasche 18', 'F2:F28');

figure
for i=1:3
    subplot(3,1,i);
    hold on
    plot(0:0.5:13,mm(1:n,i),'o');
    plot(0:0.5:13,m(1:n,i),'+');
    plot(X,Y*10,'*');
    hold off
    grid on
    xlabel('time');
    legend('max col', 'mean col', 'OD')
end


plot((m(:,1)),'o')
corr(m(:,1),y)

corr(m(:,1),Y) 
corr(m(:,2),Y) 
corr(m(:,3),Y) 

figure
plot(m(:,1), 'o');
hold on 
plot(Y*10,'*');

figure
plot(log(Y(2:end-4)),'*');

figure
plot(log(m(2:end-4,1)),'o'); %parameter aender
return
polyfit(X(2:end-4),log(Y(2:end-4)),1)
polyfit(X(2:end-4),log(m(2:end-4,1)),1) %parameter aender

figure
plot(X(2:end-4),exp(-1.2522)*exp(0.3489*X(2:end-4)));
hold on
plot(X(2:end-4),exp(-3.3485)*exp(0.1245*X(2:end-4)));

figure
plot(X(2:end-4),exp(0.3489*X(2:end-4)));
hold on
plot(X(2:end-4),exp(3*0.1245*X(2:end-4)));