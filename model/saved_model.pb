Ι
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??	
?
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
:*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:*
dtype0
?
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
: *
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
: *
dtype0
?
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
:@*
dtype0
|
dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_46/kernel
u
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel* 
_output_shapes
:
??*
dtype0
s
dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_46/bias
l
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
_output_shapes	
:?*
dtype0
{
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_47/kernel
t
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes
:	?*
dtype0
r
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_47/bias
k
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_60/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/conv2d_60/kernel/rms
?
0RMSprop/conv2d_60/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_60/kernel/rms*&
_output_shapes
:*
dtype0
?
RMSprop/conv2d_60/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/conv2d_60/bias/rms
?
.RMSprop/conv2d_60/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_60/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/conv2d_61/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameRMSprop/conv2d_61/kernel/rms
?
0RMSprop/conv2d_61/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_61/kernel/rms*&
_output_shapes
: *
dtype0
?
RMSprop/conv2d_61/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameRMSprop/conv2d_61/bias/rms
?
.RMSprop/conv2d_61/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_61/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_62/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*-
shared_nameRMSprop/conv2d_62/kernel/rms
?
0RMSprop/conv2d_62/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_62/kernel/rms*&
_output_shapes
: @*
dtype0
?
RMSprop/conv2d_62/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameRMSprop/conv2d_62/bias/rms
?
.RMSprop/conv2d_62/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_62/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/dense_46/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameRMSprop/dense_46/kernel/rms
?
/RMSprop/dense_46/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_46/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/dense_46/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameRMSprop/dense_46/bias/rms
?
-RMSprop/dense_46/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_46/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_47/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameRMSprop/dense_47/kernel/rms
?
/RMSprop/dense_47/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_47/kernel/rms*
_output_shapes
:	?*
dtype0
?
RMSprop/dense_47/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_47/bias/rms
?
-RMSprop/dense_47/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_47/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
?6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?6
value?5B?5 B?5
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
R
*	variables
+trainable_variables
,regularization_losses
-	keras_api
R
.	variables
/trainable_variables
0regularization_losses
1	keras_api
h

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
h

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?
>iter
	?decay
@learning_rate
Amomentum
Brho
rms?
rms?
rms?
rms?
$rms?
%rms?
2rms?
3rms?
8rms?
9rms?
F
0
1
2
3
$4
%5
26
37
88
99
F
0
1
2
3
$4
%5
26
37
88
99
 
?
	variables

Clayers
Dnon_trainable_variables
trainable_variables
Emetrics
regularization_losses
Flayer_metrics
Glayer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables

Hlayers
Inon_trainable_variables
trainable_variables
Jmetrics
regularization_losses
Klayer_metrics
Llayer_regularization_losses
 
 
 
?
	variables

Mlayers
Nnon_trainable_variables
trainable_variables
Ometrics
regularization_losses
Player_metrics
Qlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables

Rlayers
Snon_trainable_variables
trainable_variables
Tmetrics
regularization_losses
Ulayer_metrics
Vlayer_regularization_losses
 
 
 
?
 	variables

Wlayers
Xnon_trainable_variables
!trainable_variables
Ymetrics
"regularization_losses
Zlayer_metrics
[layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
?
&	variables

\layers
]non_trainable_variables
'trainable_variables
^metrics
(regularization_losses
_layer_metrics
`layer_regularization_losses
 
 
 
?
*	variables

alayers
bnon_trainable_variables
+trainable_variables
cmetrics
,regularization_losses
dlayer_metrics
elayer_regularization_losses
 
 
 
?
.	variables

flayers
gnon_trainable_variables
/trainable_variables
hmetrics
0regularization_losses
ilayer_metrics
jlayer_regularization_losses
[Y
VARIABLE_VALUEdense_46/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_46/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31

20
31
 
?
4	variables

klayers
lnon_trainable_variables
5trainable_variables
mmetrics
6regularization_losses
nlayer_metrics
olayer_regularization_losses
[Y
VARIABLE_VALUEdense_47/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_47/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91

80
91
 
?
:	variables

players
qnon_trainable_variables
;trainable_variables
rmetrics
<regularization_losses
slayer_metrics
tlayer_regularization_losses
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8
 

u0
v1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	wtotal
	xcount
y	variables
z	keras_api
D
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

w0
x1

y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

{0
|1

~	variables
??
VARIABLE_VALUERMSprop/conv2d_60/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_60/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_61/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_61/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_62/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_62/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_46/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_46/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_47/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_47/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_60_inputPlaceholder*0
_output_shapes
:??????????*
dtype0*%
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_60_inputconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_154122
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp#dense_46/kernel/Read/ReadVariableOp!dense_46/bias/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0RMSprop/conv2d_60/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_60/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_61/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_61/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_62/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_62/bias/rms/Read/ReadVariableOp/RMSprop/dense_46/kernel/rms/Read/ReadVariableOp-RMSprop/dense_46/bias/rms/Read/ReadVariableOp/RMSprop/dense_47/kernel/rms/Read/ReadVariableOp-RMSprop/dense_47/bias/rms/Read/ReadVariableOpConst**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_154586
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_60/kernel/rmsRMSprop/conv2d_60/bias/rmsRMSprop/conv2d_61/kernel/rmsRMSprop/conv2d_61/bias/rmsRMSprop/conv2d_62/kernel/rmsRMSprop/conv2d_62/bias/rmsRMSprop/dense_46/kernel/rmsRMSprop/dense_46/bias/rmsRMSprop/dense_47/kernel/rmsRMSprop/dense_47/bias/rms*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_154683??
?
?
E__inference_conv2d_60_layer_call_and_return_conditional_losses_154316

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?Y
?	
I__inference_sequential_22_layer_call_and_return_conditional_losses_154296

inputsB
(conv2d_60_conv2d_readvariableop_resource:7
)conv2d_60_biasadd_readvariableop_resource:B
(conv2d_61_conv2d_readvariableop_resource: 7
)conv2d_61_biasadd_readvariableop_resource: B
(conv2d_62_conv2d_readvariableop_resource: @7
)conv2d_62_biasadd_readvariableop_resource:@;
'dense_46_matmul_readvariableop_resource:
??7
(dense_46_biasadd_readvariableop_resource:	?:
'dense_47_matmul_readvariableop_resource:	?6
(dense_47_biasadd_readvariableop_resource:
identity?? conv2d_60/BiasAdd/ReadVariableOp?conv2d_60/Conv2D/ReadVariableOp? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp?2conv2d_61/kernel/Regularizer/Square/ReadVariableOp? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp?2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?dense_46/BiasAdd/ReadVariableOp?dense_46/MatMul/ReadVariableOp?1dense_46/kernel/Regularizer/Square/ReadVariableOp?dense_47/BiasAdd/ReadVariableOp?dense_47/MatMul/ReadVariableOp?
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_60/Conv2D/ReadVariableOp?
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_60/Conv2D?
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp?
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_60/BiasAdd
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_60/Relu?
max_pooling2d_48/MaxPoolMaxPoolconv2d_60/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_48/MaxPool?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_61/Conv2D/ReadVariableOp?
conv2d_61/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? *
paddingVALID*
strides
2
conv2d_61/Conv2D?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? 2
conv2d_61/BiasAdd~
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????? 2
conv2d_61/Relu?
max_pooling2d_49/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPool?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2D!max_pooling2d_49/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_62/Relu?
max_pooling2d_50/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_50/MaxPoolu
flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten_20/Const?
flatten_20/ReshapeReshape!max_pooling2d_50/MaxPool:output:0flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_20/Reshape?
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_46/MatMul/ReadVariableOp?
dense_46/MatMulMatMulflatten_20/Reshape:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_46/MatMul?
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_46/BiasAdd/ReadVariableOp?
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_46/BiasAddt
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_46/Relu?
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_47/MatMul/ReadVariableOp?
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_47/MatMul?
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_47/BiasAdd/ReadVariableOp?
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_47/BiasAdd|
dense_47/SoftmaxSoftmaxdense_47/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_47/Softmax?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentitydense_47/Softmax:softmax:0!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp3^conv2d_61/kernel/Regularizer/Square/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp3^conv2d_62/kernel/Regularizer/Square/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp2^dense_46/kernel/Regularizer/Square/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_20_layer_call_and_return_conditional_losses_154391

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
D__inference_dense_46_layer_call_and_return_conditional_losses_154423

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_46/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_46/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_47_layer_call_and_return_conditional_losses_153739

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_22_layer_call_fn_153787
conv2d_60_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_1537642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_60_input
?

?
D__inference_dense_47_layer_call_and_return_conditional_losses_154443

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_61_layer_call_and_return_conditional_losses_154348

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????? 2
Relu?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_61/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?A
?
__inference__traced_save_154586
file_prefix/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop.
*savev2_dense_46_kernel_read_readvariableop,
(savev2_dense_46_bias_read_readvariableop.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_rmsprop_conv2d_60_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_60_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_61_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_61_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_62_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_62_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_46_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_46_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_47_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_47_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop*savev2_dense_46_kernel_read_readvariableop(savev2_dense_46_bias_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_rmsprop_conv2d_60_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_60_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_61_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_61_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_62_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_62_bias_rms_read_readvariableop6savev2_rmsprop_dense_46_kernel_rms_read_readvariableop4savev2_rmsprop_dense_46_bias_rms_read_readvariableop6savev2_rmsprop_dense_47_kernel_rms_read_readvariableop4savev2_rmsprop_dense_47_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: : : @:@:
??:?:	?:: : : : : : : : : ::: : : @:@:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%	!

_output_shapes
:	?: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
G
+__inference_flatten_20_layer_call_fn_154385

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_20_layer_call_and_return_conditional_losses_1537032
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_154465U
;conv2d_62_kernel_regularizer_square_readvariableop_resource: @
identity??2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_62_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
IdentityIdentity$conv2d_62/kernel/Regularizer/mul:z:03^conv2d_62/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp
?
M
1__inference_max_pooling2d_48_layer_call_fn_153600

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1535942
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_dense_46_layer_call_and_return_conditional_losses_153722

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_46/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_46/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_20_layer_call_and_return_conditional_losses_153703

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_153618

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?Y
?	
I__inference_sequential_22_layer_call_and_return_conditional_losses_154234

inputsB
(conv2d_60_conv2d_readvariableop_resource:7
)conv2d_60_biasadd_readvariableop_resource:B
(conv2d_61_conv2d_readvariableop_resource: 7
)conv2d_61_biasadd_readvariableop_resource: B
(conv2d_62_conv2d_readvariableop_resource: @7
)conv2d_62_biasadd_readvariableop_resource:@;
'dense_46_matmul_readvariableop_resource:
??7
(dense_46_biasadd_readvariableop_resource:	?:
'dense_47_matmul_readvariableop_resource:	?6
(dense_47_biasadd_readvariableop_resource:
identity?? conv2d_60/BiasAdd/ReadVariableOp?conv2d_60/Conv2D/ReadVariableOp? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp?2conv2d_61/kernel/Regularizer/Square/ReadVariableOp? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp?2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?dense_46/BiasAdd/ReadVariableOp?dense_46/MatMul/ReadVariableOp?1dense_46/kernel/Regularizer/Square/ReadVariableOp?dense_47/BiasAdd/ReadVariableOp?dense_47/MatMul/ReadVariableOp?
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_60/Conv2D/ReadVariableOp?
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_60/Conv2D?
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp?
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_60/BiasAdd
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_60/Relu?
max_pooling2d_48/MaxPoolMaxPoolconv2d_60/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_48/MaxPool?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_61/Conv2D/ReadVariableOp?
conv2d_61/Conv2DConv2D!max_pooling2d_48/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? *
paddingVALID*
strides
2
conv2d_61/Conv2D?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? 2
conv2d_61/BiasAdd~
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????? 2
conv2d_61/Relu?
max_pooling2d_49/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPool?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2D!max_pooling2d_49/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_62/Relu?
max_pooling2d_50/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_50/MaxPoolu
flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten_20/Const?
flatten_20/ReshapeReshape!max_pooling2d_50/MaxPool:output:0flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_20/Reshape?
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_46/MatMul/ReadVariableOp?
dense_46/MatMulMatMulflatten_20/Reshape:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_46/MatMul?
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_46/BiasAdd/ReadVariableOp?
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_46/BiasAddt
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_46/Relu?
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_47/MatMul/ReadVariableOp?
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_47/MatMul?
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_47/BiasAdd/ReadVariableOp?
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_47/BiasAdd|
dense_47/SoftmaxSoftmaxdense_47/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_47/Softmax?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentitydense_47/Softmax:softmax:0!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp3^conv2d_61/kernel/Regularizer/Square/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp3^conv2d_62/kernel/Regularizer/Square/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp2^dense_46/kernel/Regularizer/Square/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_154122
conv2d_60_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1535882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_60_input
?
h
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_153594

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?H
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_154071
conv2d_60_input*
conv2d_60_154023:
conv2d_60_154025:*
conv2d_61_154029: 
conv2d_61_154031: *
conv2d_62_154035: @
conv2d_62_154037:@#
dense_46_154042:
??
dense_46_154044:	?"
dense_47_154047:	?
dense_47_154049:
identity??!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?!conv2d_62/StatefulPartitionedCall?2conv2d_62/kernel/Regularizer/Square/ReadVariableOp? dense_46/StatefulPartitionedCall?1dense_46/kernel/Regularizer/Square/ReadVariableOp? dense_47/StatefulPartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_154023conv2d_60_154025*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1536422#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1535942"
 max_pooling2d_48/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_61_154029conv2d_61_154031*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1536662#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1536062"
 max_pooling2d_49/PartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv2d_62_154035conv2d_62_154037*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1536902#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1536182"
 max_pooling2d_50/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall)max_pooling2d_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_20_layer_call_and_return_conditional_losses_1537032
flatten_20/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_46_154042dense_46_154044*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_1537222"
 dense_46/StatefulPartitionedCall?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_154047dense_47_154049*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_1537392"
 dense_47/StatefulPartitionedCall?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_61_154029*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_62_154035*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_46_154042* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall3^conv2d_61/kernel/Regularizer/Square/ReadVariableOp"^conv2d_62/StatefulPartitionedCall3^conv2d_62/kernel/Regularizer/Square/ReadVariableOp!^dense_46/StatefulPartitionedCall2^dense_46/kernel/Regularizer/Square/ReadVariableOp!^dense_47/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_60_input
?
M
1__inference_max_pooling2d_49_layer_call_fn_153612

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1536062
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_22_layer_call_fn_154172

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_1539212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_154020
conv2d_60_input*
conv2d_60_153972:
conv2d_60_153974:*
conv2d_61_153978: 
conv2d_61_153980: *
conv2d_62_153984: @
conv2d_62_153986:@#
dense_46_153991:
??
dense_46_153993:	?"
dense_47_153996:	?
dense_47_153998:
identity??!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?!conv2d_62/StatefulPartitionedCall?2conv2d_62/kernel/Regularizer/Square/ReadVariableOp? dense_46/StatefulPartitionedCall?1dense_46/kernel/Regularizer/Square/ReadVariableOp? dense_47/StatefulPartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_153972conv2d_60_153974*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1536422#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1535942"
 max_pooling2d_48/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_61_153978conv2d_61_153980*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1536662#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1536062"
 max_pooling2d_49/PartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv2d_62_153984conv2d_62_153986*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1536902#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1536182"
 max_pooling2d_50/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall)max_pooling2d_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_20_layer_call_and_return_conditional_losses_1537032
flatten_20/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_46_153991dense_46_153993*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_1537222"
 dense_46/StatefulPartitionedCall?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_153996dense_47_153998*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_1537392"
 dense_47/StatefulPartitionedCall?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_61_153978*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_62_153984*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_46_153991* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall3^conv2d_61/kernel/Regularizer/Square/ReadVariableOp"^conv2d_62/StatefulPartitionedCall3^conv2d_62/kernel/Regularizer/Square/ReadVariableOp!^dense_46/StatefulPartitionedCall2^dense_46/kernel/Regularizer/Square/ReadVariableOp!^dense_47/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_60_input
?
?
)__inference_dense_47_layer_call_fn_154432

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_1537392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_153690

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_62/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?}
?
"__inference__traced_restore_154683
file_prefix;
!assignvariableop_conv2d_60_kernel:/
!assignvariableop_1_conv2d_60_bias:=
#assignvariableop_2_conv2d_61_kernel: /
!assignvariableop_3_conv2d_61_bias: =
#assignvariableop_4_conv2d_62_kernel: @/
!assignvariableop_5_conv2d_62_bias:@6
"assignvariableop_6_dense_46_kernel:
??/
 assignvariableop_7_dense_46_bias:	?5
"assignvariableop_8_dense_47_kernel:	?.
 assignvariableop_9_dense_47_bias:*
 assignvariableop_10_rmsprop_iter:	 +
!assignvariableop_11_rmsprop_decay: 3
)assignvariableop_12_rmsprop_learning_rate: .
$assignvariableop_13_rmsprop_momentum: )
assignvariableop_14_rmsprop_rho: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: J
0assignvariableop_19_rmsprop_conv2d_60_kernel_rms:<
.assignvariableop_20_rmsprop_conv2d_60_bias_rms:J
0assignvariableop_21_rmsprop_conv2d_61_kernel_rms: <
.assignvariableop_22_rmsprop_conv2d_61_bias_rms: J
0assignvariableop_23_rmsprop_conv2d_62_kernel_rms: @<
.assignvariableop_24_rmsprop_conv2d_62_bias_rms:@C
/assignvariableop_25_rmsprop_dense_46_kernel_rms:
??<
-assignvariableop_26_rmsprop_dense_46_bias_rms:	?B
/assignvariableop_27_rmsprop_dense_47_kernel_rms:	?;
-assignvariableop_28_rmsprop_dense_47_bias_rms:
identity_30??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_60_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_61_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_61_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_62_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_62_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_46_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_46_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_47_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_47_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_rmsprop_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_rmsprop_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp)assignvariableop_12_rmsprop_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp$assignvariableop_13_rmsprop_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_rmsprop_rhoIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp0assignvariableop_19_rmsprop_conv2d_60_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp.assignvariableop_20_rmsprop_conv2d_60_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_rmsprop_conv2d_61_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp.assignvariableop_22_rmsprop_conv2d_61_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp0assignvariableop_23_rmsprop_conv2d_62_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp.assignvariableop_24_rmsprop_conv2d_62_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_rmsprop_dense_46_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_rmsprop_dense_46_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_rmsprop_dense_47_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp-assignvariableop_28_rmsprop_dense_47_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_289
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_29?
Identity_30IdentityIdentity_29:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_30"#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?H
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_153921

inputs*
conv2d_60_153873:
conv2d_60_153875:*
conv2d_61_153879: 
conv2d_61_153881: *
conv2d_62_153885: @
conv2d_62_153887:@#
dense_46_153892:
??
dense_46_153894:	?"
dense_47_153897:	?
dense_47_153899:
identity??!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?!conv2d_62/StatefulPartitionedCall?2conv2d_62/kernel/Regularizer/Square/ReadVariableOp? dense_46/StatefulPartitionedCall?1dense_46/kernel/Regularizer/Square/ReadVariableOp? dense_47/StatefulPartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_153873conv2d_60_153875*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1536422#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1535942"
 max_pooling2d_48/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_61_153879conv2d_61_153881*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1536662#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1536062"
 max_pooling2d_49/PartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv2d_62_153885conv2d_62_153887*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1536902#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1536182"
 max_pooling2d_50/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall)max_pooling2d_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_20_layer_call_and_return_conditional_losses_1537032
flatten_20/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_46_153892dense_46_153894*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_1537222"
 dense_46/StatefulPartitionedCall?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_153897dense_47_153899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_1537392"
 dense_47/StatefulPartitionedCall?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_61_153879*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_62_153885*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_46_153892* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall3^conv2d_61/kernel/Regularizer/Square/ReadVariableOp"^conv2d_62/StatefulPartitionedCall3^conv2d_62/kernel/Regularizer/Square/ReadVariableOp!^dense_46/StatefulPartitionedCall2^dense_46/kernel/Regularizer/Square/ReadVariableOp!^dense_47/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_22_layer_call_fn_153969
conv2d_60_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_1539212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_60_input
?
h
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_153606

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_60_layer_call_and_return_conditional_losses_153642

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_46_layer_call_fn_154406

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_1537222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_62_layer_call_fn_154363

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1536902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
.__inference_sequential_22_layer_call_fn_154147

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_1537642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_154454U
;conv2d_61_kernel_regularizer_square_readvariableop_resource: 
identity??2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_61_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
IdentityIdentity$conv2d_61/kernel/Regularizer/mul:z:03^conv2d_61/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp
?H
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_153764

inputs*
conv2d_60_153643:
conv2d_60_153645:*
conv2d_61_153667: 
conv2d_61_153669: *
conv2d_62_153691: @
conv2d_62_153693:@#
dense_46_153723:
??
dense_46_153725:	?"
dense_47_153740:	?
dense_47_153742:
identity??!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?!conv2d_62/StatefulPartitionedCall?2conv2d_62/kernel/Regularizer/Square/ReadVariableOp? dense_46/StatefulPartitionedCall?1dense_46/kernel/Regularizer/Square/ReadVariableOp? dense_47/StatefulPartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_153643conv2d_60_153645*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1536422#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_48/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_1535942"
 max_pooling2d_48/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_48/PartitionedCall:output:0conv2d_61_153667conv2d_61_153669*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1536662#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_1536062"
 max_pooling2d_49/PartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv2d_62_153691conv2d_62_153693*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1536902#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1536182"
 max_pooling2d_50/PartitionedCall?
flatten_20/PartitionedCallPartitionedCall)max_pooling2d_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_20_layer_call_and_return_conditional_losses_1537032
flatten_20/PartitionedCall?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0dense_46_153723dense_46_153725*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_1537222"
 dense_46/StatefulPartitionedCall?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_153740dense_47_153742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_1537392"
 dense_47/StatefulPartitionedCall?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_61_153667*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_62_153691*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_46_153723* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall3^conv2d_61/kernel/Regularizer/Square/ReadVariableOp"^conv2d_62/StatefulPartitionedCall3^conv2d_62/kernel/Regularizer/Square/ReadVariableOp!^dense_46/StatefulPartitionedCall2^dense_46/kernel/Regularizer/Square/ReadVariableOp!^dense_47/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_60_layer_call_fn_154305

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1536422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_50_layer_call_fn_153624

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1536182
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_61_layer_call_fn_154331

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1536662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?K
?

!__inference__wrapped_model_153588
conv2d_60_inputP
6sequential_22_conv2d_60_conv2d_readvariableop_resource:E
7sequential_22_conv2d_60_biasadd_readvariableop_resource:P
6sequential_22_conv2d_61_conv2d_readvariableop_resource: E
7sequential_22_conv2d_61_biasadd_readvariableop_resource: P
6sequential_22_conv2d_62_conv2d_readvariableop_resource: @E
7sequential_22_conv2d_62_biasadd_readvariableop_resource:@I
5sequential_22_dense_46_matmul_readvariableop_resource:
??E
6sequential_22_dense_46_biasadd_readvariableop_resource:	?H
5sequential_22_dense_47_matmul_readvariableop_resource:	?D
6sequential_22_dense_47_biasadd_readvariableop_resource:
identity??.sequential_22/conv2d_60/BiasAdd/ReadVariableOp?-sequential_22/conv2d_60/Conv2D/ReadVariableOp?.sequential_22/conv2d_61/BiasAdd/ReadVariableOp?-sequential_22/conv2d_61/Conv2D/ReadVariableOp?.sequential_22/conv2d_62/BiasAdd/ReadVariableOp?-sequential_22/conv2d_62/Conv2D/ReadVariableOp?-sequential_22/dense_46/BiasAdd/ReadVariableOp?,sequential_22/dense_46/MatMul/ReadVariableOp?-sequential_22/dense_47/BiasAdd/ReadVariableOp?,sequential_22/dense_47/MatMul/ReadVariableOp?
-sequential_22/conv2d_60/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_22/conv2d_60/Conv2D/ReadVariableOp?
sequential_22/conv2d_60/Conv2DConv2Dconv2d_60_input5sequential_22/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2 
sequential_22/conv2d_60/Conv2D?
.sequential_22/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_22/conv2d_60/BiasAdd/ReadVariableOp?
sequential_22/conv2d_60/BiasAddBiasAdd'sequential_22/conv2d_60/Conv2D:output:06sequential_22/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_22/conv2d_60/BiasAdd?
sequential_22/conv2d_60/ReluRelu(sequential_22/conv2d_60/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_22/conv2d_60/Relu?
&sequential_22/max_pooling2d_48/MaxPoolMaxPool*sequential_22/conv2d_60/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_22/max_pooling2d_48/MaxPool?
-sequential_22/conv2d_61/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_22/conv2d_61/Conv2D/ReadVariableOp?
sequential_22/conv2d_61/Conv2DConv2D/sequential_22/max_pooling2d_48/MaxPool:output:05sequential_22/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? *
paddingVALID*
strides
2 
sequential_22/conv2d_61/Conv2D?
.sequential_22/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_22/conv2d_61/BiasAdd/ReadVariableOp?
sequential_22/conv2d_61/BiasAddBiasAdd'sequential_22/conv2d_61/Conv2D:output:06sequential_22/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? 2!
sequential_22/conv2d_61/BiasAdd?
sequential_22/conv2d_61/ReluRelu(sequential_22/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????? 2
sequential_22/conv2d_61/Relu?
&sequential_22/max_pooling2d_49/MaxPoolMaxPool*sequential_22/conv2d_61/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&sequential_22/max_pooling2d_49/MaxPool?
-sequential_22/conv2d_62/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_22/conv2d_62/Conv2D/ReadVariableOp?
sequential_22/conv2d_62/Conv2DConv2D/sequential_22/max_pooling2d_49/MaxPool:output:05sequential_22/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2 
sequential_22/conv2d_62/Conv2D?
.sequential_22/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_22/conv2d_62/BiasAdd/ReadVariableOp?
sequential_22/conv2d_62/BiasAddBiasAdd'sequential_22/conv2d_62/Conv2D:output:06sequential_22/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_22/conv2d_62/BiasAdd?
sequential_22/conv2d_62/ReluRelu(sequential_22/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_22/conv2d_62/Relu?
&sequential_22/max_pooling2d_50/MaxPoolMaxPool*sequential_22/conv2d_62/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_22/max_pooling2d_50/MaxPool?
sequential_22/flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2 
sequential_22/flatten_20/Const?
 sequential_22/flatten_20/ReshapeReshape/sequential_22/max_pooling2d_50/MaxPool:output:0'sequential_22/flatten_20/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_22/flatten_20/Reshape?
,sequential_22/dense_46/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_46_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_22/dense_46/MatMul/ReadVariableOp?
sequential_22/dense_46/MatMulMatMul)sequential_22/flatten_20/Reshape:output:04sequential_22/dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_22/dense_46/MatMul?
-sequential_22/dense_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_22/dense_46/BiasAdd/ReadVariableOp?
sequential_22/dense_46/BiasAddBiasAdd'sequential_22/dense_46/MatMul:product:05sequential_22/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_22/dense_46/BiasAdd?
sequential_22/dense_46/ReluRelu'sequential_22/dense_46/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_22/dense_46/Relu?
,sequential_22/dense_47/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_47_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_22/dense_47/MatMul/ReadVariableOp?
sequential_22/dense_47/MatMulMatMul)sequential_22/dense_46/Relu:activations:04sequential_22/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_22/dense_47/MatMul?
-sequential_22/dense_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_22/dense_47/BiasAdd/ReadVariableOp?
sequential_22/dense_47/BiasAddBiasAdd'sequential_22/dense_47/MatMul:product:05sequential_22/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_22/dense_47/BiasAdd?
sequential_22/dense_47/SoftmaxSoftmax'sequential_22/dense_47/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_22/dense_47/Softmax?
IdentityIdentity(sequential_22/dense_47/Softmax:softmax:0/^sequential_22/conv2d_60/BiasAdd/ReadVariableOp.^sequential_22/conv2d_60/Conv2D/ReadVariableOp/^sequential_22/conv2d_61/BiasAdd/ReadVariableOp.^sequential_22/conv2d_61/Conv2D/ReadVariableOp/^sequential_22/conv2d_62/BiasAdd/ReadVariableOp.^sequential_22/conv2d_62/Conv2D/ReadVariableOp.^sequential_22/dense_46/BiasAdd/ReadVariableOp-^sequential_22/dense_46/MatMul/ReadVariableOp.^sequential_22/dense_47/BiasAdd/ReadVariableOp-^sequential_22/dense_47/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????: : : : : : : : : : 2`
.sequential_22/conv2d_60/BiasAdd/ReadVariableOp.sequential_22/conv2d_60/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_60/Conv2D/ReadVariableOp-sequential_22/conv2d_60/Conv2D/ReadVariableOp2`
.sequential_22/conv2d_61/BiasAdd/ReadVariableOp.sequential_22/conv2d_61/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_61/Conv2D/ReadVariableOp-sequential_22/conv2d_61/Conv2D/ReadVariableOp2`
.sequential_22/conv2d_62/BiasAdd/ReadVariableOp.sequential_22/conv2d_62/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_62/Conv2D/ReadVariableOp-sequential_22/conv2d_62/Conv2D/ReadVariableOp2^
-sequential_22/dense_46/BiasAdd/ReadVariableOp-sequential_22/dense_46/BiasAdd/ReadVariableOp2\
,sequential_22/dense_46/MatMul/ReadVariableOp,sequential_22/dense_46/MatMul/ReadVariableOp2^
-sequential_22/dense_47/BiasAdd/ReadVariableOp-sequential_22/dense_47/BiasAdd/ReadVariableOp2\
,sequential_22/dense_47/MatMul/ReadVariableOp,sequential_22/dense_47/MatMul/ReadVariableOp:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_60_input
?
?
__inference_loss_fn_2_154476N
:dense_46_kernel_regularizer_square_readvariableop_resource:
??
identity??1dense_46/kernel/Regularizer/Square/ReadVariableOp?
1dense_46/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_46_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_46/kernel/Regularizer/Square/ReadVariableOp?
"dense_46/kernel/Regularizer/SquareSquare9dense_46/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_46/kernel/Regularizer/Square?
!dense_46/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_46/kernel/Regularizer/Const?
dense_46/kernel/Regularizer/SumSum&dense_46/kernel/Regularizer/Square:y:0*dense_46/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/Sum?
!dense_46/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2#
!dense_46/kernel/Regularizer/mul/x?
dense_46/kernel/Regularizer/mulMul*dense_46/kernel/Regularizer/mul/x:output:0(dense_46/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_46/kernel/Regularizer/mul?
IdentityIdentity#dense_46/kernel/Regularizer/mul:z:02^dense_46/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_46/kernel/Regularizer/Square/ReadVariableOp1dense_46/kernel/Regularizer/Square/ReadVariableOp
?
?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_154380

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
2conv2d_62/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_62/kernel/Regularizer/SquareSquare:conv2d_62/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_62/kernel/Regularizer/Square?
"conv2d_62/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_62/kernel/Regularizer/Const?
 conv2d_62/kernel/Regularizer/SumSum'conv2d_62/kernel/Regularizer/Square:y:0+conv2d_62/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/Sum?
"conv2d_62/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_62/kernel/Regularizer/mul/x?
 conv2d_62/kernel/Regularizer/mulMul+conv2d_62/kernel/Regularizer/mul/x:output:0)conv2d_62/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_62/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_62/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_62/kernel/Regularizer/Square/ReadVariableOp2conv2d_62/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_conv2d_61_layer_call_and_return_conditional_losses_153666

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????? 2
Relu?
2conv2d_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp?
#conv2d_61/kernel/Regularizer/SquareSquare:conv2d_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_61/kernel/Regularizer/Square?
"conv2d_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_61/kernel/Regularizer/Const?
 conv2d_61/kernel/Regularizer/SumSum'conv2d_61/kernel/Regularizer/Square:y:0+conv2d_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/Sum?
"conv2d_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2$
"conv2d_61/kernel/Regularizer/mul/x?
 conv2d_61/kernel/Regularizer/mulMul+conv2d_61/kernel/Regularizer/mul/x:output:0)conv2d_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_61/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_61/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_61/kernel/Regularizer/Square/ReadVariableOp2conv2d_61/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
T
conv2d_60_inputA
!serving_default_conv2d_60_input:0??????????<
dense_470
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?U
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?R
_tf_keras_sequential?Q{"name": "sequential_22", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_60_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_48", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_20", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_46", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_47", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 129, 26, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 129, 26, 1]}, "float32", "conv2d_60_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_60_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_48", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 7}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 9}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 12}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14}, {"class_name": "Flatten", "config": {"name": "flatten_20", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "dense_46", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "Dense", "config": {"name": "dense_47", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 25}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-08, "centered": false}}}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?
{"name": "conv2d_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 129, 26, 1]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_48", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 7}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 13, 16]}}
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 28}}
?

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 12}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 6, 32]}}
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 30}}
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_20", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 31}}
?	

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_46", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2880}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2880]}}
?

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_47", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
>iter
	?decay
@learning_rate
Amomentum
Brho
rms?
rms?
rms?
rms?
$rms?
%rms?
2rms?
3rms?
8rms?
9rms?"
	optimizer
f
0
1
2
3
$4
%5
26
37
88
99"
trackable_list_wrapper
f
0
1
2
3
$4
%5
26
37
88
99"
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
?
	variables

Clayers
Dnon_trainable_variables
trainable_variables
Emetrics
regularization_losses
Flayer_metrics
Glayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:(2conv2d_60/kernel
:2conv2d_60/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables

Hlayers
Inon_trainable_variables
trainable_variables
Jmetrics
regularization_losses
Klayer_metrics
Llayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables

Mlayers
Nnon_trainable_variables
trainable_variables
Ometrics
regularization_losses
Player_metrics
Qlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_61/kernel
: 2conv2d_61/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
	variables

Rlayers
Snon_trainable_variables
trainable_variables
Tmetrics
regularization_losses
Ulayer_metrics
Vlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 	variables

Wlayers
Xnon_trainable_variables
!trainable_variables
Ymetrics
"regularization_losses
Zlayer_metrics
[layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_62/kernel
:@2conv2d_62/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
&	variables

\layers
]non_trainable_variables
'trainable_variables
^metrics
(regularization_losses
_layer_metrics
`layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
*	variables

alayers
bnon_trainable_variables
+trainable_variables
cmetrics
,regularization_losses
dlayer_metrics
elayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
.	variables

flayers
gnon_trainable_variables
/trainable_variables
hmetrics
0regularization_losses
ilayer_metrics
jlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_46/kernel
:?2dense_46/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
4	variables

klayers
lnon_trainable_variables
5trainable_variables
mmetrics
6regularization_losses
nlayer_metrics
olayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_47/kernel
:2dense_47/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
:	variables

players
qnon_trainable_variables
;trainable_variables
rmetrics
<regularization_losses
slayer_metrics
tlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
	wtotal
	xcount
y	variables
z	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 34}
?
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 25}
:  (2total
:  (2count
.
w0
x1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
{0
|1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
4:22RMSprop/conv2d_60/kernel/rms
&:$2RMSprop/conv2d_60/bias/rms
4:2 2RMSprop/conv2d_61/kernel/rms
&:$ 2RMSprop/conv2d_61/bias/rms
4:2 @2RMSprop/conv2d_62/kernel/rms
&:$@2RMSprop/conv2d_62/bias/rms
-:+
??2RMSprop/dense_46/kernel/rms
&:$?2RMSprop/dense_46/bias/rms
,:*	?2RMSprop/dense_47/kernel/rms
%:#2RMSprop/dense_47/bias/rms
?2?
.__inference_sequential_22_layer_call_fn_153787
.__inference_sequential_22_layer_call_fn_154147
.__inference_sequential_22_layer_call_fn_154172
.__inference_sequential_22_layer_call_fn_153969?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_153588?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/
conv2d_60_input??????????
?2?
I__inference_sequential_22_layer_call_and_return_conditional_losses_154234
I__inference_sequential_22_layer_call_and_return_conditional_losses_154296
I__inference_sequential_22_layer_call_and_return_conditional_losses_154020
I__inference_sequential_22_layer_call_and_return_conditional_losses_154071?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_conv2d_60_layer_call_fn_154305?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_60_layer_call_and_return_conditional_losses_154316?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_48_layer_call_fn_153600?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_153594?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_61_layer_call_fn_154331?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_61_layer_call_and_return_conditional_losses_154348?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_49_layer_call_fn_153612?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_153606?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_62_layer_call_fn_154363?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_154380?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_50_layer_call_fn_153624?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_153618?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_flatten_20_layer_call_fn_154385?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_20_layer_call_and_return_conditional_losses_154391?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_46_layer_call_fn_154406?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_46_layer_call_and_return_conditional_losses_154423?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_47_layer_call_fn_154432?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_47_layer_call_and_return_conditional_losses_154443?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_154454?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_154465?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_154476?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_154122conv2d_60_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_153588?
$%2389A?>
7?4
2?/
conv2d_60_input??????????
? "3?0
.
dense_47"?
dense_47??????????
E__inference_conv2d_60_layer_call_and_return_conditional_losses_154316n8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_60_layer_call_fn_154305a8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_conv2d_61_layer_call_and_return_conditional_losses_154348l7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????? 
? ?
*__inference_conv2d_61_layer_call_fn_154331_7?4
-?*
(?%
inputs?????????@
? " ??????????? ?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_154380l$%7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_62_layer_call_fn_154363_$%7?4
-?*
(?%
inputs????????? 
? " ??????????@?
D__inference_dense_46_layer_call_and_return_conditional_losses_154423^230?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_46_layer_call_fn_154406Q230?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_47_layer_call_and_return_conditional_losses_154443]890?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_dense_47_layer_call_fn_154432P890?-
&?#
!?
inputs??????????
? "???????????
F__inference_flatten_20_layer_call_and_return_conditional_losses_154391a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_20_layer_call_fn_154385T7?4
-?*
(?%
inputs?????????@
? "???????????;
__inference_loss_fn_0_154454?

? 
? "? ;
__inference_loss_fn_1_154465$?

? 
? "? ;
__inference_loss_fn_2_1544762?

? 
? "? ?
L__inference_max_pooling2d_48_layer_call_and_return_conditional_losses_153594?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_48_layer_call_fn_153600?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_153606?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_49_layer_call_fn_153612?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_153618?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_50_layer_call_fn_153624?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_22_layer_call_and_return_conditional_losses_154020~
$%2389I?F
??<
2?/
conv2d_60_input??????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_154071~
$%2389I?F
??<
2?/
conv2d_60_input??????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_154234u
$%2389@?=
6?3
)?&
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_154296u
$%2389@?=
6?3
)?&
inputs??????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_22_layer_call_fn_153787q
$%2389I?F
??<
2?/
conv2d_60_input??????????
p 

 
? "???????????
.__inference_sequential_22_layer_call_fn_153969q
$%2389I?F
??<
2?/
conv2d_60_input??????????
p

 
? "???????????
.__inference_sequential_22_layer_call_fn_154147h
$%2389@?=
6?3
)?&
inputs??????????
p 

 
? "???????????
.__inference_sequential_22_layer_call_fn_154172h
$%2389@?=
6?3
)?&
inputs??????????
p

 
? "???????????
$__inference_signature_wrapper_154122?
$%2389T?Q
? 
J?G
E
conv2d_60_input2?/
conv2d_60_input??????????"3?0
.
dense_47"?
dense_47?????????