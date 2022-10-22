close all
clear

% load('tms_raw_adc_tests_10_7_9_01.mat')
% load('adcLogRedo.mat')
% load('tms_raw_adc_testa_10_7_8_35.mat')
% load('adcLogJumped.mat')
load('tms1018nobuffixedresistances.mat')


figure(1)
hold on
% plot(adcLogRedo.C1)
% plot(adcLogRedo.C2)
% plot(adcLogRedo.C3)
% plot(adcLogRedo.C4)

% adcLogJumped
% plot(adcLogJumped.C1)
% plot(adcLogJumped.C2)
% plot(adcLogJumped.C3)
% plot(adcLogJumped.C4)

% plot(tms1018nobuffixedresistances.C1)
% plot(tms1018nobuffixedresistances.C2)
% plot(tms1018nobuffixedresistances.C3)
% plot(tms1018nobuffixedresistances.C4)

% figure
% hold on
% plot(data)

% Create axes
% axes1 = axes('Parent',gcf);
% hold(axes1,'on');

% Create multiple lines using matrix input to plot
% plot1 = plot(YMatrix1,'Parent',axes1);
hold on
plot(tms1018nobuffixedresistances.C1,'DisplayName','Channel 1');
plot(tms1018nobuffixedresistances.C2,'DisplayName','Channel 2');
plot(tms1018nobuffixedresistances.C3,'DisplayName','Channel 3');
plot(tms1018nobuffixedresistances.C4,'DisplayName','Channel 4');
% plot(tms1018nobuffixedresistances.AVG,'DisplayName','AVG');


% Create ylabel
ylabel({'ADC Counts'});

% Create xlabel
xlabel({'Samples'});

% Create title
title({'TMS Validation Test Using Fixed Voltage Dividers 10/18/2022'});

% Uncomment the following line to preserve the X-limits of the axes
xlim([6400.671229208/67 7978.09058404738]);
% Uncomment the following line to preserve the Y-limits of the axes
ylim([1434.28065368527 3796.26730666268]);
% hold(axes1,'off');
% Create legend
legend('show');