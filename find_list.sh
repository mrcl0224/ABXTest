#!/bin/bash
sets=(set1)

methods=(firstrec firstrt)
levels=(easy difficult)
patterns=(before after)
target_dir=(2_morikawa 3_okada 4_otake 5_uchino 33_mizokuchi 34_taga 35_takada 36_yamada)

# for set in ${sets[@]}; do
#     for method in ${methods[@]}; do
#         for level in ${levels[@]}; do
#             for pattern in ${patterns[@]}; do
#                 for target in ${target_dir[@]}; do
#                     find wav/$set -name "*.wav" | grep "${method}_${level}_${pattern}_${target}" > wav/$set/${method}_${level}_${pattern}_${target}.list
#                 done
#             done
#         done
#     done
# done

for target in ${target_dir[@]}; do
    find wav/$set -name "*.wav" | grep "natural_${target}" > wav/$set/natural_${target}.list
done