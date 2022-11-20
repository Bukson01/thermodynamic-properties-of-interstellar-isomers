close all;clear all;clc
%ENTROPY

R=8.3144598; %molar gas constant
theta=900;%characteristic vibration Entropy
K_b=1.38064852e-23; %boltzmann's constant

%List of molecules%
l_C_3H_2 = [6.964 0.000 2.482 9.587]; 
c_C_3H_2 = [6.964 0.000 3.507 10.4786]; 
Ketene =[7.029 0.000 3.706 10.850];
Ethynol =[7.029 0.000 3.537 10.762]; 
Oxirene =[7.029 0.000 3.890 11.195];
NH_2CN =[7.030 0.000 3.693 10.850]; 
CH_2NN =[7.030 0.000 3.670 10.848]; 
NH_2NC =[7.030 0.000 3.683 10.942]; 
HCCCN =[7.156 0.000 1.179 8.6025]; 
HCCNC =[7.156 0.000 1.262 8.716]; 
HNCCC =[7.156 0.000 3.698 11.421];
CCHCN =[7.156 0.000 4.251 11.892]; 
HCNCC =[7.156 0.000 1.732 9.446] ;
HCOCN= [ 7.205 0.000 4.338 11.8517]; 
HCONC =[7.205 0.000 4.288 11.9617];


T_i=0:100; %Temperature Variation
for i=1:length(T_i) 
    %x_axis=1./(K_b*T_i);
    x_axis=T_i;
    z_v= R.*((theta./T_i)./(exp(theta./T_i)-1) -log(1-exp(-theta./T_i))); 
end


   %% l_C_3H_2 molecule %%
z_t=R*(log(l_C_3H_2(1))+2.5);
%z_e=R*(log(l_C_3H_2(2))+0.0);
z_r=R*(log(l_C_3H_2(3))+1.0);
z_e=0;
TOTAL=z_t+z_e+z_r;
Z_V= z_v+TOTAL;

EMMA=1.5;

plot(x_axis,Z_V,'r','LineWidth', EMMA)
l_C_3H_2_entropy_values= [z_t z_e z_r z_v(1)];
l_C_3H_2_entropy_total= sum(l_C_3H_2_entropy_values);

hold on;
    %% c_C_3H_2 molecule %%
z_t1=R*(log(c_C_3H_2(1))+2.5);
%z_e1=R*(log(c_C_3H_2(2))+0.0);
z_r1=R*(log(c_C_3H_2(3))+1.5); %for nolinear molecules
z_e1=0;
TOTAL1=z_t1+z_e1+z_r1;
Z_V1= z_v+TOTAL1;
plot(x_axis,Z_V1,'g','LineWidth', EMMA)
c_C_3H_2_entropy_values= [z_t1 z_e1 z_r1 z_v(1)];
c_C_3H_2_entropy_total= sum(c_C_3H_2_entropy_values);

hold on;
     %% Ketene molecule %%
z_t2=R*(log(Ketene(1))+2.5);
%z_e2=R*(log(Ketene(2))+0.0);
z_r2=R*(log(Ketene(3))+1.0);
z_e2=0;
TOTAL2=z_t2+z_e2+z_r2;
Z_V2= z_v+TOTAL2;
plot(x_axis,Z_V2,'k','LineWidth', EMMA)
Ketene_entropy_values= [z_t2 z_e2 z_r2 z_v(1)];
Ketene_entropy_total= sum(Ketene_entropy_values);

hold on;
   %% Ethynol molecule %%
z_t3=R*(log(Ethynol(1))+2.5);
%z_e3=R*(log(Ethynol(2))+0.0);
z_r3=R*(log(Ethynol(3))+1.0);
z_e3=0;
TOTAL3=z_t3+z_e3+z_r3;
Z_V3= z_v+TOTAL3;
plot(x_axis,Z_V3,'b','LineWidth', EMMA)
Ethynol_entropy_values= [z_t3 z_e3 z_r3 z_v(1)];
Ethynol_entropy_total= sum(Ethynol_entropy_values);

hold on
%% Oxirene molecule %%
z_t4=R*(log(Oxirene(1))+2.5);
%z_e4=R*(log(Oxirene(2))+0.0);
z_r4=R*(log(Oxirene(3))+1.0);
z_e4=0;
TOTAL4=z_t4+z_e4+z_r4;
Z_V4= z_v+TOTAL4;
plot(x_axis,Z_V4,'y','LineWidth', EMMA)
Oxirene_entropy_values= [z_t4 z_e4 z_r4 z_v(1)];
Oxirene_entropy_total= sum(Oxirene_entropy_values);


hold on
%% NH2CN molecule %%
z_t5=R*(log(NH_2CN(1))+2.5);
%z_e5=R*(log(NH_2CN(2))+0.0);
z_r5=R*(log(NH_2CN(3))+1.0);
z_e5=0;
TOTAL5=z_t5+z_e5+z_r5;
Z_V5= z_v+TOTAL5;
plot(x_axis,Z_V5,'m','LineWidth', EMMA)
NH_2CN_entropy_values= [z_t5 z_e5 z_r5 z_v(1)];
NH_2CN_entropy_total= sum(NH_2CN_entropy_values);

hold on
%% CH2NN molecule %%
z_t6=R*(log(CH_2NN(1))+2.5);
%z_e6=R*(log(CH_2NN(2))+0.0);
z_r6=R*(log(CH_2NN(3))+1.0);
z_e6=0;
TOTAL6=z_t6+z_e6+z_r6;
Z_V6= z_v+TOTAL6;
plot(x_axis,Z_V6,'c','LineWidth', EMMA)
CH_2NN_entropy_values= [z_t6 z_e6 z_r6 z_v(1)];
CH_2NN_entropy_total= sum(CH_2NN_entropy_values);

hold on
%% NH_2NC molecule %%
z_t7=R*(log(NH_2NC(1))+2.5);
%z_e7=R*(log(NH_2NC(2))+0.0);
z_r7=R*(log(NH_2NC(3))+1.0);
z_e7=0;
TOTAL7=z_t7+z_e7+z_r7;
Z_V7= z_v+TOTAL7;
plot(x_axis,Z_V7,'--k','LineWidth', EMMA)
NH_2NC_entropy_values= [z_t7 z_e7 z_r7 z_v(1)];
NH_2NC_entropy_total= sum(NH_2NC_entropy_values);

hold on
%% HCCCN molecule %%
z_t8=R*(log(HCCCN(1))+2.5);
%z_e8=R*(log(HCCCN(2))+0.0);
z_r8=R*(log(HCCCN(3))+1.0);
z_e8=0;
TOTAL8=z_t8+z_e8+z_r8;
Z_V8= z_v+TOTAL8;
plot(x_axis,Z_V8,'--b','LineWidth', EMMA)
HCCCN_entropy_values= [z_t8 z_e8 z_r8 z_v(1)];
HCCCN_entropy_total= sum(HCCCN_entropy_values);

hold on
%% HCCNC molecule %%
z_t9=R*(log(HCCNC(1))+2.5);
%z_e9=R*(log(HCCNC(2))+0.0);
z_r9=R*(log(HCCNC(3))+1.0);
z_e9=0;
TOTAL9=z_t9+z_e9+z_r9;
Z_V9= z_v+TOTAL9;
plot(x_axis,Z_V9,'--r','LineWidth', EMMA)
HCCNC_entropy_values= [z_t9 z_e9 z_r9 z_v(1)];
HCCNC_entropy_total= sum(HCCNC_entropy_values);

hold on
%% HNCCC molecule %%
z_t10=R*(log(HNCCC(1))+2.5);
%z_e10=R*(log(HNCCC(2))+0.0);
z_r10=R*(log(HNCCC(3))+1.0);
z_e10=0;
TOTAL10=z_t10+z_e10+z_r10;
Z_V10= z_v+TOTAL10;
plot(x_axis,Z_V10,'--g','LineWidth', EMMA)
HNCCC_entropy_values= [z_t10 z_e10 z_r10 z_v(1)];
HNCCC_entropy_total= sum(HNCCC_entropy_values);
hold on
%% CCHCN molecule %%
z_t11=R*(log(CCHCN(1))+2.5);
%z_e11=R*(log(CCHCN(2))+0.0);
z_r11=R*(log(CCHCN(3))+1.0);
z_e11=0;
TOTAL11=z_t11+z_e11+z_r11;
Z_V11= z_v+TOTAL11;
plot(x_axis,Z_V11,'--y','LineWidth', EMMA)
CCHCN_entropy_values= [z_t11 z_e11 z_r11 z_v(1)];
CCHCN_entropy_total= sum(CCHCN_entropy_values);
hold on
%% HCNCC molecule %%
z_t12=R*(log(HCNCC(1))+2.5);
%z_e12=R*(log(HCNCC(2))+0.0);
z_r12=R*(log(HCNCC(3))+1.0);
z_e12=0;
TOTAL12=z_t12+z_e12+z_r12;
Z_V12= z_v+TOTAL12;
plot(x_axis,Z_V12,'--m','LineWidth', EMMA)
HCNCC_entropy_values= [z_t12 z_e12 z_r12 z_v(1)];
HCNCC_entropy_total= sum(HCNCC_entropy_values);
hold on
%% HCOCN molecule %%
z_t13=R*(log(HCOCN(1))+2.5);
%z_e13=R*(log(HCOCN(2))+0.0);
z_r13=R*(log(HCOCN(3))+1.0);
z_e13=0;
TOTAL13=z_t13+z_e13+z_r13;
Z_V13= z_v+TOTAL13;
plot(x_axis,Z_V13,'--c','LineWidth', EMMA)
HCOCN_entropy_values= [z_t13 z_e13 z_r13 z_v(1)];
HCOCN_entropy_total= sum(HCOCN_entropy_values);
hold on
%% HCONC molecule %%
z_t14=R*(log(HCONC(1))+2.5);
%z_e14=R*(log(HCONC(2))+0.0);
z_r14=R*(log(HCONC(3))+1.0);
z_e14=0;
TOTAL14=z_t14+z_e14+z_r14;
Z_V14= z_v+TOTAL14;
plot(x_axis,Z_V14,'g:','LineWidth', EMMA)
HCONC_entropy_values= [z_t14 z_e14 z_r14 z_v(1)];
HCONC_entropy_total= sum(HCONC_entropy_values);
%%
xlabel('T(K)','fontweight','bold','fontsize',11);
ylabel('S(J/K)','fontweight','bold','fontsize',11);
title('Entropy','fontweight','bold','fontsize',11)
%legend('l-C_3H_2','c-C_3H_2','Ketene','Ethynol','Oxirene','NH_2CN','CH_2NN',...
% 'NH_2NC','HCCCN','HCCNC','HNCCC','CCHCN','HCNCC','HCOCN','HCONC','Location','best','fontweight','bold')


set(get(gca, 'XAxis'), 'FontWeight', 'bold')
set(get(gca, 'YAxis'), 'FontWeight', 'bold')

xlswrite('G5_ENTROPY.xlsx', [Z_V(:),Z_V1(:),...
    Z_V2(:),Z_V3(:),Z_V4(:),Z_V5(:),Z_V6(:), Z_V7(:),Z_V8(:),Z_V9(:),Z_V10(:),Z_V11(:),Z_V12(:),Z_V13(:),Z_V14(:) ]);

