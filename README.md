## Descriere
Acest proiect implementează un circuit ALU compus din mai multe module Verilog, conform cerinței din testul de laborator.

## Module implementate

- `mux4.sv` – Multiplexor 4:1 pe 3 biți
- `or_bw.sv` – Operație OR bitwise pe 3 biți
- `sub.sv` – Scădere pe 3 biți (fără borrow)
- `add.sv` – Adunare pe 3 biți (ieșire pe 4 biți, MSB = carry_flag)
- `shl.sv` – Deplasare la stânga
- `comp.sv` – Comparator (ieșiri `lt_flag` și `eq_flag`)
- `rom.sv` – ROM cu 4 locații a câte 6 biți
- `mux2.sv` – Multiplexor 2:1 pe 3 biți
- `top.sv` – Instanțierea și conectarea modulelor

## Fisiere

- `src/` – sursele modulelor
- `sim/` – testbench și captura de undă
- `constr/` – fișierul de constrângeri
