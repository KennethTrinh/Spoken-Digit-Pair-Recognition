??!
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
conv2d_125/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_125/kernel

%conv2d_125/kernel/Read/ReadVariableOpReadVariableOpconv2d_125/kernel*&
_output_shapes
: *
dtype0
v
conv2d_125/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_125/bias
o
#conv2d_125/bias/Read/ReadVariableOpReadVariableOpconv2d_125/bias*
_output_shapes
: *
dtype0
?
conv2d_126/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_126/kernel

%conv2d_126/kernel/Read/ReadVariableOpReadVariableOpconv2d_126/kernel*&
_output_shapes
:  *
dtype0
?
batch_normalization_32/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_32/gamma
?
0batch_normalization_32/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_32/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_32/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_32/beta
?
/batch_normalization_32/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_32/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_32/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_32/moving_mean
?
6batch_normalization_32/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_32/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_32/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_32/moving_variance
?
:batch_normalization_32/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_32/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_127/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_127/kernel

%conv2d_127/kernel/Read/ReadVariableOpReadVariableOpconv2d_127/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_127/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_127/bias
o
#conv2d_127/bias/Read/ReadVariableOpReadVariableOpconv2d_127/bias*
_output_shapes
:@*
dtype0
?
conv2d_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_128/kernel

%conv2d_128/kernel/Read/ReadVariableOpReadVariableOpconv2d_128/kernel*&
_output_shapes
:@@*
dtype0
?
batch_normalization_33/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_33/gamma
?
0batch_normalization_33/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_33/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_33/beta
?
/batch_normalization_33/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_33/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_33/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_33/moving_mean
?
6batch_normalization_33/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_33/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_33/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_33/moving_variance
?
:batch_normalization_33/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_33/moving_variance*
_output_shapes
:@*
dtype0
|
dense_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_94/kernel
u
#dense_94/kernel/Read/ReadVariableOpReadVariableOpdense_94/kernel* 
_output_shapes
:
??*
dtype0
?
batch_normalization_34/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_34/gamma
?
0batch_normalization_34/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_34/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_34/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_34/beta
?
/batch_normalization_34/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_34/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_34/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_34/moving_mean
?
6batch_normalization_34/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_34/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_34/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_34/moving_variance
?
:batch_normalization_34/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_34/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_95/kernel
u
#dense_95/kernel/Read/ReadVariableOpReadVariableOpdense_95/kernel* 
_output_shapes
:
??*
dtype0
?
batch_normalization_35/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_35/gamma
?
0batch_normalization_35/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_35/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_35/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_35/beta
?
/batch_normalization_35/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_35/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_35/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_35/moving_mean
?
6batch_normalization_35/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_35/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_35/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_35/moving_variance
?
:batch_normalization_35/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_35/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T* 
shared_namedense_96/kernel
t
#dense_96/kernel/Read/ReadVariableOpReadVariableOpdense_96/kernel*
_output_shapes
:	?T*
dtype0
?
batch_normalization_36/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*-
shared_namebatch_normalization_36/gamma
?
0batch_normalization_36/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_36/gamma*
_output_shapes
:T*
dtype0
?
batch_normalization_36/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*,
shared_namebatch_normalization_36/beta
?
/batch_normalization_36/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_36/beta*
_output_shapes
:T*
dtype0
?
"batch_normalization_36/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*3
shared_name$"batch_normalization_36/moving_mean
?
6batch_normalization_36/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_36/moving_mean*
_output_shapes
:T*
dtype0
?
&batch_normalization_36/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*7
shared_name(&batch_normalization_36/moving_variance
?
:batch_normalization_36/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_36/moving_variance*
_output_shapes
:T*
dtype0
z
dense_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T* 
shared_namedense_97/kernel
s
#dense_97/kernel/Read/ReadVariableOpReadVariableOpdense_97/kernel*
_output_shapes

:T*
dtype0
r
dense_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_97/bias
k
!dense_97/bias/Read/ReadVariableOpReadVariableOpdense_97/bias*
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
RMSprop/conv2d_125/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameRMSprop/conv2d_125/kernel/rms
?
1RMSprop/conv2d_125/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_125/kernel/rms*&
_output_shapes
: *
dtype0
?
RMSprop/conv2d_125/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameRMSprop/conv2d_125/bias/rms
?
/RMSprop/conv2d_125/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_125/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_126/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_nameRMSprop/conv2d_126/kernel/rms
?
1RMSprop/conv2d_126/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_126/kernel/rms*&
_output_shapes
:  *
dtype0
?
(RMSprop/batch_normalization_32/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(RMSprop/batch_normalization_32/gamma/rms
?
<RMSprop/batch_normalization_32/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_32/gamma/rms*
_output_shapes
: *
dtype0
?
'RMSprop/batch_normalization_32/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'RMSprop/batch_normalization_32/beta/rms
?
;RMSprop/batch_normalization_32/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_32/beta/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_127/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*.
shared_nameRMSprop/conv2d_127/kernel/rms
?
1RMSprop/conv2d_127/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_127/kernel/rms*&
_output_shapes
: @*
dtype0
?
RMSprop/conv2d_127/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameRMSprop/conv2d_127/bias/rms
?
/RMSprop/conv2d_127/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_127/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/conv2d_128/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_nameRMSprop/conv2d_128/kernel/rms
?
1RMSprop/conv2d_128/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_128/kernel/rms*&
_output_shapes
:@@*
dtype0
?
(RMSprop/batch_normalization_33/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(RMSprop/batch_normalization_33/gamma/rms
?
<RMSprop/batch_normalization_33/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_33/gamma/rms*
_output_shapes
:@*
dtype0
?
'RMSprop/batch_normalization_33/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'RMSprop/batch_normalization_33/beta/rms
?
;RMSprop/batch_normalization_33/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_33/beta/rms*
_output_shapes
:@*
dtype0
?
RMSprop/dense_94/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameRMSprop/dense_94/kernel/rms
?
/RMSprop/dense_94/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_94/kernel/rms* 
_output_shapes
:
??*
dtype0
?
(RMSprop/batch_normalization_34/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(RMSprop/batch_normalization_34/gamma/rms
?
<RMSprop/batch_normalization_34/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_34/gamma/rms*
_output_shapes	
:?*
dtype0
?
'RMSprop/batch_normalization_34/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_34/beta/rms
?
;RMSprop/batch_normalization_34/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_34/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_95/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameRMSprop/dense_95/kernel/rms
?
/RMSprop/dense_95/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_95/kernel/rms* 
_output_shapes
:
??*
dtype0
?
(RMSprop/batch_normalization_35/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(RMSprop/batch_normalization_35/gamma/rms
?
<RMSprop/batch_normalization_35/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_35/gamma/rms*
_output_shapes	
:?*
dtype0
?
'RMSprop/batch_normalization_35/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_35/beta/rms
?
;RMSprop/batch_normalization_35/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_35/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_96/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T*,
shared_nameRMSprop/dense_96/kernel/rms
?
/RMSprop/dense_96/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_96/kernel/rms*
_output_shapes
:	?T*
dtype0
?
(RMSprop/batch_normalization_36/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*9
shared_name*(RMSprop/batch_normalization_36/gamma/rms
?
<RMSprop/batch_normalization_36/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_36/gamma/rms*
_output_shapes
:T*
dtype0
?
'RMSprop/batch_normalization_36/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*8
shared_name)'RMSprop/batch_normalization_36/beta/rms
?
;RMSprop/batch_normalization_36/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_36/beta/rms*
_output_shapes
:T*
dtype0
?
RMSprop/dense_97/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*,
shared_nameRMSprop/dense_97/kernel/rms
?
/RMSprop/dense_97/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_97/kernel/rms*
_output_shapes

:T*
dtype0
?
RMSprop/dense_97/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_97/bias/rms
?
-RMSprop/dense_97/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_97/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ń
value??B?? B??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer_with_weights-8
layer-16
layer_with_weights-9
layer-17
layer-18
layer_with_weights-10
layer-19
layer_with_weights-11
layer-20
layer-21
layer-22
layer_with_weights-12
layer-23
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
^

%kernel
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?
*axis
	+gamma
,beta
-moving_mean
.moving_variance
/	variables
0trainable_variables
1regularization_losses
2	keras_api
R
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api
R
;	variables
<trainable_variables
=regularization_losses
>	keras_api
h

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
^

Ekernel
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?
Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
R
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
R
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
R
[	variables
\trainable_variables
]regularization_losses
^	keras_api
R
_	variables
`trainable_variables
aregularization_losses
b	keras_api
^

ckernel
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?
haxis
	igamma
jbeta
kmoving_mean
lmoving_variance
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
R
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
^

ukernel
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
?
zaxis
	{gamma
|beta
}moving_mean
~moving_variance
	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?iter

?decay
?learning_rate
?momentum
?rho
rms?
 rms?
%rms?
+rms?
,rms?
?rms?
@rms?
Erms?
Krms?
Lrms?
crms?
irms?
jrms?
urms?
{rms?
|rms??rms??rms??rms??rms??rms?
?
0
 1
%2
+3
,4
-5
.6
?7
@8
E9
K10
L11
M12
N13
c14
i15
j16
k17
l18
u19
{20
|21
}22
~23
?24
?25
?26
?27
?28
?29
?30
?
0
 1
%2
+3
,4
?5
@6
E7
K8
L9
c10
i11
j12
u13
{14
|15
?16
?17
?18
?19
?20
 
?
	variables
?layers
?non_trainable_variables
trainable_variables
?metrics
regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
][
VARIABLE_VALUEconv2d_125/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_125/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
?
!	variables
?layers
?non_trainable_variables
"trainable_variables
?metrics
#regularization_losses
?layer_metrics
 ?layer_regularization_losses
][
VARIABLE_VALUEconv2d_126/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE

%0

%0
 
?
&	variables
?layers
?non_trainable_variables
'trainable_variables
?metrics
(regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_32/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_32/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_32/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_32/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
-2
.3

+0
,1
 
?
/	variables
?layers
?non_trainable_variables
0trainable_variables
?metrics
1regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
3	variables
?layers
?non_trainable_variables
4trainable_variables
?metrics
5regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
7	variables
?layers
?non_trainable_variables
8trainable_variables
?metrics
9regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
;	variables
?layers
?non_trainable_variables
<trainable_variables
?metrics
=regularization_losses
?layer_metrics
 ?layer_regularization_losses
][
VARIABLE_VALUEconv2d_127/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_127/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
?
A	variables
?layers
?non_trainable_variables
Btrainable_variables
?metrics
Cregularization_losses
?layer_metrics
 ?layer_regularization_losses
][
VARIABLE_VALUEconv2d_128/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE

E0

E0
 
?
F	variables
?layers
?non_trainable_variables
Gtrainable_variables
?metrics
Hregularization_losses
?layer_metrics
 ?layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_33/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_33/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_33/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_33/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

K0
L1
M2
N3

K0
L1
 
?
O	variables
?layers
?non_trainable_variables
Ptrainable_variables
?metrics
Qregularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
S	variables
?layers
?non_trainable_variables
Ttrainable_variables
?metrics
Uregularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
W	variables
?layers
?non_trainable_variables
Xtrainable_variables
?metrics
Yregularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
[	variables
?layers
?non_trainable_variables
\trainable_variables
?metrics
]regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
_	variables
?layers
?non_trainable_variables
`trainable_variables
?metrics
aregularization_losses
?layer_metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_94/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

c0

c0
 
?
d	variables
?layers
?non_trainable_variables
etrainable_variables
?metrics
fregularization_losses
?layer_metrics
 ?layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_34/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_34/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_34/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_34/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

i0
j1
k2
l3

i0
j1
 
?
m	variables
?layers
?non_trainable_variables
ntrainable_variables
?metrics
oregularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
q	variables
?layers
?non_trainable_variables
rtrainable_variables
?metrics
sregularization_losses
?layer_metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_95/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE

u0

u0
 
?
v	variables
?layers
?non_trainable_variables
wtrainable_variables
?metrics
xregularization_losses
?layer_metrics
 ?layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_35/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_35/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_35/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_35/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

{0
|1
}2
~3

{0
|1
 
?
	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
\Z
VARIABLE_VALUEdense_96/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
hf
VARIABLE_VALUEbatch_normalization_36/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_36/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_36/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_36/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
 
 
 
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
\Z
VARIABLE_VALUEdense_97/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_97/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
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
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
H
-0
.1
M2
N3
k4
l5
}6
~7
?8
?9

?0
?1
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

-0
.1
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

M0
N1
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

k0
l1
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

}0
~1
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

?0
?1
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUERMSprop/conv2d_125/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_125/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_126/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_32/gamma/rmsSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_32/beta/rmsRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_127/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_127/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_128/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_33/gamma/rmsSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_33/beta/rmsRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_94/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_34/gamma/rmsSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_34/beta/rmsRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_95/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_35/gamma/rmsSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_35/beta/rmsRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_96/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_36/gamma/rmsTlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_36/beta/rmsSlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_97/kernel/rmsUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_97/bias/rmsSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_125_inputPlaceholder*0
_output_shapes
:??????????*
dtype0*%
shape:??????????
?	
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_125_inputconv2d_125/kernelconv2d_125/biasconv2d_126/kernelbatch_normalization_32/gammabatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_varianceconv2d_127/kernelconv2d_127/biasconv2d_128/kernelbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_variancedense_94/kernel&batch_normalization_34/moving_variancebatch_normalization_34/gamma"batch_normalization_34/moving_meanbatch_normalization_34/betadense_95/kernel&batch_normalization_35/moving_variancebatch_normalization_35/gamma"batch_normalization_35/moving_meanbatch_normalization_35/betadense_96/kernel&batch_normalization_36/moving_variancebatch_normalization_36/gamma"batch_normalization_36/moving_meanbatch_normalization_36/betadense_97/kerneldense_97/bias*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*A
_read_only_resource_inputs#
!	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_857544
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_125/kernel/Read/ReadVariableOp#conv2d_125/bias/Read/ReadVariableOp%conv2d_126/kernel/Read/ReadVariableOp0batch_normalization_32/gamma/Read/ReadVariableOp/batch_normalization_32/beta/Read/ReadVariableOp6batch_normalization_32/moving_mean/Read/ReadVariableOp:batch_normalization_32/moving_variance/Read/ReadVariableOp%conv2d_127/kernel/Read/ReadVariableOp#conv2d_127/bias/Read/ReadVariableOp%conv2d_128/kernel/Read/ReadVariableOp0batch_normalization_33/gamma/Read/ReadVariableOp/batch_normalization_33/beta/Read/ReadVariableOp6batch_normalization_33/moving_mean/Read/ReadVariableOp:batch_normalization_33/moving_variance/Read/ReadVariableOp#dense_94/kernel/Read/ReadVariableOp0batch_normalization_34/gamma/Read/ReadVariableOp/batch_normalization_34/beta/Read/ReadVariableOp6batch_normalization_34/moving_mean/Read/ReadVariableOp:batch_normalization_34/moving_variance/Read/ReadVariableOp#dense_95/kernel/Read/ReadVariableOp0batch_normalization_35/gamma/Read/ReadVariableOp/batch_normalization_35/beta/Read/ReadVariableOp6batch_normalization_35/moving_mean/Read/ReadVariableOp:batch_normalization_35/moving_variance/Read/ReadVariableOp#dense_96/kernel/Read/ReadVariableOp0batch_normalization_36/gamma/Read/ReadVariableOp/batch_normalization_36/beta/Read/ReadVariableOp6batch_normalization_36/moving_mean/Read/ReadVariableOp:batch_normalization_36/moving_variance/Read/ReadVariableOp#dense_97/kernel/Read/ReadVariableOp!dense_97/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1RMSprop/conv2d_125/kernel/rms/Read/ReadVariableOp/RMSprop/conv2d_125/bias/rms/Read/ReadVariableOp1RMSprop/conv2d_126/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_32/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_32/beta/rms/Read/ReadVariableOp1RMSprop/conv2d_127/kernel/rms/Read/ReadVariableOp/RMSprop/conv2d_127/bias/rms/Read/ReadVariableOp1RMSprop/conv2d_128/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_33/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_33/beta/rms/Read/ReadVariableOp/RMSprop/dense_94/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_34/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_34/beta/rms/Read/ReadVariableOp/RMSprop/dense_95/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_35/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_35/beta/rms/Read/ReadVariableOp/RMSprop/dense_96/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_36/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_36/beta/rms/Read/ReadVariableOp/RMSprop/dense_97/kernel/rms/Read/ReadVariableOp-RMSprop/dense_97/bias/rms/Read/ReadVariableOpConst*J
TinC
A2?	*
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
__inference__traced_save_859033
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_125/kernelconv2d_125/biasconv2d_126/kernelbatch_normalization_32/gammabatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_varianceconv2d_127/kernelconv2d_127/biasconv2d_128/kernelbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_variancedense_94/kernelbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_variancedense_95/kernelbatch_normalization_35/gammabatch_normalization_35/beta"batch_normalization_35/moving_mean&batch_normalization_35/moving_variancedense_96/kernelbatch_normalization_36/gammabatch_normalization_36/beta"batch_normalization_36/moving_mean&batch_normalization_36/moving_variancedense_97/kerneldense_97/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_125/kernel/rmsRMSprop/conv2d_125/bias/rmsRMSprop/conv2d_126/kernel/rms(RMSprop/batch_normalization_32/gamma/rms'RMSprop/batch_normalization_32/beta/rmsRMSprop/conv2d_127/kernel/rmsRMSprop/conv2d_127/bias/rmsRMSprop/conv2d_128/kernel/rms(RMSprop/batch_normalization_33/gamma/rms'RMSprop/batch_normalization_33/beta/rmsRMSprop/dense_94/kernel/rms(RMSprop/batch_normalization_34/gamma/rms'RMSprop/batch_normalization_34/beta/rmsRMSprop/dense_95/kernel/rms(RMSprop/batch_normalization_35/gamma/rms'RMSprop/batch_normalization_35/beta/rmsRMSprop/dense_96/kernel/rms(RMSprop/batch_normalization_36/gamma/rms'RMSprop/batch_normalization_36/beta/rmsRMSprop/dense_97/kernel/rmsRMSprop/dense_97/bias/rms*I
TinB
@2>*
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
"__inference__traced_restore_859226??
?
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_858773

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????T2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????T2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
F__inference_conv2d_128_layer_call_and_return_conditional_losses_856450

inputs8
conv2d_readvariableop_resource:@@
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????:@
 
_user_specified_nameinputs
?
?
D__inference_dense_96_layer_call_and_return_conditional_losses_856565

inputs1
matmul_readvariableop_resource:	?T
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
J
.__inference_activation_20_layer_call_fn_858196

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_8564102
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????y :W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
?
?
D__inference_dense_95_layer_call_and_return_conditional_losses_858564

inputs2
matmul_readvariableop_resource:
??
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_33_layer_call_fn_858287

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_8557352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_22_layer_call_and_return_conditional_losses_856529

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_856037

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?!
I__inference_sequential_43_layer_call_and_return_conditional_losses_858021

inputsC
)conv2d_125_conv2d_readvariableop_resource: 8
*conv2d_125_biasadd_readvariableop_resource: C
)conv2d_126_conv2d_readvariableop_resource:  <
.batch_normalization_32_readvariableop_resource: >
0batch_normalization_32_readvariableop_1_resource: M
?batch_normalization_32_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_127_conv2d_readvariableop_resource: @8
*conv2d_127_biasadd_readvariableop_resource:@C
)conv2d_128_conv2d_readvariableop_resource:@@<
.batch_normalization_33_readvariableop_resource:@>
0batch_normalization_33_readvariableop_1_resource:@M
?batch_normalization_33_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:@;
'dense_94_matmul_readvariableop_resource:
??M
>batch_normalization_34_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_34_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_34_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_34_batchnorm_readvariableop_resource:	?;
'dense_95_matmul_readvariableop_resource:
??M
>batch_normalization_35_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_35_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_35_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_35_batchnorm_readvariableop_resource:	?:
'dense_96_matmul_readvariableop_resource:	?TL
>batch_normalization_36_assignmovingavg_readvariableop_resource:TN
@batch_normalization_36_assignmovingavg_1_readvariableop_resource:TJ
<batch_normalization_36_batchnorm_mul_readvariableop_resource:TF
8batch_normalization_36_batchnorm_readvariableop_resource:T9
'dense_97_matmul_readvariableop_resource:T6
(dense_97_biasadd_readvariableop_resource:
identity??%batch_normalization_32/AssignNewValue?'batch_normalization_32/AssignNewValue_1?6batch_normalization_32/FusedBatchNormV3/ReadVariableOp?8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_32/ReadVariableOp?'batch_normalization_32/ReadVariableOp_1?%batch_normalization_33/AssignNewValue?'batch_normalization_33/AssignNewValue_1?6batch_normalization_33/FusedBatchNormV3/ReadVariableOp?8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_33/ReadVariableOp?'batch_normalization_33/ReadVariableOp_1?&batch_normalization_34/AssignMovingAvg?5batch_normalization_34/AssignMovingAvg/ReadVariableOp?(batch_normalization_34/AssignMovingAvg_1?7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_34/batchnorm/ReadVariableOp?3batch_normalization_34/batchnorm/mul/ReadVariableOp?&batch_normalization_35/AssignMovingAvg?5batch_normalization_35/AssignMovingAvg/ReadVariableOp?(batch_normalization_35/AssignMovingAvg_1?7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_35/batchnorm/ReadVariableOp?3batch_normalization_35/batchnorm/mul/ReadVariableOp?&batch_normalization_36/AssignMovingAvg?5batch_normalization_36/AssignMovingAvg/ReadVariableOp?(batch_normalization_36/AssignMovingAvg_1?7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_36/batchnorm/ReadVariableOp?3batch_normalization_36/batchnorm/mul/ReadVariableOp?!conv2d_125/BiasAdd/ReadVariableOp? conv2d_125/Conv2D/ReadVariableOp?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp? conv2d_126/Conv2D/ReadVariableOp?!conv2d_127/BiasAdd/ReadVariableOp? conv2d_127/Conv2D/ReadVariableOp?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp? conv2d_128/Conv2D/ReadVariableOp?dense_94/MatMul/ReadVariableOp?dense_95/MatMul/ReadVariableOp?dense_96/MatMul/ReadVariableOp?dense_97/BiasAdd/ReadVariableOp?dense_97/MatMul/ReadVariableOp?
 conv2d_125/Conv2D/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_125/Conv2D/ReadVariableOp?
conv2d_125/Conv2DConv2Dinputs(conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2
conv2d_125/Conv2D?
!conv2d_125/BiasAdd/ReadVariableOpReadVariableOp*conv2d_125_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_125/BiasAdd/ReadVariableOp?
conv2d_125/BiasAddBiasAddconv2d_125/Conv2D:output:0)conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2
conv2d_125/BiasAdd?
conv2d_125/ReluReluconv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
conv2d_125/Relu?
 conv2d_126/Conv2D/ReadVariableOpReadVariableOp)conv2d_126_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_126/Conv2D/ReadVariableOp?
conv2d_126/Conv2DConv2Dconv2d_125/Relu:activations:0(conv2d_126/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2
conv2d_126/Conv2D?
%batch_normalization_32/ReadVariableOpReadVariableOp.batch_normalization_32_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_32/ReadVariableOp?
'batch_normalization_32/ReadVariableOp_1ReadVariableOp0batch_normalization_32_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_32/ReadVariableOp_1?
6batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_32/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_32/FusedBatchNormV3FusedBatchNormV3conv2d_126/Conv2D:output:0-batch_normalization_32/ReadVariableOp:value:0/batch_normalization_32/ReadVariableOp_1:value:0>batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_32/FusedBatchNormV3?
%batch_normalization_32/AssignNewValueAssignVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource4batch_normalization_32/FusedBatchNormV3:batch_mean:07^batch_normalization_32/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_32/AssignNewValue?
'batch_normalization_32/AssignNewValue_1AssignVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_32/FusedBatchNormV3:batch_variance:09^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_32/AssignNewValue_1?
activation_20/ReluRelu+batch_normalization_32/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2
activation_20/Relu?
max_pooling2d_107/MaxPoolMaxPool activation_20/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_107/MaxPooly
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_27/dropout/Const?
dropout_27/dropout/MulMul"max_pooling2d_107/MaxPool:output:0!dropout_27/dropout/Const:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout_27/dropout/Mul?
dropout_27/dropout/ShapeShape"max_pooling2d_107/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_27/dropout/Shape?
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????<	 *
dtype021
/dropout_27/dropout/random_uniform/RandomUniform?
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_27/dropout/GreaterEqual/y?
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<	 2!
dropout_27/dropout/GreaterEqual?
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<	 2
dropout_27/dropout/Cast?
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<	 2
dropout_27/dropout/Mul_1?
 conv2d_127/Conv2D/ReadVariableOpReadVariableOp)conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_127/Conv2D/ReadVariableOp?
conv2d_127/Conv2DConv2Ddropout_27/dropout/Mul_1:z:0(conv2d_127/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2
conv2d_127/Conv2D?
!conv2d_127/BiasAdd/ReadVariableOpReadVariableOp*conv2d_127_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_127/BiasAdd/ReadVariableOp?
conv2d_127/BiasAddBiasAddconv2d_127/Conv2D:output:0)conv2d_127/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2
conv2d_127/BiasAdd?
conv2d_127/ReluReluconv2d_127/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
conv2d_127/Relu?
 conv2d_128/Conv2D/ReadVariableOpReadVariableOp)conv2d_128_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_128/Conv2D/ReadVariableOp?
conv2d_128/Conv2DConv2Dconv2d_127/Relu:activations:0(conv2d_128/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
conv2d_128/Conv2D?
%batch_normalization_33/ReadVariableOpReadVariableOp.batch_normalization_33_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_33/ReadVariableOp?
'batch_normalization_33/ReadVariableOp_1ReadVariableOp0batch_normalization_33_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_33/ReadVariableOp_1?
6batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_33/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_33/FusedBatchNormV3FusedBatchNormV3conv2d_128/Conv2D:output:0-batch_normalization_33/ReadVariableOp:value:0/batch_normalization_33/ReadVariableOp_1:value:0>batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_33/FusedBatchNormV3?
%batch_normalization_33/AssignNewValueAssignVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource4batch_normalization_33/FusedBatchNormV3:batch_mean:07^batch_normalization_33/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_33/AssignNewValue?
'batch_normalization_33/AssignNewValue_1AssignVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_33/FusedBatchNormV3:batch_variance:09^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_33/AssignNewValue_1?
activation_21/ReluRelu+batch_normalization_33/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2
activation_21/Relu?
max_pooling2d_108/MaxPoolMaxPool activation_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_108/MaxPooly
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_28/dropout/Const?
dropout_28/dropout/MulMul"max_pooling2d_108/MaxPool:output:0!dropout_28/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_28/dropout/Mul?
dropout_28/dropout/ShapeShape"max_pooling2d_108/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_28/dropout/Shape?
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_28/dropout/random_uniform/RandomUniform?
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_28/dropout/GreaterEqual/y?
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_28/dropout/GreaterEqual?
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_28/dropout/Cast?
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_28/dropout/Mul_1u
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_41/Const?
flatten_41/ReshapeReshapedropout_28/dropout/Mul_1:z:0flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_41/Reshape?
dense_94/MatMul/ReadVariableOpReadVariableOp'dense_94_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_94/MatMul/ReadVariableOp?
dense_94/MatMulMatMulflatten_41/Reshape:output:0&dense_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_94/MatMul?
5batch_normalization_34/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_34/moments/mean/reduction_indices?
#batch_normalization_34/moments/meanMeandense_94/MatMul:product:0>batch_normalization_34/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_34/moments/mean?
+batch_normalization_34/moments/StopGradientStopGradient,batch_normalization_34/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_34/moments/StopGradient?
0batch_normalization_34/moments/SquaredDifferenceSquaredDifferencedense_94/MatMul:product:04batch_normalization_34/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_34/moments/SquaredDifference?
9batch_normalization_34/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_34/moments/variance/reduction_indices?
'batch_normalization_34/moments/varianceMean4batch_normalization_34/moments/SquaredDifference:z:0Bbatch_normalization_34/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_34/moments/variance?
&batch_normalization_34/moments/SqueezeSqueeze,batch_normalization_34/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_34/moments/Squeeze?
(batch_normalization_34/moments/Squeeze_1Squeeze0batch_normalization_34/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_34/moments/Squeeze_1?
,batch_normalization_34/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_34/AssignMovingAvg/decay?
5batch_normalization_34/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_34_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_34/AssignMovingAvg/ReadVariableOp?
*batch_normalization_34/AssignMovingAvg/subSub=batch_normalization_34/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_34/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_34/AssignMovingAvg/sub?
*batch_normalization_34/AssignMovingAvg/mulMul.batch_normalization_34/AssignMovingAvg/sub:z:05batch_normalization_34/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_34/AssignMovingAvg/mul?
&batch_normalization_34/AssignMovingAvgAssignSubVariableOp>batch_normalization_34_assignmovingavg_readvariableop_resource.batch_normalization_34/AssignMovingAvg/mul:z:06^batch_normalization_34/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_34/AssignMovingAvg?
.batch_normalization_34/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_34/AssignMovingAvg_1/decay?
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_34_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_34/AssignMovingAvg_1/subSub?batch_normalization_34/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_34/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_34/AssignMovingAvg_1/sub?
,batch_normalization_34/AssignMovingAvg_1/mulMul0batch_normalization_34/AssignMovingAvg_1/sub:z:07batch_normalization_34/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_34/AssignMovingAvg_1/mul?
(batch_normalization_34/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_34_assignmovingavg_1_readvariableop_resource0batch_normalization_34/AssignMovingAvg_1/mul:z:08^batch_normalization_34/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_34/AssignMovingAvg_1?
&batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_34/batchnorm/add/y?
$batch_normalization_34/batchnorm/addAddV21batch_normalization_34/moments/Squeeze_1:output:0/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_34/batchnorm/add?
&batch_normalization_34/batchnorm/RsqrtRsqrt(batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_34/batchnorm/Rsqrt?
3batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_34/batchnorm/mul/ReadVariableOp?
$batch_normalization_34/batchnorm/mulMul*batch_normalization_34/batchnorm/Rsqrt:y:0;batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_34/batchnorm/mul?
&batch_normalization_34/batchnorm/mul_1Muldense_94/MatMul:product:0(batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_34/batchnorm/mul_1?
&batch_normalization_34/batchnorm/mul_2Mul/batch_normalization_34/moments/Squeeze:output:0(batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_34/batchnorm/mul_2?
/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_34/batchnorm/ReadVariableOp?
$batch_normalization_34/batchnorm/subSub7batch_normalization_34/batchnorm/ReadVariableOp:value:0*batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_34/batchnorm/sub?
&batch_normalization_34/batchnorm/add_1AddV2*batch_normalization_34/batchnorm/mul_1:z:0(batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_34/batchnorm/add_1?
activation_22/ReluRelu*batch_normalization_34/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_22/Relu?
dense_95/MatMul/ReadVariableOpReadVariableOp'dense_95_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_95/MatMul/ReadVariableOp?
dense_95/MatMulMatMul activation_22/Relu:activations:0&dense_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_95/MatMul?
5batch_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_35/moments/mean/reduction_indices?
#batch_normalization_35/moments/meanMeandense_95/MatMul:product:0>batch_normalization_35/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_35/moments/mean?
+batch_normalization_35/moments/StopGradientStopGradient,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_35/moments/StopGradient?
0batch_normalization_35/moments/SquaredDifferenceSquaredDifferencedense_95/MatMul:product:04batch_normalization_35/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_35/moments/SquaredDifference?
9batch_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_35/moments/variance/reduction_indices?
'batch_normalization_35/moments/varianceMean4batch_normalization_35/moments/SquaredDifference:z:0Bbatch_normalization_35/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_35/moments/variance?
&batch_normalization_35/moments/SqueezeSqueeze,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_35/moments/Squeeze?
(batch_normalization_35/moments/Squeeze_1Squeeze0batch_normalization_35/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_35/moments/Squeeze_1?
,batch_normalization_35/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_35/AssignMovingAvg/decay?
5batch_normalization_35/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_35/AssignMovingAvg/ReadVariableOp?
*batch_normalization_35/AssignMovingAvg/subSub=batch_normalization_35/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_35/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_35/AssignMovingAvg/sub?
*batch_normalization_35/AssignMovingAvg/mulMul.batch_normalization_35/AssignMovingAvg/sub:z:05batch_normalization_35/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_35/AssignMovingAvg/mul?
&batch_normalization_35/AssignMovingAvgAssignSubVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource.batch_normalization_35/AssignMovingAvg/mul:z:06^batch_normalization_35/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_35/AssignMovingAvg?
.batch_normalization_35/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_35/AssignMovingAvg_1/decay?
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_35/AssignMovingAvg_1/subSub?batch_normalization_35/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_35/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_35/AssignMovingAvg_1/sub?
,batch_normalization_35/AssignMovingAvg_1/mulMul0batch_normalization_35/AssignMovingAvg_1/sub:z:07batch_normalization_35/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_35/AssignMovingAvg_1/mul?
(batch_normalization_35/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource0batch_normalization_35/AssignMovingAvg_1/mul:z:08^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_35/AssignMovingAvg_1?
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_35/batchnorm/add/y?
$batch_normalization_35/batchnorm/addAddV21batch_normalization_35/moments/Squeeze_1:output:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_35/batchnorm/add?
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_35/batchnorm/Rsqrt?
3batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_35/batchnorm/mul/ReadVariableOp?
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:0;batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_35/batchnorm/mul?
&batch_normalization_35/batchnorm/mul_1Muldense_95/MatMul:product:0(batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_35/batchnorm/mul_1?
&batch_normalization_35/batchnorm/mul_2Mul/batch_normalization_35/moments/Squeeze:output:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_35/batchnorm/mul_2?
/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_35/batchnorm/ReadVariableOp?
$batch_normalization_35/batchnorm/subSub7batch_normalization_35/batchnorm/ReadVariableOp:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_35/batchnorm/sub?
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_35/batchnorm/add_1?
activation_23/ReluRelu*batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_23/Relu?
dense_96/MatMul/ReadVariableOpReadVariableOp'dense_96_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02 
dense_96/MatMul/ReadVariableOp?
dense_96/MatMulMatMul activation_23/Relu:activations:0&dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_96/MatMul?
5batch_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_36/moments/mean/reduction_indices?
#batch_normalization_36/moments/meanMeandense_96/MatMul:product:0>batch_normalization_36/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2%
#batch_normalization_36/moments/mean?
+batch_normalization_36/moments/StopGradientStopGradient,batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes

:T2-
+batch_normalization_36/moments/StopGradient?
0batch_normalization_36/moments/SquaredDifferenceSquaredDifferencedense_96/MatMul:product:04batch_normalization_36/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????T22
0batch_normalization_36/moments/SquaredDifference?
9batch_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_36/moments/variance/reduction_indices?
'batch_normalization_36/moments/varianceMean4batch_normalization_36/moments/SquaredDifference:z:0Bbatch_normalization_36/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2)
'batch_normalization_36/moments/variance?
&batch_normalization_36/moments/SqueezeSqueeze,batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2(
&batch_normalization_36/moments/Squeeze?
(batch_normalization_36/moments/Squeeze_1Squeeze0batch_normalization_36/moments/variance:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2*
(batch_normalization_36/moments/Squeeze_1?
,batch_normalization_36/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_36/AssignMovingAvg/decay?
5batch_normalization_36/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_36_assignmovingavg_readvariableop_resource*
_output_shapes
:T*
dtype027
5batch_normalization_36/AssignMovingAvg/ReadVariableOp?
*batch_normalization_36/AssignMovingAvg/subSub=batch_normalization_36/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_36/moments/Squeeze:output:0*
T0*
_output_shapes
:T2,
*batch_normalization_36/AssignMovingAvg/sub?
*batch_normalization_36/AssignMovingAvg/mulMul.batch_normalization_36/AssignMovingAvg/sub:z:05batch_normalization_36/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:T2,
*batch_normalization_36/AssignMovingAvg/mul?
&batch_normalization_36/AssignMovingAvgAssignSubVariableOp>batch_normalization_36_assignmovingavg_readvariableop_resource.batch_normalization_36/AssignMovingAvg/mul:z:06^batch_normalization_36/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_36/AssignMovingAvg?
.batch_normalization_36/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_36/AssignMovingAvg_1/decay?
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_36_assignmovingavg_1_readvariableop_resource*
_output_shapes
:T*
dtype029
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_36/AssignMovingAvg_1/subSub?batch_normalization_36/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_36/moments/Squeeze_1:output:0*
T0*
_output_shapes
:T2.
,batch_normalization_36/AssignMovingAvg_1/sub?
,batch_normalization_36/AssignMovingAvg_1/mulMul0batch_normalization_36/AssignMovingAvg_1/sub:z:07batch_normalization_36/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:T2.
,batch_normalization_36/AssignMovingAvg_1/mul?
(batch_normalization_36/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_36_assignmovingavg_1_readvariableop_resource0batch_normalization_36/AssignMovingAvg_1/mul:z:08^batch_normalization_36/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_36/AssignMovingAvg_1?
&batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_36/batchnorm/add/y?
$batch_normalization_36/batchnorm/addAddV21batch_normalization_36/moments/Squeeze_1:output:0/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes
:T2&
$batch_normalization_36/batchnorm/add?
&batch_normalization_36/batchnorm/RsqrtRsqrt(batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_36/batchnorm/Rsqrt?
3batch_normalization_36/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_36_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype025
3batch_normalization_36/batchnorm/mul/ReadVariableOp?
$batch_normalization_36/batchnorm/mulMul*batch_normalization_36/batchnorm/Rsqrt:y:0;batch_normalization_36/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2&
$batch_normalization_36/batchnorm/mul?
&batch_normalization_36/batchnorm/mul_1Muldense_96/MatMul:product:0(batch_normalization_36/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_36/batchnorm/mul_1?
&batch_normalization_36/batchnorm/mul_2Mul/batch_normalization_36/moments/Squeeze:output:0(batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_36/batchnorm/mul_2?
/batch_normalization_36/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_36_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype021
/batch_normalization_36/batchnorm/ReadVariableOp?
$batch_normalization_36/batchnorm/subSub7batch_normalization_36/batchnorm/ReadVariableOp:value:0*batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2&
$batch_normalization_36/batchnorm/sub?
&batch_normalization_36/batchnorm/add_1AddV2*batch_normalization_36/batchnorm/mul_1:z:0(batch_normalization_36/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_36/batchnorm/add_1?
activation_24/ReluRelu*batch_normalization_36/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2
activation_24/Reluy
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_29/dropout/Const?
dropout_29/dropout/MulMul activation_24/Relu:activations:0!dropout_29/dropout/Const:output:0*
T0*'
_output_shapes
:?????????T2
dropout_29/dropout/Mul?
dropout_29/dropout/ShapeShape activation_24/Relu:activations:0*
T0*
_output_shapes
:2
dropout_29/dropout/Shape?
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????T*
dtype021
/dropout_29/dropout/random_uniform/RandomUniform?
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_29/dropout/GreaterEqual/y?
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????T2!
dropout_29/dropout/GreaterEqual?
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????T2
dropout_29/dropout/Cast?
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????T2
dropout_29/dropout/Mul_1?
dense_97/MatMul/ReadVariableOpReadVariableOp'dense_97_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02 
dense_97/MatMul/ReadVariableOp?
dense_97/MatMulMatMuldropout_29/dropout/Mul_1:z:0&dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/MatMul?
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_97/BiasAdd/ReadVariableOp?
dense_97/BiasAddBiasAdddense_97/MatMul:product:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/BiasAdd|
dense_97/SoftmaxSoftmaxdense_97/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_97/Softmax?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentitydense_97/Softmax:softmax:0&^batch_normalization_32/AssignNewValue(^batch_normalization_32/AssignNewValue_17^batch_normalization_32/FusedBatchNormV3/ReadVariableOp9^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_32/ReadVariableOp(^batch_normalization_32/ReadVariableOp_1&^batch_normalization_33/AssignNewValue(^batch_normalization_33/AssignNewValue_17^batch_normalization_33/FusedBatchNormV3/ReadVariableOp9^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_33/ReadVariableOp(^batch_normalization_33/ReadVariableOp_1'^batch_normalization_34/AssignMovingAvg6^batch_normalization_34/AssignMovingAvg/ReadVariableOp)^batch_normalization_34/AssignMovingAvg_18^batch_normalization_34/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_34/batchnorm/ReadVariableOp4^batch_normalization_34/batchnorm/mul/ReadVariableOp'^batch_normalization_35/AssignMovingAvg6^batch_normalization_35/AssignMovingAvg/ReadVariableOp)^batch_normalization_35/AssignMovingAvg_18^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_35/batchnorm/ReadVariableOp4^batch_normalization_35/batchnorm/mul/ReadVariableOp'^batch_normalization_36/AssignMovingAvg6^batch_normalization_36/AssignMovingAvg/ReadVariableOp)^batch_normalization_36/AssignMovingAvg_18^batch_normalization_36/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_36/batchnorm/ReadVariableOp4^batch_normalization_36/batchnorm/mul/ReadVariableOp"^conv2d_125/BiasAdd/ReadVariableOp!^conv2d_125/Conv2D/ReadVariableOp4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp!^conv2d_126/Conv2D/ReadVariableOp"^conv2d_127/BiasAdd/ReadVariableOp!^conv2d_127/Conv2D/ReadVariableOp4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp!^conv2d_128/Conv2D/ReadVariableOp^dense_94/MatMul/ReadVariableOp^dense_95/MatMul/ReadVariableOp^dense_96/MatMul/ReadVariableOp ^dense_97/BiasAdd/ReadVariableOp^dense_97/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_32/AssignNewValue%batch_normalization_32/AssignNewValue2R
'batch_normalization_32/AssignNewValue_1'batch_normalization_32/AssignNewValue_12p
6batch_normalization_32/FusedBatchNormV3/ReadVariableOp6batch_normalization_32/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_18batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_32/ReadVariableOp%batch_normalization_32/ReadVariableOp2R
'batch_normalization_32/ReadVariableOp_1'batch_normalization_32/ReadVariableOp_12N
%batch_normalization_33/AssignNewValue%batch_normalization_33/AssignNewValue2R
'batch_normalization_33/AssignNewValue_1'batch_normalization_33/AssignNewValue_12p
6batch_normalization_33/FusedBatchNormV3/ReadVariableOp6batch_normalization_33/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_18batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_33/ReadVariableOp%batch_normalization_33/ReadVariableOp2R
'batch_normalization_33/ReadVariableOp_1'batch_normalization_33/ReadVariableOp_12P
&batch_normalization_34/AssignMovingAvg&batch_normalization_34/AssignMovingAvg2n
5batch_normalization_34/AssignMovingAvg/ReadVariableOp5batch_normalization_34/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_34/AssignMovingAvg_1(batch_normalization_34/AssignMovingAvg_12r
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_34/batchnorm/ReadVariableOp/batch_normalization_34/batchnorm/ReadVariableOp2j
3batch_normalization_34/batchnorm/mul/ReadVariableOp3batch_normalization_34/batchnorm/mul/ReadVariableOp2P
&batch_normalization_35/AssignMovingAvg&batch_normalization_35/AssignMovingAvg2n
5batch_normalization_35/AssignMovingAvg/ReadVariableOp5batch_normalization_35/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_35/AssignMovingAvg_1(batch_normalization_35/AssignMovingAvg_12r
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_35/batchnorm/ReadVariableOp/batch_normalization_35/batchnorm/ReadVariableOp2j
3batch_normalization_35/batchnorm/mul/ReadVariableOp3batch_normalization_35/batchnorm/mul/ReadVariableOp2P
&batch_normalization_36/AssignMovingAvg&batch_normalization_36/AssignMovingAvg2n
5batch_normalization_36/AssignMovingAvg/ReadVariableOp5batch_normalization_36/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_36/AssignMovingAvg_1(batch_normalization_36/AssignMovingAvg_12r
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_36/batchnorm/ReadVariableOp/batch_normalization_36/batchnorm/ReadVariableOp2j
3batch_normalization_36/batchnorm/mul/ReadVariableOp3batch_normalization_36/batchnorm/mul/ReadVariableOp2F
!conv2d_125/BiasAdd/ReadVariableOp!conv2d_125/BiasAdd/ReadVariableOp2D
 conv2d_125/Conv2D/ReadVariableOp conv2d_125/Conv2D/ReadVariableOp2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_126/Conv2D/ReadVariableOp conv2d_126/Conv2D/ReadVariableOp2F
!conv2d_127/BiasAdd/ReadVariableOp!conv2d_127/BiasAdd/ReadVariableOp2D
 conv2d_127/Conv2D/ReadVariableOp conv2d_127/Conv2D/ReadVariableOp2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_128/Conv2D/ReadVariableOp conv2d_128/Conv2D/ReadVariableOp2@
dense_94/MatMul/ReadVariableOpdense_94/MatMul/ReadVariableOp2@
dense_95/MatMul/ReadVariableOpdense_95/MatMul/ReadVariableOp2@
dense_96/MatMul/ReadVariableOpdense_96/MatMul/ReadVariableOp2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2@
dense_97/MatMul/ReadVariableOpdense_97/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_94_layer_call_and_return_conditional_losses_856511

inputs2
matmul_readvariableop_resource:
??
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_43_layer_call_and_return_conditional_losses_857457
conv2d_125_input+
conv2d_125_857358: 
conv2d_125_857360: +
conv2d_126_857363:  +
batch_normalization_32_857366: +
batch_normalization_32_857368: +
batch_normalization_32_857370: +
batch_normalization_32_857372: +
conv2d_127_857378: @
conv2d_127_857380:@+
conv2d_128_857383:@@+
batch_normalization_33_857386:@+
batch_normalization_33_857388:@+
batch_normalization_33_857390:@+
batch_normalization_33_857392:@#
dense_94_857399:
??,
batch_normalization_34_857402:	?,
batch_normalization_34_857404:	?,
batch_normalization_34_857406:	?,
batch_normalization_34_857408:	?#
dense_95_857412:
??,
batch_normalization_35_857415:	?,
batch_normalization_35_857417:	?,
batch_normalization_35_857419:	?,
batch_normalization_35_857421:	?"
dense_96_857425:	?T+
batch_normalization_36_857428:T+
batch_normalization_36_857430:T+
batch_normalization_36_857432:T+
batch_normalization_36_857434:T!
dense_97_857439:T
dense_97_857441:
identity??.batch_normalization_32/StatefulPartitionedCall?.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?.batch_normalization_36/StatefulPartitionedCall?"conv2d_125/StatefulPartitionedCall?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?"conv2d_126/StatefulPartitionedCall?"conv2d_127/StatefulPartitionedCall?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?"conv2d_128/StatefulPartitionedCall? dense_94/StatefulPartitionedCall? dense_95/StatefulPartitionedCall? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?"dropout_27/StatefulPartitionedCall?"dropout_28/StatefulPartitionedCall?"dropout_29/StatefulPartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCallconv2d_125_inputconv2d_125_857358conv2d_125_857360*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????} *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_8563612$
"conv2d_125/StatefulPartitionedCall?
"conv2d_126/StatefulPartitionedCallStatefulPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0conv2d_126_857363*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_8563742$
"conv2d_126/StatefulPartitionedCall?
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall+conv2d_126/StatefulPartitionedCall:output:0batch_normalization_32_857366batch_normalization_32_857368batch_normalization_32_857370batch_normalization_32_857372*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_85692120
.batch_normalization_32/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_8564102
activation_20/PartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_8557072#
!max_pooling2d_107/PartitionedCall?
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_8568792$
"dropout_27/StatefulPartitionedCall?
"conv2d_127/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0conv2d_127_857378conv2d_127_857380*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_8564372$
"conv2d_127/StatefulPartitionedCall?
"conv2d_128/StatefulPartitionedCallStatefulPartitionedCall+conv2d_127/StatefulPartitionedCall:output:0conv2d_128_857383*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_128_layer_call_and_return_conditional_losses_8564502$
"conv2d_128/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall+conv2d_128/StatefulPartitionedCall:output:0batch_normalization_33_857386batch_normalization_33_857388batch_normalization_33_857390batch_normalization_33_857392*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_85683020
.batch_normalization_33/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_8564862
activation_21/PartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_8558452#
!max_pooling2d_108/PartitionedCall?
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_8567882$
"dropout_28/StatefulPartitionedCall?
flatten_41/PartitionedCallPartitionedCall+dropout_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_8565022
flatten_41/PartitionedCall?
 dense_94/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_94_857399*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_94_layer_call_and_return_conditional_losses_8565112"
 dense_94/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall)dense_94/StatefulPartitionedCall:output:0batch_normalization_34_857402batch_normalization_34_857404batch_normalization_34_857406batch_normalization_34_857408*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_85593520
.batch_normalization_34/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_8565292
activation_22/PartitionedCall?
 dense_95/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_95_857412*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_95_layer_call_and_return_conditional_losses_8565382"
 dense_95/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall)dense_95/StatefulPartitionedCall:output:0batch_normalization_35_857415batch_normalization_35_857417batch_normalization_35_857419batch_normalization_35_857421*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_85609720
.batch_normalization_35/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_8565562
activation_23/PartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0dense_96_857425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_96_layer_call_and_return_conditional_losses_8565652"
 dense_96/StatefulPartitionedCall?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0batch_normalization_36_857428batch_normalization_36_857430batch_normalization_36_857432batch_normalization_36_857434*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_85625920
.batch_normalization_36/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_24_layer_call_and_return_conditional_losses_8565832
activation_24/PartitionedCall?
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_8567172$
"dropout_29/StatefulPartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_97_857439dense_97_857441*
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
D__inference_dense_97_layer_call_and_return_conditional_losses_8566032"
 dense_97/StatefulPartitionedCall?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_125_857358*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_127_857378*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall/^batch_normalization_36/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp#^conv2d_126/StatefulPartitionedCall#^conv2d_127/StatefulPartitionedCall4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp#^conv2d_128/StatefulPartitionedCall!^dense_94/StatefulPartitionedCall!^dense_95/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_126/StatefulPartitionedCall"conv2d_126/StatefulPartitionedCall2H
"conv2d_127/StatefulPartitionedCall"conv2d_127/StatefulPartitionedCall2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_128/StatefulPartitionedCall"conv2d_128/StatefulPartitionedCall2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_125_input
?
?
7__inference_batch_normalization_36_layer_call_fn_858694

inputs
unknown:T
	unknown_0:T
	unknown_1:T
	unknown_2:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_8562592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
.__inference_sequential_43_layer_call_fn_856687
conv2d_125_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@#
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:
??

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?T

unknown_24:T

unknown_25:T

unknown_26:T

unknown_27:T

unknown_28:T

unknown_29:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_125_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*A
_read_only_resource_inputs#
!	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_43_layer_call_and_return_conditional_losses_8566222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_125_input
?
J
.__inference_activation_21_layer_call_fn_858403

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_8564862
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8@:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
?
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_856418

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????<	 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????<	 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<	 :W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?

)__inference_dense_95_layer_call_fn_858557

inputs
unknown:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_95_layer_call_and_return_conditional_losses_8565382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_34_layer_call_fn_858486

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_8559352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_127_layer_call_fn_858243

inputs!
unknown: @
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
:?????????:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_8564372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????:@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<	 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_858506

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
J
.__inference_activation_22_layer_call_fn_858545

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_8565292
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_125_layer_call_fn_858036

inputs!
unknown: 
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
:?????????} *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_8563612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????} 2

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
?
?
7__inference_batch_normalization_32_layer_call_fn_858119

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_8569212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????y : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
??
?
I__inference_sequential_43_layer_call_and_return_conditional_losses_856622

inputs+
conv2d_125_856362: 
conv2d_125_856364: +
conv2d_126_856375:  +
batch_normalization_32_856396: +
batch_normalization_32_856398: +
batch_normalization_32_856400: +
batch_normalization_32_856402: +
conv2d_127_856438: @
conv2d_127_856440:@+
conv2d_128_856451:@@+
batch_normalization_33_856472:@+
batch_normalization_33_856474:@+
batch_normalization_33_856476:@+
batch_normalization_33_856478:@#
dense_94_856512:
??,
batch_normalization_34_856515:	?,
batch_normalization_34_856517:	?,
batch_normalization_34_856519:	?,
batch_normalization_34_856521:	?#
dense_95_856539:
??,
batch_normalization_35_856542:	?,
batch_normalization_35_856544:	?,
batch_normalization_35_856546:	?,
batch_normalization_35_856548:	?"
dense_96_856566:	?T+
batch_normalization_36_856569:T+
batch_normalization_36_856571:T+
batch_normalization_36_856573:T+
batch_normalization_36_856575:T!
dense_97_856604:T
dense_97_856606:
identity??.batch_normalization_32/StatefulPartitionedCall?.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?.batch_normalization_36/StatefulPartitionedCall?"conv2d_125/StatefulPartitionedCall?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?"conv2d_126/StatefulPartitionedCall?"conv2d_127/StatefulPartitionedCall?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?"conv2d_128/StatefulPartitionedCall? dense_94/StatefulPartitionedCall? dense_95/StatefulPartitionedCall? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_125_856362conv2d_125_856364*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????} *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_8563612$
"conv2d_125/StatefulPartitionedCall?
"conv2d_126/StatefulPartitionedCallStatefulPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0conv2d_126_856375*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_8563742$
"conv2d_126/StatefulPartitionedCall?
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall+conv2d_126/StatefulPartitionedCall:output:0batch_normalization_32_856396batch_normalization_32_856398batch_normalization_32_856400batch_normalization_32_856402*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_85639520
.batch_normalization_32/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_8564102
activation_20/PartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_8557072#
!max_pooling2d_107/PartitionedCall?
dropout_27/PartitionedCallPartitionedCall*max_pooling2d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_8564182
dropout_27/PartitionedCall?
"conv2d_127/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0conv2d_127_856438conv2d_127_856440*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_8564372$
"conv2d_127/StatefulPartitionedCall?
"conv2d_128/StatefulPartitionedCallStatefulPartitionedCall+conv2d_127/StatefulPartitionedCall:output:0conv2d_128_856451*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_128_layer_call_and_return_conditional_losses_8564502$
"conv2d_128/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall+conv2d_128/StatefulPartitionedCall:output:0batch_normalization_33_856472batch_normalization_33_856474batch_normalization_33_856476batch_normalization_33_856478*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_85647120
.batch_normalization_33/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_8564862
activation_21/PartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_8558452#
!max_pooling2d_108/PartitionedCall?
dropout_28/PartitionedCallPartitionedCall*max_pooling2d_108/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_8564942
dropout_28/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall#dropout_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_8565022
flatten_41/PartitionedCall?
 dense_94/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_94_856512*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_94_layer_call_and_return_conditional_losses_8565112"
 dense_94/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall)dense_94/StatefulPartitionedCall:output:0batch_normalization_34_856515batch_normalization_34_856517batch_normalization_34_856519batch_normalization_34_856521*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_85587520
.batch_normalization_34/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_8565292
activation_22/PartitionedCall?
 dense_95/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_95_856539*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_95_layer_call_and_return_conditional_losses_8565382"
 dense_95/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall)dense_95/StatefulPartitionedCall:output:0batch_normalization_35_856542batch_normalization_35_856544batch_normalization_35_856546batch_normalization_35_856548*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_85603720
.batch_normalization_35/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_8565562
activation_23/PartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0dense_96_856566*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_96_layer_call_and_return_conditional_losses_8565652"
 dense_96/StatefulPartitionedCall?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0batch_normalization_36_856569batch_normalization_36_856571batch_normalization_36_856573batch_normalization_36_856575*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_85619920
.batch_normalization_36/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_24_layer_call_and_return_conditional_losses_8565832
activation_24/PartitionedCall?
dropout_29/PartitionedCallPartitionedCall&activation_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_8565902
dropout_29/PartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_97_856604dense_97_856606*
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
D__inference_dense_97_layer_call_and_return_conditional_losses_8566032"
 dense_97/StatefulPartitionedCall?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_125_856362*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_127_856438*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall/^batch_normalization_36/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp#^conv2d_126/StatefulPartitionedCall#^conv2d_127/StatefulPartitionedCall4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp#^conv2d_128/StatefulPartitionedCall!^dense_94/StatefulPartitionedCall!^dense_95/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_126/StatefulPartitionedCall"conv2d_126/StatefulPartitionedCall2H
"conv2d_127/StatefulPartitionedCall"conv2d_127/StatefulPartitionedCall2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_128/StatefulPartitionedCall"conv2d_128/StatefulPartitionedCall2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_855735

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_855875

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_33_layer_call_fn_858300

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_8557792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_20_layer_call_and_return_conditional_losses_858201

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????y 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????y :W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_35_layer_call_fn_858577

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_8560372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_858423

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
J
.__inference_activation_24_layer_call_fn_858753

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_24_layer_call_and_return_conditional_losses_8565832
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
b
F__inference_flatten_41_layer_call_and_return_conditional_losses_858446

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_858827V
<conv2d_127_kernel_regularizer_square_readvariableop_resource: @
identity??3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_127_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentity%conv2d_127/kernel/Regularizer/mul:z:04^conv2d_127/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp
?
J
.__inference_activation_23_layer_call_fn_858649

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_8565562
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_33_layer_call_fn_858326

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_8568302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????8@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
?
G
+__inference_dropout_29_layer_call_fn_858763

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_8565902
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
e
I__inference_activation_21_layer_call_and_return_conditional_losses_856486

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????8@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8@:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
?
?
.__inference_sequential_43_layer_call_fn_857253
conv2d_125_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@#
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:
??

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?T

unknown_24:T

unknown_25:T

unknown_26:T

unknown_27:T

unknown_28:T

unknown_29:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_125_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_43_layer_call_and_return_conditional_losses_8571212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_125_input
?
?
F__inference_conv2d_126_layer_call_and_return_conditional_losses_856374

inputs8
conv2d_readvariableop_resource:  
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????} : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????} 
 
_user_specified_nameinputs
?
e
I__inference_activation_24_layer_call_and_return_conditional_losses_858758

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:?????????T2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_855597

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858344

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_856590

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????T2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????T2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
e
I__inference_activation_22_layer_call_and_return_conditional_losses_858550

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_28_layer_call_fn_858413

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_8564942
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_858610

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_128_layer_call_and_return_conditional_losses_858274

inputs8
conv2d_readvariableop_resource:@@
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????:@
 
_user_specified_nameinputs
?

?
D__inference_dense_97_layer_call_and_return_conditional_losses_856603

inputs0
matmul_readvariableop_resource:T-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T*
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
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858362

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858191

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????y : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
?
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_856494

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_35_layer_call_fn_858590

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_8560972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_858644

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_97_layer_call_fn_858794

inputs
unknown:T
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
D__inference_dense_97_layer_call_and_return_conditional_losses_8566032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
d
+__inference_dropout_29_layer_call_fn_858768

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_8567172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_34_layer_call_fn_858473

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_8558752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_856830

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????8@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
?
?
F__inference_conv2d_127_layer_call_and_return_conditional_losses_856437

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
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
:?????????:@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
Relu?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????:@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<	 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_108_layer_call_fn_855851

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_8558452
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
?
?
D__inference_dense_95_layer_call_and_return_conditional_losses_856538

inputs2
matmul_readvariableop_resource:
??
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_97_layer_call_and_return_conditional_losses_858805

inputs0
matmul_readvariableop_resource:T-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T*
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
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
??
?)
"__inference__traced_restore_859226
file_prefix<
"assignvariableop_conv2d_125_kernel: 0
"assignvariableop_1_conv2d_125_bias: >
$assignvariableop_2_conv2d_126_kernel:  =
/assignvariableop_3_batch_normalization_32_gamma: <
.assignvariableop_4_batch_normalization_32_beta: C
5assignvariableop_5_batch_normalization_32_moving_mean: G
9assignvariableop_6_batch_normalization_32_moving_variance: >
$assignvariableop_7_conv2d_127_kernel: @0
"assignvariableop_8_conv2d_127_bias:@>
$assignvariableop_9_conv2d_128_kernel:@@>
0assignvariableop_10_batch_normalization_33_gamma:@=
/assignvariableop_11_batch_normalization_33_beta:@D
6assignvariableop_12_batch_normalization_33_moving_mean:@H
:assignvariableop_13_batch_normalization_33_moving_variance:@7
#assignvariableop_14_dense_94_kernel:
???
0assignvariableop_15_batch_normalization_34_gamma:	?>
/assignvariableop_16_batch_normalization_34_beta:	?E
6assignvariableop_17_batch_normalization_34_moving_mean:	?I
:assignvariableop_18_batch_normalization_34_moving_variance:	?7
#assignvariableop_19_dense_95_kernel:
???
0assignvariableop_20_batch_normalization_35_gamma:	?>
/assignvariableop_21_batch_normalization_35_beta:	?E
6assignvariableop_22_batch_normalization_35_moving_mean:	?I
:assignvariableop_23_batch_normalization_35_moving_variance:	?6
#assignvariableop_24_dense_96_kernel:	?T>
0assignvariableop_25_batch_normalization_36_gamma:T=
/assignvariableop_26_batch_normalization_36_beta:TD
6assignvariableop_27_batch_normalization_36_moving_mean:TH
:assignvariableop_28_batch_normalization_36_moving_variance:T5
#assignvariableop_29_dense_97_kernel:T/
!assignvariableop_30_dense_97_bias:*
 assignvariableop_31_rmsprop_iter:	 +
!assignvariableop_32_rmsprop_decay: 3
)assignvariableop_33_rmsprop_learning_rate: .
$assignvariableop_34_rmsprop_momentum: )
assignvariableop_35_rmsprop_rho: #
assignvariableop_36_total: #
assignvariableop_37_count: %
assignvariableop_38_total_1: %
assignvariableop_39_count_1: K
1assignvariableop_40_rmsprop_conv2d_125_kernel_rms: =
/assignvariableop_41_rmsprop_conv2d_125_bias_rms: K
1assignvariableop_42_rmsprop_conv2d_126_kernel_rms:  J
<assignvariableop_43_rmsprop_batch_normalization_32_gamma_rms: I
;assignvariableop_44_rmsprop_batch_normalization_32_beta_rms: K
1assignvariableop_45_rmsprop_conv2d_127_kernel_rms: @=
/assignvariableop_46_rmsprop_conv2d_127_bias_rms:@K
1assignvariableop_47_rmsprop_conv2d_128_kernel_rms:@@J
<assignvariableop_48_rmsprop_batch_normalization_33_gamma_rms:@I
;assignvariableop_49_rmsprop_batch_normalization_33_beta_rms:@C
/assignvariableop_50_rmsprop_dense_94_kernel_rms:
??K
<assignvariableop_51_rmsprop_batch_normalization_34_gamma_rms:	?J
;assignvariableop_52_rmsprop_batch_normalization_34_beta_rms:	?C
/assignvariableop_53_rmsprop_dense_95_kernel_rms:
??K
<assignvariableop_54_rmsprop_batch_normalization_35_gamma_rms:	?J
;assignvariableop_55_rmsprop_batch_normalization_35_beta_rms:	?B
/assignvariableop_56_rmsprop_dense_96_kernel_rms:	?TJ
<assignvariableop_57_rmsprop_batch_normalization_36_gamma_rms:TI
;assignvariableop_58_rmsprop_batch_normalization_36_beta_rms:TA
/assignvariableop_59_rmsprop_dense_97_kernel_rms:T;
-assignvariableop_60_rmsprop_dense_97_bias_rms:
identity_62??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9? 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_125_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_125_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_126_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_32_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_32_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp5assignvariableop_5_batch_normalization_32_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp9assignvariableop_6_batch_normalization_32_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp$assignvariableop_7_conv2d_127_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_127_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp$assignvariableop_9_conv2d_128_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_batch_normalization_33_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_33_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp6assignvariableop_12_batch_normalization_33_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp:assignvariableop_13_batch_normalization_33_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_94_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_34_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_34_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_batch_normalization_34_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp:assignvariableop_18_batch_normalization_34_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_95_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_35_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_35_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_35_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_35_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_96_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp0assignvariableop_25_batch_normalization_36_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp/assignvariableop_26_batch_normalization_36_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp6assignvariableop_27_batch_normalization_36_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp:assignvariableop_28_batch_normalization_36_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp#assignvariableop_29_dense_97_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp!assignvariableop_30_dense_97_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp assignvariableop_31_rmsprop_iterIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp!assignvariableop_32_rmsprop_decayIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_rmsprop_learning_rateIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp$assignvariableop_34_rmsprop_momentumIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_rmsprop_rhoIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpassignvariableop_36_totalIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_countIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp1assignvariableop_40_rmsprop_conv2d_125_kernel_rmsIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp/assignvariableop_41_rmsprop_conv2d_125_bias_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp1assignvariableop_42_rmsprop_conv2d_126_kernel_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp<assignvariableop_43_rmsprop_batch_normalization_32_gamma_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp;assignvariableop_44_rmsprop_batch_normalization_32_beta_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp1assignvariableop_45_rmsprop_conv2d_127_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp/assignvariableop_46_rmsprop_conv2d_127_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp1assignvariableop_47_rmsprop_conv2d_128_kernel_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp<assignvariableop_48_rmsprop_batch_normalization_33_gamma_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp;assignvariableop_49_rmsprop_batch_normalization_33_beta_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp/assignvariableop_50_rmsprop_dense_94_kernel_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp<assignvariableop_51_rmsprop_batch_normalization_34_gamma_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp;assignvariableop_52_rmsprop_batch_normalization_34_beta_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp/assignvariableop_53_rmsprop_dense_95_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp<assignvariableop_54_rmsprop_batch_normalization_35_gamma_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp;assignvariableop_55_rmsprop_batch_normalization_35_beta_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp/assignvariableop_56_rmsprop_dense_96_kernel_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp<assignvariableop_57_rmsprop_batch_normalization_36_gamma_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp;assignvariableop_58_rmsprop_batch_normalization_36_beta_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp/assignvariableop_59_rmsprop_dense_97_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp-assignvariableop_60_rmsprop_dense_97_bias_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_609
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_61?
Identity_62IdentityIdentity_61:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_62"#
identity_62Identity_62:output:0*?
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
F__inference_conv2d_125_layer_call_and_return_conditional_losses_858053

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
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
:?????????} 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
Relu?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????} 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_856259

inputs5
'assignmovingavg_readvariableop_resource:T7
)assignmovingavg_1_readvariableop_resource:T3
%batchnorm_mul_readvariableop_resource:T/
!batchnorm_readvariableop_resource:T
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:T2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????T2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:T*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:T2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:T2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:T*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:T2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:T2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:T2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:T2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:T2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
d
+__inference_dropout_27_layer_call_fn_858211

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_8568792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????<	 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<	 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_32_layer_call_fn_858106

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_8563952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????y : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
?
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_858216

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????<	 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????<	 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<	 :W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
??
?
I__inference_sequential_43_layer_call_and_return_conditional_losses_857818

inputsC
)conv2d_125_conv2d_readvariableop_resource: 8
*conv2d_125_biasadd_readvariableop_resource: C
)conv2d_126_conv2d_readvariableop_resource:  <
.batch_normalization_32_readvariableop_resource: >
0batch_normalization_32_readvariableop_1_resource: M
?batch_normalization_32_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_127_conv2d_readvariableop_resource: @8
*conv2d_127_biasadd_readvariableop_resource:@C
)conv2d_128_conv2d_readvariableop_resource:@@<
.batch_normalization_33_readvariableop_resource:@>
0batch_normalization_33_readvariableop_1_resource:@M
?batch_normalization_33_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:@;
'dense_94_matmul_readvariableop_resource:
??G
8batch_normalization_34_batchnorm_readvariableop_resource:	?K
<batch_normalization_34_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_34_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_34_batchnorm_readvariableop_2_resource:	?;
'dense_95_matmul_readvariableop_resource:
??G
8batch_normalization_35_batchnorm_readvariableop_resource:	?K
<batch_normalization_35_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_35_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_35_batchnorm_readvariableop_2_resource:	?:
'dense_96_matmul_readvariableop_resource:	?TF
8batch_normalization_36_batchnorm_readvariableop_resource:TJ
<batch_normalization_36_batchnorm_mul_readvariableop_resource:TH
:batch_normalization_36_batchnorm_readvariableop_1_resource:TH
:batch_normalization_36_batchnorm_readvariableop_2_resource:T9
'dense_97_matmul_readvariableop_resource:T6
(dense_97_biasadd_readvariableop_resource:
identity??6batch_normalization_32/FusedBatchNormV3/ReadVariableOp?8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_32/ReadVariableOp?'batch_normalization_32/ReadVariableOp_1?6batch_normalization_33/FusedBatchNormV3/ReadVariableOp?8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_33/ReadVariableOp?'batch_normalization_33/ReadVariableOp_1?/batch_normalization_34/batchnorm/ReadVariableOp?1batch_normalization_34/batchnorm/ReadVariableOp_1?1batch_normalization_34/batchnorm/ReadVariableOp_2?3batch_normalization_34/batchnorm/mul/ReadVariableOp?/batch_normalization_35/batchnorm/ReadVariableOp?1batch_normalization_35/batchnorm/ReadVariableOp_1?1batch_normalization_35/batchnorm/ReadVariableOp_2?3batch_normalization_35/batchnorm/mul/ReadVariableOp?/batch_normalization_36/batchnorm/ReadVariableOp?1batch_normalization_36/batchnorm/ReadVariableOp_1?1batch_normalization_36/batchnorm/ReadVariableOp_2?3batch_normalization_36/batchnorm/mul/ReadVariableOp?!conv2d_125/BiasAdd/ReadVariableOp? conv2d_125/Conv2D/ReadVariableOp?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp? conv2d_126/Conv2D/ReadVariableOp?!conv2d_127/BiasAdd/ReadVariableOp? conv2d_127/Conv2D/ReadVariableOp?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp? conv2d_128/Conv2D/ReadVariableOp?dense_94/MatMul/ReadVariableOp?dense_95/MatMul/ReadVariableOp?dense_96/MatMul/ReadVariableOp?dense_97/BiasAdd/ReadVariableOp?dense_97/MatMul/ReadVariableOp?
 conv2d_125/Conv2D/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_125/Conv2D/ReadVariableOp?
conv2d_125/Conv2DConv2Dinputs(conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2
conv2d_125/Conv2D?
!conv2d_125/BiasAdd/ReadVariableOpReadVariableOp*conv2d_125_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_125/BiasAdd/ReadVariableOp?
conv2d_125/BiasAddBiasAddconv2d_125/Conv2D:output:0)conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2
conv2d_125/BiasAdd?
conv2d_125/ReluReluconv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
conv2d_125/Relu?
 conv2d_126/Conv2D/ReadVariableOpReadVariableOp)conv2d_126_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_126/Conv2D/ReadVariableOp?
conv2d_126/Conv2DConv2Dconv2d_125/Relu:activations:0(conv2d_126/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2
conv2d_126/Conv2D?
%batch_normalization_32/ReadVariableOpReadVariableOp.batch_normalization_32_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_32/ReadVariableOp?
'batch_normalization_32/ReadVariableOp_1ReadVariableOp0batch_normalization_32_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_32/ReadVariableOp_1?
6batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_32/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_32/FusedBatchNormV3FusedBatchNormV3conv2d_126/Conv2D:output:0-batch_normalization_32/ReadVariableOp:value:0/batch_normalization_32/ReadVariableOp_1:value:0>batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
is_training( 2)
'batch_normalization_32/FusedBatchNormV3?
activation_20/ReluRelu+batch_normalization_32/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2
activation_20/Relu?
max_pooling2d_107/MaxPoolMaxPool activation_20/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_107/MaxPool?
dropout_27/IdentityIdentity"max_pooling2d_107/MaxPool:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout_27/Identity?
 conv2d_127/Conv2D/ReadVariableOpReadVariableOp)conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_127/Conv2D/ReadVariableOp?
conv2d_127/Conv2DConv2Ddropout_27/Identity:output:0(conv2d_127/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2
conv2d_127/Conv2D?
!conv2d_127/BiasAdd/ReadVariableOpReadVariableOp*conv2d_127_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_127/BiasAdd/ReadVariableOp?
conv2d_127/BiasAddBiasAddconv2d_127/Conv2D:output:0)conv2d_127/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2
conv2d_127/BiasAdd?
conv2d_127/ReluReluconv2d_127/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
conv2d_127/Relu?
 conv2d_128/Conv2D/ReadVariableOpReadVariableOp)conv2d_128_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_128/Conv2D/ReadVariableOp?
conv2d_128/Conv2DConv2Dconv2d_127/Relu:activations:0(conv2d_128/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
conv2d_128/Conv2D?
%batch_normalization_33/ReadVariableOpReadVariableOp.batch_normalization_33_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_33/ReadVariableOp?
'batch_normalization_33/ReadVariableOp_1ReadVariableOp0batch_normalization_33_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_33/ReadVariableOp_1?
6batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_33/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_33/FusedBatchNormV3FusedBatchNormV3conv2d_128/Conv2D:output:0-batch_normalization_33/ReadVariableOp:value:0/batch_normalization_33/ReadVariableOp_1:value:0>batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_33/FusedBatchNormV3?
activation_21/ReluRelu+batch_normalization_33/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2
activation_21/Relu?
max_pooling2d_108/MaxPoolMaxPool activation_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_108/MaxPool?
dropout_28/IdentityIdentity"max_pooling2d_108/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_28/Identityu
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_41/Const?
flatten_41/ReshapeReshapedropout_28/Identity:output:0flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_41/Reshape?
dense_94/MatMul/ReadVariableOpReadVariableOp'dense_94_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_94/MatMul/ReadVariableOp?
dense_94/MatMulMatMulflatten_41/Reshape:output:0&dense_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_94/MatMul?
/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_34/batchnorm/ReadVariableOp?
&batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_34/batchnorm/add/y?
$batch_normalization_34/batchnorm/addAddV27batch_normalization_34/batchnorm/ReadVariableOp:value:0/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_34/batchnorm/add?
&batch_normalization_34/batchnorm/RsqrtRsqrt(batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_34/batchnorm/Rsqrt?
3batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_34/batchnorm/mul/ReadVariableOp?
$batch_normalization_34/batchnorm/mulMul*batch_normalization_34/batchnorm/Rsqrt:y:0;batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_34/batchnorm/mul?
&batch_normalization_34/batchnorm/mul_1Muldense_94/MatMul:product:0(batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_34/batchnorm/mul_1?
1batch_normalization_34/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_34_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_34/batchnorm/ReadVariableOp_1?
&batch_normalization_34/batchnorm/mul_2Mul9batch_normalization_34/batchnorm/ReadVariableOp_1:value:0(batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_34/batchnorm/mul_2?
1batch_normalization_34/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_34_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_34/batchnorm/ReadVariableOp_2?
$batch_normalization_34/batchnorm/subSub9batch_normalization_34/batchnorm/ReadVariableOp_2:value:0*batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_34/batchnorm/sub?
&batch_normalization_34/batchnorm/add_1AddV2*batch_normalization_34/batchnorm/mul_1:z:0(batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_34/batchnorm/add_1?
activation_22/ReluRelu*batch_normalization_34/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_22/Relu?
dense_95/MatMul/ReadVariableOpReadVariableOp'dense_95_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_95/MatMul/ReadVariableOp?
dense_95/MatMulMatMul activation_22/Relu:activations:0&dense_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_95/MatMul?
/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_35/batchnorm/ReadVariableOp?
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_35/batchnorm/add/y?
$batch_normalization_35/batchnorm/addAddV27batch_normalization_35/batchnorm/ReadVariableOp:value:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_35/batchnorm/add?
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_35/batchnorm/Rsqrt?
3batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_35/batchnorm/mul/ReadVariableOp?
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:0;batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_35/batchnorm/mul?
&batch_normalization_35/batchnorm/mul_1Muldense_95/MatMul:product:0(batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_35/batchnorm/mul_1?
1batch_normalization_35/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_35_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_35/batchnorm/ReadVariableOp_1?
&batch_normalization_35/batchnorm/mul_2Mul9batch_normalization_35/batchnorm/ReadVariableOp_1:value:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_35/batchnorm/mul_2?
1batch_normalization_35/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_35_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_35/batchnorm/ReadVariableOp_2?
$batch_normalization_35/batchnorm/subSub9batch_normalization_35/batchnorm/ReadVariableOp_2:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_35/batchnorm/sub?
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_35/batchnorm/add_1?
activation_23/ReluRelu*batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_23/Relu?
dense_96/MatMul/ReadVariableOpReadVariableOp'dense_96_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02 
dense_96/MatMul/ReadVariableOp?
dense_96/MatMulMatMul activation_23/Relu:activations:0&dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_96/MatMul?
/batch_normalization_36/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_36_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype021
/batch_normalization_36/batchnorm/ReadVariableOp?
&batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_36/batchnorm/add/y?
$batch_normalization_36/batchnorm/addAddV27batch_normalization_36/batchnorm/ReadVariableOp:value:0/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes
:T2&
$batch_normalization_36/batchnorm/add?
&batch_normalization_36/batchnorm/RsqrtRsqrt(batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_36/batchnorm/Rsqrt?
3batch_normalization_36/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_36_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype025
3batch_normalization_36/batchnorm/mul/ReadVariableOp?
$batch_normalization_36/batchnorm/mulMul*batch_normalization_36/batchnorm/Rsqrt:y:0;batch_normalization_36/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2&
$batch_normalization_36/batchnorm/mul?
&batch_normalization_36/batchnorm/mul_1Muldense_96/MatMul:product:0(batch_normalization_36/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_36/batchnorm/mul_1?
1batch_normalization_36/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_36_batchnorm_readvariableop_1_resource*
_output_shapes
:T*
dtype023
1batch_normalization_36/batchnorm/ReadVariableOp_1?
&batch_normalization_36/batchnorm/mul_2Mul9batch_normalization_36/batchnorm/ReadVariableOp_1:value:0(batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_36/batchnorm/mul_2?
1batch_normalization_36/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_36_batchnorm_readvariableop_2_resource*
_output_shapes
:T*
dtype023
1batch_normalization_36/batchnorm/ReadVariableOp_2?
$batch_normalization_36/batchnorm/subSub9batch_normalization_36/batchnorm/ReadVariableOp_2:value:0*batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2&
$batch_normalization_36/batchnorm/sub?
&batch_normalization_36/batchnorm/add_1AddV2*batch_normalization_36/batchnorm/mul_1:z:0(batch_normalization_36/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_36/batchnorm/add_1?
activation_24/ReluRelu*batch_normalization_36/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2
activation_24/Relu?
dropout_29/IdentityIdentity activation_24/Relu:activations:0*
T0*'
_output_shapes
:?????????T2
dropout_29/Identity?
dense_97/MatMul/ReadVariableOpReadVariableOp'dense_97_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02 
dense_97/MatMul/ReadVariableOp?
dense_97/MatMulMatMuldropout_29/Identity:output:0&dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/MatMul?
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_97/BiasAdd/ReadVariableOp?
dense_97/BiasAddBiasAdddense_97/MatMul:product:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/BiasAdd|
dense_97/SoftmaxSoftmaxdense_97/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_97/Softmax?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentitydense_97/Softmax:softmax:07^batch_normalization_32/FusedBatchNormV3/ReadVariableOp9^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_32/ReadVariableOp(^batch_normalization_32/ReadVariableOp_17^batch_normalization_33/FusedBatchNormV3/ReadVariableOp9^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_33/ReadVariableOp(^batch_normalization_33/ReadVariableOp_10^batch_normalization_34/batchnorm/ReadVariableOp2^batch_normalization_34/batchnorm/ReadVariableOp_12^batch_normalization_34/batchnorm/ReadVariableOp_24^batch_normalization_34/batchnorm/mul/ReadVariableOp0^batch_normalization_35/batchnorm/ReadVariableOp2^batch_normalization_35/batchnorm/ReadVariableOp_12^batch_normalization_35/batchnorm/ReadVariableOp_24^batch_normalization_35/batchnorm/mul/ReadVariableOp0^batch_normalization_36/batchnorm/ReadVariableOp2^batch_normalization_36/batchnorm/ReadVariableOp_12^batch_normalization_36/batchnorm/ReadVariableOp_24^batch_normalization_36/batchnorm/mul/ReadVariableOp"^conv2d_125/BiasAdd/ReadVariableOp!^conv2d_125/Conv2D/ReadVariableOp4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp!^conv2d_126/Conv2D/ReadVariableOp"^conv2d_127/BiasAdd/ReadVariableOp!^conv2d_127/Conv2D/ReadVariableOp4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp!^conv2d_128/Conv2D/ReadVariableOp^dense_94/MatMul/ReadVariableOp^dense_95/MatMul/ReadVariableOp^dense_96/MatMul/ReadVariableOp ^dense_97/BiasAdd/ReadVariableOp^dense_97/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_32/FusedBatchNormV3/ReadVariableOp6batch_normalization_32/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_18batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_32/ReadVariableOp%batch_normalization_32/ReadVariableOp2R
'batch_normalization_32/ReadVariableOp_1'batch_normalization_32/ReadVariableOp_12p
6batch_normalization_33/FusedBatchNormV3/ReadVariableOp6batch_normalization_33/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_18batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_33/ReadVariableOp%batch_normalization_33/ReadVariableOp2R
'batch_normalization_33/ReadVariableOp_1'batch_normalization_33/ReadVariableOp_12b
/batch_normalization_34/batchnorm/ReadVariableOp/batch_normalization_34/batchnorm/ReadVariableOp2f
1batch_normalization_34/batchnorm/ReadVariableOp_11batch_normalization_34/batchnorm/ReadVariableOp_12f
1batch_normalization_34/batchnorm/ReadVariableOp_21batch_normalization_34/batchnorm/ReadVariableOp_22j
3batch_normalization_34/batchnorm/mul/ReadVariableOp3batch_normalization_34/batchnorm/mul/ReadVariableOp2b
/batch_normalization_35/batchnorm/ReadVariableOp/batch_normalization_35/batchnorm/ReadVariableOp2f
1batch_normalization_35/batchnorm/ReadVariableOp_11batch_normalization_35/batchnorm/ReadVariableOp_12f
1batch_normalization_35/batchnorm/ReadVariableOp_21batch_normalization_35/batchnorm/ReadVariableOp_22j
3batch_normalization_35/batchnorm/mul/ReadVariableOp3batch_normalization_35/batchnorm/mul/ReadVariableOp2b
/batch_normalization_36/batchnorm/ReadVariableOp/batch_normalization_36/batchnorm/ReadVariableOp2f
1batch_normalization_36/batchnorm/ReadVariableOp_11batch_normalization_36/batchnorm/ReadVariableOp_12f
1batch_normalization_36/batchnorm/ReadVariableOp_21batch_normalization_36/batchnorm/ReadVariableOp_22j
3batch_normalization_36/batchnorm/mul/ReadVariableOp3batch_normalization_36/batchnorm/mul/ReadVariableOp2F
!conv2d_125/BiasAdd/ReadVariableOp!conv2d_125/BiasAdd/ReadVariableOp2D
 conv2d_125/Conv2D/ReadVariableOp conv2d_125/Conv2D/ReadVariableOp2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_126/Conv2D/ReadVariableOp conv2d_126/Conv2D/ReadVariableOp2F
!conv2d_127/BiasAdd/ReadVariableOp!conv2d_127/BiasAdd/ReadVariableOp2D
 conv2d_127/Conv2D/ReadVariableOp conv2d_127/Conv2D/ReadVariableOp2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_128/Conv2D/ReadVariableOp conv2d_128/Conv2D/ReadVariableOp2@
dense_94/MatMul/ReadVariableOpdense_94/MatMul/ReadVariableOp2@
dense_95/MatMul/ReadVariableOpdense_95/MatMul/ReadVariableOp2@
dense_96/MatMul/ReadVariableOpdense_96/MatMul/ReadVariableOp2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2@
dense_97/MatMul/ReadVariableOpdense_97/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_28_layer_call_and_return_conditional_losses_858435

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_858816V
<conv2d_125_kernel_regularizer_square_readvariableop_resource: 
identity??3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_125_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
IdentityIdentity%conv2d_125/kernel/Regularizer/mul:z:04^conv2d_125/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp
?

)__inference_dense_94_layer_call_fn_858453

inputs
unknown:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_94_layer_call_and_return_conditional_losses_8565112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_96_layer_call_fn_858661

inputs
unknown:	?T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_96_layer_call_and_return_conditional_losses_8565652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858380

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????8@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
?
e
I__inference_activation_23_layer_call_and_return_conditional_losses_856556

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_32_layer_call_fn_858093

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_8556412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_21_layer_call_and_return_conditional_losses_858408

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????8@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????8@:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_856921

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????y : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
?
e
I__inference_activation_20_layer_call_and_return_conditional_losses_856410

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????y 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????y :W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
?
e
I__inference_activation_23_layer_call_and_return_conditional_losses_858654

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_29_layer_call_and_return_conditional_losses_858785

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????T2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????T*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????T2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????T2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????T2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_857544
conv2d_125_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@#
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:
??

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?T

unknown_24:T

unknown_25:T

unknown_26:T

unknown_27:T

unknown_28:T

unknown_29:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_125_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*A
_read_only_resource_inputs#
!	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_8555752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_125_input
?
i
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_855707

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
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_858714

inputs/
!batchnorm_readvariableop_resource:T3
%batchnorm_mul_readvariableop_resource:T1
#batchnorm_readvariableop_1_resource:T1
#batchnorm_readvariableop_2_resource:T
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:T2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:T2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:T*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:T2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:T*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
b
F__inference_flatten_41_layer_call_and_return_conditional_losses_856502

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference__traced_save_859033
file_prefix0
,savev2_conv2d_125_kernel_read_readvariableop.
*savev2_conv2d_125_bias_read_readvariableop0
,savev2_conv2d_126_kernel_read_readvariableop;
7savev2_batch_normalization_32_gamma_read_readvariableop:
6savev2_batch_normalization_32_beta_read_readvariableopA
=savev2_batch_normalization_32_moving_mean_read_readvariableopE
Asavev2_batch_normalization_32_moving_variance_read_readvariableop0
,savev2_conv2d_127_kernel_read_readvariableop.
*savev2_conv2d_127_bias_read_readvariableop0
,savev2_conv2d_128_kernel_read_readvariableop;
7savev2_batch_normalization_33_gamma_read_readvariableop:
6savev2_batch_normalization_33_beta_read_readvariableopA
=savev2_batch_normalization_33_moving_mean_read_readvariableopE
Asavev2_batch_normalization_33_moving_variance_read_readvariableop.
*savev2_dense_94_kernel_read_readvariableop;
7savev2_batch_normalization_34_gamma_read_readvariableop:
6savev2_batch_normalization_34_beta_read_readvariableopA
=savev2_batch_normalization_34_moving_mean_read_readvariableopE
Asavev2_batch_normalization_34_moving_variance_read_readvariableop.
*savev2_dense_95_kernel_read_readvariableop;
7savev2_batch_normalization_35_gamma_read_readvariableop:
6savev2_batch_normalization_35_beta_read_readvariableopA
=savev2_batch_normalization_35_moving_mean_read_readvariableopE
Asavev2_batch_normalization_35_moving_variance_read_readvariableop.
*savev2_dense_96_kernel_read_readvariableop;
7savev2_batch_normalization_36_gamma_read_readvariableop:
6savev2_batch_normalization_36_beta_read_readvariableopA
=savev2_batch_normalization_36_moving_mean_read_readvariableopE
Asavev2_batch_normalization_36_moving_variance_read_readvariableop.
*savev2_dense_97_kernel_read_readvariableop,
(savev2_dense_97_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_rmsprop_conv2d_125_kernel_rms_read_readvariableop:
6savev2_rmsprop_conv2d_125_bias_rms_read_readvariableop<
8savev2_rmsprop_conv2d_126_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_32_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_32_beta_rms_read_readvariableop<
8savev2_rmsprop_conv2d_127_kernel_rms_read_readvariableop:
6savev2_rmsprop_conv2d_127_bias_rms_read_readvariableop<
8savev2_rmsprop_conv2d_128_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_33_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_33_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_94_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_34_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_34_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_95_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_35_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_35_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_96_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_36_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_36_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_97_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_97_bias_rms_read_readvariableop
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
ShardedFilename? 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_125_kernel_read_readvariableop*savev2_conv2d_125_bias_read_readvariableop,savev2_conv2d_126_kernel_read_readvariableop7savev2_batch_normalization_32_gamma_read_readvariableop6savev2_batch_normalization_32_beta_read_readvariableop=savev2_batch_normalization_32_moving_mean_read_readvariableopAsavev2_batch_normalization_32_moving_variance_read_readvariableop,savev2_conv2d_127_kernel_read_readvariableop*savev2_conv2d_127_bias_read_readvariableop,savev2_conv2d_128_kernel_read_readvariableop7savev2_batch_normalization_33_gamma_read_readvariableop6savev2_batch_normalization_33_beta_read_readvariableop=savev2_batch_normalization_33_moving_mean_read_readvariableopAsavev2_batch_normalization_33_moving_variance_read_readvariableop*savev2_dense_94_kernel_read_readvariableop7savev2_batch_normalization_34_gamma_read_readvariableop6savev2_batch_normalization_34_beta_read_readvariableop=savev2_batch_normalization_34_moving_mean_read_readvariableopAsavev2_batch_normalization_34_moving_variance_read_readvariableop*savev2_dense_95_kernel_read_readvariableop7savev2_batch_normalization_35_gamma_read_readvariableop6savev2_batch_normalization_35_beta_read_readvariableop=savev2_batch_normalization_35_moving_mean_read_readvariableopAsavev2_batch_normalization_35_moving_variance_read_readvariableop*savev2_dense_96_kernel_read_readvariableop7savev2_batch_normalization_36_gamma_read_readvariableop6savev2_batch_normalization_36_beta_read_readvariableop=savev2_batch_normalization_36_moving_mean_read_readvariableopAsavev2_batch_normalization_36_moving_variance_read_readvariableop*savev2_dense_97_kernel_read_readvariableop(savev2_dense_97_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_rmsprop_conv2d_125_kernel_rms_read_readvariableop6savev2_rmsprop_conv2d_125_bias_rms_read_readvariableop8savev2_rmsprop_conv2d_126_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_32_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_32_beta_rms_read_readvariableop8savev2_rmsprop_conv2d_127_kernel_rms_read_readvariableop6savev2_rmsprop_conv2d_127_bias_rms_read_readvariableop8savev2_rmsprop_conv2d_128_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_33_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_33_beta_rms_read_readvariableop6savev2_rmsprop_dense_94_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_34_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_34_beta_rms_read_readvariableop6savev2_rmsprop_dense_95_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_35_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_35_beta_rms_read_readvariableop6savev2_rmsprop_dense_96_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_36_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_36_beta_rms_read_readvariableop6savev2_rmsprop_dense_97_kernel_rms_read_readvariableop4savev2_rmsprop_dense_97_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *L
dtypesB
@2>	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : : : : : @:@:@@:@:@:@:@:
??:?:?:?:?:
??:?:?:?:?:	?T:T:T:T:T:T:: : : : : : : : : : : :  : : : @:@:@@:@:@:
??:?:?:
??:?:?:	?T:T:T:T:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 	

_output_shapes
:@:,
(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?T: 

_output_shapes
:T: 

_output_shapes
:T: 

_output_shapes
:T: 

_output_shapes
:T:$ 

_output_shapes

:T: 

_output_shapes
:: 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :,)(
&
_output_shapes
: : *

_output_shapes
: :,+(
&
_output_shapes
:  : ,

_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@: 2

_output_shapes
:@:&3"
 
_output_shapes
:
??:!4

_output_shapes	
:?:!5

_output_shapes	
:?:&6"
 
_output_shapes
:
??:!7

_output_shapes	
:?:!8

_output_shapes	
:?:%9!

_output_shapes
:	?T: :

_output_shapes
:T: ;

_output_shapes
:T:$< 

_output_shapes

:T: =

_output_shapes
::>

_output_shapes
: 
?
?
F__inference_conv2d_125_layer_call_and_return_conditional_losses_856361

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
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
:?????????} 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
Relu?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????} 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_855845

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
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_856199

inputs/
!batchnorm_readvariableop_resource:T3
%batchnorm_mul_readvariableop_resource:T1
#batchnorm_readvariableop_1_resource:T1
#batchnorm_readvariableop_2_resource:T
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:T2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:T2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:T*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:T2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:T*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
.__inference_sequential_43_layer_call_fn_857678

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@#
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:
??

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?T

unknown_24:T

unknown_25:T

unknown_26:T

unknown_27:T

unknown_28:T

unknown_29:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_43_layer_call_and_return_conditional_losses_8571212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_36_layer_call_fn_858681

inputs
unknown:T
	unknown_0:T
	unknown_1:T
	unknown_2:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_8561992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
D__inference_dense_96_layer_call_and_return_conditional_losses_858668

inputs1
matmul_readvariableop_resource:	?T
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_858540

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_28_layer_call_and_return_conditional_losses_856788

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_856395

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????y : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
?
?
F__inference_conv2d_126_layer_call_and_return_conditional_losses_858067

inputs8
conv2d_readvariableop_resource:  
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????} : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????} 
 
_user_specified_nameinputs
?
d
+__inference_dropout_28_layer_call_fn_858418

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_8567882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?*
?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_855935

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_858748

inputs5
'assignmovingavg_readvariableop_resource:T7
)assignmovingavg_1_readvariableop_resource:T3
%batchnorm_mul_readvariableop_resource:T/
!batchnorm_readvariableop_resource:T
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:T2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????T2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:T*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:T2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:T2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:T*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:T2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:T2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:T2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:T2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:T2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????T: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_855641

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
e
F__inference_dropout_29_layer_call_and_return_conditional_losses_856717

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????T2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????T*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????T2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????T2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????T2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
+__inference_conv2d_126_layer_call_fn_858060

inputs!
unknown:  
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_8563742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????} : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????} 
 
_user_specified_nameinputs
?
e
I__inference_activation_24_layer_call_and_return_conditional_losses_856583

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:?????????T2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????T:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?*
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_856097

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_33_layer_call_fn_858313

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_8564712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????8@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
??
?
I__inference_sequential_43_layer_call_and_return_conditional_losses_857355
conv2d_125_input+
conv2d_125_857256: 
conv2d_125_857258: +
conv2d_126_857261:  +
batch_normalization_32_857264: +
batch_normalization_32_857266: +
batch_normalization_32_857268: +
batch_normalization_32_857270: +
conv2d_127_857276: @
conv2d_127_857278:@+
conv2d_128_857281:@@+
batch_normalization_33_857284:@+
batch_normalization_33_857286:@+
batch_normalization_33_857288:@+
batch_normalization_33_857290:@#
dense_94_857297:
??,
batch_normalization_34_857300:	?,
batch_normalization_34_857302:	?,
batch_normalization_34_857304:	?,
batch_normalization_34_857306:	?#
dense_95_857310:
??,
batch_normalization_35_857313:	?,
batch_normalization_35_857315:	?,
batch_normalization_35_857317:	?,
batch_normalization_35_857319:	?"
dense_96_857323:	?T+
batch_normalization_36_857326:T+
batch_normalization_36_857328:T+
batch_normalization_36_857330:T+
batch_normalization_36_857332:T!
dense_97_857337:T
dense_97_857339:
identity??.batch_normalization_32/StatefulPartitionedCall?.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?.batch_normalization_36/StatefulPartitionedCall?"conv2d_125/StatefulPartitionedCall?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?"conv2d_126/StatefulPartitionedCall?"conv2d_127/StatefulPartitionedCall?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?"conv2d_128/StatefulPartitionedCall? dense_94/StatefulPartitionedCall? dense_95/StatefulPartitionedCall? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCallconv2d_125_inputconv2d_125_857256conv2d_125_857258*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????} *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_8563612$
"conv2d_125/StatefulPartitionedCall?
"conv2d_126/StatefulPartitionedCallStatefulPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0conv2d_126_857261*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_8563742$
"conv2d_126/StatefulPartitionedCall?
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall+conv2d_126/StatefulPartitionedCall:output:0batch_normalization_32_857264batch_normalization_32_857266batch_normalization_32_857268batch_normalization_32_857270*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_85639520
.batch_normalization_32/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_8564102
activation_20/PartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_8557072#
!max_pooling2d_107/PartitionedCall?
dropout_27/PartitionedCallPartitionedCall*max_pooling2d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_8564182
dropout_27/PartitionedCall?
"conv2d_127/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0conv2d_127_857276conv2d_127_857278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_8564372$
"conv2d_127/StatefulPartitionedCall?
"conv2d_128/StatefulPartitionedCallStatefulPartitionedCall+conv2d_127/StatefulPartitionedCall:output:0conv2d_128_857281*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_128_layer_call_and_return_conditional_losses_8564502$
"conv2d_128/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall+conv2d_128/StatefulPartitionedCall:output:0batch_normalization_33_857284batch_normalization_33_857286batch_normalization_33_857288batch_normalization_33_857290*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_85647120
.batch_normalization_33/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_8564862
activation_21/PartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_8558452#
!max_pooling2d_108/PartitionedCall?
dropout_28/PartitionedCallPartitionedCall*max_pooling2d_108/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_8564942
dropout_28/PartitionedCall?
flatten_41/PartitionedCallPartitionedCall#dropout_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_8565022
flatten_41/PartitionedCall?
 dense_94/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_94_857297*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_94_layer_call_and_return_conditional_losses_8565112"
 dense_94/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall)dense_94/StatefulPartitionedCall:output:0batch_normalization_34_857300batch_normalization_34_857302batch_normalization_34_857304batch_normalization_34_857306*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_85587520
.batch_normalization_34/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_8565292
activation_22/PartitionedCall?
 dense_95/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_95_857310*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_95_layer_call_and_return_conditional_losses_8565382"
 dense_95/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall)dense_95/StatefulPartitionedCall:output:0batch_normalization_35_857313batch_normalization_35_857315batch_normalization_35_857317batch_normalization_35_857319*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_85603720
.batch_normalization_35/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_8565562
activation_23/PartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0dense_96_857323*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_96_layer_call_and_return_conditional_losses_8565652"
 dense_96/StatefulPartitionedCall?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0batch_normalization_36_857326batch_normalization_36_857328batch_normalization_36_857330batch_normalization_36_857332*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_85619920
.batch_normalization_36/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_24_layer_call_and_return_conditional_losses_8565832
activation_24/PartitionedCall?
dropout_29/PartitionedCallPartitionedCall&activation_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_8565902
dropout_29/PartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_97_857337dense_97_857339*
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
D__inference_dense_97_layer_call_and_return_conditional_losses_8566032"
 dense_97/StatefulPartitionedCall?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_125_857256*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_127_857276*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall/^batch_normalization_36/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp#^conv2d_126/StatefulPartitionedCall#^conv2d_127/StatefulPartitionedCall4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp#^conv2d_128/StatefulPartitionedCall!^dense_94/StatefulPartitionedCall!^dense_95/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_126/StatefulPartitionedCall"conv2d_126/StatefulPartitionedCall2H
"conv2d_127/StatefulPartitionedCall"conv2d_127/StatefulPartitionedCall2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_128/StatefulPartitionedCall"conv2d_128/StatefulPartitionedCall2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_125_input
?
e
F__inference_dropout_27_layer_call_and_return_conditional_losses_858228

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????<	 *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<	 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<	 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????<	 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<	 :W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
G
+__inference_flatten_41_layer_call_fn_858440

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_8565022
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_sequential_43_layer_call_fn_857611

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@#
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:
??

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?T

unknown_24:T

unknown_25:T

unknown_26:T

unknown_27:T

unknown_28:T

unknown_29:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*A
_read_only_resource_inputs#
!	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_43_layer_call_and_return_conditional_losses_8566222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_855779

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
D__inference_dense_94_layer_call_and_return_conditional_losses_858460

inputs2
matmul_readvariableop_resource:
??
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_27_layer_call_and_return_conditional_losses_856879

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????<	 *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<	 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<	 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????<	 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<	 :W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
??
?#
!__inference__wrapped_model_855575
conv2d_125_inputQ
7sequential_43_conv2d_125_conv2d_readvariableop_resource: F
8sequential_43_conv2d_125_biasadd_readvariableop_resource: Q
7sequential_43_conv2d_126_conv2d_readvariableop_resource:  J
<sequential_43_batch_normalization_32_readvariableop_resource: L
>sequential_43_batch_normalization_32_readvariableop_1_resource: [
Msequential_43_batch_normalization_32_fusedbatchnormv3_readvariableop_resource: ]
Osequential_43_batch_normalization_32_fusedbatchnormv3_readvariableop_1_resource: Q
7sequential_43_conv2d_127_conv2d_readvariableop_resource: @F
8sequential_43_conv2d_127_biasadd_readvariableop_resource:@Q
7sequential_43_conv2d_128_conv2d_readvariableop_resource:@@J
<sequential_43_batch_normalization_33_readvariableop_resource:@L
>sequential_43_batch_normalization_33_readvariableop_1_resource:@[
Msequential_43_batch_normalization_33_fusedbatchnormv3_readvariableop_resource:@]
Osequential_43_batch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:@I
5sequential_43_dense_94_matmul_readvariableop_resource:
??U
Fsequential_43_batch_normalization_34_batchnorm_readvariableop_resource:	?Y
Jsequential_43_batch_normalization_34_batchnorm_mul_readvariableop_resource:	?W
Hsequential_43_batch_normalization_34_batchnorm_readvariableop_1_resource:	?W
Hsequential_43_batch_normalization_34_batchnorm_readvariableop_2_resource:	?I
5sequential_43_dense_95_matmul_readvariableop_resource:
??U
Fsequential_43_batch_normalization_35_batchnorm_readvariableop_resource:	?Y
Jsequential_43_batch_normalization_35_batchnorm_mul_readvariableop_resource:	?W
Hsequential_43_batch_normalization_35_batchnorm_readvariableop_1_resource:	?W
Hsequential_43_batch_normalization_35_batchnorm_readvariableop_2_resource:	?H
5sequential_43_dense_96_matmul_readvariableop_resource:	?TT
Fsequential_43_batch_normalization_36_batchnorm_readvariableop_resource:TX
Jsequential_43_batch_normalization_36_batchnorm_mul_readvariableop_resource:TV
Hsequential_43_batch_normalization_36_batchnorm_readvariableop_1_resource:TV
Hsequential_43_batch_normalization_36_batchnorm_readvariableop_2_resource:TG
5sequential_43_dense_97_matmul_readvariableop_resource:TD
6sequential_43_dense_97_biasadd_readvariableop_resource:
identity??Dsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp?Fsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?3sequential_43/batch_normalization_32/ReadVariableOp?5sequential_43/batch_normalization_32/ReadVariableOp_1?Dsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp?Fsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?3sequential_43/batch_normalization_33/ReadVariableOp?5sequential_43/batch_normalization_33/ReadVariableOp_1?=sequential_43/batch_normalization_34/batchnorm/ReadVariableOp??sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_1??sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_2?Asequential_43/batch_normalization_34/batchnorm/mul/ReadVariableOp?=sequential_43/batch_normalization_35/batchnorm/ReadVariableOp??sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_1??sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_2?Asequential_43/batch_normalization_35/batchnorm/mul/ReadVariableOp?=sequential_43/batch_normalization_36/batchnorm/ReadVariableOp??sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_1??sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_2?Asequential_43/batch_normalization_36/batchnorm/mul/ReadVariableOp?/sequential_43/conv2d_125/BiasAdd/ReadVariableOp?.sequential_43/conv2d_125/Conv2D/ReadVariableOp?.sequential_43/conv2d_126/Conv2D/ReadVariableOp?/sequential_43/conv2d_127/BiasAdd/ReadVariableOp?.sequential_43/conv2d_127/Conv2D/ReadVariableOp?.sequential_43/conv2d_128/Conv2D/ReadVariableOp?,sequential_43/dense_94/MatMul/ReadVariableOp?,sequential_43/dense_95/MatMul/ReadVariableOp?,sequential_43/dense_96/MatMul/ReadVariableOp?-sequential_43/dense_97/BiasAdd/ReadVariableOp?,sequential_43/dense_97/MatMul/ReadVariableOp?
.sequential_43/conv2d_125/Conv2D/ReadVariableOpReadVariableOp7sequential_43_conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_43/conv2d_125/Conv2D/ReadVariableOp?
sequential_43/conv2d_125/Conv2DConv2Dconv2d_125_input6sequential_43/conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2!
sequential_43/conv2d_125/Conv2D?
/sequential_43/conv2d_125/BiasAdd/ReadVariableOpReadVariableOp8sequential_43_conv2d_125_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_43/conv2d_125/BiasAdd/ReadVariableOp?
 sequential_43/conv2d_125/BiasAddBiasAdd(sequential_43/conv2d_125/Conv2D:output:07sequential_43/conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2"
 sequential_43/conv2d_125/BiasAdd?
sequential_43/conv2d_125/ReluRelu)sequential_43/conv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
sequential_43/conv2d_125/Relu?
.sequential_43/conv2d_126/Conv2D/ReadVariableOpReadVariableOp7sequential_43_conv2d_126_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.sequential_43/conv2d_126/Conv2D/ReadVariableOp?
sequential_43/conv2d_126/Conv2DConv2D+sequential_43/conv2d_125/Relu:activations:06sequential_43/conv2d_126/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2!
sequential_43/conv2d_126/Conv2D?
3sequential_43/batch_normalization_32/ReadVariableOpReadVariableOp<sequential_43_batch_normalization_32_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_43/batch_normalization_32/ReadVariableOp?
5sequential_43/batch_normalization_32/ReadVariableOp_1ReadVariableOp>sequential_43_batch_normalization_32_readvariableop_1_resource*
_output_shapes
: *
dtype027
5sequential_43/batch_normalization_32/ReadVariableOp_1?
Dsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_43_batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp?
Fsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_43_batch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1?
5sequential_43/batch_normalization_32/FusedBatchNormV3FusedBatchNormV3(sequential_43/conv2d_126/Conv2D:output:0;sequential_43/batch_normalization_32/ReadVariableOp:value:0=sequential_43/batch_normalization_32/ReadVariableOp_1:value:0Lsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
is_training( 27
5sequential_43/batch_normalization_32/FusedBatchNormV3?
 sequential_43/activation_20/ReluRelu9sequential_43/batch_normalization_32/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2"
 sequential_43/activation_20/Relu?
'sequential_43/max_pooling2d_107/MaxPoolMaxPool.sequential_43/activation_20/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2)
'sequential_43/max_pooling2d_107/MaxPool?
!sequential_43/dropout_27/IdentityIdentity0sequential_43/max_pooling2d_107/MaxPool:output:0*
T0*/
_output_shapes
:?????????<	 2#
!sequential_43/dropout_27/Identity?
.sequential_43/conv2d_127/Conv2D/ReadVariableOpReadVariableOp7sequential_43_conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_43/conv2d_127/Conv2D/ReadVariableOp?
sequential_43/conv2d_127/Conv2DConv2D*sequential_43/dropout_27/Identity:output:06sequential_43/conv2d_127/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2!
sequential_43/conv2d_127/Conv2D?
/sequential_43/conv2d_127/BiasAdd/ReadVariableOpReadVariableOp8sequential_43_conv2d_127_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_43/conv2d_127/BiasAdd/ReadVariableOp?
 sequential_43/conv2d_127/BiasAddBiasAdd(sequential_43/conv2d_127/Conv2D:output:07sequential_43/conv2d_127/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2"
 sequential_43/conv2d_127/BiasAdd?
sequential_43/conv2d_127/ReluRelu)sequential_43/conv2d_127/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
sequential_43/conv2d_127/Relu?
.sequential_43/conv2d_128/Conv2D/ReadVariableOpReadVariableOp7sequential_43_conv2d_128_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.sequential_43/conv2d_128/Conv2D/ReadVariableOp?
sequential_43/conv2d_128/Conv2DConv2D+sequential_43/conv2d_127/Relu:activations:06sequential_43/conv2d_128/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2!
sequential_43/conv2d_128/Conv2D?
3sequential_43/batch_normalization_33/ReadVariableOpReadVariableOp<sequential_43_batch_normalization_33_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_43/batch_normalization_33/ReadVariableOp?
5sequential_43/batch_normalization_33/ReadVariableOp_1ReadVariableOp>sequential_43_batch_normalization_33_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_43/batch_normalization_33/ReadVariableOp_1?
Dsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_43_batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp?
Fsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_43_batch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1?
5sequential_43/batch_normalization_33/FusedBatchNormV3FusedBatchNormV3(sequential_43/conv2d_128/Conv2D:output:0;sequential_43/batch_normalization_33/ReadVariableOp:value:0=sequential_43/batch_normalization_33/ReadVariableOp_1:value:0Lsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_43/batch_normalization_33/FusedBatchNormV3?
 sequential_43/activation_21/ReluRelu9sequential_43/batch_normalization_33/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2"
 sequential_43/activation_21/Relu?
'sequential_43/max_pooling2d_108/MaxPoolMaxPool.sequential_43/activation_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2)
'sequential_43/max_pooling2d_108/MaxPool?
!sequential_43/dropout_28/IdentityIdentity0sequential_43/max_pooling2d_108/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!sequential_43/dropout_28/Identity?
sequential_43/flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
sequential_43/flatten_41/Const?
 sequential_43/flatten_41/ReshapeReshape*sequential_43/dropout_28/Identity:output:0'sequential_43/flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_43/flatten_41/Reshape?
,sequential_43/dense_94/MatMul/ReadVariableOpReadVariableOp5sequential_43_dense_94_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_43/dense_94/MatMul/ReadVariableOp?
sequential_43/dense_94/MatMulMatMul)sequential_43/flatten_41/Reshape:output:04sequential_43/dense_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_43/dense_94/MatMul?
=sequential_43/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOpFsequential_43_batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_43/batch_normalization_34/batchnorm/ReadVariableOp?
4sequential_43/batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_43/batch_normalization_34/batchnorm/add/y?
2sequential_43/batch_normalization_34/batchnorm/addAddV2Esequential_43/batch_normalization_34/batchnorm/ReadVariableOp:value:0=sequential_43/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_43/batch_normalization_34/batchnorm/add?
4sequential_43/batch_normalization_34/batchnorm/RsqrtRsqrt6sequential_43/batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_43/batch_normalization_34/batchnorm/Rsqrt?
Asequential_43/batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_43_batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_43/batch_normalization_34/batchnorm/mul/ReadVariableOp?
2sequential_43/batch_normalization_34/batchnorm/mulMul8sequential_43/batch_normalization_34/batchnorm/Rsqrt:y:0Isequential_43/batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_43/batch_normalization_34/batchnorm/mul?
4sequential_43/batch_normalization_34/batchnorm/mul_1Mul'sequential_43/dense_94/MatMul:product:06sequential_43/batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_43/batch_normalization_34/batchnorm/mul_1?
?sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_43_batch_normalization_34_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_1?
4sequential_43/batch_normalization_34/batchnorm/mul_2MulGsequential_43/batch_normalization_34/batchnorm/ReadVariableOp_1:value:06sequential_43/batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_43/batch_normalization_34/batchnorm/mul_2?
?sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_43_batch_normalization_34_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_2?
2sequential_43/batch_normalization_34/batchnorm/subSubGsequential_43/batch_normalization_34/batchnorm/ReadVariableOp_2:value:08sequential_43/batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_43/batch_normalization_34/batchnorm/sub?
4sequential_43/batch_normalization_34/batchnorm/add_1AddV28sequential_43/batch_normalization_34/batchnorm/mul_1:z:06sequential_43/batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_43/batch_normalization_34/batchnorm/add_1?
 sequential_43/activation_22/ReluRelu8sequential_43/batch_normalization_34/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_43/activation_22/Relu?
,sequential_43/dense_95/MatMul/ReadVariableOpReadVariableOp5sequential_43_dense_95_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_43/dense_95/MatMul/ReadVariableOp?
sequential_43/dense_95/MatMulMatMul.sequential_43/activation_22/Relu:activations:04sequential_43/dense_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_43/dense_95/MatMul?
=sequential_43/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOpFsequential_43_batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_43/batch_normalization_35/batchnorm/ReadVariableOp?
4sequential_43/batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_43/batch_normalization_35/batchnorm/add/y?
2sequential_43/batch_normalization_35/batchnorm/addAddV2Esequential_43/batch_normalization_35/batchnorm/ReadVariableOp:value:0=sequential_43/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_43/batch_normalization_35/batchnorm/add?
4sequential_43/batch_normalization_35/batchnorm/RsqrtRsqrt6sequential_43/batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_43/batch_normalization_35/batchnorm/Rsqrt?
Asequential_43/batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_43_batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_43/batch_normalization_35/batchnorm/mul/ReadVariableOp?
2sequential_43/batch_normalization_35/batchnorm/mulMul8sequential_43/batch_normalization_35/batchnorm/Rsqrt:y:0Isequential_43/batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_43/batch_normalization_35/batchnorm/mul?
4sequential_43/batch_normalization_35/batchnorm/mul_1Mul'sequential_43/dense_95/MatMul:product:06sequential_43/batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_43/batch_normalization_35/batchnorm/mul_1?
?sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_43_batch_normalization_35_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_1?
4sequential_43/batch_normalization_35/batchnorm/mul_2MulGsequential_43/batch_normalization_35/batchnorm/ReadVariableOp_1:value:06sequential_43/batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_43/batch_normalization_35/batchnorm/mul_2?
?sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_43_batch_normalization_35_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_2?
2sequential_43/batch_normalization_35/batchnorm/subSubGsequential_43/batch_normalization_35/batchnorm/ReadVariableOp_2:value:08sequential_43/batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_43/batch_normalization_35/batchnorm/sub?
4sequential_43/batch_normalization_35/batchnorm/add_1AddV28sequential_43/batch_normalization_35/batchnorm/mul_1:z:06sequential_43/batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_43/batch_normalization_35/batchnorm/add_1?
 sequential_43/activation_23/ReluRelu8sequential_43/batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_43/activation_23/Relu?
,sequential_43/dense_96/MatMul/ReadVariableOpReadVariableOp5sequential_43_dense_96_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02.
,sequential_43/dense_96/MatMul/ReadVariableOp?
sequential_43/dense_96/MatMulMatMul.sequential_43/activation_23/Relu:activations:04sequential_43/dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
sequential_43/dense_96/MatMul?
=sequential_43/batch_normalization_36/batchnorm/ReadVariableOpReadVariableOpFsequential_43_batch_normalization_36_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype02?
=sequential_43/batch_normalization_36/batchnorm/ReadVariableOp?
4sequential_43/batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_43/batch_normalization_36/batchnorm/add/y?
2sequential_43/batch_normalization_36/batchnorm/addAddV2Esequential_43/batch_normalization_36/batchnorm/ReadVariableOp:value:0=sequential_43/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes
:T24
2sequential_43/batch_normalization_36/batchnorm/add?
4sequential_43/batch_normalization_36/batchnorm/RsqrtRsqrt6sequential_43/batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes
:T26
4sequential_43/batch_normalization_36/batchnorm/Rsqrt?
Asequential_43/batch_normalization_36/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_43_batch_normalization_36_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype02C
Asequential_43/batch_normalization_36/batchnorm/mul/ReadVariableOp?
2sequential_43/batch_normalization_36/batchnorm/mulMul8sequential_43/batch_normalization_36/batchnorm/Rsqrt:y:0Isequential_43/batch_normalization_36/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T24
2sequential_43/batch_normalization_36/batchnorm/mul?
4sequential_43/batch_normalization_36/batchnorm/mul_1Mul'sequential_43/dense_96/MatMul:product:06sequential_43/batch_normalization_36/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T26
4sequential_43/batch_normalization_36/batchnorm/mul_1?
?sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_43_batch_normalization_36_batchnorm_readvariableop_1_resource*
_output_shapes
:T*
dtype02A
?sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_1?
4sequential_43/batch_normalization_36/batchnorm/mul_2MulGsequential_43/batch_normalization_36/batchnorm/ReadVariableOp_1:value:06sequential_43/batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes
:T26
4sequential_43/batch_normalization_36/batchnorm/mul_2?
?sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_43_batch_normalization_36_batchnorm_readvariableop_2_resource*
_output_shapes
:T*
dtype02A
?sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_2?
2sequential_43/batch_normalization_36/batchnorm/subSubGsequential_43/batch_normalization_36/batchnorm/ReadVariableOp_2:value:08sequential_43/batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T24
2sequential_43/batch_normalization_36/batchnorm/sub?
4sequential_43/batch_normalization_36/batchnorm/add_1AddV28sequential_43/batch_normalization_36/batchnorm/mul_1:z:06sequential_43/batch_normalization_36/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T26
4sequential_43/batch_normalization_36/batchnorm/add_1?
 sequential_43/activation_24/ReluRelu8sequential_43/batch_normalization_36/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2"
 sequential_43/activation_24/Relu?
!sequential_43/dropout_29/IdentityIdentity.sequential_43/activation_24/Relu:activations:0*
T0*'
_output_shapes
:?????????T2#
!sequential_43/dropout_29/Identity?
,sequential_43/dense_97/MatMul/ReadVariableOpReadVariableOp5sequential_43_dense_97_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02.
,sequential_43/dense_97/MatMul/ReadVariableOp?
sequential_43/dense_97/MatMulMatMul*sequential_43/dropout_29/Identity:output:04sequential_43/dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_43/dense_97/MatMul?
-sequential_43/dense_97/BiasAdd/ReadVariableOpReadVariableOp6sequential_43_dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_43/dense_97/BiasAdd/ReadVariableOp?
sequential_43/dense_97/BiasAddBiasAdd'sequential_43/dense_97/MatMul:product:05sequential_43/dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_43/dense_97/BiasAdd?
sequential_43/dense_97/SoftmaxSoftmax'sequential_43/dense_97/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_43/dense_97/Softmax?
IdentityIdentity(sequential_43/dense_97/Softmax:softmax:0E^sequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOpG^sequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_14^sequential_43/batch_normalization_32/ReadVariableOp6^sequential_43/batch_normalization_32/ReadVariableOp_1E^sequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOpG^sequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_14^sequential_43/batch_normalization_33/ReadVariableOp6^sequential_43/batch_normalization_33/ReadVariableOp_1>^sequential_43/batch_normalization_34/batchnorm/ReadVariableOp@^sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_1@^sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_2B^sequential_43/batch_normalization_34/batchnorm/mul/ReadVariableOp>^sequential_43/batch_normalization_35/batchnorm/ReadVariableOp@^sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_1@^sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_2B^sequential_43/batch_normalization_35/batchnorm/mul/ReadVariableOp>^sequential_43/batch_normalization_36/batchnorm/ReadVariableOp@^sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_1@^sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_2B^sequential_43/batch_normalization_36/batchnorm/mul/ReadVariableOp0^sequential_43/conv2d_125/BiasAdd/ReadVariableOp/^sequential_43/conv2d_125/Conv2D/ReadVariableOp/^sequential_43/conv2d_126/Conv2D/ReadVariableOp0^sequential_43/conv2d_127/BiasAdd/ReadVariableOp/^sequential_43/conv2d_127/Conv2D/ReadVariableOp/^sequential_43/conv2d_128/Conv2D/ReadVariableOp-^sequential_43/dense_94/MatMul/ReadVariableOp-^sequential_43/dense_95/MatMul/ReadVariableOp-^sequential_43/dense_96/MatMul/ReadVariableOp.^sequential_43/dense_97/BiasAdd/ReadVariableOp-^sequential_43/dense_97/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Dsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOpDsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp2?
Fsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1Fsequential_43/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12j
3sequential_43/batch_normalization_32/ReadVariableOp3sequential_43/batch_normalization_32/ReadVariableOp2n
5sequential_43/batch_normalization_32/ReadVariableOp_15sequential_43/batch_normalization_32/ReadVariableOp_12?
Dsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOpDsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp2?
Fsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1Fsequential_43/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12j
3sequential_43/batch_normalization_33/ReadVariableOp3sequential_43/batch_normalization_33/ReadVariableOp2n
5sequential_43/batch_normalization_33/ReadVariableOp_15sequential_43/batch_normalization_33/ReadVariableOp_12~
=sequential_43/batch_normalization_34/batchnorm/ReadVariableOp=sequential_43/batch_normalization_34/batchnorm/ReadVariableOp2?
?sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_1?sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_12?
?sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_2?sequential_43/batch_normalization_34/batchnorm/ReadVariableOp_22?
Asequential_43/batch_normalization_34/batchnorm/mul/ReadVariableOpAsequential_43/batch_normalization_34/batchnorm/mul/ReadVariableOp2~
=sequential_43/batch_normalization_35/batchnorm/ReadVariableOp=sequential_43/batch_normalization_35/batchnorm/ReadVariableOp2?
?sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_1?sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_12?
?sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_2?sequential_43/batch_normalization_35/batchnorm/ReadVariableOp_22?
Asequential_43/batch_normalization_35/batchnorm/mul/ReadVariableOpAsequential_43/batch_normalization_35/batchnorm/mul/ReadVariableOp2~
=sequential_43/batch_normalization_36/batchnorm/ReadVariableOp=sequential_43/batch_normalization_36/batchnorm/ReadVariableOp2?
?sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_1?sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_12?
?sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_2?sequential_43/batch_normalization_36/batchnorm/ReadVariableOp_22?
Asequential_43/batch_normalization_36/batchnorm/mul/ReadVariableOpAsequential_43/batch_normalization_36/batchnorm/mul/ReadVariableOp2b
/sequential_43/conv2d_125/BiasAdd/ReadVariableOp/sequential_43/conv2d_125/BiasAdd/ReadVariableOp2`
.sequential_43/conv2d_125/Conv2D/ReadVariableOp.sequential_43/conv2d_125/Conv2D/ReadVariableOp2`
.sequential_43/conv2d_126/Conv2D/ReadVariableOp.sequential_43/conv2d_126/Conv2D/ReadVariableOp2b
/sequential_43/conv2d_127/BiasAdd/ReadVariableOp/sequential_43/conv2d_127/BiasAdd/ReadVariableOp2`
.sequential_43/conv2d_127/Conv2D/ReadVariableOp.sequential_43/conv2d_127/Conv2D/ReadVariableOp2`
.sequential_43/conv2d_128/Conv2D/ReadVariableOp.sequential_43/conv2d_128/Conv2D/ReadVariableOp2\
,sequential_43/dense_94/MatMul/ReadVariableOp,sequential_43/dense_94/MatMul/ReadVariableOp2\
,sequential_43/dense_95/MatMul/ReadVariableOp,sequential_43/dense_95/MatMul/ReadVariableOp2\
,sequential_43/dense_96/MatMul/ReadVariableOp,sequential_43/dense_96/MatMul/ReadVariableOp2^
-sequential_43/dense_97/BiasAdd/ReadVariableOp-sequential_43/dense_97/BiasAdd/ReadVariableOp2\
,sequential_43/dense_97/MatMul/ReadVariableOp,sequential_43/dense_97/MatMul/ReadVariableOp:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_125_input
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_856471

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????8@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
?
?
F__inference_conv2d_127_layer_call_and_return_conditional_losses_858260

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
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
:?????????:@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
Relu?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????:@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<	 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_32_layer_call_fn_858080

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_8555972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_conv2d_128_layer_call_fn_858267

inputs!
unknown:@@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_128_layer_call_and_return_conditional_losses_8564502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????:@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858173

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????y 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????y : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????y 
 
_user_specified_nameinputs
?
G
+__inference_dropout_27_layer_call_fn_858206

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_8564182
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<	 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<	 :W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858398

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????8@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????8@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858137

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?
I__inference_sequential_43_layer_call_and_return_conditional_losses_857121

inputs+
conv2d_125_857022: 
conv2d_125_857024: +
conv2d_126_857027:  +
batch_normalization_32_857030: +
batch_normalization_32_857032: +
batch_normalization_32_857034: +
batch_normalization_32_857036: +
conv2d_127_857042: @
conv2d_127_857044:@+
conv2d_128_857047:@@+
batch_normalization_33_857050:@+
batch_normalization_33_857052:@+
batch_normalization_33_857054:@+
batch_normalization_33_857056:@#
dense_94_857063:
??,
batch_normalization_34_857066:	?,
batch_normalization_34_857068:	?,
batch_normalization_34_857070:	?,
batch_normalization_34_857072:	?#
dense_95_857076:
??,
batch_normalization_35_857079:	?,
batch_normalization_35_857081:	?,
batch_normalization_35_857083:	?,
batch_normalization_35_857085:	?"
dense_96_857089:	?T+
batch_normalization_36_857092:T+
batch_normalization_36_857094:T+
batch_normalization_36_857096:T+
batch_normalization_36_857098:T!
dense_97_857103:T
dense_97_857105:
identity??.batch_normalization_32/StatefulPartitionedCall?.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?.batch_normalization_36/StatefulPartitionedCall?"conv2d_125/StatefulPartitionedCall?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?"conv2d_126/StatefulPartitionedCall?"conv2d_127/StatefulPartitionedCall?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?"conv2d_128/StatefulPartitionedCall? dense_94/StatefulPartitionedCall? dense_95/StatefulPartitionedCall? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?"dropout_27/StatefulPartitionedCall?"dropout_28/StatefulPartitionedCall?"dropout_29/StatefulPartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_125_857022conv2d_125_857024*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????} *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_8563612$
"conv2d_125/StatefulPartitionedCall?
"conv2d_126/StatefulPartitionedCallStatefulPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0conv2d_126_857027*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_8563742$
"conv2d_126/StatefulPartitionedCall?
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall+conv2d_126/StatefulPartitionedCall:output:0batch_normalization_32_857030batch_normalization_32_857032batch_normalization_32_857034batch_normalization_32_857036*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_85692120
.batch_normalization_32/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????y * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_20_layer_call_and_return_conditional_losses_8564102
activation_20/PartitionedCall?
!max_pooling2d_107/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_8557072#
!max_pooling2d_107/PartitionedCall?
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_107/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<	 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_8568792$
"dropout_27/StatefulPartitionedCall?
"conv2d_127/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0conv2d_127_857042conv2d_127_857044*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_8564372$
"conv2d_127/StatefulPartitionedCall?
"conv2d_128/StatefulPartitionedCallStatefulPartitionedCall+conv2d_127/StatefulPartitionedCall:output:0conv2d_128_857047*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_128_layer_call_and_return_conditional_losses_8564502$
"conv2d_128/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall+conv2d_128/StatefulPartitionedCall:output:0batch_normalization_33_857050batch_normalization_33_857052batch_normalization_33_857054batch_normalization_33_857056*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_85683020
.batch_normalization_33/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_21_layer_call_and_return_conditional_losses_8564862
activation_21/PartitionedCall?
!max_pooling2d_108/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_8558452#
!max_pooling2d_108/PartitionedCall?
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_8567882$
"dropout_28/StatefulPartitionedCall?
flatten_41/PartitionedCallPartitionedCall+dropout_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_8565022
flatten_41/PartitionedCall?
 dense_94/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_94_857063*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_94_layer_call_and_return_conditional_losses_8565112"
 dense_94/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall)dense_94/StatefulPartitionedCall:output:0batch_normalization_34_857066batch_normalization_34_857068batch_normalization_34_857070batch_normalization_34_857072*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_85593520
.batch_normalization_34/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_22_layer_call_and_return_conditional_losses_8565292
activation_22/PartitionedCall?
 dense_95/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_95_857076*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_95_layer_call_and_return_conditional_losses_8565382"
 dense_95/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall)dense_95/StatefulPartitionedCall:output:0batch_normalization_35_857079batch_normalization_35_857081batch_normalization_35_857083batch_normalization_35_857085*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_85609720
.batch_normalization_35/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_23_layer_call_and_return_conditional_losses_8565562
activation_23/PartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0dense_96_857089*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_96_layer_call_and_return_conditional_losses_8565652"
 dense_96/StatefulPartitionedCall?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0batch_normalization_36_857092batch_normalization_36_857094batch_normalization_36_857096batch_normalization_36_857098*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_85625920
.batch_normalization_36/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_activation_24_layer_call_and_return_conditional_losses_8565832
activation_24/PartitionedCall?
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_8567172$
"dropout_29/StatefulPartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_97_857103dense_97_857105*
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
D__inference_dense_97_layer_call_and_return_conditional_losses_8566032"
 dense_97/StatefulPartitionedCall?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_125_857022*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_127_857042*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall/^batch_normalization_36/StatefulPartitionedCall#^conv2d_125/StatefulPartitionedCall4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp#^conv2d_126/StatefulPartitionedCall#^conv2d_127/StatefulPartitionedCall4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp#^conv2d_128/StatefulPartitionedCall!^dense_94/StatefulPartitionedCall!^dense_95/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_126/StatefulPartitionedCall"conv2d_126/StatefulPartitionedCall2H
"conv2d_127/StatefulPartitionedCall"conv2d_127/StatefulPartitionedCall2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_128/StatefulPartitionedCall"conv2d_128/StatefulPartitionedCall2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_107_layer_call_fn_855713

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_8557072
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
?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858155

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
V
conv2d_125_inputB
"serving_default_conv2d_125_input:0??????????<
dense_970
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer_with_weights-8
layer-16
layer_with_weights-9
layer-17
layer-18
layer_with_weights-10
layer-19
layer_with_weights-11
layer-20
layer-21
layer-22
layer_with_weights-12
layer-23
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"??
_tf_keras_sequential??{"name": "sequential_43", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_43", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_125_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_125", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_126", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_32", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_27", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_127", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_128", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_94", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_95", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_96", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_36", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_97", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 63, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 129, 26, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 129, 26, 1]}, "float32", "conv2d_125_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_43", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_125_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_125", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_126", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_32", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 12}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14}, {"class_name": "Dropout", "config": {"name": "dropout_27", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "conv2d_127", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "Conv2D", "config": {"name": "conv2d_128", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 28}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 29}, {"class_name": "Dropout", "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 30}, {"class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 31}, {"class_name": "Dense", "config": {"name": "dense_94", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 34}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 39}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 40}, {"class_name": "Dense", "config": {"name": "dense_95", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 45}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 48}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 49}, {"class_name": "Dense", "config": {"name": "dense_96", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 52}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_36", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 54}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 56}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 57}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 58}, {"class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 59}, {"class_name": "Dense", "config": {"name": "dense_97", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 62}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 65}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-08, "centered": false}}}}
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?
{"name": "conv2d_125", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_125", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 129, 26, 1]}}
?


%kernel
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_126", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_126", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 125, 22, 32]}}
?

*axis
	+gamma
,beta
-moving_mean
.moving_variance
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_32", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_32", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 67}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 121, 18, 32]}}
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}
?
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_107", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_107", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 68}}
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_27", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_27", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 15}
?

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_127", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_127", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 69}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 9, 32]}}
?


Ekernel
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_128", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_128", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 70}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 58, 7, 64]}}
?

Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_33", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 71}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 5, 64]}}
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 28}
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_108", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_108", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 72}}
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 30}
?
_	variables
`trainable_variables
aregularization_losses
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 73}}
?

ckernel
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_94", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3584}}, "shared_object_id": 74}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3584]}}
?

haxis
	igamma
jbeta
kmoving_mean
lmoving_variance
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 40}
?

ukernel
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_95", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_95", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 76}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

zaxis
	{gamma
|beta
}moving_mean
~moving_variance
	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_35", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 45}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 48, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}, "shared_object_id": 77}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 49}
?
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_96", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_96", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 78}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?

	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_36", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_36", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 54}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 56}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 57, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 84}}, "shared_object_id": 79}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 58}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 59}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_97", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_97", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 62, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 84}}, "shared_object_id": 80}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
?
	?iter

?decay
?learning_rate
?momentum
?rho
rms?
 rms?
%rms?
+rms?
,rms?
?rms?
@rms?
Erms?
Krms?
Lrms?
crms?
irms?
jrms?
urms?
{rms?
|rms??rms??rms??rms??rms??rms?"
	optimizer
?
0
 1
%2
+3
,4
-5
.6
?7
@8
E9
K10
L11
M12
N13
c14
i15
j16
k17
l18
u19
{20
|21
}22
~23
?24
?25
?26
?27
?28
?29
?30"
trackable_list_wrapper
?
0
 1
%2
+3
,4
?5
@6
E7
K8
L9
c10
i11
j12
u13
{14
|15
?16
?17
?18
?19
?20"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
	variables
?layers
?non_trainable_variables
trainable_variables
?metrics
regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:) 2conv2d_125/kernel
: 2conv2d_125/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
!	variables
?layers
?non_trainable_variables
"trainable_variables
?metrics
#regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_126/kernel
'
%0"
trackable_list_wrapper
'
%0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
&	variables
?layers
?non_trainable_variables
'trainable_variables
?metrics
(regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_32/gamma
):' 2batch_normalization_32/beta
2:0  (2"batch_normalization_32/moving_mean
6:4  (2&batch_normalization_32/moving_variance
<
+0
,1
-2
.3"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/	variables
?layers
?non_trainable_variables
0trainable_variables
?metrics
1regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
3	variables
?layers
?non_trainable_variables
4trainable_variables
?metrics
5regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
7	variables
?layers
?non_trainable_variables
8trainable_variables
?metrics
9regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
;	variables
?layers
?non_trainable_variables
<trainable_variables
?metrics
=regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_127/kernel
:@2conv2d_127/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
A	variables
?layers
?non_trainable_variables
Btrainable_variables
?metrics
Cregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@@2conv2d_128/kernel
'
E0"
trackable_list_wrapper
'
E0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
F	variables
?layers
?non_trainable_variables
Gtrainable_variables
?metrics
Hregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_33/gamma
):'@2batch_normalization_33/beta
2:0@ (2"batch_normalization_33/moving_mean
6:4@ (2&batch_normalization_33/moving_variance
<
K0
L1
M2
N3"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
O	variables
?layers
?non_trainable_variables
Ptrainable_variables
?metrics
Qregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
S	variables
?layers
?non_trainable_variables
Ttrainable_variables
?metrics
Uregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
W	variables
?layers
?non_trainable_variables
Xtrainable_variables
?metrics
Yregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
[	variables
?layers
?non_trainable_variables
\trainable_variables
?metrics
]regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
_	variables
?layers
?non_trainable_variables
`trainable_variables
?metrics
aregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_94/kernel
'
c0"
trackable_list_wrapper
'
c0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
d	variables
?layers
?non_trainable_variables
etrainable_variables
?metrics
fregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_34/gamma
*:(?2batch_normalization_34/beta
3:1? (2"batch_normalization_34/moving_mean
7:5? (2&batch_normalization_34/moving_variance
<
i0
j1
k2
l3"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
m	variables
?layers
?non_trainable_variables
ntrainable_variables
?metrics
oregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
q	variables
?layers
?non_trainable_variables
rtrainable_variables
?metrics
sregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_95/kernel
'
u0"
trackable_list_wrapper
'
u0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
v	variables
?layers
?non_trainable_variables
wtrainable_variables
?metrics
xregularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_35/gamma
*:(?2batch_normalization_35/beta
3:1? (2"batch_normalization_35/moving_mean
7:5? (2&batch_normalization_35/moving_variance
<
{0
|1
}2
~3"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?T2dense_96/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(T2batch_normalization_36/gamma
):'T2batch_normalization_36/beta
2:0T (2"batch_normalization_36/moving_mean
6:4T (2&batch_normalization_36/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:T2dense_97/kernel
:2dense_97/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layers
?non_trainable_variables
?trainable_variables
?metrics
?regularization_losses
?layer_metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23"
trackable_list_wrapper
h
-0
.1
M2
N3
k4
l5
}6
~7
?8
?9"
trackable_list_wrapper
0
?0
?1"
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
?0"
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
.
-0
.1"
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
?0"
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
.
M0
N1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
k0
l1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
}0
~1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 81}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 65}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
5:3 2RMSprop/conv2d_125/kernel/rms
':% 2RMSprop/conv2d_125/bias/rms
5:3  2RMSprop/conv2d_126/kernel/rms
4:2 2(RMSprop/batch_normalization_32/gamma/rms
3:1 2'RMSprop/batch_normalization_32/beta/rms
5:3 @2RMSprop/conv2d_127/kernel/rms
':%@2RMSprop/conv2d_127/bias/rms
5:3@@2RMSprop/conv2d_128/kernel/rms
4:2@2(RMSprop/batch_normalization_33/gamma/rms
3:1@2'RMSprop/batch_normalization_33/beta/rms
-:+
??2RMSprop/dense_94/kernel/rms
5:3?2(RMSprop/batch_normalization_34/gamma/rms
4:2?2'RMSprop/batch_normalization_34/beta/rms
-:+
??2RMSprop/dense_95/kernel/rms
5:3?2(RMSprop/batch_normalization_35/gamma/rms
4:2?2'RMSprop/batch_normalization_35/beta/rms
,:*	?T2RMSprop/dense_96/kernel/rms
4:2T2(RMSprop/batch_normalization_36/gamma/rms
3:1T2'RMSprop/batch_normalization_36/beta/rms
+:)T2RMSprop/dense_97/kernel/rms
%:#2RMSprop/dense_97/bias/rms
?2?
.__inference_sequential_43_layer_call_fn_856687
.__inference_sequential_43_layer_call_fn_857611
.__inference_sequential_43_layer_call_fn_857678
.__inference_sequential_43_layer_call_fn_857253?
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
!__inference__wrapped_model_855575?
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
annotations? *8?5
3?0
conv2d_125_input??????????
?2?
I__inference_sequential_43_layer_call_and_return_conditional_losses_857818
I__inference_sequential_43_layer_call_and_return_conditional_losses_858021
I__inference_sequential_43_layer_call_and_return_conditional_losses_857355
I__inference_sequential_43_layer_call_and_return_conditional_losses_857457?
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
+__inference_conv2d_125_layer_call_fn_858036?
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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_858053?
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
+__inference_conv2d_126_layer_call_fn_858060?
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
F__inference_conv2d_126_layer_call_and_return_conditional_losses_858067?
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
?2?
7__inference_batch_normalization_32_layer_call_fn_858080
7__inference_batch_normalization_32_layer_call_fn_858093
7__inference_batch_normalization_32_layer_call_fn_858106
7__inference_batch_normalization_32_layer_call_fn_858119?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858137
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858155
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858173
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858191?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_activation_20_layer_call_fn_858196?
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
I__inference_activation_20_layer_call_and_return_conditional_losses_858201?
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
2__inference_max_pooling2d_107_layer_call_fn_855713?
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
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_855707?
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
+__inference_dropout_27_layer_call_fn_858206
+__inference_dropout_27_layer_call_fn_858211?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_27_layer_call_and_return_conditional_losses_858216
F__inference_dropout_27_layer_call_and_return_conditional_losses_858228?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_conv2d_127_layer_call_fn_858243?
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
F__inference_conv2d_127_layer_call_and_return_conditional_losses_858260?
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
+__inference_conv2d_128_layer_call_fn_858267?
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
F__inference_conv2d_128_layer_call_and_return_conditional_losses_858274?
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
?2?
7__inference_batch_normalization_33_layer_call_fn_858287
7__inference_batch_normalization_33_layer_call_fn_858300
7__inference_batch_normalization_33_layer_call_fn_858313
7__inference_batch_normalization_33_layer_call_fn_858326?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858344
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858362
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858380
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858398?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_activation_21_layer_call_fn_858403?
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
I__inference_activation_21_layer_call_and_return_conditional_losses_858408?
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
2__inference_max_pooling2d_108_layer_call_fn_855851?
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
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_855845?
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
+__inference_dropout_28_layer_call_fn_858413
+__inference_dropout_28_layer_call_fn_858418?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_28_layer_call_and_return_conditional_losses_858423
F__inference_dropout_28_layer_call_and_return_conditional_losses_858435?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_flatten_41_layer_call_fn_858440?
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
F__inference_flatten_41_layer_call_and_return_conditional_losses_858446?
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
)__inference_dense_94_layer_call_fn_858453?
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
D__inference_dense_94_layer_call_and_return_conditional_losses_858460?
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
7__inference_batch_normalization_34_layer_call_fn_858473
7__inference_batch_normalization_34_layer_call_fn_858486?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_858506
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_858540?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_activation_22_layer_call_fn_858545?
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
I__inference_activation_22_layer_call_and_return_conditional_losses_858550?
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
)__inference_dense_95_layer_call_fn_858557?
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
D__inference_dense_95_layer_call_and_return_conditional_losses_858564?
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
7__inference_batch_normalization_35_layer_call_fn_858577
7__inference_batch_normalization_35_layer_call_fn_858590?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_858610
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_858644?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_activation_23_layer_call_fn_858649?
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
I__inference_activation_23_layer_call_and_return_conditional_losses_858654?
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
)__inference_dense_96_layer_call_fn_858661?
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
D__inference_dense_96_layer_call_and_return_conditional_losses_858668?
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
7__inference_batch_normalization_36_layer_call_fn_858681
7__inference_batch_normalization_36_layer_call_fn_858694?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_858714
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_858748?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_activation_24_layer_call_fn_858753?
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
I__inference_activation_24_layer_call_and_return_conditional_losses_858758?
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
+__inference_dropout_29_layer_call_fn_858763
+__inference_dropout_29_layer_call_fn_858768?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_29_layer_call_and_return_conditional_losses_858773
F__inference_dropout_29_layer_call_and_return_conditional_losses_858785?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_97_layer_call_fn_858794?
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
D__inference_dense_97_layer_call_and_return_conditional_losses_858805?
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
__inference_loss_fn_0_858816?
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
__inference_loss_fn_1_858827?
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
$__inference_signature_wrapper_857544conv2d_125_input"?
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
!__inference__wrapped_model_855575?& %+,-.?@EKLMNclikju~{}|???????B??
8?5
3?0
conv2d_125_input??????????
? "3?0
.
dense_97"?
dense_97??????????
I__inference_activation_20_layer_call_and_return_conditional_losses_858201h7?4
-?*
(?%
inputs?????????y 
? "-?*
#? 
0?????????y 
? ?
.__inference_activation_20_layer_call_fn_858196[7?4
-?*
(?%
inputs?????????y 
? " ??????????y ?
I__inference_activation_21_layer_call_and_return_conditional_losses_858408h7?4
-?*
(?%
inputs?????????8@
? "-?*
#? 
0?????????8@
? ?
.__inference_activation_21_layer_call_fn_858403[7?4
-?*
(?%
inputs?????????8@
? " ??????????8@?
I__inference_activation_22_layer_call_and_return_conditional_losses_858550Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
.__inference_activation_22_layer_call_fn_858545M0?-
&?#
!?
inputs??????????
? "????????????
I__inference_activation_23_layer_call_and_return_conditional_losses_858654Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
.__inference_activation_23_layer_call_fn_858649M0?-
&?#
!?
inputs??????????
? "????????????
I__inference_activation_24_layer_call_and_return_conditional_losses_858758X/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????T
? }
.__inference_activation_24_layer_call_fn_858753K/?,
%?"
 ?
inputs?????????T
? "??????????T?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858137?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858155?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858173r+,-.;?8
1?.
(?%
inputs?????????y 
p 
? "-?*
#? 
0?????????y 
? ?
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_858191r+,-.;?8
1?.
(?%
inputs?????????y 
p
? "-?*
#? 
0?????????y 
? ?
7__inference_batch_normalization_32_layer_call_fn_858080?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_32_layer_call_fn_858093?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_32_layer_call_fn_858106e+,-.;?8
1?.
(?%
inputs?????????y 
p 
? " ??????????y ?
7__inference_batch_normalization_32_layer_call_fn_858119e+,-.;?8
1?.
(?%
inputs?????????y 
p
? " ??????????y ?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858344?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858362?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858380rKLMN;?8
1?.
(?%
inputs?????????8@
p 
? "-?*
#? 
0?????????8@
? ?
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_858398rKLMN;?8
1?.
(?%
inputs?????????8@
p
? "-?*
#? 
0?????????8@
? ?
7__inference_batch_normalization_33_layer_call_fn_858287?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
7__inference_batch_normalization_33_layer_call_fn_858300?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_33_layer_call_fn_858313eKLMN;?8
1?.
(?%
inputs?????????8@
p 
? " ??????????8@?
7__inference_batch_normalization_33_layer_call_fn_858326eKLMN;?8
1?.
(?%
inputs?????????8@
p
? " ??????????8@?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_858506dlikj4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_858540dklij4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_34_layer_call_fn_858473Wlikj4?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_34_layer_call_fn_858486Wklij4?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_858610d~{}|4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_858644d}~{|4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_35_layer_call_fn_858577W~{}|4?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_35_layer_call_fn_858590W}~{|4?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_858714f????3?0
)?&
 ?
inputs?????????T
p 
? "%?"
?
0?????????T
? ?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_858748f????3?0
)?&
 ?
inputs?????????T
p
? "%?"
?
0?????????T
? ?
7__inference_batch_normalization_36_layer_call_fn_858681Y????3?0
)?&
 ?
inputs?????????T
p 
? "??????????T?
7__inference_batch_normalization_36_layer_call_fn_858694Y????3?0
)?&
 ?
inputs?????????T
p
? "??????????T?
F__inference_conv2d_125_layer_call_and_return_conditional_losses_858053m 8?5
.?+
)?&
inputs??????????
? "-?*
#? 
0?????????} 
? ?
+__inference_conv2d_125_layer_call_fn_858036` 8?5
.?+
)?&
inputs??????????
? " ??????????} ?
F__inference_conv2d_126_layer_call_and_return_conditional_losses_858067k%7?4
-?*
(?%
inputs?????????} 
? "-?*
#? 
0?????????y 
? ?
+__inference_conv2d_126_layer_call_fn_858060^%7?4
-?*
(?%
inputs?????????} 
? " ??????????y ?
F__inference_conv2d_127_layer_call_and_return_conditional_losses_858260l?@7?4
-?*
(?%
inputs?????????<	 
? "-?*
#? 
0?????????:@
? ?
+__inference_conv2d_127_layer_call_fn_858243_?@7?4
-?*
(?%
inputs?????????<	 
? " ??????????:@?
F__inference_conv2d_128_layer_call_and_return_conditional_losses_858274kE7?4
-?*
(?%
inputs?????????:@
? "-?*
#? 
0?????????8@
? ?
+__inference_conv2d_128_layer_call_fn_858267^E7?4
-?*
(?%
inputs?????????:@
? " ??????????8@?
D__inference_dense_94_layer_call_and_return_conditional_losses_858460]c0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
)__inference_dense_94_layer_call_fn_858453Pc0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_95_layer_call_and_return_conditional_losses_858564]u0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
)__inference_dense_95_layer_call_fn_858557Pu0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_96_layer_call_and_return_conditional_losses_858668]?0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????T
? }
)__inference_dense_96_layer_call_fn_858661P?0?-
&?#
!?
inputs??????????
? "??????????T?
D__inference_dense_97_layer_call_and_return_conditional_losses_858805^??/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????
? ~
)__inference_dense_97_layer_call_fn_858794Q??/?,
%?"
 ?
inputs?????????T
? "???????????
F__inference_dropout_27_layer_call_and_return_conditional_losses_858216l;?8
1?.
(?%
inputs?????????<	 
p 
? "-?*
#? 
0?????????<	 
? ?
F__inference_dropout_27_layer_call_and_return_conditional_losses_858228l;?8
1?.
(?%
inputs?????????<	 
p
? "-?*
#? 
0?????????<	 
? ?
+__inference_dropout_27_layer_call_fn_858206_;?8
1?.
(?%
inputs?????????<	 
p 
? " ??????????<	 ?
+__inference_dropout_27_layer_call_fn_858211_;?8
1?.
(?%
inputs?????????<	 
p
? " ??????????<	 ?
F__inference_dropout_28_layer_call_and_return_conditional_losses_858423l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
F__inference_dropout_28_layer_call_and_return_conditional_losses_858435l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
+__inference_dropout_28_layer_call_fn_858413_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
+__inference_dropout_28_layer_call_fn_858418_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
F__inference_dropout_29_layer_call_and_return_conditional_losses_858773\3?0
)?&
 ?
inputs?????????T
p 
? "%?"
?
0?????????T
? ?
F__inference_dropout_29_layer_call_and_return_conditional_losses_858785\3?0
)?&
 ?
inputs?????????T
p
? "%?"
?
0?????????T
? ~
+__inference_dropout_29_layer_call_fn_858763O3?0
)?&
 ?
inputs?????????T
p 
? "??????????T~
+__inference_dropout_29_layer_call_fn_858768O3?0
)?&
 ?
inputs?????????T
p
? "??????????T?
F__inference_flatten_41_layer_call_and_return_conditional_losses_858446a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_41_layer_call_fn_858440T7?4
-?*
(?%
inputs?????????@
? "???????????;
__inference_loss_fn_0_858816?

? 
? "? ;
__inference_loss_fn_1_858827??

? 
? "? ?
M__inference_max_pooling2d_107_layer_call_and_return_conditional_losses_855707?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_107_layer_call_fn_855713?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_855845?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_108_layer_call_fn_855851?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_43_layer_call_and_return_conditional_losses_857355?& %+,-.?@EKLMNclikju~{}|???????J?G
@?=
3?0
conv2d_125_input??????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_43_layer_call_and_return_conditional_losses_857457?& %+,-.?@EKLMNckliju}~{|???????J?G
@?=
3?0
conv2d_125_input??????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_43_layer_call_and_return_conditional_losses_857818?& %+,-.?@EKLMNclikju~{}|???????@?=
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
I__inference_sequential_43_layer_call_and_return_conditional_losses_858021?& %+,-.?@EKLMNckliju}~{|???????@?=
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
.__inference_sequential_43_layer_call_fn_856687?& %+,-.?@EKLMNclikju~{}|???????J?G
@?=
3?0
conv2d_125_input??????????
p 

 
? "???????????
.__inference_sequential_43_layer_call_fn_857253?& %+,-.?@EKLMNckliju}~{|???????J?G
@?=
3?0
conv2d_125_input??????????
p

 
? "???????????
.__inference_sequential_43_layer_call_fn_857611?& %+,-.?@EKLMNclikju~{}|???????@?=
6?3
)?&
inputs??????????
p 

 
? "???????????
.__inference_sequential_43_layer_call_fn_857678?& %+,-.?@EKLMNckliju}~{|???????@?=
6?3
)?&
inputs??????????
p

 
? "???????????
$__inference_signature_wrapper_857544?& %+,-.?@EKLMNclikju~{}|???????V?S
? 
L?I
G
conv2d_125_input3?0
conv2d_125_input??????????"3?0
.
dense_97"?
dense_97?????????