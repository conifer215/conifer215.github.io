% Create logarithmic frequency range, 1 Hz to 1 MHz
f = logspace(0, 6, 1000);
omega = 2*pi*f;

% Component values
R = 10*10^3;
C = 10*10^-9;

% Factored complex part of transfer functions to make it easier to read and type
k_hp = 1 ./ (j*omega*R*C);
k_lp = j*omega*R*C;

% Transfer functions of feedback paths
H_HP = 1 ./ ((k_hp).^3 + 5*(k_hp).^2 + 6*(k_hp) + 1);
H_LP = 1 ./ ((k_lp).^3 + 5*(k_lp).^2 + 6*(k_lp) + 1);

% Plot magnitude
subplot(211);
semilogx(f, 20*log10(H_HP), 'linewidth', 2); hold on
semilogx(f, 20*log10(H_LP), 'linewidth', 2);
title('Feedback Path Magnitude');
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
grid on;

% Plot phase
subplot(212);
semilogx(f, angle(H_HP), 'linewidth', 2); hold on
semilogx(f, angle(H_LP), 'linewidth', 2);
title('Feedback Path Phase');
xlabel('Frequency (Hz)');
ylabel('Phase (rad)');
grid on;


