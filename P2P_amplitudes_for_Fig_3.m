clear
clc

cd('Data_used_in_Fig3');
del = [0.2, 0.4, 0.6, 0.8];
vc = ["mida12_anisotropic", "mida12_isotropic", "mida4", "mida2", "mida1"];

for i=1:4
    
    p2p_amp = zeros(5,1);
    for j=1:5
        load(strcat('LFP_del',num2str(del(i)),'_',vc(j),'.mat')); 
        lfp_bp = (lfp(:,2) - lfp(:,4))/(1e-6); % contact 1 - contact 3
        p2p_amp(j) = peak2peak(lfp_bp);
    end
    
    disp(['For position=',num2str(del(i)),', peak2peak amplitudes are:   ', num2str(p2p_amp')])
end

