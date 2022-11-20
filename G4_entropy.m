close all;clear all;clc
%ENTROPY

R=8.3144598; %molar gas constant
theta=900;%characteristic vibration Entropy
K_b=1.38064852e-23; %boltzmann's constant

%List of molecules%
c_C3Si=[7.303 0.000 4.383 11.948];
l_C3Si=[7.303 0.000 3.356 11.390];
l_C3H= [6.947 0.301 2.746 10.215];
c_C3H =[6.947 0.301 3.702 11.007];
HCCN=[6.981 0.000 3.524 10.657];  
HCNC=[6.981 0.000 3.495 10.687];
HNCO=[7.045 0.000 3.428 10.530];
HOCN=[7.045 0.000 3.502 10.631];
HCNO=[7.045 0.000 0.124 7.649];
HONC=[7.045 0.000 3.501 10.767];


T_i=0:100; %Temperature Variation
for i=1:length(T_i) 
    %x_axis=1./(K_b*T_i);
    x_axis=T_i;
    z_v= R.*((theta./T_i)./(exp(theta./T_i)-1) -log(1-exp(-theta./T_i))); 
end


   %% c_C3Si molecule %%
z_t=R*(log(c_C3Si(1))+2.5);
%z_e=R*(log(c_C3Si(2))+0.0);
z_r=R*(log(c_C3Si(3))+1.5);%for nolinear molecules
z_e=0;
TOTAL=z_t+z_e+z_r;
Z_V= z_v+TOTAL;

Emma=1.5;

plot(x_axis,Z_V,'r','LineWidth', Emma)
c_C3Si_entropy_values= [z_t z_e z_r z_v(1)];
c_C3Si_entropy_total= sum(c_C3Si_entropy_values);

hold on;
    %% l_C3Si molecule %%
z_t1=R*(log(l_C3Si(1))+2.5);
%z_e1=R*(log(l_C3Si(2))+0.0);
z_r1=R*(log(l_C3Si(3))+1.0); 
z_e1=0;
TOTAL1=z_t1+z_e1+z_r1;
Z_V1= z_v+TOTAL1;
plot(x_axis,Z_V1,'g','LineWidth', Emma)
l_C3Si_entropy_values= [z_t1 z_e1 z_r1 z_v(1)];
l_C3Si_entropy_total= sum(l_C3Si_entropy_values);

hold on;
     %% l_C3H molecule %%
z_t2=R*(log(l_C3H(1))+2.5);
z_e2=R*(log(l_C3H(2))+0.0);
z_r2=R*(log(l_C3H(3))+1.0);%for nolinear molecules
%z_e2=0;
TOTAL2=z_t2+z_e2+z_r2;
Z_V2= z_v+TOTAL2;
plot(x_axis,Z_V2,'k','LineWidth', Emma)
l_C3H_entropy_values= [z_t2 z_e2 z_r2 z_v(1)];
l_C3H_entropy_total= sum(l_C3H_entropy_values);

hold on;
   %% c_C3H_ molecule %%
z_t3=R*(log(c_C3H(1))+2.5);
z_e3=R*(log(c_C3H(2))+0.0);
z_r3=R*(log(c_C3H(3))+1.5);%for nolinear molecules
%z_e3=0;
TOTAL3=z_t3+z_e3+z_r3;
Z_V3= z_v+TOTAL3;
plot(x_axis,Z_V3,'b','LineWidth', Emma)
c_C3H_entropy_values= [z_t3 z_e3 z_r3 z_v(1)];
c_C3H_entropy_total= sum(c_C3H_entropy_values);

hold on
%% HCCN molecule %%
z_t4=R*(log(HCCN(1))+2.5);
%z_e4=R*(log(HCCN(2))+0.0);
z_r4=R*(log(HCCN(3))+1.0);
z_e4=0;
TOTAL4=z_t4+z_e4+z_r4;
Z_V4= z_v+TOTAL4;
plot(x_axis,Z_V4,'y','LineWidth', Emma)
HCCN_entropy_values= [z_t4 z_e4 z_r4 z_v(1)];
HCCN_entropy_total= sum(HCCN_entropy_values);


hold on
%% HCNC molecule %%
z_t5=R*(log(HCNC(1))+2.5);
%z_e5=R*(log(HCNC(2))+0.0);
z_r5=R*(log(HCNC(3))+1.0);
z_e5=0;
TOTAL5=z_t5+z_e5+z_r5;
Z_V5= z_v+TOTAL5;
plot(x_axis,Z_V5,'m','LineWidth', Emma)
HCNC_entropy_values= [z_t5 z_e5 z_r5 z_v(1)];
HCNC_entropy_total= sum(HCNC_entropy_values);

hold on
%% HNCO molecule %%
z_t6=R*(log(HNCO(1))+2.5);
%z_e6=R*(log(HNCO(2))+0.0);
z_r6=R*(log(HNCO(3))+1.0);
z_e6=0;
TOTAL6=z_t6+z_e6+z_r6;
Z_V6= z_v+TOTAL6;
plot(x_axis,Z_V6,'c','LineWidth', Emma)
HNCO_entropy_values= [z_t6 z_e6 z_r6 z_v(1)];
HNCO_entropy_total= sum(HNCO_entropy_values);

hold on
%% HOCN molecule %%
z_t7=R*(log(HOCN(1))+2.5);
%z_e7=R*(log(HOCN(2))+0.0);
z_r7=R*(log(HOCN(3))+1.0);
z_e7=0;
TOTAL7=z_t7+z_e7+z_r7;
Z_V7= z_v+TOTAL7;
plot(x_axis,Z_V7,'--k','LineWidth', Emma)
HOCN_entropy_values= [z_t7 z_e7 z_r7 z_v(1)];
HOCN_entropy_total= sum(HOCN_entropy_values);

hold on
%% HCNO molecule %%
z_t8=R*(log(HCNO(1))+2.5);
%z_e8=R*(log(HCNO(2))+0.0);
z_r8=R*(log(HCNO(3))+1.0);
z_e8=0;
TOTAL8=z_t8+z_e8+z_r8;
Z_V8= z_v+TOTAL8;
plot(x_axis,Z_V8,'--b','LineWidth', Emma)
HCNO_entropy_values= [z_t8 z_e8 z_r8 z_v(1)];
HCNO_entropy_total= sum(HCNO_entropy_values);

hold on
%% HONC molecule %%
z_t9=R*(log(HONC(1))+2.5);
%z_e9=R*(log(HONC(2))+0.0);
z_r9=R*(log(HONC(3))+1.0);
z_e9=0;
TOTAL9=z_t9+z_e9+z_r9;
Z_V9= z_v+TOTAL9;
plot(x_axis,Z_V9,'--g','LineWidth', Emma)
HONC_entropy_values= [z_t9 z_e9 z_r9 z_v(1)];
HONC_entropy_total= sum(HONC_entropy_values);

%%
xlabel('T(K)','fontweight','bold','fontsize',11);
ylabel('S(J/K)','fontweight','bold','fontsize',11);
title('Entropy','fontweight','bold','fontsize',11)
%legend('c-C_3Si','l-C_3Si','l-C_3H','c-C_3H','HCCN','HCNC','HNCO','HOCN','HCNO','HONC','Location','best','fontweight','bold')



set(get(gca, 'XAxis'), 'FontWeight', 'bold')
set(get(gca, 'YAxis'), 'FontWeight', 'bold')


% xlswrite('G4_ENTROPY.xlsx', [Z_V(:),Z_V1(:),...
%     Z_V2(:),Z_V3(:),Z_V4(:),Z_V5(:),Z_V6(:), Z_V7(:),Z_V8(:),Z_V9(:)]);
