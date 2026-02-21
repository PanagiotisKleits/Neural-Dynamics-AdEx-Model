# AdEx Neuron Model: Computational Dynamics & f-I Analysis
This project was developed as part of my MSc in Digital Media and Computational Intelligence at AUTH. It focuses on the computational modeling of biological neurons using the Adaptive Exponential Integrate-and-Fire (AdEx) model, which is widely used in neuroscience for its ability to simulate various firing patterns.

## The Mathematical Framework

The simulation is built on two coupled differential equations that describe the membrane potential ($v$) and the adaptation current ($w$):

$$C \frac{dv}{dt} = -g_L(v - E_L) + g_L \Delta_T \exp\left(\frac{v - V_T}{\Delta_T}\right) - w + I$$
$$\tau_w \frac{dw}{dt} = a(v - E_L) - w$$

I implemented these equations in MATLAB using the Euler method for discrete-time integration. This allowed me to observe how the neuron transitions between different states based on the injected current.

## Analysis & Key Findings

Beyond the basic simulation, I conducted a frequency-current (f-I) analysis to understand the neuron's excitability:

  Signal Processing: I used the findpeaks function to accurately detect action potentials and calculate the firing rate (Spikes per Second).
  Interpreting the f-I Curve: When testing inputs from 10 to 600 pA, I noticed specific "plateaus" in the resulting curve where the spike count remains identical     despite increasing the current.
  The "Why": These plateaus indicate that the 20 pA increments were sometimes insufficient to reach the firing threshold for an additional spike within the set simulation duration. This observation highlights the non-linear dynamics of the model and the importance of step-size in biological simulations.

<img width="517" height="343" alt="Στιγμιότυπο οθόνης 2026-02-21 162303" src="https://github.com/user-attachments/assets/6ab6d685-a30d-41b9-9637-c874a3190e11" />
<img width="519" height="340" alt="Στιγμιότυπο οθόνης 2026-02-21 162314" src="https://github.com/user-attachments/assets/d1cb9889-d14d-431d-837e-17ef88e15749" />

## Repository Structure

simulateAdEx.mlx: Core function implementing the AdEx dynamics.

final_Kleitsiotis_155.mlx: Main script for parameter initialization, data visualization, and frequency analysis.
