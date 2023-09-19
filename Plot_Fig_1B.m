clear
clc

cd('Data_used_in_Fig2')

load('LFP_del0.4_mida1.mat')
lfp1=lfp(1:300,:)/1e-6; % in micro volts

load('LFP_del0.4_mida2.mat')
lfp2=lfp(1:300,:)/1e-6; 

load('LFP_del0.4_mida4.mat')
lfp3=lfp(1:300,:)/1e-6; 

load('LFP_del0.4_mida12_isotropic.mat')
lfp4=lfp(1:300,:)/1e-6; 

load('LFP_del0.4_mida12_anisotropic.mat')
lfp5=lfp(1:300,:)/1e-6; 


ref=4; % contact 3
contact_number=2; % contact 1

    
plot(lfp1(:, contact_number)-lfp1(:, ref),'LineWidth',2) 
hold on
plot(lfp2(:, contact_number)-lfp2(:, ref),'LineWidth',2,'Color','r','LineStyle',':') 
plot(lfp3(:, contact_number)-lfp3(:, ref),'LineWidth',2,'Color','r') 
plot(lfp4(:, contact_number)-lfp4(:, ref),'LineWidth',2,'Color','m') 
plot(lfp5(:, contact_number)-lfp5(:, ref),'LineWidth',2,'Color','k') 

title('LFP between Contact 1 and 3')

ylim([-45 45])

xlabel('Time (ms)','FontSize',12,'FontWeight','bold')
ylabel('Amplitude ({\mu}V)','FontSize',12,'FontWeight','bold')

ax=gca;
ax.FontSize=18;
ax.FontWeight='bold';
legend({'MIDA 1', 'MIDA 2', 'MIDA 4', 'MIDA 12 Iso', 'MIDA 12 Aniso'},'Location','bestoutside','FontSize', 12)
legend('boxoff')
