close all;clear all;clc
%FREE ENERGY COMPUTATION USING PARTITION FUNCTION%

K_b=1.38064852e-23; %Boltzmann's constant

%List of molecules%
c_C3Si=[7.303 0.000 4.383 11.948];
l_C3Si=[7.303 0.000 3.356 11.390];
l_C3H= [6.947 0.301 2.746 10.215];
c_C3H =[6.947 0.301 3.702 11.007];
HCCN=[6.981 0.000 3.524 10.657]; 
HCNC= [6.981 0.000 3.495 10.687];
HNCO=[7.045 0.000 3.428 10.530];
HOCN=[7.045 0.000 3.502 10.631];
HCNO=[7.045 0.000 0.124 7.649];
HONC=[7.045 0.000 3.501 10.767];


T_i=0:100:2000000; %Temeperature variation in Kelvin
for i=1:length(T_i)
    %x_axis=1./(K_b*T_i);
    x_axis=T_i;
    c_C3Si_cpd=-K_b*T_i*(log(sum(c_C3Si))); 
    l_C3Si_cpd=-K_b*T_i*(log(sum(l_C3Si)));     
    l_C3H_cpd=-K_b*T_i*(log(sum(l_C3H))); 
    c_C3H_cpd=-K_b*T_i*(log(sum(c_C3H))); 
    HCCN_cpd=-K_b*T_i*(log(sum(HCCN))); 
    HCNC_cpd=-K_b*T_i*(log(sum(HCNC))); 
    HNCO_cpd=-K_b*T_i*(log(sum(HNCO))); 
    HOCN_cpd=-K_b*T_i*(log(sum(HOCN))); 
    HCNO_cpd=-K_b*T_i*(log(sum(HCNO))); 
    HONC_cpd=-K_b*T_i*(log(sum(HONC))); 
    
end
EMMA=1.5;
plot(x_axis,c_C3Si_cpd,'r','LineWidth', EMMA)
hold on
plot(x_axis,l_C3Si_cpd,'g','LineWidth', EMMA)
hold on
plot(x_axis,l_C3H_cpd,'k','LineWidth', EMMA)
hold on
plot(x_axis,c_C3H_cpd,'b','LineWidth', EMMA)
hold on
plot(x_axis,HCCN_cpd,'y','LineWidth', EMMA)
hold on
plot(x_axis,HCNC_cpd,'m','LineWidth', EMMA)
hold on
plot(x_axis,HNCO_cpd,'c','LineWidth', EMMA)

hold on
plot(x_axis,HOCN_cpd,'--k','LineWidth', EMMA)
hold on
plot(x_axis,HCNO_cpd,'--b','LineWidth', EMMA)
hold on
plot(x_axis,HONC_cpd,'--g','LineWidth', EMMA)


%legend('c-C_3Si','l-C_3Si','l-C_3H','c-C_3H','HCCN','HCNC','HNCO','HOCN','HCNO','HONC','Location','best','fontweight','bold')
title('Free Energy');xlabel('T(K)');ylabel('F(J)')

set(get(gca, 'XAxis'), 'FontWeight', 'bold')
set(get(gca, 'YAxis'), 'FontWeight', 'bold')


%xlswrite('G4_FREE_ENERGY.xlsx', [x_axis(:),c_C3Si_cpd(:),l_C3Si_cpd(:),l_C3H_cpd(:),c_C3H_cpd(:),...
  %  HCCN_cpd(:),HCNC_cpd(:),HNCO_cpd(:), HOCN_cpd(:),HCNO_cpd(:),HONC_cpd(:)]);

