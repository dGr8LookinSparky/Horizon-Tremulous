data
export remapCount
align 4
LABELV remapCount
byte 4 0
export AddRemap
code
proc AddRemap 8 8
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 4
ADDRFP4 4
INDIRP4
ASGNP4
ADDRFP4 8
ADDRFP4 8
INDIRF4
ASGNF4
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $88
JUMPV
LABELV $85
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 132
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 remappedShaders
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
NEI4 $89
CNSTI4 132
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 remappedShaders+64
ADDP4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 strcpy
CALLP4
pop
CNSTI4 132
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 remappedShaders+128
ADDP4
ADDRFP4 8
INDIRF4
ASGNF4
ADDRGP4 $84
JUMPV
LABELV $89
LABELV $86
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $88
ADDRLP4 0
INDIRI4
ADDRGP4 remapCount
INDIRI4
LTI4 $85
ADDRGP4 remapCount
INDIRI4
CNSTI4 128
GEI4 $93
CNSTI4 132
ADDRGP4 remapCount
INDIRI4
MULI4
ADDRGP4 remappedShaders+64
ADDP4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 strcpy
CALLP4
pop
CNSTI4 132
ADDRGP4 remapCount
INDIRI4
MULI4
ADDRGP4 remappedShaders
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 strcpy
CALLP4
pop
CNSTI4 132
ADDRGP4 remapCount
INDIRI4
MULI4
ADDRGP4 remappedShaders+128
ADDP4
ADDRFP4 8
INDIRF4
ASGNF4
ADDRLP4 4
ADDRGP4 remapCount
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $93
LABELV $84
endproc AddRemap 8 8
bss
align 1
LABELV $98
skip 4096
export BuildShaderStateConfig
code
proc BuildShaderStateConfig 144 24
ADDRGP4 $98
ARGP4
CNSTI4 0
ARGI4
CNSTI4 1024
ARGI4
ADDRGP4 memset
CALLP4
pop
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $102
JUMPV
LABELV $99
ADDRLP4 4
ARGP4
CNSTI4 133
ARGI4
ADDRGP4 $103
ARGP4
ADDRLP4 140
CNSTI4 132
ADDRLP4 0
INDIRI4
MULI4
ASGNI4
ADDRLP4 140
INDIRI4
ADDRGP4 remappedShaders
ADDP4
ARGP4
ADDRLP4 140
INDIRI4
ADDRGP4 remappedShaders+64
ADDP4
ARGP4
ADDRLP4 140
INDIRI4
ADDRGP4 remappedShaders+128
ADDP4
INDIRF4
ARGF4
ADDRGP4 Com_sprintf
CALLV
pop
ADDRGP4 $98
ARGP4
CNSTI4 4096
ARGI4
ADDRLP4 4
ARGP4
ADDRGP4 Q_strcat
CALLV
pop
LABELV $100
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $102
ADDRLP4 0
INDIRI4
ADDRGP4 remapCount
INDIRI4
LTI4 $99
ADDRGP4 $98
RETP4
LABELV $97
endproc BuildShaderStateConfig 144 24
export G_FindConfigstringIndex
proc G_FindConfigstringIndex 1036 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 4
ADDRFP4 4
INDIRI4
ASGNI4
ADDRFP4 8
ADDRFP4 8
INDIRI4
ASGNI4
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $109
ADDRFP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $107
LABELV $109
CNSTI4 0
RETI4
ADDRGP4 $106
JUMPV
LABELV $107
ADDRLP4 1024
CNSTI4 1
ASGNI4
ADDRGP4 $113
JUMPV
LABELV $110
ADDRFP4 4
INDIRI4
ADDRLP4 1024
INDIRI4
ADDI4
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_GetConfigstring
CALLV
pop
ADDRLP4 0
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $114
ADDRGP4 $112
JUMPV
LABELV $114
ADDRLP4 0
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1032
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 1032
INDIRI4
CNSTI4 0
NEI4 $116
ADDRLP4 1024
INDIRI4
RETI4
ADDRGP4 $106
JUMPV
LABELV $116
LABELV $111
ADDRLP4 1024
ADDRLP4 1024
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $113
ADDRLP4 1024
INDIRI4
ADDRFP4 8
INDIRI4
LTI4 $110
LABELV $112
ADDRFP4 12
INDIRI4
CNSTI4 0
NEI4 $118
CNSTI4 0
RETI4
ADDRGP4 $106
JUMPV
LABELV $118
ADDRLP4 1024
INDIRI4
ADDRFP4 8
INDIRI4
NEI4 $120
ADDRGP4 $122
ARGP4
ADDRGP4 G_Error
CALLV
pop
LABELV $120
ADDRFP4 4
INDIRI4
ADDRLP4 1024
INDIRI4
ADDI4
ARGI4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
ADDRLP4 1024
INDIRI4
RETI4
LABELV $106
endproc G_FindConfigstringIndex 1036 12
export G_ParticleSystemIndex
proc G_ParticleSystemIndex 4 16
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 609
ARGI4
CNSTI4 64
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 0
ADDRGP4 G_FindConfigstringIndex
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
RETI4
LABELV $123
endproc G_ParticleSystemIndex 4 16
export G_ShaderIndex
proc G_ShaderIndex 4 16
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 545
ARGI4
CNSTI4 64
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 0
ADDRGP4 G_FindConfigstringIndex
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
RETI4
LABELV $124
endproc G_ShaderIndex 4 16
export G_ModelIndex
proc G_ModelIndex 4 16
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 33
ARGI4
CNSTI4 256
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 0
ADDRGP4 G_FindConfigstringIndex
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
RETI4
LABELV $125
endproc G_ModelIndex 4 16
export G_SoundIndex
proc G_SoundIndex 4 16
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 289
ARGI4
CNSTI4 256
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 0
ADDRGP4 G_FindConfigstringIndex
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
RETI4
LABELV $126
endproc G_SoundIndex 4 16
export G_TeamCommand
proc G_TeamCommand 16 8
ADDRFP4 0
ADDRFP4 0
INDIRI4
ASGNI4
ADDRFP4 4
ADDRFP4 4
INDIRP4
ASGNP4
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $131
JUMPV
LABELV $128
CNSTI4 1880
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 472
ADDP4
INDIRI4
CNSTI4 2
NEI4 $133
ADDRLP4 8
CNSTI4 1880
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 628
ADDP4
INDIRI4
ASGNI4
ADDRLP4 8
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $138
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $135
CNSTI4 1920
ADDRLP4 0
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $137
ARGP4
ADDRLP4 12
ADDRGP4 G_admin_permission
CALLI4
ASGNI4
ADDRLP4 12
INDIRI4
CNSTI4 0
EQI4 $135
LABELV $138
ADDRLP4 0
INDIRI4
ARGI4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
LABELV $135
LABELV $133
LABELV $129
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $131
ADDRLP4 0
INDIRI4
ADDRGP4 level+20
INDIRI4
LTI4 $128
CNSTI4 -1
ARGI4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 G_DemoCommand
CALLV
pop
LABELV $127
endproc G_TeamCommand 16 8
export G_Find
proc G_Find 8 8
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 4
ADDRFP4 4
INDIRI4
ASGNI4
ADDRFP4 8
ADDRFP4 8
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $140
ADDRFP4 0
ADDRGP4 g_entities
ASGNP4
ADDRGP4 $145
JUMPV
LABELV $140
ADDRFP4 0
ADDRFP4 0
INDIRP4
CNSTI4 1920
ADDP4
ASGNP4
ADDRGP4 $145
JUMPV
LABELV $142
ADDRFP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $147
ADDRGP4 $143
JUMPV
LABELV $147
ADDRLP4 0
ADDRFP4 4
INDIRI4
ADDRFP4 0
INDIRP4
ADDP4
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $149
ADDRGP4 $143
JUMPV
LABELV $149
ADDRLP4 0
INDIRP4
ARGP4
ADDRFP4 8
INDIRP4
ARGP4
ADDRLP4 4
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
NEI4 $151
ADDRFP4 0
INDIRP4
RETP4
ADDRGP4 $139
JUMPV
LABELV $151
LABELV $143
ADDRFP4 0
ADDRFP4 0
INDIRP4
CNSTI4 1920
ADDP4
ASGNP4
LABELV $145
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTI4 1920
ADDRGP4 level+12
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
CVPU4 4
LTU4 $142
CNSTP4 0
RETP4
LABELV $139
endproc G_Find 8 8
export G_PickTarget
proc G_PickTarget 144 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
CNSTP4 0
ASGNP4
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $158
ADDRGP4 $156
ARGP4
ADDRGP4 G_Printf
CALLV
pop
CNSTP4 0
RETP4
ADDRGP4 $153
JUMPV
LABELV $157
ADDRLP4 0
INDIRP4
ARGP4
CNSTI4 660
ARGI4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 136
ADDRGP4 G_Find
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 136
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $160
ADDRGP4 $159
JUMPV
LABELV $160
ADDRLP4 140
ADDRLP4 4
INDIRI4
ASGNI4
ADDRLP4 4
ADDRLP4 140
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 140
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 8
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
INDIRI4
CNSTI4 32
NEI4 $162
ADDRGP4 $159
JUMPV
LABELV $162
LABELV $158
ADDRGP4 $157
JUMPV
LABELV $159
ADDRLP4 4
INDIRI4
CNSTI4 0
NEI4 $164
ADDRGP4 $166
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
CNSTP4 0
RETP4
ADDRGP4 $153
JUMPV
LABELV $164
ADDRLP4 136
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 136
INDIRI4
ADDRLP4 4
INDIRI4
MODI4
CNSTI4 2
LSHI4
ADDRLP4 8
ADDP4
INDIRP4
RETP4
LABELV $153
endproc G_PickTarget 144 12
export G_UseTargets
proc G_UseTargets 24 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $168
ADDRGP4 $167
JUMPV
LABELV $168
ADDRLP4 8
CNSTU4 0
ASGNU4
ADDRFP4 0
INDIRP4
CNSTI4 668
ADDP4
INDIRP4
CVPU4 4
ADDRLP4 8
INDIRU4
EQU4 $170
ADDRFP4 0
INDIRP4
CNSTI4 672
ADDP4
INDIRP4
CVPU4 4
ADDRLP4 8
INDIRU4
EQU4 $170
ADDRLP4 12
CNSTF4 981668463
ADDRGP4 level+28
INDIRI4
CVIF4 4
MULF4
ASGNF4
ADDRFP4 0
INDIRP4
CNSTI4 668
ADDP4
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 672
ADDP4
INDIRP4
ARGP4
ADDRLP4 12
INDIRF4
ARGF4
ADDRGP4 AddRemap
CALLV
pop
ADDRLP4 20
ADDRGP4 BuildShaderStateConfig
CALLP4
ASGNP4
CNSTI4 24
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
LABELV $170
ADDRFP4 0
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $173
ADDRGP4 $167
JUMPV
LABELV $173
ADDRLP4 0
CNSTP4 0
ASGNP4
ADDRGP4 $176
JUMPV
LABELV $175
ADDRLP4 0
INDIRP4
CVPU4 4
ADDRFP4 0
INDIRP4
CVPU4 4
NEU4 $178
ADDRGP4 $180
ARGP4
ADDRGP4 G_Printf
CALLV
pop
ADDRGP4 $179
JUMPV
LABELV $178
ADDRLP4 0
INDIRP4
CNSTI4 772
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $181
ADDRLP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 772
ADDP4
INDIRP4
CALLV
pop
LABELV $181
LABELV $179
ADDRFP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $183
ADDRGP4 $185
ARGP4
ADDRGP4 G_Printf
CALLV
pop
ADDRGP4 $167
JUMPV
LABELV $183
LABELV $176
ADDRLP4 0
INDIRP4
ARGP4
CNSTI4 660
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
ARGP4
ADDRLP4 12
ADDRGP4 G_Find
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 12
INDIRP4
ASGNP4
ADDRLP4 12
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $175
LABELV $167
endproc G_UseTargets 24 12
bss
align 4
LABELV $187
skip 4
align 4
LABELV $188
skip 96
export tv
code
proc tv 12 0
ADDRLP4 4
ADDRGP4 $187
ASGNP4
ADDRLP4 8
ADDRLP4 4
INDIRP4
INDIRI4
ASGNI4
ADDRLP4 0
CNSTI4 12
ADDRLP4 8
INDIRI4
MULI4
ADDRGP4 $188
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
CNSTI4 7
BANDI4
ASGNI4
ADDRLP4 0
INDIRP4
ADDRFP4 0
INDIRF4
ASGNF4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
ADDRFP4 4
INDIRF4
ASGNF4
ADDRLP4 0
INDIRP4
CNSTI4 8
ADDP4
ADDRFP4 8
INDIRF4
ASGNF4
ADDRLP4 0
INDIRP4
RETP4
LABELV $186
endproc tv 12 0
bss
align 4
LABELV $190
skip 4
align 1
LABELV $191
skip 256
export vtos
code
proc vtos 16 24
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRGP4 $190
ASGNP4
ADDRLP4 8
ADDRLP4 4
INDIRP4
INDIRI4
ASGNI4
ADDRLP4 0
ADDRLP4 8
INDIRI4
CNSTI4 5
LSHI4
ADDRGP4 $191
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
CNSTI4 7
BANDI4
ASGNI4
ADDRLP4 0
INDIRP4
ARGP4
CNSTI4 32
ARGI4
ADDRGP4 $192
ARGP4
ADDRFP4 0
INDIRP4
INDIRF4
CVFI4 4
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRF4
CVFI4 4
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRF4
CVFI4 4
ARGI4
ADDRGP4 Com_sprintf
CALLV
pop
ADDRLP4 0
INDIRP4
RETP4
LABELV $189
endproc vtos 16 24
data
align 4
LABELV $194
byte 4 0
byte 4 3212836864
byte 4 0
align 4
LABELV $195
byte 4 0
byte 4 0
byte 4 1065353216
align 4
LABELV $196
byte 4 0
byte 4 3221225472
byte 4 0
align 4
LABELV $197
byte 4 0
byte 4 0
byte 4 3212836864
export G_SetMovedir
code
proc G_SetMovedir 20 16
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $194
ARGP4
ADDRLP4 0
ADDRGP4 VectorCompare
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $198
ADDRFP4 4
INDIRP4
ADDRGP4 $195
INDIRB
ASGNB 12
ADDRGP4 $199
JUMPV
LABELV $198
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $196
ARGP4
ADDRLP4 4
ADDRGP4 VectorCompare
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
EQI4 $200
ADDRFP4 4
INDIRP4
ADDRGP4 $197
INDIRB
ASGNB 12
ADDRGP4 $201
JUMPV
LABELV $200
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 8
CNSTP4 0
ASGNP4
ADDRLP4 8
INDIRP4
ARGP4
ADDRLP4 8
INDIRP4
ARGP4
ADDRGP4 AngleVectors
CALLV
pop
LABELV $201
LABELV $199
ADDRLP4 16
CNSTF4 0
ASGNF4
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
ADDRLP4 16
INDIRF4
ASGNF4
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
ADDRLP4 16
INDIRF4
ASGNF4
ADDRFP4 0
INDIRP4
ADDRLP4 16
INDIRF4
ASGNF4
LABELV $193
endproc G_SetMovedir 20 16
export vectoyaw
proc vectoyaw 20 8
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 8
CNSTF4 0
ASGNF4
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRF4
ADDRLP4 8
INDIRF4
NEF4 $203
ADDRFP4 0
INDIRP4
INDIRF4
ADDRLP4 8
INDIRF4
NEF4 $203
ADDRLP4 0
CNSTF4 0
ASGNF4
ADDRGP4 $204
JUMPV
LABELV $203
ADDRFP4 0
INDIRP4
INDIRF4
CNSTF4 0
EQF4 $205
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRF4
ARGF4
ADDRFP4 0
INDIRP4
INDIRF4
ARGF4
ADDRLP4 16
ADDRGP4 atan2
CALLF4
ASGNF4
ADDRLP4 0
CNSTF4 1127481344
ADDRLP4 16
INDIRF4
MULF4
CNSTF4 1078530011
DIVF4
ASGNF4
ADDRGP4 $206
JUMPV
LABELV $205
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRF4
CNSTF4 0
LEF4 $207
ADDRLP4 0
CNSTF4 1119092736
ASGNF4
ADDRGP4 $208
JUMPV
LABELV $207
ADDRLP4 0
CNSTF4 1132920832
ASGNF4
LABELV $208
LABELV $206
ADDRLP4 0
INDIRF4
CNSTF4 0
GEF4 $209
ADDRLP4 0
ADDRLP4 0
INDIRF4
CNSTF4 1135869952
ADDF4
ASGNF4
LABELV $209
LABELV $204
ADDRLP4 0
INDIRF4
RETF4
LABELV $202
endproc vectoyaw 20 8
export G_InitGentity
proc G_InitGentity 4 0
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 520
ADDP4
CNSTI4 1
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 524
ADDP4
ADDRGP4 $212
ASGNP4
ADDRFP4 0
INDIRP4
ADDRFP4 0
INDIRP4
CVPU4 4
ADDRGP4 g_entities
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 1920
DIVI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 512
ADDP4
CNSTI4 1023
ASGNI4
LABELV $211
endproc G_InitGentity 4 0
export G_Spawn
proc G_Spawn 20 20
ADDRLP4 0
CNSTP4 0
ASGNP4
ADDRLP4 12
CNSTI4 0
ASGNI4
ADDRLP4 4
ADDRLP4 12
INDIRI4
ASGNI4
ADDRLP4 8
ADDRLP4 12
INDIRI4
ASGNI4
LABELV $214
ADDRLP4 0
ADDRGP4 g_entities+122880
ASGNP4
ADDRLP4 4
CNSTI4 64
ASGNI4
ADDRGP4 $222
JUMPV
LABELV $219
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $224
ADDRGP4 $220
JUMPV
LABELV $224
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $226
ADDRLP4 16
ADDRLP4 0
INDIRP4
CNSTI4 548
ADDP4
INDIRI4
ASGNI4
ADDRLP4 16
INDIRI4
ADDRGP4 level+40
INDIRI4
CNSTI4 2000
ADDI4
LEI4 $226
ADDRGP4 level+28
INDIRI4
ADDRLP4 16
INDIRI4
SUBI4
CNSTI4 1000
GEI4 $226
ADDRGP4 $220
JUMPV
LABELV $226
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_InitGentity
CALLV
pop
ADDRLP4 0
INDIRP4
RETP4
ADDRGP4 $213
JUMPV
LABELV $220
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1920
ADDP4
ASGNP4
LABELV $222
ADDRLP4 4
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $219
ADDRLP4 4
INDIRI4
CNSTI4 1024
EQI4 $230
ADDRGP4 $216
JUMPV
LABELV $230
LABELV $215
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 2
LTI4 $214
LABELV $216
ADDRLP4 4
INDIRI4
CNSTI4 1022
NEI4 $232
ADDRLP4 4
CNSTI4 0
ASGNI4
LABELV $234
ADDRGP4 $238
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
CNSTI4 1920
ADDRLP4 4
INDIRI4
MULI4
ADDRGP4 g_entities+524
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
LABELV $235
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 1024
LTI4 $234
ADDRGP4 $240
ARGP4
ADDRGP4 G_Error
CALLV
pop
LABELV $232
ADDRLP4 16
ADDRGP4 level+12
ASGNP4
ADDRLP4 16
INDIRP4
ADDRLP4 16
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRGP4 level+4
INDIRP4
ARGP4
ADDRGP4 level+12
INDIRI4
ARGI4
CNSTI4 1920
ARGI4
ADDRGP4 level
INDIRP4
ARGP4
CNSTI4 1880
ARGI4
ADDRGP4 trap_LocateGameData
CALLV
pop
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_InitGentity
CALLV
pop
ADDRLP4 0
INDIRP4
RETP4
LABELV $213
endproc G_Spawn 20 20
export G_EntitiesFree
proc G_EntitiesFree 8 0
ADDRLP4 4
ADDRGP4 g_entities+122880
ASGNP4
ADDRLP4 0
CNSTI4 64
ASGNI4
ADDRGP4 $249
JUMPV
LABELV $246
ADDRLP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $251
ADDRGP4 $247
JUMPV
LABELV $251
CNSTI4 1
RETI4
ADDRGP4 $244
JUMPV
LABELV $247
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
ADDRLP4 4
INDIRP4
CNSTI4 1920
ADDP4
ASGNP4
LABELV $249
ADDRLP4 0
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $246
CNSTI4 0
RETI4
LABELV $244
endproc G_EntitiesFree 8 0
export G_FreeEntity
proc G_FreeEntity 0 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 trap_UnlinkEntity
CALLV
pop
ADDRFP4 0
INDIRP4
CNSTI4 532
ADDP4
INDIRI4
CNSTI4 0
EQI4 $254
ADDRGP4 $253
JUMPV
LABELV $254
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 1920
ARGI4
ADDRGP4 memset
CALLP4
pop
ADDRFP4 0
INDIRP4
CNSTI4 524
ADDP4
ADDRGP4 $256
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 548
ADDP4
ADDRGP4 level+28
INDIRI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 520
ADDP4
CNSTI4 0
ASGNI4
LABELV $253
endproc G_FreeEntity 0 12
export G_TempEntity
proc G_TempEntity 20 8
ADDRLP4 16
ADDRGP4 G_Spawn
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 16
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
ADDRFP4 4
INDIRI4
CNSTI4 19
ADDI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
ADDRGP4 $259
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 552
ADDP4
ADDRGP4 level+28
INDIRI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 556
ADDP4
CNSTI4 1
ASGNI4
ADDRLP4 4
ADDRFP4 0
INDIRP4
INDIRB
ASGNB 12
ADDRLP4 4
ADDRLP4 4
INDIRF4
CVFI4 4
CVIF4 4
ASGNF4
ADDRLP4 4+4
ADDRLP4 4+4
INDIRF4
CVFI4 4
CVIF4 4
ASGNF4
ADDRLP4 4+8
ADDRLP4 4+8
INDIRF4
CVFI4 4
CVIF4 4
ASGNF4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 4
ARGP4
ADDRGP4 G_SetOrigin
CALLV
pop
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_LinkEntity
CALLV
pop
ADDRLP4 0
INDIRP4
RETP4
LABELV $258
endproc G_TempEntity 20 8
export G_KillBox
proc G_KillBox 4168 32
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4136
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
ASGNP4
ADDRLP4 4108
ADDRLP4 4136
INDIRP4
INDIRP4
CNSTI4 20
ADDP4
INDIRF4
ADDRFP4 0
INDIRP4
CNSTI4 436
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 4108+4
ADDRLP4 4136
INDIRP4
INDIRP4
CNSTI4 24
ADDP4
INDIRF4
ADDRFP4 0
INDIRP4
CNSTI4 440
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 4108+8
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 28
ADDP4
INDIRF4
ADDRFP4 0
INDIRP4
CNSTI4 444
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 4148
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
ASGNP4
ADDRLP4 4120
ADDRLP4 4148
INDIRP4
INDIRP4
CNSTI4 20
ADDP4
INDIRF4
ADDRFP4 0
INDIRP4
CNSTI4 448
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 4120+4
ADDRLP4 4148
INDIRP4
INDIRP4
CNSTI4 24
ADDP4
INDIRF4
ADDRFP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 4120+8
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 28
ADDP4
INDIRF4
ADDRFP4 0
INDIRP4
CNSTI4 456
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 4108
ARGP4
ADDRLP4 4120
ARGP4
ADDRLP4 12
ARGP4
CNSTI4 1024
ARGI4
ADDRLP4 4156
ADDRGP4 trap_EntitiesInBox
CALLI4
ASGNI4
ADDRLP4 8
ADDRLP4 4156
INDIRI4
ASGNI4
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $273
JUMPV
LABELV $270
ADDRLP4 0
CNSTI4 1920
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 12
ADDP4
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $274
ADDRGP4 $271
JUMPV
LABELV $274
ADDRFP4 0
INDIRP4
CVPU4 4
ADDRLP4 0
INDIRP4
CVPU4 4
NEU4 $276
ADDRGP4 $271
JUMPV
LABELV $276
ADDRLP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4164
CNSTP4 0
ASGNP4
ADDRLP4 4164
INDIRP4
ARGP4
ADDRLP4 4164
INDIRP4
ARGP4
CNSTI4 100000
ARGI4
CNSTI4 8
ARGI4
CNSTI4 18
ARGI4
ADDRGP4 G_Damage
CALLV
pop
LABELV $271
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $273
ADDRLP4 4
INDIRI4
ADDRLP4 8
INDIRI4
LTI4 $270
LABELV $265
endproc G_KillBox 4168 32
export G_AddPredictableEvent
proc G_AddPredictableEvent 0 12
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $279
ADDRGP4 $278
JUMPV
LABELV $279
ADDRFP4 4
INDIRI4
ARGI4
ADDRFP4 8
INDIRI4
ARGI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ARGP4
ADDRGP4 BG_AddPredictableEventToPlayerstate
CALLV
pop
LABELV $278
endproc G_AddPredictableEvent 0 12
export G_AddEvent
proc G_AddEvent 16 12
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 4
INDIRI4
CNSTI4 0
NEI4 $282
ADDRGP4 $284
ARGP4
ADDRFP4 0
INDIRP4
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
ADDRGP4 $281
JUMPV
LABELV $282
ADDRFP4 8
INDIRI4
CNSTI4 -256
BANDI4
CNSTI4 0
EQI4 $285
ADDRGP4 $287
ARGP4
ADDRFP4 4
INDIRI4
ARGI4
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
LABELV $285
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $288
ADDRLP4 4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
ASGNP4
ADDRLP4 8
CNSTI4 128
ASGNI4
ADDRLP4 12
CNSTI4 768
ASGNI4
ADDRLP4 0
ADDRLP4 4
INDIRP4
INDIRP4
ADDRLP4 8
INDIRI4
ADDP4
INDIRI4
ADDRLP4 12
INDIRI4
BANDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 256
ADDI4
ADDRLP4 12
INDIRI4
BANDI4
ASGNI4
ADDRLP4 4
INDIRP4
INDIRP4
ADDRLP4 8
INDIRI4
ADDP4
ADDRFP4 4
INDIRI4
ADDRLP4 0
INDIRI4
BORI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 132
ADDP4
ADDRFP4 8
INDIRI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 136
ADDP4
ADDRGP4 level+28
INDIRI4
ASGNI4
ADDRGP4 $289
JUMPV
LABELV $288
ADDRLP4 4
ADDRFP4 0
INDIRP4
CNSTI4 180
ADDP4
ASGNP4
ADDRLP4 8
CNSTI4 768
ASGNI4
ADDRLP4 0
ADDRLP4 4
INDIRP4
INDIRI4
ADDRLP4 8
INDIRI4
BANDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 256
ADDI4
ADDRLP4 8
INDIRI4
BANDI4
ASGNI4
ADDRLP4 4
INDIRP4
ADDRFP4 4
INDIRI4
ADDRLP4 0
INDIRI4
BORI4
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 184
ADDP4
ADDRFP4 8
INDIRI4
ASGNI4
LABELV $289
ADDRFP4 0
INDIRP4
CNSTI4 552
ADDP4
ADDRGP4 level+28
INDIRI4
ASGNI4
LABELV $281
endproc G_AddEvent 16 12
export G_BroadcastEvent
proc G_BroadcastEvent 8 8
ADDRGP4 vec3_origin
ARGP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 G_TempEntity
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
ADDRFP4 4
INDIRI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 424
ADDP4
CNSTI4 32
ASGNI4
LABELV $292
endproc G_BroadcastEvent 8 8
export G_Sound
proc G_Sound 8 8
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 33
ARGI4
ADDRLP4 4
ADDRGP4 G_TempEntity
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
ADDRFP4 8
INDIRI4
ASGNI4
LABELV $293
endproc G_Sound 8 8
export G_ClientIsLagging
proc G_ClientIsLagging 0 0
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $295
ADDRFP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
CNSTI4 999
LTI4 $297
CNSTI4 1
RETI4
ADDRGP4 $294
JUMPV
LABELV $297
CNSTI4 0
RETI4
ADDRGP4 $294
JUMPV
LABELV $295
CNSTI4 0
RETI4
LABELV $294
endproc G_ClientIsLagging 0 0
export G_SetOrigin
proc G_SetOrigin 8 0
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 4
ADDRFP4 4
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
CNSTI4 24
ADDP4
ADDRFP4 4
INDIRP4
INDIRB
ASGNB 12
ADDRFP4 0
INDIRP4
CNSTI4 12
ADDP4
CNSTI4 0
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 16
ADDP4
CNSTI4 0
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 20
ADDP4
CNSTI4 0
ASGNI4
ADDRLP4 4
CNSTF4 0
ASGNF4
ADDRFP4 0
INDIRP4
CNSTI4 44
ADDP4
ADDRLP4 4
INDIRF4
ASGNF4
ADDRFP4 0
INDIRP4
CNSTI4 40
ADDP4
ADDRLP4 4
INDIRF4
ASGNF4
ADDRFP4 0
INDIRP4
CNSTI4 36
ADDP4
ADDRLP4 4
INDIRF4
ASGNF4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ADDRFP4 4
INDIRP4
INDIRB
ASGNB 12
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ADDRFP4 4
INDIRP4
INDIRB
ASGNB 12
LABELV $299
endproc G_SetOrigin 8 0
export G_FindRadius
proc G_FindRadius 28 4
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 4
ADDRFP4 4
INDIRP4
ASGNP4
ADDRFP4 8
ADDRFP4 8
INDIRF4
ASGNF4
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $301
ADDRFP4 0
ADDRGP4 g_entities
ASGNP4
ADDRGP4 $306
JUMPV
LABELV $301
ADDRFP4 0
ADDRFP4 0
INDIRP4
CNSTI4 1920
ADDP4
ASGNP4
ADDRGP4 $306
JUMPV
LABELV $303
ADDRFP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $308
ADDRGP4 $304
JUMPV
LABELV $308
ADDRLP4 0
CNSTI4 0
ASGNI4
LABELV $310
ADDRLP4 16
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ASGNI4
ADDRLP4 16
INDIRI4
ADDRLP4 4
ADDP4
ADDRLP4 16
INDIRI4
ADDRFP4 4
INDIRP4
ADDP4
INDIRF4
ADDRLP4 16
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ADDP4
INDIRF4
CNSTF4 1056964608
ADDRLP4 16
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 436
ADDP4
ADDP4
INDIRF4
ADDRLP4 16
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 448
ADDP4
ADDP4
INDIRF4
ADDF4
MULF4
ADDF4
SUBF4
ASGNF4
LABELV $311
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 3
LTI4 $310
ADDRLP4 4
ARGP4
ADDRLP4 24
ADDRGP4 VectorLength
CALLF4
ASGNF4
ADDRLP4 24
INDIRF4
ADDRFP4 8
INDIRF4
LEF4 $314
ADDRGP4 $304
JUMPV
LABELV $314
ADDRFP4 0
INDIRP4
RETP4
ADDRGP4 $300
JUMPV
LABELV $304
ADDRFP4 0
ADDRFP4 0
INDIRP4
CNSTI4 1920
ADDP4
ASGNP4
LABELV $306
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTI4 1920
ADDRGP4 level+12
INDIRI4
MULI4
ADDRGP4 g_entities
ADDP4
CVPU4 4
LTU4 $303
CNSTP4 0
RETP4
LABELV $300
endproc G_FindRadius 28 4
export G_Visible
proc G_Visible 72 28
ADDRLP4 0
ARGP4
ADDRLP4 60
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 64
CNSTI4 24
ASGNI4
ADDRLP4 60
INDIRP4
ADDRLP4 64
INDIRI4
ADDP4
ARGP4
ADDRLP4 68
CNSTP4 0
ASGNP4
ADDRLP4 68
INDIRP4
ARGP4
ADDRLP4 68
INDIRP4
ARGP4
ADDRFP4 4
INDIRP4
ADDRLP4 64
INDIRI4
ADDP4
ARGP4
ADDRLP4 60
INDIRP4
INDIRI4
ARGI4
CNSTI4 33554433
ARGI4
ADDRGP4 trap_Trace
CALLV
pop
ADDRLP4 0+48
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
EQI4 $317
CNSTI4 0
RETI4
ADDRGP4 $316
JUMPV
LABELV $317
CNSTI4 1
RETI4
LABELV $316
endproc G_Visible 72 28
export G_ClosestEnt
proc G_ClosestEnt 24 8
ADDRFP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRFP4 4
ADDRFP4 4
INDIRP4
ASGNP4
ADDRFP4 8
ADDRFP4 8
INDIRI4
ASGNI4
ADDRLP4 8
CNSTF4 1232348160
ASGNF4
ADDRLP4 12
CNSTP4 0
ASGNP4
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $324
JUMPV
LABELV $321
ADDRLP4 16
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 4
INDIRP4
ADDP4
INDIRP4
ASGNP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 16
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRLP4 20
ADDRGP4 DistanceSquared
CALLF4
ASGNF4
ADDRLP4 4
ADDRLP4 20
INDIRF4
ASGNF4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $327
ADDRLP4 4
INDIRF4
ADDRLP4 8
INDIRF4
GEF4 $325
LABELV $327
ADDRLP4 8
ADDRLP4 4
INDIRF4
ASGNF4
ADDRLP4 12
ADDRLP4 16
INDIRP4
ASGNP4
LABELV $325
LABELV $322
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $324
ADDRLP4 0
INDIRI4
ADDRFP4 8
INDIRI4
LTI4 $321
ADDRLP4 12
INDIRP4
RETP4
LABELV $320
endproc G_ClosestEnt 24 8
export G_TriggerMenu
proc G_TriggerMenu 32 16
ADDRLP4 0
ARGP4
CNSTI4 32
ARGI4
ADDRGP4 $329
ARGP4
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 Com_sprintf
CALLV
pop
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
LABELV $328
endproc G_TriggerMenu 32 16
export G_CloseMenus
proc G_CloseMenus 32 12
ADDRLP4 0
ARGP4
CNSTI4 32
ARGI4
ADDRGP4 $331
ARGP4
ADDRGP4 Com_sprintf
CALLV
pop
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
LABELV $330
endproc G_CloseMenus 32 12
bss
export remappedShaders
align 4
LABELV remappedShaders
skip 16896
import trap_DemoCommand
import nodethink
import spawnnode
import trap_SendGameStat
import trap_SnapVector
import trap_GetEntityToken
import trap_GetUsercmd
import trap_BotFreeClient
import trap_BotAllocateClient
import trap_EntityContact
import trap_EntitiesInBox
import trap_UnlinkEntity
import trap_LinkEntity
import trap_AreasConnected
import trap_AdjustAreaPortalState
import trap_InPVSIgnorePortals
import trap_InPVS
import trap_PointContents
import trap_Trace
import trap_SetBrushModel
import trap_GetServerinfo
import trap_SetUserinfo
import trap_GetUserinfo
import trap_GetConfigstring
import trap_SetConfigstring
import trap_SendServerCommand
import trap_DropClient
import trap_LocateGameData
import trap_Cvar_VariableStringBuffer
import trap_Cvar_VariableValue
import trap_Cvar_VariableIntegerValue
import trap_Cvar_Set
import trap_Cvar_Update
import trap_Cvar_Register
import trap_SendConsoleCommand
import trap_FS_Seek
import trap_FS_GetFileList
import trap_FS_FCloseFile
import trap_FS_Write
import trap_FS_Read
import trap_FS_FOpenFile
import trap_Args
import trap_Argv
import trap_Argc
import trap_RealTime
import trap_Milliseconds
import trap_Error
import trap_Printf
import ROTACAK_ambush_kills
import ROTACAK_ambush_rebuild_time_temp
import g_buildMode
import g_freeCredits
import g_specNoclip
import g_selfknockback
import g_pathpassword
import g_nade_damage
import g_nade_range
import g_buildTimer
import g_steepbuild
import g_bot_lcannon
import g_bot_flamer
import g_bot_prifle
import g_bot_chaingun
import g_bot_mdriver
import g_bot_lasgun
import g_bot_psaw
import g_bot_shotgun
import g_bot_mgun
import g_bot_evolve
import g_bot_spawnprotection
import g_bot
import g_level4_range
import g_level3UPG_range
import g_level3_range
import g_level2UPG_range
import g_level2_range
import g_level1UPG_range
import g_level1_range
import g_level0_range
import g_human_strafe
import g_human_range
import g_pathediting
import g_abuild_dmg
import g_hbuild_dmg
import g_ambush_range
import g_ambush_att_buildables
import g_ambush_kill_spawns
import g_ambush_stage
import g_ambush
import g_ambush_no_egg_ffoff
import g_ambush_stage_suicide
import g_ambush_sec_to_start
import g_ambush_rebuild_time
import g_ambush_dodge
import g_ambush_killstonextstage
import g_jetpackFuel
import g_buildLogMaxLength
import g_msgTime
import g_msg
import g_votableMaps
import g_mapvoteMaxTime
import g_voteMinTime
import g_devmapNoStructDmg
import g_devmapNoGod
import g_dretchPunt
import g_antiSpawnBlock
import g_myStats
import g_publicSayadmins
import g_decolourLogfiles
import g_privateMessages
import g_KillerHP
import g_devmapKillerHP
import g_banNotice
import g_minLevelToSpecMM1
import g_forceAutoSelect
import g_minLevelToJoinTeam
import g_adminMapLog
import g_adminMaxBan
import g_adminTempBan
import g_adminNameProtect
import g_adminSayFilter
import g_adminParseSay
import g_adminLog
import g_admin
import g_layoutAuto
import g_layouts
import g_mapConfigs
import g_shove
import g_floodMinTime
import g_floodMaxDemerits
import g_actionPrefix
import g_chatTeamPrefix
import g_initialMapRotation
import g_nextMap
import g_currentMap
import g_currentMapRotation
import g_debugMapRotation
import g_deconDead
import g_deconMode
import g_disabledBuildables
import g_disabledClasses
import g_disabledEquipment
import g_unlagged
import g_teamImbalanceWarnings
import g_alienStage3Threshold
import g_alienStage2Threshold
import g_alienMaxStage
import g_alienKills
import g_alienStage
import g_humanStage3Threshold
import g_humanStage2Threshold
import g_humanMaxStage
import g_humanKills
import g_humanStage
import g_alienBuildPoints
import g_humanBuildPoints
import g_singlePlayer
import g_enableBreath
import g_enableDust
import g_allowShare
import g_rankings
import pmove_msec
import pmove_fixed
import g_clientUpgradeNotice
import g_smoothClients
import g_filterBan
import g_banIPs
import g_teamForceBalance
import g_teamAutoJoin
import g_designateVotes
import g_mapVotesPercent
import g_suddenDeathVoteDelay
import g_suddenDeathVotePercent
import g_voteLimit
import g_requireVoteReasons
import g_allowVote
import g_blood
import g_doWarmup
import g_warmupMode
import g_warmup
import g_motd
import g_synchronousClients
import g_weaponTeamRespawn
import g_weaponRespawn
import g_debugDamage
import g_debugAlloc
import g_debugMove
import g_inactivity
import g_quadfactor
import g_knockback
import g_speed
import g_gravity
import g_needpass
import g_password
import g_friendlyBuildableFire
import g_friendlyFireMovementAttacks
import g_retribution
import g_friendlyFireAliens
import g_friendlyFireHumans
import g_friendlyFire
import g_suddenDeathMode
import g_suddenDeath
import g_suddenDeathTime
import g_timelimit
import g_newbieNamePrefix
import g_newbieNumbering
import g_maxNameChanges
import g_minNameChangePeriod
import g_minCommandPeriod
import g_lockTeamsAtStart
import g_restarted
import g_maxGameClients
import g_maxclients
import g_cheats
import g_dedicated
import g_entities
import level
import G_FindConnectionForCode
import G_ResetPTRConnections
import G_GenerateNewConnection
import G_UpdatePTRConnection
import G_GetCurrentMap
import G_MapExists
import G_InitMapRotations
import G_MapRotationActive
import G_StopMapRotation
import G_StartMapRotation
import G_AdvanceMapRotation
import G_PrintRotations
import G_WriteSessionData
import G_InitSessionData
import G_ReadSessionData
import Svcmd_GameMem_f
import G_DefragmentMemory
import G_Free
import G_InitMemory
import G_Alloc
import CheckTeamStatus
import TeamplayInfoMessage
import Team_GetLocationMsg
import Team_GetLocation
import OnSameTeam
import G_RunClient
import ClientEndFrame
import ClientThink
import G_UnlaggedOff
import G_UnlaggedOn
import G_UnlaggedCalc
import G_UnlaggedClear
import G_UnlaggedStore
import ClientCommand
import ClientBegin
import ClientDisconnect
import ClientUserinfoChanged
import ClientConnect
import G_Flood_Limited
import CheckMsgTimer
import G_TimeTilSuddenDeath
import G_DemoCommand
import LogExit
import CheckTeamVote
import CheckVote
import G_Error
import G_Printf
import SendScoreboardMessageToAllClients
import G_AdminsPrintf
import G_LogOnlyPrintf
import G_LogPrintfColoured
import G_LogPrintf
import G_RunThink
import FindIntermissionPoint
import CalculateRanks
import G_MapConfigs
import MoveClientToIntermission
import ScoreboardMessage
import FireWeapon3
import FireWeapon2
import FireWeapon
import G_FilterPacket
import G_ProcessIPBans
import ConsoleCommand
import G_NextNewbieName
import SpotWouldTelefrag
import player_die
import ClientSpawn
import BeginIntermission
import respawn
import SpawnCorpse
import G_SelectHumanLockSpawnPoint
import G_SelectAlienLockSpawnPoint
import G_SelectSpawnPoint
import G_SelectTremulousSpawnPoint
import G_SetClientViewAngle
import TeamCount
import G_AddCreditToClient
import G_UpdateZaps
import ChargeAttack
import CheckPounceAttack
import CheckGrabAttack
import CheckVenomAttack
import SnapVectorTowards
import CalcMuzzlePoint
import G_GiveClientMaxAmmo
import G_ForceWeaponChange
import ShineTorch
import TeleportPlayer
import G_Checktrigger_stages
import trigger_teleporter_touch
import manualTriggerSpectator
import Touch_DoorTrigger
import G_RunMover
import launch_grenade
import fire_hive
import fire_bounceBall
import fire_slowBlob
import fire_paraLockBlob
import fire_lockblob
import fire_luciferCannon
import fire_pulseRifle
import fire_blaster
import fire_flamer
import G_RunMissile
import G_InitDamageLocations
import AddScore
import body_die
import G_SelectiveRadiusDamage
import G_RadiusDamage
import G_SelectiveDamage
import G_Damage
import CanDamage
import G_TouchSolids
import G_TouchTriggers
import G_FindBuildLogName
import G_CountBuildLog
import G_LogBuild
import G_RevertCanFit
import G_CommitRevertedBuildable
import G_SpawnRevertedBuildable
import G_InstantBuild
import G_BaseSelfDestruct
import G_LayoutLoad
import G_LayoutSelect
import G_LayoutList
import G_LayoutSave
import G_CheckDBProtection
import FinishSpawningBuildable
import G_SpawnBuildable
import G_SetIdleBuildableAnim
import G_SetBuildableAnim
import G_BuildIfValid
import G_BuildingExists
import G_CanBuild
import G_BuildableRange
import G_BuildableThink
import G_IsOvermindBuilt
import G_IsDCCBuilt
import G_IsPowered
import G_CheckSpawnPoint
import AHovel_Blocked
import G_Physics
import G_CP
import G_WordWrap
import Cmd_Builder_f
import Cmd_TeamVote_f
import Cmd_Donate_f
import Cmd_Share_f
import G_statsString
import G_PrivateMessage
import G_SanitiseString
import G_ChangeTeam
import G_LeaveTeam
import G_ParseEscapedString
import G_DecolorString
import G_SayConcatArgs
import G_SayArgv
import G_SayArgc
import G_Say
import G_ClientNumbersFromString
import G_MatchOnePlayer
import G_ToggleFollow
import G_FollowNewClient
import G_StopFollowing
import G_StopFromFollowing
import Cmd_Score_f
import botShootIfTargetInRange
import botGetDistanceBetweenPlayer
import botTargetInRange
import botFindClosestEnemy
import botAimAtTarget
import G_BotSpectatorThink
import G_FastThink
import G_FrameAim
import G_BotThink
import G_BotCmd
import G_BotReload
import G_DeleteBots
import G_BotDel
import G_BotAdd
import G_NewString
import G_SpawnEntitiesFromString
import G_SpawnVector
import G_SpawnInt
import G_SpawnFloat
import G_SpawnString
import G_GetPosInSpawnQueue
import G_RemoveFromSpawnQueue
import G_PushSpawnQueue
import G_SearchSpawnQueue
import G_PeekSpawnQueue
import G_PopSpawnQueue
import G_GetSpawnQueueLength
import G_InitSpawnQueue
import G_admin_namelog_cleanup
import G_admin_cleanup
import G_admin_duration
import G_admin_buffer_end
import G_admin_buffer_begin
import G_admin_buffer_print
import G_admin_print
import G_admin_allowjoin
import G_admin_denyjoin
import G_admin_leave
import G_admin_ambush_donate
import G_admin_ambush_stage
import G_drawnodes
import G_admin_botcmd
import G_admin_bot
import G_admin_bp
import G_admin_stage
import G_password
import G_admin_cp
import G_admin_designate
import G_admin_warn
import G_admin_putmespec
import G_admin_L1
import G_admin_L0
import G_admin_pause
import G_admin_revert
import G_admin_buildlog
import G_admin_info
import G_admin_unlock
import G_admin_lock
import G_admin_namelog
import G_admin_nextmap
import G_admin_restart
import G_admin_rename
import G_admin_register
import G_admin_spec999
import G_admin_passvote
import G_admin_cancelvote
import G_admin_allready
import G_admin_admintest
import G_admin_help
import G_admin_showbans
import G_admin_denybuild
import G_admin_mute
import G_admin_layoutsave
import G_admin_maplog
import G_admin_maplog_update
import G_admin_devmap
import G_admin_map
import G_admin_listrotation
import G_admin_listmaps
import G_admin_listplayers
import G_admin_listlayouts
import G_admin_listadmins
import G_admin_putteam
import G_admin_unban
import G_admin_ban
import G_admin_subnetban
import G_admin_adjustban
import G_admin_kick
import G_admin_setlevel
import G_admin_time
import G_admin_adminPrintName
import G_admin_set_adminname
import G_admin_level
import G_admin_maplog_result
import G_admin_namelog_update
import G_admin_name_check
import G_admin_permission
import G_admin_readconfig
import G_admin_cmd_check
import G_admin_ban_check
import BG_ClientListParse
import BG_ClientListString
import BG_ClientListRemove
import BG_ClientListAdd
import BG_ClientListTest
import BG_UpgradeClassAvailable
import BG_BuildableIsAllowed
import BG_ClassIsAllowed
import BG_UpgradeIsAllowed
import BG_WeaponIsAllowed
import BG_InitAllowedGameElements
import BG_ParseCSVBuildableList
import BG_ParseCSVClassList
import BG_ParseCSVEquipmentList
import atoi_neg
import atof_neg
import BG_PlayerTouchesItem
import BG_PlayerStateToEntityStateExtraPolate
import BG_PlayerStateToEntityState
import BG_AddPredictableEventToPlayerstate
import BG_EvaluateTrajectoryDelta
import BG_EvaluateTrajectory
import BG_FindTeamForUpgrade
import BG_FindUsableForUpgrade
import BG_FindPurchasableForUpgrade
import BG_FindIconForUpgrade
import BG_FindHumanNameForUpgrade
import BG_FindUpgradeNumForName
import BG_FindNameForUpgrade
import BG_FindSlotsForUpgrade
import BG_FindStagesForUpgrade
import BG_FindPriceForUpgrade
import BG_FindTeamForWeapon
import BG_FindBuildDelayForWeapon
import BG_FindLongRangedForWeapon
import BG_FindPurchasableForWeapon
import BG_FindZoomFovForWeapon
import BG_WeaponCanZoom
import BG_WeaponHasThirdMode
import BG_WeaponHasAltMode
import BG_FindKnockbackScaleForWeapon
import BG_FindReloadTimeForWeapon
import BG_FindRepeatRate3ForWeapon
import BG_FindRepeatRate2ForWeapon
import BG_FindRepeatRate1ForWeapon
import BG_FindUsesEnergyForWeapon
import BG_FindInfinteAmmoForWeapon
import BG_FindAmmoForWeapon
import BG_FindCrosshairSizeForWeapon
import BG_FindCrosshairForWeapon
import BG_FindIconForWeapon
import BG_FindModelsForWeapon
import BG_FindHumanNameForWeapon
import BG_FindWeaponNumForName
import BG_FindNameForWeapon
import BG_FindSlotsForWeapon
import BG_FindStagesForWeapon
import BG_FindPriceForWeapon
import BG_InitClassOverrides
import BG_FindValueOfClass
import BG_FindCostOfClass
import BG_ClassCanEvolveFromTo
import BG_FindBuildDistForClass
import BG_FindStartWeaponForClass
import BG_ClassHasAbility
import BG_FindSteptimeForClass
import BG_FindKnockbackScaleForClass
import BG_FindJumpMagnitudeForClass
import BG_FindStopSpeedForClass
import BG_FindFrictionForClass
import BG_FindAirAccelerationForClass
import BG_FindAccelerationForClass
import BG_FindSpeedForClass
import BG_FindBobCycleForClass
import BG_FindBobForClass
import BG_FindFovForClass
import BG_FindRegenRateForClass
import BG_FindFallDamageForClass
import BG_FindHealthForClass
import BG_FindViewheightForClass
import BG_FindZOffsetForClass
import BG_FindBBoxForClass
import BG_FindStagesForClass
import BG_FindHudNameForClass
import BG_FindShadowScaleForClass
import BG_FindSkinNameForClass
import BG_FindModelScaleForClass
import BG_FindModelNameForClass
import BG_FindHumanNameForClassNum
import BG_FindNameForClassNum
import BG_FindClassNumForName
import BG_InitBuildableOverrides
import BG_FindTransparentTestForBuildable
import BG_FindReplaceableTestForBuildable
import BG_FindUniqueTestForBuildable
import BG_FindDCCTestForBuildable
import BG_FindCreepSizeForBuildable
import BG_FindCreepTestForBuildable
import BG_FindInvertNormalForBuildable
import BG_FindMinNormalForBuildable
import BG_FindProjTypeForBuildable
import BG_FindFireSpeedForBuildable
import BG_FindRangeForBuildable
import BG_FindUsableForBuildable
import BG_FindBuildTimeForBuildable
import BG_FindNextThinkForBuildable
import BG_FindAnimForBuildable
import BG_FindBuildWeaponForBuildable
import BG_FindTeamForBuildable
import BG_FindMODForBuildable
import BG_FindSplashRadiusForBuildable
import BG_FindSplashDamageForBuildable
import BG_FindStagesForBuildable
import BG_FindBuildPointsForBuildable
import BG_FindBounceForBuildable
import BG_FindTrajectoryForBuildable
import BG_FindRegenRateForBuildable
import BG_FindHealthForBuildable
import BG_FindZOffsetForBuildable
import BG_FindBBoxForBuildable
import BG_FindModelScaleForBuildable
import BG_FindModelsForBuildable
import BG_FindEntityNameForBuildable
import BG_FindHumanNameForBuildable
import BG_FindNameForBuildable
import BG_FindBuildNumForEntityName
import BG_FindBuildNumForName
import BG_GetValueOfEquipment
import BG_GetValueOfHuman
import BG_PositionBuildableRelativeToPlayer
import BG_RotateAxis
import BG_UpgradeIsActive
import BG_DeactivateUpgrade
import BG_ActivateUpgrade
import BG_InventoryContainsUpgrade
import BG_RemoveUpgradeFromInventory
import BG_AddUpgradeToInventory
import BG_InventoryContainsWeapon
import BG_RemoveWeaponFromInventory
import BG_AddWeaponToInventory
import BG_WeaponIsFull
import BG_PackAmmoArray
import BG_UnpackAmmoArray
import Pmove
import PM_UpdateViewAngles
import Com_Printf
import Com_Error
import Info_NextPair
import Info_Validate
import Info_SetValueForKey_Big
import Info_SetValueForKey
import Info_RemoveKey_big
import Info_RemoveKey
import Info_ValueForKey
import Com_TruncateLongString
import va
import Q_CleanStr
import Q_PrintStrlen
import Q_strcat
import Q_strncpyz
import Q_strrchr
import Q_strupr
import Q_strlwr
import Q_stricmpn
import Q_strncmp
import Q_stricmp
import Q_isdigit
import Q_isalpha
import Q_isupper
import Q_islower
import Q_isprint
import Com_RandomBytes
import Com_SkipCharset
import Com_SkipTokens
import Com_sprintf
import Parse3DMatrix
import Parse2DMatrix
import Parse1DMatrix
import SkipRestOfLine
import SkipBracedSection
import COM_MatchToken
import COM_ParseWarning
import COM_ParseError
import COM_Compress
import COM_ParseExt
import COM_Parse
import COM_GetCurrentParseLine
import COM_BeginParseSession
import COM_DefaultExtension
import COM_StripExtension
import COM_SkipPath
import Com_Clamp
import DistanceBetweenLineSegments
import DistanceBetweenLineSegmentsSquared
import VectorMaxComponent
import VectorMinComponent
import pointToLineDistance
import VectorDistance
import ProjectPointOntoVector
import GetPerpendicularViewVector
import Q_isnan
import PerpendicularVector
import AngleVectors
import VectorMatrixMultiply
import MatrixMultiply
import MakeNormalVectors
import RotateAroundDirection
import RotatePointAroundVector
import ProjectPointOnPlane
import PlaneFromPoints
import AngleDelta
import AngleNormalize180
import AngleNormalize360
import AnglesSubtract
import AngleSubtract
import LerpAngle
import AngleMod
import BoxOnPlaneSide
import SetPlaneSignbits
import AxisCopy
import AxisClear
import AxisToAngles
import AnglesToAxis
import vectoangles
import Q_crandom
import Q_random
import Q_rand
import Q_acos
import Q_log2
import VectorRotate
import Vector4Scale
import VectorNormalize2
import VectorNormalize
import CrossProduct
import VectorInverse
import VectorNormalizeFast
import DistanceSquared
import Distance
import VectorLengthSquared
import VectorLength
import VectorCompare
import AddPointToBounds
import ClearBounds
import RadiusFromBounds
import NormalizeColor
import ColorBytes4
import ColorBytes3
import _VectorMA
import _VectorScale
import _VectorCopy
import _VectorAdd
import _VectorSubtract
import _DotProduct
import ByteToDir
import DirToByte
import ClampShort
import ClampChar
import Q_rsqrt
import Q_fabs
import axisDefault
import vec3_origin
import g_color_table
import colorDkGrey
import colorMdGrey
import colorLtGrey
import colorWhite
import colorCyan
import colorMagenta
import colorYellow
import colorBlue
import colorGreen
import colorRed
import colorBlack
import bytedirs
import Hunk_Alloc
import FloatSwap
import LongSwap
import ShortSwap
import rint
import pow
import acos
import fabs
import abs
import tan
import atan2
import cos
import sin
import sqrt
import floor
import ceil
import memcpy
import memset
import memmove
import sscanf
import vsprintf
import _atoi
import atoi
import _atof
import atof
import toupper
import tolower
import strncpy
import strstr
import strrchr
import strchr
import strcmp
import strcpy
import strcat
import strlen
import rand
import srand
import qsort
lit
align 1
LABELV $331
byte 1 115
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 99
byte 1 108
byte 1 111
byte 1 115
byte 1 101
byte 1 109
byte 1 101
byte 1 110
byte 1 117
byte 1 115
byte 1 0
align 1
LABELV $329
byte 1 115
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 109
byte 1 101
byte 1 110
byte 1 117
byte 1 32
byte 1 37
byte 1 100
byte 1 0
align 1
LABELV $287
byte 1 94
byte 1 51
byte 1 87
byte 1 65
byte 1 82
byte 1 78
byte 1 73
byte 1 78
byte 1 71
byte 1 58
byte 1 32
byte 1 71
byte 1 95
byte 1 65
byte 1 100
byte 1 100
byte 1 69
byte 1 118
byte 1 101
byte 1 110
byte 1 116
byte 1 58
byte 1 32
byte 1 101
byte 1 118
byte 1 101
byte 1 110
byte 1 116
byte 1 32
byte 1 37
byte 1 100
byte 1 32
byte 1 32
byte 1 101
byte 1 118
byte 1 101
byte 1 110
byte 1 116
byte 1 80
byte 1 97
byte 1 114
byte 1 109
byte 1 32
byte 1 117
byte 1 105
byte 1 110
byte 1 116
byte 1 56
byte 1 95
byte 1 116
byte 1 32
byte 1 111
byte 1 118
byte 1 101
byte 1 114
byte 1 102
byte 1 108
byte 1 111
byte 1 119
byte 1 32
byte 1 40
byte 1 103
byte 1 105
byte 1 118
byte 1 101
byte 1 110
byte 1 32
byte 1 37
byte 1 100
byte 1 41
byte 1 10
byte 1 0
align 1
LABELV $284
byte 1 71
byte 1 95
byte 1 65
byte 1 100
byte 1 100
byte 1 69
byte 1 118
byte 1 101
byte 1 110
byte 1 116
byte 1 58
byte 1 32
byte 1 122
byte 1 101
byte 1 114
byte 1 111
byte 1 32
byte 1 101
byte 1 118
byte 1 101
byte 1 110
byte 1 116
byte 1 32
byte 1 97
byte 1 100
byte 1 100
byte 1 101
byte 1 100
byte 1 32
byte 1 102
byte 1 111
byte 1 114
byte 1 32
byte 1 101
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 121
byte 1 32
byte 1 37
byte 1 105
byte 1 10
byte 1 0
align 1
LABELV $259
byte 1 116
byte 1 101
byte 1 109
byte 1 112
byte 1 69
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $256
byte 1 102
byte 1 114
byte 1 101
byte 1 101
byte 1 110
byte 1 116
byte 1 0
align 1
LABELV $240
byte 1 71
byte 1 95
byte 1 83
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 58
byte 1 32
byte 1 110
byte 1 111
byte 1 32
byte 1 102
byte 1 114
byte 1 101
byte 1 101
byte 1 32
byte 1 101
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 105
byte 1 101
byte 1 115
byte 1 0
align 1
LABELV $238
byte 1 37
byte 1 52
byte 1 105
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $212
byte 1 110
byte 1 111
byte 1 99
byte 1 108
byte 1 97
byte 1 115
byte 1 115
byte 1 0
align 1
LABELV $192
byte 1 40
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 41
byte 1 0
align 1
LABELV $185
byte 1 101
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 121
byte 1 32
byte 1 119
byte 1 97
byte 1 115
byte 1 32
byte 1 114
byte 1 101
byte 1 109
byte 1 111
byte 1 118
byte 1 101
byte 1 100
byte 1 32
byte 1 119
byte 1 104
byte 1 105
byte 1 108
byte 1 101
byte 1 32
byte 1 117
byte 1 115
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $180
byte 1 87
byte 1 65
byte 1 82
byte 1 78
byte 1 73
byte 1 78
byte 1 71
byte 1 58
byte 1 32
byte 1 69
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 121
byte 1 32
byte 1 117
byte 1 115
byte 1 101
byte 1 100
byte 1 32
byte 1 105
byte 1 116
byte 1 115
byte 1 101
byte 1 108
byte 1 102
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $166
byte 1 71
byte 1 95
byte 1 80
byte 1 105
byte 1 99
byte 1 107
byte 1 84
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 58
byte 1 32
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 102
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $156
byte 1 71
byte 1 95
byte 1 80
byte 1 105
byte 1 99
byte 1 107
byte 1 84
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 32
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 101
byte 1 100
byte 1 32
byte 1 119
byte 1 105
byte 1 116
byte 1 104
byte 1 32
byte 1 78
byte 1 85
byte 1 76
byte 1 76
byte 1 32
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 10
byte 1 0
align 1
LABELV $137
byte 1 83
byte 1 80
byte 1 69
byte 1 67
byte 1 65
byte 1 76
byte 1 76
byte 1 67
byte 1 72
byte 1 65
byte 1 84
byte 1 0
align 1
LABELV $122
byte 1 71
byte 1 95
byte 1 70
byte 1 105
byte 1 110
byte 1 100
byte 1 67
byte 1 111
byte 1 110
byte 1 102
byte 1 105
byte 1 103
byte 1 115
byte 1 116
byte 1 114
byte 1 105
byte 1 110
byte 1 103
byte 1 73
byte 1 110
byte 1 100
byte 1 101
byte 1 120
byte 1 58
byte 1 32
byte 1 111
byte 1 118
byte 1 101
byte 1 114
byte 1 102
byte 1 108
byte 1 111
byte 1 119
byte 1 0
align 1
LABELV $103
byte 1 37
byte 1 115
byte 1 61
byte 1 37
byte 1 115
byte 1 58
byte 1 37
byte 1 53
byte 1 46
byte 1 50
byte 1 102
byte 1 64
byte 1 0
