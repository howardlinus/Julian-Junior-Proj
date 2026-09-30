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

Day 2: Vectors & Biological Indexing
Core Concept (5 min): Row vectors ([1, 2, 3]), column vectors ([1; 2; 3]), 1-based indexing in MATLAB, slicing (start:stop), and generating regular intervals with linspace or the colon operator (:).

Wet-Lab Biology Context: Storing patient age data and extracting specific cohort subgroups.
