%% --- DAY 1: Drug Stock Dilution Calculation ---
clear; clc;

% Problem: We have an Imatinib stock solution of 10 mM (C1).
% We want to prepare 50 mL (V2) of a 25 uM working solution (C2).
% How much stock volume (V1 in mL) do we need to pipette?

% 1. Define knowns in consistent units (convert mM to uM: 1 mM = 1000 uM)
C1_mM = 10;
C1_uM = C1_mM * 1000;      % 10,000 uM
C2_uM = 25;                % target 25 uM
V2_mL = 50;                % target volume

% 2. Solve for V1 (in mL): V1 = (C2 * V2) / C1
V1_mL = (C2_uM * V2_mL) / C1_uM;

% 3. Convert to microliters (uL) for actual pipetting 
V1_uL = V1_mL * 1000;

% 4. Display result clearly
fprintf('Pipette %.2f uL of stock into %.2f mL of buffer.\n', V1_uL, V2_mL - V1_mL);

%% --- DAY 2: Vectors & Biological Indexing ---
clear; clc;

% Core Concept (5 min): Row vectors ([1, 2, 3]), column vectors ([1; 2; 3]), 1-based indexing in MATLAB, slicing (start:stop), and generating regular intervals with linspace or the colon operator (:).

v1 = [25, 30, 45, 50, 60];  % example patient ages

% Extract the first three patients
v1_first3 = v1(1:3);  % v1_first3 = [25, 30, 45]

% Extract every other patient
v1_every_other = v1(1:2:end);

% Generate a vector of ages from 20 to 60 with a step of 5
v1_range = 20:5:60;


Wet-Lab Biology Context: Storing patient age data and extracting specific cohort subgroups.
% Example: Extracting the first three patients and every other patient from the age vector.
% Patient ages in a pediatric leukemia pilot cohort (n = 8)
patient_ages = [14, 16, 11, 18, 15, 9, 17, 13];

% 1. Access the first patient and the last patient
first_patient = patient_ages(start);
last_patient = patient_ages(end);


% 2. Slice the first 4 patients (early enrollment)
early_cohort = patient_ages(1:4);

% 3. Calculate basic summary values
num_patients =  length(patient_ages);
mean_age = mean(patient_ages)
min_age = min(patient_ages)
max_age = max(patient_ages)

% 4. Create an evenly spaced time vector for a 24-hour cell assay (every 2 hours)
time_points_hours = 0:2:24;

skewed_age = [1, 2, 3, 4, 5, 20, 300, 4000, 50000];
med_age = mean(skewed_age);

% extract patients 3 through 6 into a separate vector called mid_cohort
mid_cohort = patient_ages(3:6)

