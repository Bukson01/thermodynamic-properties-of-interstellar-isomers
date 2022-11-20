close all;clear all;clc
%FREE ENERGY COMPUTATION USING PARTITION FUNCTION%

K_b=1.38064852e-23; %Boltzmann's constant

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



T_i=0:100:2000000; %Temeperature variation in Kelvin
for i=1:length(T_i)
    %x_axis=1./(K_b*T_i);
    x_axis=T_i;
    l_C_3H_2_cpd=-K_b*T_i*(log(sum(l_C_3H_2))); 
   c_C_3H_2_cpd=-K_b*T_i*(log(sum(c_C_3H_2)));     
   Ketene_cpd=-K_b*T_i*(log(sum(Ketene))); 
   Ethynol_cpd=-K_b*T_i*(log(sum(Ethynol))); 
   Oxirene_cpd=-K_b*T_i*(log(sum(Oxirene))); 
   NH_2CN_cpd=-K_b*T_i*(log(sum(NH_2CN))); 
   CH_2NN_cpd=-K_b*T_i*(log(sum(CH_2NN))); 
   NH_2NC_cpd=-K_b*T_i*(log(sum(NH_2NC))); 
   HCCCN_cpd=-K_b*T_i*(log(sum(HCCCN))); 
   HCCNC_cpd=-K_b*T_i*(log(sum(HCCNC)));
   HNCCC_cpd=-K_b*T_i*(log(sum(HNCCC))); 
   CCHCN_cpd=-K_b*T_i*(log(sum(CCHCN))); 
   HCNCC_cpd=-K_b*T_i*(log(sum(HCNCC))); 
   HCOCN_cpd=-K_b*T_i*(log(sum(HCOCN))); 
   HCONC_cpd=-K_b*T_i*(log(sum(HCONC)));
    
end
EMMA=1.1;
plot(x_axis,l_C_3H_2_cpd,'r','LineWidth', EMMA)
hold on
plot(x_axis,c_C_3H_2_cpd,'g','LineWidth', EMMA)
hold on
plot(x_axis,Ketene_cpd,'k','LineWidth', EMMA)
hold on
plot(x_axis,Ethynol_cpd,'b','LineWidth', EMMA)
hold on
plot(x_axis,Oxirene_cpd,'y','LineWidth', EMMA)
hold on
plot(x_axis,NH_2CN_cpd,'m','LineWidth', EMMA)
hold on
plot(x_axis,CH_2NN_cpd,'c','LineWidth', EMMA)
hold on
plot(x_axis,NH_2NC_cpd,'--k','LineWidth', EMMA)
hold on
plot(x_axis,HCCCN_cpd,'--b','LineWidth', EMMA)
hold on
plot(x_axis,HCCNC_cpd,'--g','LineWidth', EMMA)
hold on
plot(x_axis,HNCCC_cpd,'m','LineWidth', EMMA)
hold on
plot(x_axis,CCHCN_cpd,'c','LineWidth', EMMA)
hold on
plot(x_axis,HCNCC_cpd,'--k','LineWidth', EMMA)
hold on
plot(x_axis,HCOCN_cpd,'--b','LineWidth', EMMA)
hold on
plot(x_axis,HCONC_cpd,':g','LineWidth', EMMA)


%legend('l-C_3H_2','c-C_3H_2','Ketene','Ethynol','Oxirene','NH_2CN','CH_2NN',...
%'NH_2NC','HCCCN','HCCNC','HNCCC','CCHCN','HCNCC','HCOCN','HCONC','Location','best','fontweight','bold')
title('Free Energy');xlabel('T(K)');ylabel('F(J)')

set(get(gca, 'XAxis'), 'FontWeight', 'bold')
set(get(gca, 'YAxis'), 'FontWeight', 'bold')

xlswrite('G5_FREE_ENERGY.xlsx', [x_axis(:), l_C_3H_2_cpd(:), c_C_3H_2_cpd(:),  Ketene_cpd(:),...
    Ethynol_cpd(:), Oxirene_cpd(:),  NH_2CN_cpd(:),  CH_2NN_cpd(:),  NH_2NC_cpd(:),  HCCCN_cpd(:),...
    HCCNC_cpd(:),  HNCCC_cpd(:),  CCHCN_cpd(:), HCNCC_cpd(:),  HCOCN_cpd(:),  HCONC_cpd(:), ]);

