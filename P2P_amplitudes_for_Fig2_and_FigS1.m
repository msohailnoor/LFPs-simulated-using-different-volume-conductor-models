clear
clc

cd('Data_used_in_Fig2')
% cd('Lead_in_IC')

vc = ["mida12_anisotropic", "mida12_isotropic", "mida4", "mida2", "mida1"];

p2p_amp = zeros(5,1);

for i=1:5
    load(strcat('LFP_del0.4_',vc(i),'.mat'))
    lfp_bp = (lfp(:,2) - lfp(:,4))/(1e-6); % contact 1 - contact 3
    p2p_amp(i) = peak2peak(lfp_bp);
end

disp(p2p_amp')