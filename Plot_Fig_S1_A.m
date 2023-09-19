clear
clc

load('Data_used_in_Fig2/LFP_del0.4_mida12_anisotropic.mat');
lfp1=lfp/1e-6; % in micro volts

load('Lead_in_IC/LFP_del0.4_mida12_anisotropic.mat');
lfp2=lfp/1e-6; % in micro volts


% plot C1-C3

ref=4; % contact 3
contact_number=2; % contact 1
plot(lfp1(:, contact_number)-lfp1(:, ref),'LineWidth',2) 
hold on
plot(lfp2(:, contact_number)-lfp2(:, ref),'LineWidth',2,'Color', [0.635 0.078 0.184]) 


title('Bipolar LFP - C1-C3 - MIDA 12 Anisotropic')
ylim([-50 50])
xlabel('Time (ms)','FontSize',12,'FontWeight','bold')
ylabel('Amplitude ({\mu}V)','FontSize',12,'FontWeight','bold')

ax=gca;
ax.FontSize=14;
ax.FontWeight='bold';
legend({'Lead in STN', 'Lead in IC'},'FontSize', 12)
legend('boxoff')


