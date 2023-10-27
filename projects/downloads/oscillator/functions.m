
f = logspace(0, 5, 1000);
omega = 2*pi*f;

R = 10*10^3;
C = 10*10^-9;

k_hp = 1 ./ (j*omega*R*C);
k_lp = j*omega*R*C;

H_HP = 1 ./ ((k_hp).^3 + 5*(k_hp).^2 + 6*(k_hp) + 1);
H_LP = 1 ./ ((k_lp).^3 + 5*(k_lp).^2 + 6*(k_lp) + 1);

subplot(211);
semilogx(f, 20*log10(H_HP)); hold on
semilogx(f, 20*log10(H_LP));
%legend('High Pass', 'Low Pass');
title('Feedback Path Magnitude');
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
grid on;

subplot(212);
semilogx(f, angle(H_HP)); hold on
semilogx(f, angle(H_LP));
%legend('High Pass', 'Low Pass');
title('Feedback Path Phase');
xlabel('Frequency (Hz)');
ylabel('Phase (rad)');
grid on;


