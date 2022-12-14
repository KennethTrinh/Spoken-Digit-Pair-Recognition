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
conv2d_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_121/kernel

%conv2d_121/kernel/Read/ReadVariableOpReadVariableOpconv2d_121/kernel*&
_output_shapes
: *
dtype0
v
conv2d_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_121/bias
o
#conv2d_121/bias/Read/ReadVariableOpReadVariableOpconv2d_121/bias*
_output_shapes
: *
dtype0
?
conv2d_122/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_122/kernel

%conv2d_122/kernel/Read/ReadVariableOpReadVariableOpconv2d_122/kernel*&
_output_shapes
:  *
dtype0
?
batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_27/gamma
?
0batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_27/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_27/beta
?
/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_27/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_27/moving_mean
?
6batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_27/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_27/moving_variance
?
:batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_27/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_123/kernel

%conv2d_123/kernel/Read/ReadVariableOpReadVariableOpconv2d_123/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_123/bias
o
#conv2d_123/bias/Read/ReadVariableOpReadVariableOpconv2d_123/bias*
_output_shapes
:@*
dtype0
?
conv2d_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_124/kernel

%conv2d_124/kernel/Read/ReadVariableOpReadVariableOpconv2d_124/kernel*&
_output_shapes
:@@*
dtype0
?
batch_normalization_28/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_28/gamma
?
0batch_normalization_28/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_28/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_28/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_28/beta
?
/batch_normalization_28/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_28/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_28/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_28/moving_mean
?
6batch_normalization_28/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_28/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_28/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_28/moving_variance
?
:batch_normalization_28/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_28/moving_variance*
_output_shapes
:@*
dtype0
|
dense_90/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_90/kernel
u
#dense_90/kernel/Read/ReadVariableOpReadVariableOpdense_90/kernel* 
_output_shapes
:
??*
dtype0
?
batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_29/gamma
?
0batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_29/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_29/beta
?
/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_29/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_29/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_29/moving_mean
?
6batch_normalization_29/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_29/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_29/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_29/moving_variance
?
:batch_normalization_29/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_29/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_91/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_91/kernel
u
#dense_91/kernel/Read/ReadVariableOpReadVariableOpdense_91/kernel* 
_output_shapes
:
??*
dtype0
?
batch_normalization_30/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_30/gamma
?
0batch_normalization_30/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_30/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_30/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_30/beta
?
/batch_normalization_30/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_30/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_30/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_30/moving_mean
?
6batch_normalization_30/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_30/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_30/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_30/moving_variance
?
:batch_normalization_30/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_30/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_92/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T* 
shared_namedense_92/kernel
t
#dense_92/kernel/Read/ReadVariableOpReadVariableOpdense_92/kernel*
_output_shapes
:	?T*
dtype0
?
batch_normalization_31/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*-
shared_namebatch_normalization_31/gamma
?
0batch_normalization_31/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_31/gamma*
_output_shapes
:T*
dtype0
?
batch_normalization_31/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*,
shared_namebatch_normalization_31/beta
?
/batch_normalization_31/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_31/beta*
_output_shapes
:T*
dtype0
?
"batch_normalization_31/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*3
shared_name$"batch_normalization_31/moving_mean
?
6batch_normalization_31/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_31/moving_mean*
_output_shapes
:T*
dtype0
?
&batch_normalization_31/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*7
shared_name(&batch_normalization_31/moving_variance
?
:batch_normalization_31/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_31/moving_variance*
_output_shapes
:T*
dtype0
z
dense_93/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T* 
shared_namedense_93/kernel
s
#dense_93/kernel/Read/ReadVariableOpReadVariableOpdense_93/kernel*
_output_shapes

:T*
dtype0
r
dense_93/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_93/bias
k
!dense_93/bias/Read/ReadVariableOpReadVariableOpdense_93/bias*
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
RMSprop/conv2d_121/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameRMSprop/conv2d_121/kernel/rms
?
1RMSprop/conv2d_121/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_121/kernel/rms*&
_output_shapes
: *
dtype0
?
RMSprop/conv2d_121/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameRMSprop/conv2d_121/bias/rms
?
/RMSprop/conv2d_121/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_121/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_122/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_nameRMSprop/conv2d_122/kernel/rms
?
1RMSprop/conv2d_122/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_122/kernel/rms*&
_output_shapes
:  *
dtype0
?
(RMSprop/batch_normalization_27/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(RMSprop/batch_normalization_27/gamma/rms
?
<RMSprop/batch_normalization_27/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_27/gamma/rms*
_output_shapes
: *
dtype0
?
'RMSprop/batch_normalization_27/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'RMSprop/batch_normalization_27/beta/rms
?
;RMSprop/batch_normalization_27/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_27/beta/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_123/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*.
shared_nameRMSprop/conv2d_123/kernel/rms
?
1RMSprop/conv2d_123/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_123/kernel/rms*&
_output_shapes
: @*
dtype0
?
RMSprop/conv2d_123/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameRMSprop/conv2d_123/bias/rms
?
/RMSprop/conv2d_123/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_123/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/conv2d_124/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_nameRMSprop/conv2d_124/kernel/rms
?
1RMSprop/conv2d_124/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_124/kernel/rms*&
_output_shapes
:@@*
dtype0
?
(RMSprop/batch_normalization_28/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(RMSprop/batch_normalization_28/gamma/rms
?
<RMSprop/batch_normalization_28/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_28/gamma/rms*
_output_shapes
:@*
dtype0
?
'RMSprop/batch_normalization_28/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'RMSprop/batch_normalization_28/beta/rms
?
;RMSprop/batch_normalization_28/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_28/beta/rms*
_output_shapes
:@*
dtype0
?
RMSprop/dense_90/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameRMSprop/dense_90/kernel/rms
?
/RMSprop/dense_90/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_90/kernel/rms* 
_output_shapes
:
??*
dtype0
?
(RMSprop/batch_normalization_29/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(RMSprop/batch_normalization_29/gamma/rms
?
<RMSprop/batch_normalization_29/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_29/gamma/rms*
_output_shapes	
:?*
dtype0
?
'RMSprop/batch_normalization_29/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_29/beta/rms
?
;RMSprop/batch_normalization_29/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_29/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_91/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameRMSprop/dense_91/kernel/rms
?
/RMSprop/dense_91/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_91/kernel/rms* 
_output_shapes
:
??*
dtype0
?
(RMSprop/batch_normalization_30/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(RMSprop/batch_normalization_30/gamma/rms
?
<RMSprop/batch_normalization_30/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_30/gamma/rms*
_output_shapes	
:?*
dtype0
?
'RMSprop/batch_normalization_30/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_30/beta/rms
?
;RMSprop/batch_normalization_30/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_30/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_92/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T*,
shared_nameRMSprop/dense_92/kernel/rms
?
/RMSprop/dense_92/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_92/kernel/rms*
_output_shapes
:	?T*
dtype0
?
(RMSprop/batch_normalization_31/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*9
shared_name*(RMSprop/batch_normalization_31/gamma/rms
?
<RMSprop/batch_normalization_31/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_31/gamma/rms*
_output_shapes
:T*
dtype0
?
'RMSprop/batch_normalization_31/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*8
shared_name)'RMSprop/batch_normalization_31/beta/rms
?
;RMSprop/batch_normalization_31/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_31/beta/rms*
_output_shapes
:T*
dtype0
?
RMSprop/dense_93/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*,
shared_nameRMSprop/dense_93/kernel/rms
?
/RMSprop/dense_93/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_93/kernel/rms*
_output_shapes

:T*
dtype0
?
RMSprop/dense_93/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_93/bias/rms
?
-RMSprop/dense_93/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_93/bias/rms*
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
VARIABLE_VALUEconv2d_121/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_121/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_122/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_27/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_27/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_27/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_27/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEconv2d_123/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_123/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_124/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_28/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_28/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_28/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_28/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEdense_90/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_29/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_29/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_29/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_29/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEdense_91/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_30/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_30/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_30/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_30/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEdense_92/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_31/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_31/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_31/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_31/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
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
VARIABLE_VALUEdense_93/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_93/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUERMSprop/conv2d_121/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_121/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_122/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_27/gamma/rmsSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_27/beta/rmsRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_123/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_123/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_124/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_28/gamma/rmsSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_28/beta/rmsRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_90/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_29/gamma/rmsSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_29/beta/rmsRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_91/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_30/gamma/rmsSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_30/beta/rmsRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_92/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_31/gamma/rmsTlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_31/beta/rmsSlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_93/kernel/rmsUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_93/bias/rmsSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_121_inputPlaceholder*0
_output_shapes
:??????????*
dtype0*%
shape:??????????
?	
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_121_inputconv2d_121/kernelconv2d_121/biasconv2d_122/kernelbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceconv2d_123/kernelconv2d_123/biasconv2d_124/kernelbatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_variancedense_90/kernel&batch_normalization_29/moving_variancebatch_normalization_29/gamma"batch_normalization_29/moving_meanbatch_normalization_29/betadense_91/kernel&batch_normalization_30/moving_variancebatch_normalization_30/gamma"batch_normalization_30/moving_meanbatch_normalization_30/betadense_92/kernel&batch_normalization_31/moving_variancebatch_normalization_31/gamma"batch_normalization_31/moving_meanbatch_normalization_31/betadense_93/kerneldense_93/bias*+
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
$__inference_signature_wrapper_668532
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_121/kernel/Read/ReadVariableOp#conv2d_121/bias/Read/ReadVariableOp%conv2d_122/kernel/Read/ReadVariableOp0batch_normalization_27/gamma/Read/ReadVariableOp/batch_normalization_27/beta/Read/ReadVariableOp6batch_normalization_27/moving_mean/Read/ReadVariableOp:batch_normalization_27/moving_variance/Read/ReadVariableOp%conv2d_123/kernel/Read/ReadVariableOp#conv2d_123/bias/Read/ReadVariableOp%conv2d_124/kernel/Read/ReadVariableOp0batch_normalization_28/gamma/Read/ReadVariableOp/batch_normalization_28/beta/Read/ReadVariableOp6batch_normalization_28/moving_mean/Read/ReadVariableOp:batch_normalization_28/moving_variance/Read/ReadVariableOp#dense_90/kernel/Read/ReadVariableOp0batch_normalization_29/gamma/Read/ReadVariableOp/batch_normalization_29/beta/Read/ReadVariableOp6batch_normalization_29/moving_mean/Read/ReadVariableOp:batch_normalization_29/moving_variance/Read/ReadVariableOp#dense_91/kernel/Read/ReadVariableOp0batch_normalization_30/gamma/Read/ReadVariableOp/batch_normalization_30/beta/Read/ReadVariableOp6batch_normalization_30/moving_mean/Read/ReadVariableOp:batch_normalization_30/moving_variance/Read/ReadVariableOp#dense_92/kernel/Read/ReadVariableOp0batch_normalization_31/gamma/Read/ReadVariableOp/batch_normalization_31/beta/Read/ReadVariableOp6batch_normalization_31/moving_mean/Read/ReadVariableOp:batch_normalization_31/moving_variance/Read/ReadVariableOp#dense_93/kernel/Read/ReadVariableOp!dense_93/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1RMSprop/conv2d_121/kernel/rms/Read/ReadVariableOp/RMSprop/conv2d_121/bias/rms/Read/ReadVariableOp1RMSprop/conv2d_122/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_27/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_27/beta/rms/Read/ReadVariableOp1RMSprop/conv2d_123/kernel/rms/Read/ReadVariableOp/RMSprop/conv2d_123/bias/rms/Read/ReadVariableOp1RMSprop/conv2d_124/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_28/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_28/beta/rms/Read/ReadVariableOp/RMSprop/dense_90/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_29/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_29/beta/rms/Read/ReadVariableOp/RMSprop/dense_91/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_30/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_30/beta/rms/Read/ReadVariableOp/RMSprop/dense_92/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_31/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_31/beta/rms/Read/ReadVariableOp/RMSprop/dense_93/kernel/rms/Read/ReadVariableOp-RMSprop/dense_93/bias/rms/Read/ReadVariableOpConst*J
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
__inference__traced_save_670021
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_121/kernelconv2d_121/biasconv2d_122/kernelbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceconv2d_123/kernelconv2d_123/biasconv2d_124/kernelbatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_variancedense_90/kernelbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_variancedense_91/kernelbatch_normalization_30/gammabatch_normalization_30/beta"batch_normalization_30/moving_mean&batch_normalization_30/moving_variancedense_92/kernelbatch_normalization_31/gammabatch_normalization_31/beta"batch_normalization_31/moving_mean&batch_normalization_31/moving_variancedense_93/kerneldense_93/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_121/kernel/rmsRMSprop/conv2d_121/bias/rmsRMSprop/conv2d_122/kernel/rms(RMSprop/batch_normalization_27/gamma/rms'RMSprop/batch_normalization_27/beta/rmsRMSprop/conv2d_123/kernel/rmsRMSprop/conv2d_123/bias/rmsRMSprop/conv2d_124/kernel/rms(RMSprop/batch_normalization_28/gamma/rms'RMSprop/batch_normalization_28/beta/rmsRMSprop/dense_90/kernel/rms(RMSprop/batch_normalization_29/gamma/rms'RMSprop/batch_normalization_29/beta/rmsRMSprop/dense_91/kernel/rms(RMSprop/batch_normalization_30/gamma/rms'RMSprop/batch_normalization_30/beta/rmsRMSprop/dense_92/kernel/rms(RMSprop/batch_normalization_31/gamma/rms'RMSprop/batch_normalization_31/beta/rmsRMSprop/dense_93/kernel/rmsRMSprop/dense_93/bias/rms*I
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
"__inference__traced_restore_670214??
?
J
.__inference_activation_19_layer_call_fn_669741

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
I__inference_activation_19_layer_call_and_return_conditional_losses_6675712
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
?
?
__inference_loss_fn_0_669804V
<conv2d_121_kernel_regularizer_square_readvariableop_resource: 
identity??3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_121_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
IdentityIdentity%conv2d_121/kernel/Regularizer/mul:z:04^conv2d_121/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2j
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_1_669815V
<conv2d_123_kernel_regularizer_square_readvariableop_resource: @
identity??3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_123_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentity%conv2d_123/kernel/Regularizer/mul:z:04^conv2d_123/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp
?
?
7__inference_batch_normalization_28_layer_call_fn_669301

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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_6674592
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
?
?
D__inference_dense_90_layer_call_and_return_conditional_losses_669448

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
F__inference_dropout_26_layer_call_and_return_conditional_losses_669773

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
?
?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_666629

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
?
?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_667383

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
?
?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_667909

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
?
e
I__inference_activation_18_layer_call_and_return_conditional_losses_667544

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
?
?
F__inference_conv2d_124_layer_call_and_return_conditional_losses_669262

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
?
G
+__inference_dropout_26_layer_call_fn_669751

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
F__inference_dropout_26_layer_call_and_return_conditional_losses_6675782
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
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_667406

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
?
?
+__inference_conv2d_123_layer_call_fn_669231

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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_6674252
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
?
G
+__inference_dropout_24_layer_call_fn_669194

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
F__inference_dropout_24_layer_call_and_return_conditional_losses_6674062
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
?
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_669204

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
?
e
F__inference_dropout_25_layer_call_and_return_conditional_losses_667776

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
?
J
.__inference_activation_16_layer_call_fn_669391

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
I__inference_activation_16_layer_call_and_return_conditional_losses_6674742
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
?
?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_669598

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
?
?
7__inference_batch_normalization_27_layer_call_fn_669094

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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6673832
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
?
~
)__inference_dense_92_layer_call_fn_669649

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
D__inference_dense_92_layer_call_and_return_conditional_losses_6675532
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
?
?
.__inference_sequential_42_layer_call_fn_668241
conv2d_121_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_6681092
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
_user_specified_nameconv2d_121_input
?
N
2__inference_max_pooling2d_106_layer_call_fn_666839

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
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_6668332
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
?
?
.__inference_sequential_42_layer_call_fn_668599

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
I__inference_sequential_42_layer_call_and_return_conditional_losses_6676102
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
?
?
+__inference_conv2d_124_layer_call_fn_669255

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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_6674382
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
?
e
I__inference_activation_18_layer_call_and_return_conditional_losses_669642

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
?
?
D__inference_dense_90_layer_call_and_return_conditional_losses_667499

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
?)
?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_669736

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
?
J
.__inference_activation_17_layer_call_fn_669533

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
I__inference_activation_17_layer_call_and_return_conditional_losses_6675172
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
?
d
+__inference_dropout_24_layer_call_fn_669199

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
F__inference_dropout_24_layer_call_and_return_conditional_losses_6678672
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
??
?
I__inference_sequential_42_layer_call_and_return_conditional_losses_668445
conv2d_121_input+
conv2d_121_668346: 
conv2d_121_668348: +
conv2d_122_668351:  +
batch_normalization_27_668354: +
batch_normalization_27_668356: +
batch_normalization_27_668358: +
batch_normalization_27_668360: +
conv2d_123_668366: @
conv2d_123_668368:@+
conv2d_124_668371:@@+
batch_normalization_28_668374:@+
batch_normalization_28_668376:@+
batch_normalization_28_668378:@+
batch_normalization_28_668380:@#
dense_90_668387:
??,
batch_normalization_29_668390:	?,
batch_normalization_29_668392:	?,
batch_normalization_29_668394:	?,
batch_normalization_29_668396:	?#
dense_91_668400:
??,
batch_normalization_30_668403:	?,
batch_normalization_30_668405:	?,
batch_normalization_30_668407:	?,
batch_normalization_30_668409:	?"
dense_92_668413:	?T+
batch_normalization_31_668416:T+
batch_normalization_31_668418:T+
batch_normalization_31_668420:T+
batch_normalization_31_668422:T!
dense_93_668427:T
dense_93_668429:
identity??.batch_normalization_27/StatefulPartitionedCall?.batch_normalization_28/StatefulPartitionedCall?.batch_normalization_29/StatefulPartitionedCall?.batch_normalization_30/StatefulPartitionedCall?.batch_normalization_31/StatefulPartitionedCall?"conv2d_121/StatefulPartitionedCall?3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?"conv2d_122/StatefulPartitionedCall?"conv2d_123/StatefulPartitionedCall?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?"conv2d_124/StatefulPartitionedCall? dense_90/StatefulPartitionedCall? dense_91/StatefulPartitionedCall? dense_92/StatefulPartitionedCall? dense_93/StatefulPartitionedCall?"dropout_24/StatefulPartitionedCall?"dropout_25/StatefulPartitionedCall?"dropout_26/StatefulPartitionedCall?
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputconv2d_121_668346conv2d_121_668348*
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_6673492$
"conv2d_121/StatefulPartitionedCall?
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0conv2d_122_668351*
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_6673622$
"conv2d_122/StatefulPartitionedCall?
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0batch_normalization_27_668354batch_normalization_27_668356batch_normalization_27_668358batch_normalization_27_668360*
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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_66790920
.batch_normalization_27/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6673982
activation_15/PartitionedCall?
!max_pooling2d_105/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
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
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_6666952#
!max_pooling2d_105/PartitionedCall?
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_105/PartitionedCall:output:0*
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_6678672$
"dropout_24/StatefulPartitionedCall?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv2d_123_668366conv2d_123_668368*
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_6674252$
"conv2d_123/StatefulPartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0conv2d_124_668371*
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_6674382$
"conv2d_124/StatefulPartitionedCall?
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0batch_normalization_28_668374batch_normalization_28_668376batch_normalization_28_668378batch_normalization_28_668380*
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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_66781820
.batch_normalization_28/StatefulPartitionedCall?
activation_16/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6674742
activation_16/PartitionedCall?
!max_pooling2d_106/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
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
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_6668332#
!max_pooling2d_106/PartitionedCall?
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_106/PartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_6677762$
"dropout_25/StatefulPartitionedCall?
flatten_40/PartitionedCallPartitionedCall+dropout_25/StatefulPartitionedCall:output:0*
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_6674902
flatten_40/PartitionedCall?
 dense_90/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_90_668387*
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
D__inference_dense_90_layer_call_and_return_conditional_losses_6674992"
 dense_90/StatefulPartitionedCall?
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall)dense_90/StatefulPartitionedCall:output:0batch_normalization_29_668390batch_normalization_29_668392batch_normalization_29_668394batch_normalization_29_668396*
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
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_66692320
.batch_normalization_29/StatefulPartitionedCall?
activation_17/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6675172
activation_17/PartitionedCall?
 dense_91/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:0dense_91_668400*
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
D__inference_dense_91_layer_call_and_return_conditional_losses_6675262"
 dense_91/StatefulPartitionedCall?
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall)dense_91/StatefulPartitionedCall:output:0batch_normalization_30_668403batch_normalization_30_668405batch_normalization_30_668407batch_normalization_30_668409*
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
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_66708520
.batch_normalization_30/StatefulPartitionedCall?
activation_18/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6675442
activation_18/PartitionedCall?
 dense_92/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0dense_92_668413*
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
D__inference_dense_92_layer_call_and_return_conditional_losses_6675532"
 dense_92/StatefulPartitionedCall?
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall)dense_92/StatefulPartitionedCall:output:0batch_normalization_31_668416batch_normalization_31_668418batch_normalization_31_668420batch_normalization_31_668422*
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
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_66724720
.batch_normalization_31/StatefulPartitionedCall?
activation_19/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6675712
activation_19/PartitionedCall?
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
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
F__inference_dropout_26_layer_call_and_return_conditional_losses_6677052$
"dropout_26/StatefulPartitionedCall?
 dense_93/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0dense_93_668427dense_93_668429*
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
D__inference_dense_93_layer_call_and_return_conditional_losses_6675912"
 dense_93/StatefulPartitionedCall?
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_121_668346*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_123_668366*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentity)dense_93/StatefulPartitionedCall:output:0/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall4^conv2d_121/kernel/Regularizer/Square/ReadVariableOp#^conv2d_122/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp#^conv2d_124/StatefulPartitionedCall!^dense_90/StatefulPartitionedCall!^dense_91/StatefulPartitionedCall!^dense_92/StatefulPartitionedCall!^dense_93/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2j
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2D
 dense_90/StatefulPartitionedCall dense_90/StatefulPartitionedCall2D
 dense_91/StatefulPartitionedCall dense_91/StatefulPartitionedCall2D
 dense_92/StatefulPartitionedCall dense_92/StatefulPartitionedCall2D
 dense_93/StatefulPartitionedCall dense_93/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_121_input
?
e
I__inference_activation_17_layer_call_and_return_conditional_losses_669538

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
?
e
I__inference_activation_17_layer_call_and_return_conditional_losses_667517

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
?
?
.__inference_sequential_42_layer_call_fn_667675
conv2d_121_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_6676102
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
_user_specified_nameconv2d_121_input
?
J
.__inference_activation_18_layer_call_fn_669637

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
I__inference_activation_18_layer_call_and_return_conditional_losses_6675442
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
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_666767

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
?
?
7__inference_batch_normalization_31_layer_call_fn_669682

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
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_6672472
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
??
?
I__inference_sequential_42_layer_call_and_return_conditional_losses_668343
conv2d_121_input+
conv2d_121_668244: 
conv2d_121_668246: +
conv2d_122_668249:  +
batch_normalization_27_668252: +
batch_normalization_27_668254: +
batch_normalization_27_668256: +
batch_normalization_27_668258: +
conv2d_123_668264: @
conv2d_123_668266:@+
conv2d_124_668269:@@+
batch_normalization_28_668272:@+
batch_normalization_28_668274:@+
batch_normalization_28_668276:@+
batch_normalization_28_668278:@#
dense_90_668285:
??,
batch_normalization_29_668288:	?,
batch_normalization_29_668290:	?,
batch_normalization_29_668292:	?,
batch_normalization_29_668294:	?#
dense_91_668298:
??,
batch_normalization_30_668301:	?,
batch_normalization_30_668303:	?,
batch_normalization_30_668305:	?,
batch_normalization_30_668307:	?"
dense_92_668311:	?T+
batch_normalization_31_668314:T+
batch_normalization_31_668316:T+
batch_normalization_31_668318:T+
batch_normalization_31_668320:T!
dense_93_668325:T
dense_93_668327:
identity??.batch_normalization_27/StatefulPartitionedCall?.batch_normalization_28/StatefulPartitionedCall?.batch_normalization_29/StatefulPartitionedCall?.batch_normalization_30/StatefulPartitionedCall?.batch_normalization_31/StatefulPartitionedCall?"conv2d_121/StatefulPartitionedCall?3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?"conv2d_122/StatefulPartitionedCall?"conv2d_123/StatefulPartitionedCall?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?"conv2d_124/StatefulPartitionedCall? dense_90/StatefulPartitionedCall? dense_91/StatefulPartitionedCall? dense_92/StatefulPartitionedCall? dense_93/StatefulPartitionedCall?
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputconv2d_121_668244conv2d_121_668246*
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_6673492$
"conv2d_121/StatefulPartitionedCall?
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0conv2d_122_668249*
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_6673622$
"conv2d_122/StatefulPartitionedCall?
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0batch_normalization_27_668252batch_normalization_27_668254batch_normalization_27_668256batch_normalization_27_668258*
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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_66738320
.batch_normalization_27/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6673982
activation_15/PartitionedCall?
!max_pooling2d_105/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
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
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_6666952#
!max_pooling2d_105/PartitionedCall?
dropout_24/PartitionedCallPartitionedCall*max_pooling2d_105/PartitionedCall:output:0*
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_6674062
dropout_24/PartitionedCall?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv2d_123_668264conv2d_123_668266*
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_6674252$
"conv2d_123/StatefulPartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0conv2d_124_668269*
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_6674382$
"conv2d_124/StatefulPartitionedCall?
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0batch_normalization_28_668272batch_normalization_28_668274batch_normalization_28_668276batch_normalization_28_668278*
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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_66745920
.batch_normalization_28/StatefulPartitionedCall?
activation_16/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6674742
activation_16/PartitionedCall?
!max_pooling2d_106/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
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
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_6668332#
!max_pooling2d_106/PartitionedCall?
dropout_25/PartitionedCallPartitionedCall*max_pooling2d_106/PartitionedCall:output:0*
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_6674822
dropout_25/PartitionedCall?
flatten_40/PartitionedCallPartitionedCall#dropout_25/PartitionedCall:output:0*
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_6674902
flatten_40/PartitionedCall?
 dense_90/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_90_668285*
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
D__inference_dense_90_layer_call_and_return_conditional_losses_6674992"
 dense_90/StatefulPartitionedCall?
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall)dense_90/StatefulPartitionedCall:output:0batch_normalization_29_668288batch_normalization_29_668290batch_normalization_29_668292batch_normalization_29_668294*
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
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_66686320
.batch_normalization_29/StatefulPartitionedCall?
activation_17/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6675172
activation_17/PartitionedCall?
 dense_91/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:0dense_91_668298*
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
D__inference_dense_91_layer_call_and_return_conditional_losses_6675262"
 dense_91/StatefulPartitionedCall?
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall)dense_91/StatefulPartitionedCall:output:0batch_normalization_30_668301batch_normalization_30_668303batch_normalization_30_668305batch_normalization_30_668307*
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
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_66702520
.batch_normalization_30/StatefulPartitionedCall?
activation_18/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6675442
activation_18/PartitionedCall?
 dense_92/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0dense_92_668311*
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
D__inference_dense_92_layer_call_and_return_conditional_losses_6675532"
 dense_92/StatefulPartitionedCall?
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall)dense_92/StatefulPartitionedCall:output:0batch_normalization_31_668314batch_normalization_31_668316batch_normalization_31_668318batch_normalization_31_668320*
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
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_66718720
.batch_normalization_31/StatefulPartitionedCall?
activation_19/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6675712
activation_19/PartitionedCall?
dropout_26/PartitionedCallPartitionedCall&activation_19/PartitionedCall:output:0*
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
F__inference_dropout_26_layer_call_and_return_conditional_losses_6675782
dropout_26/PartitionedCall?
 dense_93/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0dense_93_668325dense_93_668327*
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
D__inference_dense_93_layer_call_and_return_conditional_losses_6675912"
 dense_93/StatefulPartitionedCall?
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_121_668244*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_123_668264*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentity)dense_93/StatefulPartitionedCall:output:0/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall4^conv2d_121/kernel/Regularizer/Square/ReadVariableOp#^conv2d_122/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp#^conv2d_124/StatefulPartitionedCall!^dense_90/StatefulPartitionedCall!^dense_91/StatefulPartitionedCall!^dense_92/StatefulPartitionedCall!^dense_93/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2j
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2D
 dense_90/StatefulPartitionedCall dense_90/StatefulPartitionedCall2D
 dense_91/StatefulPartitionedCall dense_91/StatefulPartitionedCall2D
 dense_92/StatefulPartitionedCall dense_92/StatefulPartitionedCall2D
 dense_93/StatefulPartitionedCall dense_93/StatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_121_input
?

)__inference_dense_91_layer_call_fn_669545

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
D__inference_dense_91_layer_call_and_return_conditional_losses_6675262
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
?
?
F__inference_conv2d_122_layer_call_and_return_conditional_losses_667362

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
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_667578

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
?
?
F__inference_conv2d_121_layer_call_and_return_conditional_losses_667349

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_121/kernel/Regularizer/Square/ReadVariableOp*
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
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_122_layer_call_and_return_conditional_losses_669055

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
?
?
7__inference_batch_normalization_31_layer_call_fn_669669

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
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_6671872
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
?
?
7__inference_batch_normalization_27_layer_call_fn_669068

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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6665852
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
?
d
+__inference_dropout_25_layer_call_fn_669406

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
F__inference_dropout_25_layer_call_and_return_conditional_losses_6677762
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
?
?
__inference__traced_save_670021
file_prefix0
,savev2_conv2d_121_kernel_read_readvariableop.
*savev2_conv2d_121_bias_read_readvariableop0
,savev2_conv2d_122_kernel_read_readvariableop;
7savev2_batch_normalization_27_gamma_read_readvariableop:
6savev2_batch_normalization_27_beta_read_readvariableopA
=savev2_batch_normalization_27_moving_mean_read_readvariableopE
Asavev2_batch_normalization_27_moving_variance_read_readvariableop0
,savev2_conv2d_123_kernel_read_readvariableop.
*savev2_conv2d_123_bias_read_readvariableop0
,savev2_conv2d_124_kernel_read_readvariableop;
7savev2_batch_normalization_28_gamma_read_readvariableop:
6savev2_batch_normalization_28_beta_read_readvariableopA
=savev2_batch_normalization_28_moving_mean_read_readvariableopE
Asavev2_batch_normalization_28_moving_variance_read_readvariableop.
*savev2_dense_90_kernel_read_readvariableop;
7savev2_batch_normalization_29_gamma_read_readvariableop:
6savev2_batch_normalization_29_beta_read_readvariableopA
=savev2_batch_normalization_29_moving_mean_read_readvariableopE
Asavev2_batch_normalization_29_moving_variance_read_readvariableop.
*savev2_dense_91_kernel_read_readvariableop;
7savev2_batch_normalization_30_gamma_read_readvariableop:
6savev2_batch_normalization_30_beta_read_readvariableopA
=savev2_batch_normalization_30_moving_mean_read_readvariableopE
Asavev2_batch_normalization_30_moving_variance_read_readvariableop.
*savev2_dense_92_kernel_read_readvariableop;
7savev2_batch_normalization_31_gamma_read_readvariableop:
6savev2_batch_normalization_31_beta_read_readvariableopA
=savev2_batch_normalization_31_moving_mean_read_readvariableopE
Asavev2_batch_normalization_31_moving_variance_read_readvariableop.
*savev2_dense_93_kernel_read_readvariableop,
(savev2_dense_93_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_rmsprop_conv2d_121_kernel_rms_read_readvariableop:
6savev2_rmsprop_conv2d_121_bias_rms_read_readvariableop<
8savev2_rmsprop_conv2d_122_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_27_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_27_beta_rms_read_readvariableop<
8savev2_rmsprop_conv2d_123_kernel_rms_read_readvariableop:
6savev2_rmsprop_conv2d_123_bias_rms_read_readvariableop<
8savev2_rmsprop_conv2d_124_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_28_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_28_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_90_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_29_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_29_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_91_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_30_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_30_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_92_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_31_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_31_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_93_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_93_bias_rms_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_121_kernel_read_readvariableop*savev2_conv2d_121_bias_read_readvariableop,savev2_conv2d_122_kernel_read_readvariableop7savev2_batch_normalization_27_gamma_read_readvariableop6savev2_batch_normalization_27_beta_read_readvariableop=savev2_batch_normalization_27_moving_mean_read_readvariableopAsavev2_batch_normalization_27_moving_variance_read_readvariableop,savev2_conv2d_123_kernel_read_readvariableop*savev2_conv2d_123_bias_read_readvariableop,savev2_conv2d_124_kernel_read_readvariableop7savev2_batch_normalization_28_gamma_read_readvariableop6savev2_batch_normalization_28_beta_read_readvariableop=savev2_batch_normalization_28_moving_mean_read_readvariableopAsavev2_batch_normalization_28_moving_variance_read_readvariableop*savev2_dense_90_kernel_read_readvariableop7savev2_batch_normalization_29_gamma_read_readvariableop6savev2_batch_normalization_29_beta_read_readvariableop=savev2_batch_normalization_29_moving_mean_read_readvariableopAsavev2_batch_normalization_29_moving_variance_read_readvariableop*savev2_dense_91_kernel_read_readvariableop7savev2_batch_normalization_30_gamma_read_readvariableop6savev2_batch_normalization_30_beta_read_readvariableop=savev2_batch_normalization_30_moving_mean_read_readvariableopAsavev2_batch_normalization_30_moving_variance_read_readvariableop*savev2_dense_92_kernel_read_readvariableop7savev2_batch_normalization_31_gamma_read_readvariableop6savev2_batch_normalization_31_beta_read_readvariableop=savev2_batch_normalization_31_moving_mean_read_readvariableopAsavev2_batch_normalization_31_moving_variance_read_readvariableop*savev2_dense_93_kernel_read_readvariableop(savev2_dense_93_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_rmsprop_conv2d_121_kernel_rms_read_readvariableop6savev2_rmsprop_conv2d_121_bias_rms_read_readvariableop8savev2_rmsprop_conv2d_122_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_27_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_27_beta_rms_read_readvariableop8savev2_rmsprop_conv2d_123_kernel_rms_read_readvariableop6savev2_rmsprop_conv2d_123_bias_rms_read_readvariableop8savev2_rmsprop_conv2d_124_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_28_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_28_beta_rms_read_readvariableop6savev2_rmsprop_dense_90_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_29_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_29_beta_rms_read_readvariableop6savev2_rmsprop_dense_91_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_30_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_30_beta_rms_read_readvariableop6savev2_rmsprop_dense_92_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_31_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_31_beta_rms_read_readvariableop6savev2_rmsprop_dense_93_kernel_rms_read_readvariableop4savev2_rmsprop_dense_93_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669368

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
??
?
I__inference_sequential_42_layer_call_and_return_conditional_losses_667610

inputs+
conv2d_121_667350: 
conv2d_121_667352: +
conv2d_122_667363:  +
batch_normalization_27_667384: +
batch_normalization_27_667386: +
batch_normalization_27_667388: +
batch_normalization_27_667390: +
conv2d_123_667426: @
conv2d_123_667428:@+
conv2d_124_667439:@@+
batch_normalization_28_667460:@+
batch_normalization_28_667462:@+
batch_normalization_28_667464:@+
batch_normalization_28_667466:@#
dense_90_667500:
??,
batch_normalization_29_667503:	?,
batch_normalization_29_667505:	?,
batch_normalization_29_667507:	?,
batch_normalization_29_667509:	?#
dense_91_667527:
??,
batch_normalization_30_667530:	?,
batch_normalization_30_667532:	?,
batch_normalization_30_667534:	?,
batch_normalization_30_667536:	?"
dense_92_667554:	?T+
batch_normalization_31_667557:T+
batch_normalization_31_667559:T+
batch_normalization_31_667561:T+
batch_normalization_31_667563:T!
dense_93_667592:T
dense_93_667594:
identity??.batch_normalization_27/StatefulPartitionedCall?.batch_normalization_28/StatefulPartitionedCall?.batch_normalization_29/StatefulPartitionedCall?.batch_normalization_30/StatefulPartitionedCall?.batch_normalization_31/StatefulPartitionedCall?"conv2d_121/StatefulPartitionedCall?3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?"conv2d_122/StatefulPartitionedCall?"conv2d_123/StatefulPartitionedCall?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?"conv2d_124/StatefulPartitionedCall? dense_90/StatefulPartitionedCall? dense_91/StatefulPartitionedCall? dense_92/StatefulPartitionedCall? dense_93/StatefulPartitionedCall?
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_121_667350conv2d_121_667352*
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_6673492$
"conv2d_121/StatefulPartitionedCall?
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0conv2d_122_667363*
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_6673622$
"conv2d_122/StatefulPartitionedCall?
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0batch_normalization_27_667384batch_normalization_27_667386batch_normalization_27_667388batch_normalization_27_667390*
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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_66738320
.batch_normalization_27/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6673982
activation_15/PartitionedCall?
!max_pooling2d_105/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
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
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_6666952#
!max_pooling2d_105/PartitionedCall?
dropout_24/PartitionedCallPartitionedCall*max_pooling2d_105/PartitionedCall:output:0*
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_6674062
dropout_24/PartitionedCall?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv2d_123_667426conv2d_123_667428*
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_6674252$
"conv2d_123/StatefulPartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0conv2d_124_667439*
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_6674382$
"conv2d_124/StatefulPartitionedCall?
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0batch_normalization_28_667460batch_normalization_28_667462batch_normalization_28_667464batch_normalization_28_667466*
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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_66745920
.batch_normalization_28/StatefulPartitionedCall?
activation_16/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6674742
activation_16/PartitionedCall?
!max_pooling2d_106/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
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
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_6668332#
!max_pooling2d_106/PartitionedCall?
dropout_25/PartitionedCallPartitionedCall*max_pooling2d_106/PartitionedCall:output:0*
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_6674822
dropout_25/PartitionedCall?
flatten_40/PartitionedCallPartitionedCall#dropout_25/PartitionedCall:output:0*
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_6674902
flatten_40/PartitionedCall?
 dense_90/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_90_667500*
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
D__inference_dense_90_layer_call_and_return_conditional_losses_6674992"
 dense_90/StatefulPartitionedCall?
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall)dense_90/StatefulPartitionedCall:output:0batch_normalization_29_667503batch_normalization_29_667505batch_normalization_29_667507batch_normalization_29_667509*
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
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_66686320
.batch_normalization_29/StatefulPartitionedCall?
activation_17/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6675172
activation_17/PartitionedCall?
 dense_91/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:0dense_91_667527*
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
D__inference_dense_91_layer_call_and_return_conditional_losses_6675262"
 dense_91/StatefulPartitionedCall?
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall)dense_91/StatefulPartitionedCall:output:0batch_normalization_30_667530batch_normalization_30_667532batch_normalization_30_667534batch_normalization_30_667536*
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
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_66702520
.batch_normalization_30/StatefulPartitionedCall?
activation_18/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6675442
activation_18/PartitionedCall?
 dense_92/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0dense_92_667554*
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
D__inference_dense_92_layer_call_and_return_conditional_losses_6675532"
 dense_92/StatefulPartitionedCall?
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall)dense_92/StatefulPartitionedCall:output:0batch_normalization_31_667557batch_normalization_31_667559batch_normalization_31_667561batch_normalization_31_667563*
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
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_66718720
.batch_normalization_31/StatefulPartitionedCall?
activation_19/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6675712
activation_19/PartitionedCall?
dropout_26/PartitionedCallPartitionedCall&activation_19/PartitionedCall:output:0*
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
F__inference_dropout_26_layer_call_and_return_conditional_losses_6675782
dropout_26/PartitionedCall?
 dense_93/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0dense_93_667592dense_93_667594*
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
D__inference_dense_93_layer_call_and_return_conditional_losses_6675912"
 dense_93/StatefulPartitionedCall?
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_121_667350*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_123_667426*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentity)dense_93/StatefulPartitionedCall:output:0/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall4^conv2d_121/kernel/Regularizer/Square/ReadVariableOp#^conv2d_122/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp#^conv2d_124/StatefulPartitionedCall!^dense_90/StatefulPartitionedCall!^dense_91/StatefulPartitionedCall!^dense_92/StatefulPartitionedCall!^dense_93/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2j
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2D
 dense_90/StatefulPartitionedCall dense_90/StatefulPartitionedCall2D
 dense_91/StatefulPartitionedCall dense_91/StatefulPartitionedCall2D
 dense_92/StatefulPartitionedCall dense_92/StatefulPartitionedCall2D
 dense_93/StatefulPartitionedCall dense_93/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_667187

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
?
e
F__inference_dropout_25_layer_call_and_return_conditional_losses_669423

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
?
e
I__inference_activation_19_layer_call_and_return_conditional_losses_669746

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
?
?
D__inference_dense_92_layer_call_and_return_conditional_losses_667553

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
?
e
F__inference_dropout_26_layer_call_and_return_conditional_losses_667705

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
?
b
F__inference_flatten_40_layer_call_and_return_conditional_losses_667490

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
?)
?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_667247

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
?
e
F__inference_dropout_24_layer_call_and_return_conditional_losses_667867

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
?
?
+__inference_conv2d_122_layer_call_fn_669048

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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_6673622
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
?
?
$__inference_signature_wrapper_668532
conv2d_121_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_6665632
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
_user_specified_nameconv2d_121_input
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_667818

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
?
b
F__inference_flatten_40_layer_call_and_return_conditional_losses_669434

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
e
F__inference_dropout_24_layer_call_and_return_conditional_losses_669216

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
?
?
D__inference_dense_91_layer_call_and_return_conditional_losses_669552

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
?
?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669143

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
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_667459

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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_669041

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_121/kernel/Regularizer/Square/ReadVariableOp*
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
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669161

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
?
?
7__inference_batch_normalization_29_layer_call_fn_669474

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
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_6669232
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
?
?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_669494

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
7__inference_batch_normalization_28_layer_call_fn_669288

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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_6667672
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
?
?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_666585

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
?
?
7__inference_batch_normalization_27_layer_call_fn_669107

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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6679092
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
?
J
.__inference_activation_15_layer_call_fn_669184

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
I__inference_activation_15_layer_call_and_return_conditional_losses_6673982
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
?
?
F__inference_conv2d_123_layer_call_and_return_conditional_losses_669248

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp*
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
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_666695

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
?
?
F__inference_conv2d_124_layer_call_and_return_conditional_losses_667438

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
?*
?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_666923

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
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669332

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
?
?
7__inference_batch_normalization_30_layer_call_fn_669565

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
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_6670252
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
?
?
7__inference_batch_normalization_28_layer_call_fn_669275

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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_6667232
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
?
?
7__inference_batch_normalization_30_layer_call_fn_669578

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
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_6670852
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
?
?
+__inference_conv2d_121_layer_call_fn_669024

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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_6673492
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
?

?
D__inference_dense_93_layer_call_and_return_conditional_losses_669793

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
"__inference__traced_restore_670214
file_prefix<
"assignvariableop_conv2d_121_kernel: 0
"assignvariableop_1_conv2d_121_bias: >
$assignvariableop_2_conv2d_122_kernel:  =
/assignvariableop_3_batch_normalization_27_gamma: <
.assignvariableop_4_batch_normalization_27_beta: C
5assignvariableop_5_batch_normalization_27_moving_mean: G
9assignvariableop_6_batch_normalization_27_moving_variance: >
$assignvariableop_7_conv2d_123_kernel: @0
"assignvariableop_8_conv2d_123_bias:@>
$assignvariableop_9_conv2d_124_kernel:@@>
0assignvariableop_10_batch_normalization_28_gamma:@=
/assignvariableop_11_batch_normalization_28_beta:@D
6assignvariableop_12_batch_normalization_28_moving_mean:@H
:assignvariableop_13_batch_normalization_28_moving_variance:@7
#assignvariableop_14_dense_90_kernel:
???
0assignvariableop_15_batch_normalization_29_gamma:	?>
/assignvariableop_16_batch_normalization_29_beta:	?E
6assignvariableop_17_batch_normalization_29_moving_mean:	?I
:assignvariableop_18_batch_normalization_29_moving_variance:	?7
#assignvariableop_19_dense_91_kernel:
???
0assignvariableop_20_batch_normalization_30_gamma:	?>
/assignvariableop_21_batch_normalization_30_beta:	?E
6assignvariableop_22_batch_normalization_30_moving_mean:	?I
:assignvariableop_23_batch_normalization_30_moving_variance:	?6
#assignvariableop_24_dense_92_kernel:	?T>
0assignvariableop_25_batch_normalization_31_gamma:T=
/assignvariableop_26_batch_normalization_31_beta:TD
6assignvariableop_27_batch_normalization_31_moving_mean:TH
:assignvariableop_28_batch_normalization_31_moving_variance:T5
#assignvariableop_29_dense_93_kernel:T/
!assignvariableop_30_dense_93_bias:*
 assignvariableop_31_rmsprop_iter:	 +
!assignvariableop_32_rmsprop_decay: 3
)assignvariableop_33_rmsprop_learning_rate: .
$assignvariableop_34_rmsprop_momentum: )
assignvariableop_35_rmsprop_rho: #
assignvariableop_36_total: #
assignvariableop_37_count: %
assignvariableop_38_total_1: %
assignvariableop_39_count_1: K
1assignvariableop_40_rmsprop_conv2d_121_kernel_rms: =
/assignvariableop_41_rmsprop_conv2d_121_bias_rms: K
1assignvariableop_42_rmsprop_conv2d_122_kernel_rms:  J
<assignvariableop_43_rmsprop_batch_normalization_27_gamma_rms: I
;assignvariableop_44_rmsprop_batch_normalization_27_beta_rms: K
1assignvariableop_45_rmsprop_conv2d_123_kernel_rms: @=
/assignvariableop_46_rmsprop_conv2d_123_bias_rms:@K
1assignvariableop_47_rmsprop_conv2d_124_kernel_rms:@@J
<assignvariableop_48_rmsprop_batch_normalization_28_gamma_rms:@I
;assignvariableop_49_rmsprop_batch_normalization_28_beta_rms:@C
/assignvariableop_50_rmsprop_dense_90_kernel_rms:
??K
<assignvariableop_51_rmsprop_batch_normalization_29_gamma_rms:	?J
;assignvariableop_52_rmsprop_batch_normalization_29_beta_rms:	?C
/assignvariableop_53_rmsprop_dense_91_kernel_rms:
??K
<assignvariableop_54_rmsprop_batch_normalization_30_gamma_rms:	?J
;assignvariableop_55_rmsprop_batch_normalization_30_beta_rms:	?B
/assignvariableop_56_rmsprop_dense_92_kernel_rms:	?TJ
<assignvariableop_57_rmsprop_batch_normalization_31_gamma_rms:TI
;assignvariableop_58_rmsprop_batch_normalization_31_beta_rms:TA
/assignvariableop_59_rmsprop_dense_93_kernel_rms:T;
-assignvariableop_60_rmsprop_dense_93_bias_rms:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_121_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_121_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_122_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_27_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_27_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp5assignvariableop_5_batch_normalization_27_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp9assignvariableop_6_batch_normalization_27_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp$assignvariableop_7_conv2d_123_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_123_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp$assignvariableop_9_conv2d_124_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_batch_normalization_28_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_28_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp6assignvariableop_12_batch_normalization_28_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp:assignvariableop_13_batch_normalization_28_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_90_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_29_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_29_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_batch_normalization_29_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp:assignvariableop_18_batch_normalization_29_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_91_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_30_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_30_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_30_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_30_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_92_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp0assignvariableop_25_batch_normalization_31_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp/assignvariableop_26_batch_normalization_31_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp6assignvariableop_27_batch_normalization_31_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp:assignvariableop_28_batch_normalization_31_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp#assignvariableop_29_dense_93_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp!assignvariableop_30_dense_93_biasIdentity_30:output:0"/device:CPU:0*
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
AssignVariableOp_40AssignVariableOp1assignvariableop_40_rmsprop_conv2d_121_kernel_rmsIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp/assignvariableop_41_rmsprop_conv2d_121_bias_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp1assignvariableop_42_rmsprop_conv2d_122_kernel_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp<assignvariableop_43_rmsprop_batch_normalization_27_gamma_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp;assignvariableop_44_rmsprop_batch_normalization_27_beta_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp1assignvariableop_45_rmsprop_conv2d_123_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp/assignvariableop_46_rmsprop_conv2d_123_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp1assignvariableop_47_rmsprop_conv2d_124_kernel_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp<assignvariableop_48_rmsprop_batch_normalization_28_gamma_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp;assignvariableop_49_rmsprop_batch_normalization_28_beta_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp/assignvariableop_50_rmsprop_dense_90_kernel_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp<assignvariableop_51_rmsprop_batch_normalization_29_gamma_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp;assignvariableop_52_rmsprop_batch_normalization_29_beta_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp/assignvariableop_53_rmsprop_dense_91_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp<assignvariableop_54_rmsprop_batch_normalization_30_gamma_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp;assignvariableop_55_rmsprop_batch_normalization_30_beta_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp/assignvariableop_56_rmsprop_dense_92_kernel_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp<assignvariableop_57_rmsprop_batch_normalization_31_gamma_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp;assignvariableop_58_rmsprop_batch_normalization_31_beta_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp/assignvariableop_59_rmsprop_dense_93_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp-assignvariableop_60_rmsprop_dense_93_bias_rmsIdentity_60:output:0"/device:CPU:0*
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
?*
?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_667085

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
7__inference_batch_normalization_29_layer_call_fn_669461

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
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_6668632
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
?
e
I__inference_activation_15_layer_call_and_return_conditional_losses_667398

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
?
?
)__inference_dense_93_layer_call_fn_669782

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
D__inference_dense_93_layer_call_and_return_conditional_losses_6675912
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
?
G
+__inference_dropout_25_layer_call_fn_669401

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
F__inference_dropout_25_layer_call_and_return_conditional_losses_6674822
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
?*
?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_669632

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
?
?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_667025

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
??
?
I__inference_sequential_42_layer_call_and_return_conditional_losses_668806

inputsC
)conv2d_121_conv2d_readvariableop_resource: 8
*conv2d_121_biasadd_readvariableop_resource: C
)conv2d_122_conv2d_readvariableop_resource:  <
.batch_normalization_27_readvariableop_resource: >
0batch_normalization_27_readvariableop_1_resource: M
?batch_normalization_27_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_123_conv2d_readvariableop_resource: @8
*conv2d_123_biasadd_readvariableop_resource:@C
)conv2d_124_conv2d_readvariableop_resource:@@<
.batch_normalization_28_readvariableop_resource:@>
0batch_normalization_28_readvariableop_1_resource:@M
?batch_normalization_28_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource:@;
'dense_90_matmul_readvariableop_resource:
??G
8batch_normalization_29_batchnorm_readvariableop_resource:	?K
<batch_normalization_29_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_29_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_29_batchnorm_readvariableop_2_resource:	?;
'dense_91_matmul_readvariableop_resource:
??G
8batch_normalization_30_batchnorm_readvariableop_resource:	?K
<batch_normalization_30_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_30_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_30_batchnorm_readvariableop_2_resource:	?:
'dense_92_matmul_readvariableop_resource:	?TF
8batch_normalization_31_batchnorm_readvariableop_resource:TJ
<batch_normalization_31_batchnorm_mul_readvariableop_resource:TH
:batch_normalization_31_batchnorm_readvariableop_1_resource:TH
:batch_normalization_31_batchnorm_readvariableop_2_resource:T9
'dense_93_matmul_readvariableop_resource:T6
(dense_93_biasadd_readvariableop_resource:
identity??6batch_normalization_27/FusedBatchNormV3/ReadVariableOp?8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_27/ReadVariableOp?'batch_normalization_27/ReadVariableOp_1?6batch_normalization_28/FusedBatchNormV3/ReadVariableOp?8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_28/ReadVariableOp?'batch_normalization_28/ReadVariableOp_1?/batch_normalization_29/batchnorm/ReadVariableOp?1batch_normalization_29/batchnorm/ReadVariableOp_1?1batch_normalization_29/batchnorm/ReadVariableOp_2?3batch_normalization_29/batchnorm/mul/ReadVariableOp?/batch_normalization_30/batchnorm/ReadVariableOp?1batch_normalization_30/batchnorm/ReadVariableOp_1?1batch_normalization_30/batchnorm/ReadVariableOp_2?3batch_normalization_30/batchnorm/mul/ReadVariableOp?/batch_normalization_31/batchnorm/ReadVariableOp?1batch_normalization_31/batchnorm/ReadVariableOp_1?1batch_normalization_31/batchnorm/ReadVariableOp_2?3batch_normalization_31/batchnorm/mul/ReadVariableOp?!conv2d_121/BiasAdd/ReadVariableOp? conv2d_121/Conv2D/ReadVariableOp?3conv2d_121/kernel/Regularizer/Square/ReadVariableOp? conv2d_122/Conv2D/ReadVariableOp?!conv2d_123/BiasAdd/ReadVariableOp? conv2d_123/Conv2D/ReadVariableOp?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp? conv2d_124/Conv2D/ReadVariableOp?dense_90/MatMul/ReadVariableOp?dense_91/MatMul/ReadVariableOp?dense_92/MatMul/ReadVariableOp?dense_93/BiasAdd/ReadVariableOp?dense_93/MatMul/ReadVariableOp?
 conv2d_121/Conv2D/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_121/Conv2D/ReadVariableOp?
conv2d_121/Conv2DConv2Dinputs(conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2
conv2d_121/Conv2D?
!conv2d_121/BiasAdd/ReadVariableOpReadVariableOp*conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_121/BiasAdd/ReadVariableOp?
conv2d_121/BiasAddBiasAddconv2d_121/Conv2D:output:0)conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2
conv2d_121/BiasAdd?
conv2d_121/ReluReluconv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
conv2d_121/Relu?
 conv2d_122/Conv2D/ReadVariableOpReadVariableOp)conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_122/Conv2D/ReadVariableOp?
conv2d_122/Conv2DConv2Dconv2d_121/Relu:activations:0(conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2
conv2d_122/Conv2D?
%batch_normalization_27/ReadVariableOpReadVariableOp.batch_normalization_27_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_27/ReadVariableOp?
'batch_normalization_27/ReadVariableOp_1ReadVariableOp0batch_normalization_27_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_27/ReadVariableOp_1?
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_27/FusedBatchNormV3FusedBatchNormV3conv2d_122/Conv2D:output:0-batch_normalization_27/ReadVariableOp:value:0/batch_normalization_27/ReadVariableOp_1:value:0>batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
is_training( 2)
'batch_normalization_27/FusedBatchNormV3?
activation_15/ReluRelu+batch_normalization_27/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2
activation_15/Relu?
max_pooling2d_105/MaxPoolMaxPool activation_15/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_105/MaxPool?
dropout_24/IdentityIdentity"max_pooling2d_105/MaxPool:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout_24/Identity?
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_123/Conv2D/ReadVariableOp?
conv2d_123/Conv2DConv2Ddropout_24/Identity:output:0(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2
conv2d_123/Conv2D?
!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_123/BiasAdd/ReadVariableOp?
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2
conv2d_123/BiasAdd?
conv2d_123/ReluReluconv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
conv2d_123/Relu?
 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_124/Conv2D/ReadVariableOp?
conv2d_124/Conv2DConv2Dconv2d_123/Relu:activations:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
conv2d_124/Conv2D?
%batch_normalization_28/ReadVariableOpReadVariableOp.batch_normalization_28_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_28/ReadVariableOp?
'batch_normalization_28/ReadVariableOp_1ReadVariableOp0batch_normalization_28_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_28/ReadVariableOp_1?
6batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_28/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_28/FusedBatchNormV3FusedBatchNormV3conv2d_124/Conv2D:output:0-batch_normalization_28/ReadVariableOp:value:0/batch_normalization_28/ReadVariableOp_1:value:0>batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_28/FusedBatchNormV3?
activation_16/ReluRelu+batch_normalization_28/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2
activation_16/Relu?
max_pooling2d_106/MaxPoolMaxPool activation_16/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_106/MaxPool?
dropout_25/IdentityIdentity"max_pooling2d_106/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_25/Identityu
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_40/Const?
flatten_40/ReshapeReshapedropout_25/Identity:output:0flatten_40/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_40/Reshape?
dense_90/MatMul/ReadVariableOpReadVariableOp'dense_90_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_90/MatMul/ReadVariableOp?
dense_90/MatMulMatMulflatten_40/Reshape:output:0&dense_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_90/MatMul?
/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_29/batchnorm/ReadVariableOp?
&batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_29/batchnorm/add/y?
$batch_normalization_29/batchnorm/addAddV27batch_normalization_29/batchnorm/ReadVariableOp:value:0/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_29/batchnorm/add?
&batch_normalization_29/batchnorm/RsqrtRsqrt(batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_29/batchnorm/Rsqrt?
3batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_29/batchnorm/mul/ReadVariableOp?
$batch_normalization_29/batchnorm/mulMul*batch_normalization_29/batchnorm/Rsqrt:y:0;batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_29/batchnorm/mul?
&batch_normalization_29/batchnorm/mul_1Muldense_90/MatMul:product:0(batch_normalization_29/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_29/batchnorm/mul_1?
1batch_normalization_29/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_29_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_29/batchnorm/ReadVariableOp_1?
&batch_normalization_29/batchnorm/mul_2Mul9batch_normalization_29/batchnorm/ReadVariableOp_1:value:0(batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_29/batchnorm/mul_2?
1batch_normalization_29/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_29_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_29/batchnorm/ReadVariableOp_2?
$batch_normalization_29/batchnorm/subSub9batch_normalization_29/batchnorm/ReadVariableOp_2:value:0*batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_29/batchnorm/sub?
&batch_normalization_29/batchnorm/add_1AddV2*batch_normalization_29/batchnorm/mul_1:z:0(batch_normalization_29/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_29/batchnorm/add_1?
activation_17/ReluRelu*batch_normalization_29/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_17/Relu?
dense_91/MatMul/ReadVariableOpReadVariableOp'dense_91_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_91/MatMul/ReadVariableOp?
dense_91/MatMulMatMul activation_17/Relu:activations:0&dense_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_91/MatMul?
/batch_normalization_30/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_30_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_30/batchnorm/ReadVariableOp?
&batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_30/batchnorm/add/y?
$batch_normalization_30/batchnorm/addAddV27batch_normalization_30/batchnorm/ReadVariableOp:value:0/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_30/batchnorm/add?
&batch_normalization_30/batchnorm/RsqrtRsqrt(batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_30/batchnorm/Rsqrt?
3batch_normalization_30/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_30_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_30/batchnorm/mul/ReadVariableOp?
$batch_normalization_30/batchnorm/mulMul*batch_normalization_30/batchnorm/Rsqrt:y:0;batch_normalization_30/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_30/batchnorm/mul?
&batch_normalization_30/batchnorm/mul_1Muldense_91/MatMul:product:0(batch_normalization_30/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_30/batchnorm/mul_1?
1batch_normalization_30/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_30_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_30/batchnorm/ReadVariableOp_1?
&batch_normalization_30/batchnorm/mul_2Mul9batch_normalization_30/batchnorm/ReadVariableOp_1:value:0(batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_30/batchnorm/mul_2?
1batch_normalization_30/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_30_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_30/batchnorm/ReadVariableOp_2?
$batch_normalization_30/batchnorm/subSub9batch_normalization_30/batchnorm/ReadVariableOp_2:value:0*batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_30/batchnorm/sub?
&batch_normalization_30/batchnorm/add_1AddV2*batch_normalization_30/batchnorm/mul_1:z:0(batch_normalization_30/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_30/batchnorm/add_1?
activation_18/ReluRelu*batch_normalization_30/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_18/Relu?
dense_92/MatMul/ReadVariableOpReadVariableOp'dense_92_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02 
dense_92/MatMul/ReadVariableOp?
dense_92/MatMulMatMul activation_18/Relu:activations:0&dense_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_92/MatMul?
/batch_normalization_31/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_31_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype021
/batch_normalization_31/batchnorm/ReadVariableOp?
&batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_31/batchnorm/add/y?
$batch_normalization_31/batchnorm/addAddV27batch_normalization_31/batchnorm/ReadVariableOp:value:0/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes
:T2&
$batch_normalization_31/batchnorm/add?
&batch_normalization_31/batchnorm/RsqrtRsqrt(batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_31/batchnorm/Rsqrt?
3batch_normalization_31/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_31_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype025
3batch_normalization_31/batchnorm/mul/ReadVariableOp?
$batch_normalization_31/batchnorm/mulMul*batch_normalization_31/batchnorm/Rsqrt:y:0;batch_normalization_31/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2&
$batch_normalization_31/batchnorm/mul?
&batch_normalization_31/batchnorm/mul_1Muldense_92/MatMul:product:0(batch_normalization_31/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_31/batchnorm/mul_1?
1batch_normalization_31/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_31_batchnorm_readvariableop_1_resource*
_output_shapes
:T*
dtype023
1batch_normalization_31/batchnorm/ReadVariableOp_1?
&batch_normalization_31/batchnorm/mul_2Mul9batch_normalization_31/batchnorm/ReadVariableOp_1:value:0(batch_normalization_31/batchnorm/mul:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_31/batchnorm/mul_2?
1batch_normalization_31/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_31_batchnorm_readvariableop_2_resource*
_output_shapes
:T*
dtype023
1batch_normalization_31/batchnorm/ReadVariableOp_2?
$batch_normalization_31/batchnorm/subSub9batch_normalization_31/batchnorm/ReadVariableOp_2:value:0*batch_normalization_31/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2&
$batch_normalization_31/batchnorm/sub?
&batch_normalization_31/batchnorm/add_1AddV2*batch_normalization_31/batchnorm/mul_1:z:0(batch_normalization_31/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_31/batchnorm/add_1?
activation_19/ReluRelu*batch_normalization_31/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2
activation_19/Relu?
dropout_26/IdentityIdentity activation_19/Relu:activations:0*
T0*'
_output_shapes
:?????????T2
dropout_26/Identity?
dense_93/MatMul/ReadVariableOpReadVariableOp'dense_93_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02 
dense_93/MatMul/ReadVariableOp?
dense_93/MatMulMatMuldropout_26/Identity:output:0&dense_93/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_93/MatMul?
dense_93/BiasAdd/ReadVariableOpReadVariableOp(dense_93_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_93/BiasAdd/ReadVariableOp?
dense_93/BiasAddBiasAdddense_93/MatMul:product:0'dense_93/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_93/BiasAdd|
dense_93/SoftmaxSoftmaxdense_93/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_93/Softmax?
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentitydense_93/Softmax:softmax:07^batch_normalization_27/FusedBatchNormV3/ReadVariableOp9^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_27/ReadVariableOp(^batch_normalization_27/ReadVariableOp_17^batch_normalization_28/FusedBatchNormV3/ReadVariableOp9^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_28/ReadVariableOp(^batch_normalization_28/ReadVariableOp_10^batch_normalization_29/batchnorm/ReadVariableOp2^batch_normalization_29/batchnorm/ReadVariableOp_12^batch_normalization_29/batchnorm/ReadVariableOp_24^batch_normalization_29/batchnorm/mul/ReadVariableOp0^batch_normalization_30/batchnorm/ReadVariableOp2^batch_normalization_30/batchnorm/ReadVariableOp_12^batch_normalization_30/batchnorm/ReadVariableOp_24^batch_normalization_30/batchnorm/mul/ReadVariableOp0^batch_normalization_31/batchnorm/ReadVariableOp2^batch_normalization_31/batchnorm/ReadVariableOp_12^batch_normalization_31/batchnorm/ReadVariableOp_24^batch_normalization_31/batchnorm/mul/ReadVariableOp"^conv2d_121/BiasAdd/ReadVariableOp!^conv2d_121/Conv2D/ReadVariableOp4^conv2d_121/kernel/Regularizer/Square/ReadVariableOp!^conv2d_122/Conv2D/ReadVariableOp"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp^dense_90/MatMul/ReadVariableOp^dense_91/MatMul/ReadVariableOp^dense_92/MatMul/ReadVariableOp ^dense_93/BiasAdd/ReadVariableOp^dense_93/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp6batch_normalization_27/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_18batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_27/ReadVariableOp%batch_normalization_27/ReadVariableOp2R
'batch_normalization_27/ReadVariableOp_1'batch_normalization_27/ReadVariableOp_12p
6batch_normalization_28/FusedBatchNormV3/ReadVariableOp6batch_normalization_28/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_18batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_28/ReadVariableOp%batch_normalization_28/ReadVariableOp2R
'batch_normalization_28/ReadVariableOp_1'batch_normalization_28/ReadVariableOp_12b
/batch_normalization_29/batchnorm/ReadVariableOp/batch_normalization_29/batchnorm/ReadVariableOp2f
1batch_normalization_29/batchnorm/ReadVariableOp_11batch_normalization_29/batchnorm/ReadVariableOp_12f
1batch_normalization_29/batchnorm/ReadVariableOp_21batch_normalization_29/batchnorm/ReadVariableOp_22j
3batch_normalization_29/batchnorm/mul/ReadVariableOp3batch_normalization_29/batchnorm/mul/ReadVariableOp2b
/batch_normalization_30/batchnorm/ReadVariableOp/batch_normalization_30/batchnorm/ReadVariableOp2f
1batch_normalization_30/batchnorm/ReadVariableOp_11batch_normalization_30/batchnorm/ReadVariableOp_12f
1batch_normalization_30/batchnorm/ReadVariableOp_21batch_normalization_30/batchnorm/ReadVariableOp_22j
3batch_normalization_30/batchnorm/mul/ReadVariableOp3batch_normalization_30/batchnorm/mul/ReadVariableOp2b
/batch_normalization_31/batchnorm/ReadVariableOp/batch_normalization_31/batchnorm/ReadVariableOp2f
1batch_normalization_31/batchnorm/ReadVariableOp_11batch_normalization_31/batchnorm/ReadVariableOp_12f
1batch_normalization_31/batchnorm/ReadVariableOp_21batch_normalization_31/batchnorm/ReadVariableOp_22j
3batch_normalization_31/batchnorm/mul/ReadVariableOp3batch_normalization_31/batchnorm/mul/ReadVariableOp2F
!conv2d_121/BiasAdd/ReadVariableOp!conv2d_121/BiasAdd/ReadVariableOp2D
 conv2d_121/Conv2D/ReadVariableOp conv2d_121/Conv2D/ReadVariableOp2j
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_122/Conv2D/ReadVariableOp conv2d_122/Conv2D/ReadVariableOp2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2@
dense_90/MatMul/ReadVariableOpdense_90/MatMul/ReadVariableOp2@
dense_91/MatMul/ReadVariableOpdense_91/MatMul/ReadVariableOp2@
dense_92/MatMul/ReadVariableOpdense_92/MatMul/ReadVariableOp2B
dense_93/BiasAdd/ReadVariableOpdense_93/BiasAdd/ReadVariableOp2@
dense_93/MatMul/ReadVariableOpdense_93/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_666863

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
?
?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669179

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
?
?
D__inference_dense_92_layer_call_and_return_conditional_losses_669656

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
?
?
.__inference_sequential_42_layer_call_fn_668666

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
I__inference_sequential_42_layer_call_and_return_conditional_losses_6681092
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
?
?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669125

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
?
e
I__inference_activation_15_layer_call_and_return_conditional_losses_669189

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
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669350

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
d
+__inference_dropout_26_layer_call_fn_669756

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
F__inference_dropout_26_layer_call_and_return_conditional_losses_6677052
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
??
?!
I__inference_sequential_42_layer_call_and_return_conditional_losses_669009

inputsC
)conv2d_121_conv2d_readvariableop_resource: 8
*conv2d_121_biasadd_readvariableop_resource: C
)conv2d_122_conv2d_readvariableop_resource:  <
.batch_normalization_27_readvariableop_resource: >
0batch_normalization_27_readvariableop_1_resource: M
?batch_normalization_27_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_123_conv2d_readvariableop_resource: @8
*conv2d_123_biasadd_readvariableop_resource:@C
)conv2d_124_conv2d_readvariableop_resource:@@<
.batch_normalization_28_readvariableop_resource:@>
0batch_normalization_28_readvariableop_1_resource:@M
?batch_normalization_28_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource:@;
'dense_90_matmul_readvariableop_resource:
??M
>batch_normalization_29_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_29_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_29_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_29_batchnorm_readvariableop_resource:	?;
'dense_91_matmul_readvariableop_resource:
??M
>batch_normalization_30_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_30_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_30_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_30_batchnorm_readvariableop_resource:	?:
'dense_92_matmul_readvariableop_resource:	?TL
>batch_normalization_31_assignmovingavg_readvariableop_resource:TN
@batch_normalization_31_assignmovingavg_1_readvariableop_resource:TJ
<batch_normalization_31_batchnorm_mul_readvariableop_resource:TF
8batch_normalization_31_batchnorm_readvariableop_resource:T9
'dense_93_matmul_readvariableop_resource:T6
(dense_93_biasadd_readvariableop_resource:
identity??%batch_normalization_27/AssignNewValue?'batch_normalization_27/AssignNewValue_1?6batch_normalization_27/FusedBatchNormV3/ReadVariableOp?8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_27/ReadVariableOp?'batch_normalization_27/ReadVariableOp_1?%batch_normalization_28/AssignNewValue?'batch_normalization_28/AssignNewValue_1?6batch_normalization_28/FusedBatchNormV3/ReadVariableOp?8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_28/ReadVariableOp?'batch_normalization_28/ReadVariableOp_1?&batch_normalization_29/AssignMovingAvg?5batch_normalization_29/AssignMovingAvg/ReadVariableOp?(batch_normalization_29/AssignMovingAvg_1?7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_29/batchnorm/ReadVariableOp?3batch_normalization_29/batchnorm/mul/ReadVariableOp?&batch_normalization_30/AssignMovingAvg?5batch_normalization_30/AssignMovingAvg/ReadVariableOp?(batch_normalization_30/AssignMovingAvg_1?7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_30/batchnorm/ReadVariableOp?3batch_normalization_30/batchnorm/mul/ReadVariableOp?&batch_normalization_31/AssignMovingAvg?5batch_normalization_31/AssignMovingAvg/ReadVariableOp?(batch_normalization_31/AssignMovingAvg_1?7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_31/batchnorm/ReadVariableOp?3batch_normalization_31/batchnorm/mul/ReadVariableOp?!conv2d_121/BiasAdd/ReadVariableOp? conv2d_121/Conv2D/ReadVariableOp?3conv2d_121/kernel/Regularizer/Square/ReadVariableOp? conv2d_122/Conv2D/ReadVariableOp?!conv2d_123/BiasAdd/ReadVariableOp? conv2d_123/Conv2D/ReadVariableOp?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp? conv2d_124/Conv2D/ReadVariableOp?dense_90/MatMul/ReadVariableOp?dense_91/MatMul/ReadVariableOp?dense_92/MatMul/ReadVariableOp?dense_93/BiasAdd/ReadVariableOp?dense_93/MatMul/ReadVariableOp?
 conv2d_121/Conv2D/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_121/Conv2D/ReadVariableOp?
conv2d_121/Conv2DConv2Dinputs(conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2
conv2d_121/Conv2D?
!conv2d_121/BiasAdd/ReadVariableOpReadVariableOp*conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_121/BiasAdd/ReadVariableOp?
conv2d_121/BiasAddBiasAddconv2d_121/Conv2D:output:0)conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2
conv2d_121/BiasAdd?
conv2d_121/ReluReluconv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
conv2d_121/Relu?
 conv2d_122/Conv2D/ReadVariableOpReadVariableOp)conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_122/Conv2D/ReadVariableOp?
conv2d_122/Conv2DConv2Dconv2d_121/Relu:activations:0(conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2
conv2d_122/Conv2D?
%batch_normalization_27/ReadVariableOpReadVariableOp.batch_normalization_27_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_27/ReadVariableOp?
'batch_normalization_27/ReadVariableOp_1ReadVariableOp0batch_normalization_27_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_27/ReadVariableOp_1?
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_27/FusedBatchNormV3FusedBatchNormV3conv2d_122/Conv2D:output:0-batch_normalization_27/ReadVariableOp:value:0/batch_normalization_27/ReadVariableOp_1:value:0>batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_27/FusedBatchNormV3?
%batch_normalization_27/AssignNewValueAssignVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource4batch_normalization_27/FusedBatchNormV3:batch_mean:07^batch_normalization_27/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_27/AssignNewValue?
'batch_normalization_27/AssignNewValue_1AssignVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_27/FusedBatchNormV3:batch_variance:09^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_27/AssignNewValue_1?
activation_15/ReluRelu+batch_normalization_27/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2
activation_15/Relu?
max_pooling2d_105/MaxPoolMaxPool activation_15/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_105/MaxPooly
dropout_24/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_24/dropout/Const?
dropout_24/dropout/MulMul"max_pooling2d_105/MaxPool:output:0!dropout_24/dropout/Const:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout_24/dropout/Mul?
dropout_24/dropout/ShapeShape"max_pooling2d_105/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_24/dropout/Shape?
/dropout_24/dropout/random_uniform/RandomUniformRandomUniform!dropout_24/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????<	 *
dtype021
/dropout_24/dropout/random_uniform/RandomUniform?
!dropout_24/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_24/dropout/GreaterEqual/y?
dropout_24/dropout/GreaterEqualGreaterEqual8dropout_24/dropout/random_uniform/RandomUniform:output:0*dropout_24/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<	 2!
dropout_24/dropout/GreaterEqual?
dropout_24/dropout/CastCast#dropout_24/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<	 2
dropout_24/dropout/Cast?
dropout_24/dropout/Mul_1Muldropout_24/dropout/Mul:z:0dropout_24/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<	 2
dropout_24/dropout/Mul_1?
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_123/Conv2D/ReadVariableOp?
conv2d_123/Conv2DConv2Ddropout_24/dropout/Mul_1:z:0(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2
conv2d_123/Conv2D?
!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_123/BiasAdd/ReadVariableOp?
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2
conv2d_123/BiasAdd?
conv2d_123/ReluReluconv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
conv2d_123/Relu?
 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_124/Conv2D/ReadVariableOp?
conv2d_124/Conv2DConv2Dconv2d_123/Relu:activations:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
conv2d_124/Conv2D?
%batch_normalization_28/ReadVariableOpReadVariableOp.batch_normalization_28_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_28/ReadVariableOp?
'batch_normalization_28/ReadVariableOp_1ReadVariableOp0batch_normalization_28_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_28/ReadVariableOp_1?
6batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_28/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_28/FusedBatchNormV3FusedBatchNormV3conv2d_124/Conv2D:output:0-batch_normalization_28/ReadVariableOp:value:0/batch_normalization_28/ReadVariableOp_1:value:0>batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_28/FusedBatchNormV3?
%batch_normalization_28/AssignNewValueAssignVariableOp?batch_normalization_28_fusedbatchnormv3_readvariableop_resource4batch_normalization_28/FusedBatchNormV3:batch_mean:07^batch_normalization_28/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_28/AssignNewValue?
'batch_normalization_28/AssignNewValue_1AssignVariableOpAbatch_normalization_28_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_28/FusedBatchNormV3:batch_variance:09^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_28/AssignNewValue_1?
activation_16/ReluRelu+batch_normalization_28/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2
activation_16/Relu?
max_pooling2d_106/MaxPoolMaxPool activation_16/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_106/MaxPooly
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_25/dropout/Const?
dropout_25/dropout/MulMul"max_pooling2d_106/MaxPool:output:0!dropout_25/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_25/dropout/Mul?
dropout_25/dropout/ShapeShape"max_pooling2d_106/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_25/dropout/Shape?
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_25/dropout/random_uniform/RandomUniform?
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_25/dropout/GreaterEqual/y?
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_25/dropout/GreaterEqual?
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_25/dropout/Cast?
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_25/dropout/Mul_1u
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_40/Const?
flatten_40/ReshapeReshapedropout_25/dropout/Mul_1:z:0flatten_40/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_40/Reshape?
dense_90/MatMul/ReadVariableOpReadVariableOp'dense_90_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_90/MatMul/ReadVariableOp?
dense_90/MatMulMatMulflatten_40/Reshape:output:0&dense_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_90/MatMul?
5batch_normalization_29/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_29/moments/mean/reduction_indices?
#batch_normalization_29/moments/meanMeandense_90/MatMul:product:0>batch_normalization_29/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_29/moments/mean?
+batch_normalization_29/moments/StopGradientStopGradient,batch_normalization_29/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_29/moments/StopGradient?
0batch_normalization_29/moments/SquaredDifferenceSquaredDifferencedense_90/MatMul:product:04batch_normalization_29/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_29/moments/SquaredDifference?
9batch_normalization_29/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_29/moments/variance/reduction_indices?
'batch_normalization_29/moments/varianceMean4batch_normalization_29/moments/SquaredDifference:z:0Bbatch_normalization_29/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_29/moments/variance?
&batch_normalization_29/moments/SqueezeSqueeze,batch_normalization_29/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_29/moments/Squeeze?
(batch_normalization_29/moments/Squeeze_1Squeeze0batch_normalization_29/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_29/moments/Squeeze_1?
,batch_normalization_29/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_29/AssignMovingAvg/decay?
5batch_normalization_29/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_29_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_29/AssignMovingAvg/ReadVariableOp?
*batch_normalization_29/AssignMovingAvg/subSub=batch_normalization_29/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_29/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_29/AssignMovingAvg/sub?
*batch_normalization_29/AssignMovingAvg/mulMul.batch_normalization_29/AssignMovingAvg/sub:z:05batch_normalization_29/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_29/AssignMovingAvg/mul?
&batch_normalization_29/AssignMovingAvgAssignSubVariableOp>batch_normalization_29_assignmovingavg_readvariableop_resource.batch_normalization_29/AssignMovingAvg/mul:z:06^batch_normalization_29/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_29/AssignMovingAvg?
.batch_normalization_29/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_29/AssignMovingAvg_1/decay?
7batch_normalization_29/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_29_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_29/AssignMovingAvg_1/subSub?batch_normalization_29/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_29/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_29/AssignMovingAvg_1/sub?
,batch_normalization_29/AssignMovingAvg_1/mulMul0batch_normalization_29/AssignMovingAvg_1/sub:z:07batch_normalization_29/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_29/AssignMovingAvg_1/mul?
(batch_normalization_29/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_29_assignmovingavg_1_readvariableop_resource0batch_normalization_29/AssignMovingAvg_1/mul:z:08^batch_normalization_29/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_29/AssignMovingAvg_1?
&batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_29/batchnorm/add/y?
$batch_normalization_29/batchnorm/addAddV21batch_normalization_29/moments/Squeeze_1:output:0/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_29/batchnorm/add?
&batch_normalization_29/batchnorm/RsqrtRsqrt(batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_29/batchnorm/Rsqrt?
3batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_29/batchnorm/mul/ReadVariableOp?
$batch_normalization_29/batchnorm/mulMul*batch_normalization_29/batchnorm/Rsqrt:y:0;batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_29/batchnorm/mul?
&batch_normalization_29/batchnorm/mul_1Muldense_90/MatMul:product:0(batch_normalization_29/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_29/batchnorm/mul_1?
&batch_normalization_29/batchnorm/mul_2Mul/batch_normalization_29/moments/Squeeze:output:0(batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_29/batchnorm/mul_2?
/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_29/batchnorm/ReadVariableOp?
$batch_normalization_29/batchnorm/subSub7batch_normalization_29/batchnorm/ReadVariableOp:value:0*batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_29/batchnorm/sub?
&batch_normalization_29/batchnorm/add_1AddV2*batch_normalization_29/batchnorm/mul_1:z:0(batch_normalization_29/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_29/batchnorm/add_1?
activation_17/ReluRelu*batch_normalization_29/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_17/Relu?
dense_91/MatMul/ReadVariableOpReadVariableOp'dense_91_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_91/MatMul/ReadVariableOp?
dense_91/MatMulMatMul activation_17/Relu:activations:0&dense_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_91/MatMul?
5batch_normalization_30/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_30/moments/mean/reduction_indices?
#batch_normalization_30/moments/meanMeandense_91/MatMul:product:0>batch_normalization_30/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_30/moments/mean?
+batch_normalization_30/moments/StopGradientStopGradient,batch_normalization_30/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_30/moments/StopGradient?
0batch_normalization_30/moments/SquaredDifferenceSquaredDifferencedense_91/MatMul:product:04batch_normalization_30/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_30/moments/SquaredDifference?
9batch_normalization_30/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_30/moments/variance/reduction_indices?
'batch_normalization_30/moments/varianceMean4batch_normalization_30/moments/SquaredDifference:z:0Bbatch_normalization_30/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_30/moments/variance?
&batch_normalization_30/moments/SqueezeSqueeze,batch_normalization_30/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_30/moments/Squeeze?
(batch_normalization_30/moments/Squeeze_1Squeeze0batch_normalization_30/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_30/moments/Squeeze_1?
,batch_normalization_30/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_30/AssignMovingAvg/decay?
5batch_normalization_30/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_30_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_30/AssignMovingAvg/ReadVariableOp?
*batch_normalization_30/AssignMovingAvg/subSub=batch_normalization_30/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_30/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_30/AssignMovingAvg/sub?
*batch_normalization_30/AssignMovingAvg/mulMul.batch_normalization_30/AssignMovingAvg/sub:z:05batch_normalization_30/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_30/AssignMovingAvg/mul?
&batch_normalization_30/AssignMovingAvgAssignSubVariableOp>batch_normalization_30_assignmovingavg_readvariableop_resource.batch_normalization_30/AssignMovingAvg/mul:z:06^batch_normalization_30/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_30/AssignMovingAvg?
.batch_normalization_30/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_30/AssignMovingAvg_1/decay?
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_30_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_30/AssignMovingAvg_1/subSub?batch_normalization_30/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_30/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_30/AssignMovingAvg_1/sub?
,batch_normalization_30/AssignMovingAvg_1/mulMul0batch_normalization_30/AssignMovingAvg_1/sub:z:07batch_normalization_30/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_30/AssignMovingAvg_1/mul?
(batch_normalization_30/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_30_assignmovingavg_1_readvariableop_resource0batch_normalization_30/AssignMovingAvg_1/mul:z:08^batch_normalization_30/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_30/AssignMovingAvg_1?
&batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_30/batchnorm/add/y?
$batch_normalization_30/batchnorm/addAddV21batch_normalization_30/moments/Squeeze_1:output:0/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_30/batchnorm/add?
&batch_normalization_30/batchnorm/RsqrtRsqrt(batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_30/batchnorm/Rsqrt?
3batch_normalization_30/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_30_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_30/batchnorm/mul/ReadVariableOp?
$batch_normalization_30/batchnorm/mulMul*batch_normalization_30/batchnorm/Rsqrt:y:0;batch_normalization_30/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_30/batchnorm/mul?
&batch_normalization_30/batchnorm/mul_1Muldense_91/MatMul:product:0(batch_normalization_30/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_30/batchnorm/mul_1?
&batch_normalization_30/batchnorm/mul_2Mul/batch_normalization_30/moments/Squeeze:output:0(batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_30/batchnorm/mul_2?
/batch_normalization_30/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_30_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_30/batchnorm/ReadVariableOp?
$batch_normalization_30/batchnorm/subSub7batch_normalization_30/batchnorm/ReadVariableOp:value:0*batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_30/batchnorm/sub?
&batch_normalization_30/batchnorm/add_1AddV2*batch_normalization_30/batchnorm/mul_1:z:0(batch_normalization_30/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_30/batchnorm/add_1?
activation_18/ReluRelu*batch_normalization_30/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_18/Relu?
dense_92/MatMul/ReadVariableOpReadVariableOp'dense_92_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02 
dense_92/MatMul/ReadVariableOp?
dense_92/MatMulMatMul activation_18/Relu:activations:0&dense_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_92/MatMul?
5batch_normalization_31/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_31/moments/mean/reduction_indices?
#batch_normalization_31/moments/meanMeandense_92/MatMul:product:0>batch_normalization_31/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2%
#batch_normalization_31/moments/mean?
+batch_normalization_31/moments/StopGradientStopGradient,batch_normalization_31/moments/mean:output:0*
T0*
_output_shapes

:T2-
+batch_normalization_31/moments/StopGradient?
0batch_normalization_31/moments/SquaredDifferenceSquaredDifferencedense_92/MatMul:product:04batch_normalization_31/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????T22
0batch_normalization_31/moments/SquaredDifference?
9batch_normalization_31/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_31/moments/variance/reduction_indices?
'batch_normalization_31/moments/varianceMean4batch_normalization_31/moments/SquaredDifference:z:0Bbatch_normalization_31/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2)
'batch_normalization_31/moments/variance?
&batch_normalization_31/moments/SqueezeSqueeze,batch_normalization_31/moments/mean:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2(
&batch_normalization_31/moments/Squeeze?
(batch_normalization_31/moments/Squeeze_1Squeeze0batch_normalization_31/moments/variance:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2*
(batch_normalization_31/moments/Squeeze_1?
,batch_normalization_31/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_31/AssignMovingAvg/decay?
5batch_normalization_31/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_31_assignmovingavg_readvariableop_resource*
_output_shapes
:T*
dtype027
5batch_normalization_31/AssignMovingAvg/ReadVariableOp?
*batch_normalization_31/AssignMovingAvg/subSub=batch_normalization_31/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_31/moments/Squeeze:output:0*
T0*
_output_shapes
:T2,
*batch_normalization_31/AssignMovingAvg/sub?
*batch_normalization_31/AssignMovingAvg/mulMul.batch_normalization_31/AssignMovingAvg/sub:z:05batch_normalization_31/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:T2,
*batch_normalization_31/AssignMovingAvg/mul?
&batch_normalization_31/AssignMovingAvgAssignSubVariableOp>batch_normalization_31_assignmovingavg_readvariableop_resource.batch_normalization_31/AssignMovingAvg/mul:z:06^batch_normalization_31/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_31/AssignMovingAvg?
.batch_normalization_31/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_31/AssignMovingAvg_1/decay?
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_31_assignmovingavg_1_readvariableop_resource*
_output_shapes
:T*
dtype029
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_31/AssignMovingAvg_1/subSub?batch_normalization_31/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_31/moments/Squeeze_1:output:0*
T0*
_output_shapes
:T2.
,batch_normalization_31/AssignMovingAvg_1/sub?
,batch_normalization_31/AssignMovingAvg_1/mulMul0batch_normalization_31/AssignMovingAvg_1/sub:z:07batch_normalization_31/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:T2.
,batch_normalization_31/AssignMovingAvg_1/mul?
(batch_normalization_31/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_31_assignmovingavg_1_readvariableop_resource0batch_normalization_31/AssignMovingAvg_1/mul:z:08^batch_normalization_31/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_31/AssignMovingAvg_1?
&batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_31/batchnorm/add/y?
$batch_normalization_31/batchnorm/addAddV21batch_normalization_31/moments/Squeeze_1:output:0/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes
:T2&
$batch_normalization_31/batchnorm/add?
&batch_normalization_31/batchnorm/RsqrtRsqrt(batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_31/batchnorm/Rsqrt?
3batch_normalization_31/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_31_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype025
3batch_normalization_31/batchnorm/mul/ReadVariableOp?
$batch_normalization_31/batchnorm/mulMul*batch_normalization_31/batchnorm/Rsqrt:y:0;batch_normalization_31/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2&
$batch_normalization_31/batchnorm/mul?
&batch_normalization_31/batchnorm/mul_1Muldense_92/MatMul:product:0(batch_normalization_31/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_31/batchnorm/mul_1?
&batch_normalization_31/batchnorm/mul_2Mul/batch_normalization_31/moments/Squeeze:output:0(batch_normalization_31/batchnorm/mul:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_31/batchnorm/mul_2?
/batch_normalization_31/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_31_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype021
/batch_normalization_31/batchnorm/ReadVariableOp?
$batch_normalization_31/batchnorm/subSub7batch_normalization_31/batchnorm/ReadVariableOp:value:0*batch_normalization_31/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2&
$batch_normalization_31/batchnorm/sub?
&batch_normalization_31/batchnorm/add_1AddV2*batch_normalization_31/batchnorm/mul_1:z:0(batch_normalization_31/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_31/batchnorm/add_1?
activation_19/ReluRelu*batch_normalization_31/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2
activation_19/Reluy
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_26/dropout/Const?
dropout_26/dropout/MulMul activation_19/Relu:activations:0!dropout_26/dropout/Const:output:0*
T0*'
_output_shapes
:?????????T2
dropout_26/dropout/Mul?
dropout_26/dropout/ShapeShape activation_19/Relu:activations:0*
T0*
_output_shapes
:2
dropout_26/dropout/Shape?
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????T*
dtype021
/dropout_26/dropout/random_uniform/RandomUniform?
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_26/dropout/GreaterEqual/y?
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????T2!
dropout_26/dropout/GreaterEqual?
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????T2
dropout_26/dropout/Cast?
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????T2
dropout_26/dropout/Mul_1?
dense_93/MatMul/ReadVariableOpReadVariableOp'dense_93_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02 
dense_93/MatMul/ReadVariableOp?
dense_93/MatMulMatMuldropout_26/dropout/Mul_1:z:0&dense_93/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_93/MatMul?
dense_93/BiasAdd/ReadVariableOpReadVariableOp(dense_93_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_93/BiasAdd/ReadVariableOp?
dense_93/BiasAddBiasAdddense_93/MatMul:product:0'dense_93/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_93/BiasAdd|
dense_93/SoftmaxSoftmaxdense_93/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_93/Softmax?
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentitydense_93/Softmax:softmax:0&^batch_normalization_27/AssignNewValue(^batch_normalization_27/AssignNewValue_17^batch_normalization_27/FusedBatchNormV3/ReadVariableOp9^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_27/ReadVariableOp(^batch_normalization_27/ReadVariableOp_1&^batch_normalization_28/AssignNewValue(^batch_normalization_28/AssignNewValue_17^batch_normalization_28/FusedBatchNormV3/ReadVariableOp9^batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_28/ReadVariableOp(^batch_normalization_28/ReadVariableOp_1'^batch_normalization_29/AssignMovingAvg6^batch_normalization_29/AssignMovingAvg/ReadVariableOp)^batch_normalization_29/AssignMovingAvg_18^batch_normalization_29/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_29/batchnorm/ReadVariableOp4^batch_normalization_29/batchnorm/mul/ReadVariableOp'^batch_normalization_30/AssignMovingAvg6^batch_normalization_30/AssignMovingAvg/ReadVariableOp)^batch_normalization_30/AssignMovingAvg_18^batch_normalization_30/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_30/batchnorm/ReadVariableOp4^batch_normalization_30/batchnorm/mul/ReadVariableOp'^batch_normalization_31/AssignMovingAvg6^batch_normalization_31/AssignMovingAvg/ReadVariableOp)^batch_normalization_31/AssignMovingAvg_18^batch_normalization_31/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_31/batchnorm/ReadVariableOp4^batch_normalization_31/batchnorm/mul/ReadVariableOp"^conv2d_121/BiasAdd/ReadVariableOp!^conv2d_121/Conv2D/ReadVariableOp4^conv2d_121/kernel/Regularizer/Square/ReadVariableOp!^conv2d_122/Conv2D/ReadVariableOp"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp^dense_90/MatMul/ReadVariableOp^dense_91/MatMul/ReadVariableOp^dense_92/MatMul/ReadVariableOp ^dense_93/BiasAdd/ReadVariableOp^dense_93/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_27/AssignNewValue%batch_normalization_27/AssignNewValue2R
'batch_normalization_27/AssignNewValue_1'batch_normalization_27/AssignNewValue_12p
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp6batch_normalization_27/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_18batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_27/ReadVariableOp%batch_normalization_27/ReadVariableOp2R
'batch_normalization_27/ReadVariableOp_1'batch_normalization_27/ReadVariableOp_12N
%batch_normalization_28/AssignNewValue%batch_normalization_28/AssignNewValue2R
'batch_normalization_28/AssignNewValue_1'batch_normalization_28/AssignNewValue_12p
6batch_normalization_28/FusedBatchNormV3/ReadVariableOp6batch_normalization_28/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_28/FusedBatchNormV3/ReadVariableOp_18batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_28/ReadVariableOp%batch_normalization_28/ReadVariableOp2R
'batch_normalization_28/ReadVariableOp_1'batch_normalization_28/ReadVariableOp_12P
&batch_normalization_29/AssignMovingAvg&batch_normalization_29/AssignMovingAvg2n
5batch_normalization_29/AssignMovingAvg/ReadVariableOp5batch_normalization_29/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_29/AssignMovingAvg_1(batch_normalization_29/AssignMovingAvg_12r
7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_29/batchnorm/ReadVariableOp/batch_normalization_29/batchnorm/ReadVariableOp2j
3batch_normalization_29/batchnorm/mul/ReadVariableOp3batch_normalization_29/batchnorm/mul/ReadVariableOp2P
&batch_normalization_30/AssignMovingAvg&batch_normalization_30/AssignMovingAvg2n
5batch_normalization_30/AssignMovingAvg/ReadVariableOp5batch_normalization_30/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_30/AssignMovingAvg_1(batch_normalization_30/AssignMovingAvg_12r
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_30/batchnorm/ReadVariableOp/batch_normalization_30/batchnorm/ReadVariableOp2j
3batch_normalization_30/batchnorm/mul/ReadVariableOp3batch_normalization_30/batchnorm/mul/ReadVariableOp2P
&batch_normalization_31/AssignMovingAvg&batch_normalization_31/AssignMovingAvg2n
5batch_normalization_31/AssignMovingAvg/ReadVariableOp5batch_normalization_31/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_31/AssignMovingAvg_1(batch_normalization_31/AssignMovingAvg_12r
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_31/batchnorm/ReadVariableOp/batch_normalization_31/batchnorm/ReadVariableOp2j
3batch_normalization_31/batchnorm/mul/ReadVariableOp3batch_normalization_31/batchnorm/mul/ReadVariableOp2F
!conv2d_121/BiasAdd/ReadVariableOp!conv2d_121/BiasAdd/ReadVariableOp2D
 conv2d_121/Conv2D/ReadVariableOp conv2d_121/Conv2D/ReadVariableOp2j
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_122/Conv2D/ReadVariableOp conv2d_122/Conv2D/ReadVariableOp2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2@
dense_90/MatMul/ReadVariableOpdense_90/MatMul/ReadVariableOp2@
dense_91/MatMul/ReadVariableOpdense_91/MatMul/ReadVariableOp2@
dense_92/MatMul/ReadVariableOpdense_92/MatMul/ReadVariableOp2B
dense_93/BiasAdd/ReadVariableOpdense_93/BiasAdd/ReadVariableOp2@
dense_93/MatMul/ReadVariableOpdense_93/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_40_layer_call_fn_669428

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
F__inference_flatten_40_layer_call_and_return_conditional_losses_6674902
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
?

)__inference_dense_90_layer_call_fn_669441

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
D__inference_dense_90_layer_call_and_return_conditional_losses_6674992
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
?
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_667482

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
?
?
F__inference_conv2d_123_layer_call_and_return_conditional_losses_667425

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp*
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
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_28_layer_call_fn_669314

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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_6678182
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
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_666723

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
?
e
I__inference_activation_16_layer_call_and_return_conditional_losses_667474

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
?

?
D__inference_dense_93_layer_call_and_return_conditional_losses_667591

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
?
?
D__inference_dense_91_layer_call_and_return_conditional_losses_667526

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
?
?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669386

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
?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_669702

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
??
?#
!__inference__wrapped_model_666563
conv2d_121_inputQ
7sequential_42_conv2d_121_conv2d_readvariableop_resource: F
8sequential_42_conv2d_121_biasadd_readvariableop_resource: Q
7sequential_42_conv2d_122_conv2d_readvariableop_resource:  J
<sequential_42_batch_normalization_27_readvariableop_resource: L
>sequential_42_batch_normalization_27_readvariableop_1_resource: [
Msequential_42_batch_normalization_27_fusedbatchnormv3_readvariableop_resource: ]
Osequential_42_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource: Q
7sequential_42_conv2d_123_conv2d_readvariableop_resource: @F
8sequential_42_conv2d_123_biasadd_readvariableop_resource:@Q
7sequential_42_conv2d_124_conv2d_readvariableop_resource:@@J
<sequential_42_batch_normalization_28_readvariableop_resource:@L
>sequential_42_batch_normalization_28_readvariableop_1_resource:@[
Msequential_42_batch_normalization_28_fusedbatchnormv3_readvariableop_resource:@]
Osequential_42_batch_normalization_28_fusedbatchnormv3_readvariableop_1_resource:@I
5sequential_42_dense_90_matmul_readvariableop_resource:
??U
Fsequential_42_batch_normalization_29_batchnorm_readvariableop_resource:	?Y
Jsequential_42_batch_normalization_29_batchnorm_mul_readvariableop_resource:	?W
Hsequential_42_batch_normalization_29_batchnorm_readvariableop_1_resource:	?W
Hsequential_42_batch_normalization_29_batchnorm_readvariableop_2_resource:	?I
5sequential_42_dense_91_matmul_readvariableop_resource:
??U
Fsequential_42_batch_normalization_30_batchnorm_readvariableop_resource:	?Y
Jsequential_42_batch_normalization_30_batchnorm_mul_readvariableop_resource:	?W
Hsequential_42_batch_normalization_30_batchnorm_readvariableop_1_resource:	?W
Hsequential_42_batch_normalization_30_batchnorm_readvariableop_2_resource:	?H
5sequential_42_dense_92_matmul_readvariableop_resource:	?TT
Fsequential_42_batch_normalization_31_batchnorm_readvariableop_resource:TX
Jsequential_42_batch_normalization_31_batchnorm_mul_readvariableop_resource:TV
Hsequential_42_batch_normalization_31_batchnorm_readvariableop_1_resource:TV
Hsequential_42_batch_normalization_31_batchnorm_readvariableop_2_resource:TG
5sequential_42_dense_93_matmul_readvariableop_resource:TD
6sequential_42_dense_93_biasadd_readvariableop_resource:
identity??Dsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp?Fsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1?3sequential_42/batch_normalization_27/ReadVariableOp?5sequential_42/batch_normalization_27/ReadVariableOp_1?Dsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp?Fsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?3sequential_42/batch_normalization_28/ReadVariableOp?5sequential_42/batch_normalization_28/ReadVariableOp_1?=sequential_42/batch_normalization_29/batchnorm/ReadVariableOp??sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_1??sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_2?Asequential_42/batch_normalization_29/batchnorm/mul/ReadVariableOp?=sequential_42/batch_normalization_30/batchnorm/ReadVariableOp??sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_1??sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_2?Asequential_42/batch_normalization_30/batchnorm/mul/ReadVariableOp?=sequential_42/batch_normalization_31/batchnorm/ReadVariableOp??sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_1??sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_2?Asequential_42/batch_normalization_31/batchnorm/mul/ReadVariableOp?/sequential_42/conv2d_121/BiasAdd/ReadVariableOp?.sequential_42/conv2d_121/Conv2D/ReadVariableOp?.sequential_42/conv2d_122/Conv2D/ReadVariableOp?/sequential_42/conv2d_123/BiasAdd/ReadVariableOp?.sequential_42/conv2d_123/Conv2D/ReadVariableOp?.sequential_42/conv2d_124/Conv2D/ReadVariableOp?,sequential_42/dense_90/MatMul/ReadVariableOp?,sequential_42/dense_91/MatMul/ReadVariableOp?,sequential_42/dense_92/MatMul/ReadVariableOp?-sequential_42/dense_93/BiasAdd/ReadVariableOp?,sequential_42/dense_93/MatMul/ReadVariableOp?
.sequential_42/conv2d_121/Conv2D/ReadVariableOpReadVariableOp7sequential_42_conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_42/conv2d_121/Conv2D/ReadVariableOp?
sequential_42/conv2d_121/Conv2DConv2Dconv2d_121_input6sequential_42/conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2!
sequential_42/conv2d_121/Conv2D?
/sequential_42/conv2d_121/BiasAdd/ReadVariableOpReadVariableOp8sequential_42_conv2d_121_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_42/conv2d_121/BiasAdd/ReadVariableOp?
 sequential_42/conv2d_121/BiasAddBiasAdd(sequential_42/conv2d_121/Conv2D:output:07sequential_42/conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2"
 sequential_42/conv2d_121/BiasAdd?
sequential_42/conv2d_121/ReluRelu)sequential_42/conv2d_121/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
sequential_42/conv2d_121/Relu?
.sequential_42/conv2d_122/Conv2D/ReadVariableOpReadVariableOp7sequential_42_conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.sequential_42/conv2d_122/Conv2D/ReadVariableOp?
sequential_42/conv2d_122/Conv2DConv2D+sequential_42/conv2d_121/Relu:activations:06sequential_42/conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2!
sequential_42/conv2d_122/Conv2D?
3sequential_42/batch_normalization_27/ReadVariableOpReadVariableOp<sequential_42_batch_normalization_27_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_42/batch_normalization_27/ReadVariableOp?
5sequential_42/batch_normalization_27/ReadVariableOp_1ReadVariableOp>sequential_42_batch_normalization_27_readvariableop_1_resource*
_output_shapes
: *
dtype027
5sequential_42/batch_normalization_27/ReadVariableOp_1?
Dsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_42_batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp?
Fsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_42_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1?
5sequential_42/batch_normalization_27/FusedBatchNormV3FusedBatchNormV3(sequential_42/conv2d_122/Conv2D:output:0;sequential_42/batch_normalization_27/ReadVariableOp:value:0=sequential_42/batch_normalization_27/ReadVariableOp_1:value:0Lsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
is_training( 27
5sequential_42/batch_normalization_27/FusedBatchNormV3?
 sequential_42/activation_15/ReluRelu9sequential_42/batch_normalization_27/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2"
 sequential_42/activation_15/Relu?
'sequential_42/max_pooling2d_105/MaxPoolMaxPool.sequential_42/activation_15/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2)
'sequential_42/max_pooling2d_105/MaxPool?
!sequential_42/dropout_24/IdentityIdentity0sequential_42/max_pooling2d_105/MaxPool:output:0*
T0*/
_output_shapes
:?????????<	 2#
!sequential_42/dropout_24/Identity?
.sequential_42/conv2d_123/Conv2D/ReadVariableOpReadVariableOp7sequential_42_conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_42/conv2d_123/Conv2D/ReadVariableOp?
sequential_42/conv2d_123/Conv2DConv2D*sequential_42/dropout_24/Identity:output:06sequential_42/conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2!
sequential_42/conv2d_123/Conv2D?
/sequential_42/conv2d_123/BiasAdd/ReadVariableOpReadVariableOp8sequential_42_conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_42/conv2d_123/BiasAdd/ReadVariableOp?
 sequential_42/conv2d_123/BiasAddBiasAdd(sequential_42/conv2d_123/Conv2D:output:07sequential_42/conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2"
 sequential_42/conv2d_123/BiasAdd?
sequential_42/conv2d_123/ReluRelu)sequential_42/conv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
sequential_42/conv2d_123/Relu?
.sequential_42/conv2d_124/Conv2D/ReadVariableOpReadVariableOp7sequential_42_conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.sequential_42/conv2d_124/Conv2D/ReadVariableOp?
sequential_42/conv2d_124/Conv2DConv2D+sequential_42/conv2d_123/Relu:activations:06sequential_42/conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2!
sequential_42/conv2d_124/Conv2D?
3sequential_42/batch_normalization_28/ReadVariableOpReadVariableOp<sequential_42_batch_normalization_28_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_42/batch_normalization_28/ReadVariableOp?
5sequential_42/batch_normalization_28/ReadVariableOp_1ReadVariableOp>sequential_42_batch_normalization_28_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_42/batch_normalization_28/ReadVariableOp_1?
Dsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_42_batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp?
Fsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_42_batch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1?
5sequential_42/batch_normalization_28/FusedBatchNormV3FusedBatchNormV3(sequential_42/conv2d_124/Conv2D:output:0;sequential_42/batch_normalization_28/ReadVariableOp:value:0=sequential_42/batch_normalization_28/ReadVariableOp_1:value:0Lsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_42/batch_normalization_28/FusedBatchNormV3?
 sequential_42/activation_16/ReluRelu9sequential_42/batch_normalization_28/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2"
 sequential_42/activation_16/Relu?
'sequential_42/max_pooling2d_106/MaxPoolMaxPool.sequential_42/activation_16/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2)
'sequential_42/max_pooling2d_106/MaxPool?
!sequential_42/dropout_25/IdentityIdentity0sequential_42/max_pooling2d_106/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!sequential_42/dropout_25/Identity?
sequential_42/flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
sequential_42/flatten_40/Const?
 sequential_42/flatten_40/ReshapeReshape*sequential_42/dropout_25/Identity:output:0'sequential_42/flatten_40/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_42/flatten_40/Reshape?
,sequential_42/dense_90/MatMul/ReadVariableOpReadVariableOp5sequential_42_dense_90_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_42/dense_90/MatMul/ReadVariableOp?
sequential_42/dense_90/MatMulMatMul)sequential_42/flatten_40/Reshape:output:04sequential_42/dense_90/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_42/dense_90/MatMul?
=sequential_42/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOpFsequential_42_batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_42/batch_normalization_29/batchnorm/ReadVariableOp?
4sequential_42/batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_42/batch_normalization_29/batchnorm/add/y?
2sequential_42/batch_normalization_29/batchnorm/addAddV2Esequential_42/batch_normalization_29/batchnorm/ReadVariableOp:value:0=sequential_42/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_42/batch_normalization_29/batchnorm/add?
4sequential_42/batch_normalization_29/batchnorm/RsqrtRsqrt6sequential_42/batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_42/batch_normalization_29/batchnorm/Rsqrt?
Asequential_42/batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_42_batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_42/batch_normalization_29/batchnorm/mul/ReadVariableOp?
2sequential_42/batch_normalization_29/batchnorm/mulMul8sequential_42/batch_normalization_29/batchnorm/Rsqrt:y:0Isequential_42/batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_42/batch_normalization_29/batchnorm/mul?
4sequential_42/batch_normalization_29/batchnorm/mul_1Mul'sequential_42/dense_90/MatMul:product:06sequential_42/batch_normalization_29/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_42/batch_normalization_29/batchnorm/mul_1?
?sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_42_batch_normalization_29_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_1?
4sequential_42/batch_normalization_29/batchnorm/mul_2MulGsequential_42/batch_normalization_29/batchnorm/ReadVariableOp_1:value:06sequential_42/batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_42/batch_normalization_29/batchnorm/mul_2?
?sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_42_batch_normalization_29_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_2?
2sequential_42/batch_normalization_29/batchnorm/subSubGsequential_42/batch_normalization_29/batchnorm/ReadVariableOp_2:value:08sequential_42/batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_42/batch_normalization_29/batchnorm/sub?
4sequential_42/batch_normalization_29/batchnorm/add_1AddV28sequential_42/batch_normalization_29/batchnorm/mul_1:z:06sequential_42/batch_normalization_29/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_42/batch_normalization_29/batchnorm/add_1?
 sequential_42/activation_17/ReluRelu8sequential_42/batch_normalization_29/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_42/activation_17/Relu?
,sequential_42/dense_91/MatMul/ReadVariableOpReadVariableOp5sequential_42_dense_91_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_42/dense_91/MatMul/ReadVariableOp?
sequential_42/dense_91/MatMulMatMul.sequential_42/activation_17/Relu:activations:04sequential_42/dense_91/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_42/dense_91/MatMul?
=sequential_42/batch_normalization_30/batchnorm/ReadVariableOpReadVariableOpFsequential_42_batch_normalization_30_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_42/batch_normalization_30/batchnorm/ReadVariableOp?
4sequential_42/batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_42/batch_normalization_30/batchnorm/add/y?
2sequential_42/batch_normalization_30/batchnorm/addAddV2Esequential_42/batch_normalization_30/batchnorm/ReadVariableOp:value:0=sequential_42/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_42/batch_normalization_30/batchnorm/add?
4sequential_42/batch_normalization_30/batchnorm/RsqrtRsqrt6sequential_42/batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_42/batch_normalization_30/batchnorm/Rsqrt?
Asequential_42/batch_normalization_30/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_42_batch_normalization_30_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_42/batch_normalization_30/batchnorm/mul/ReadVariableOp?
2sequential_42/batch_normalization_30/batchnorm/mulMul8sequential_42/batch_normalization_30/batchnorm/Rsqrt:y:0Isequential_42/batch_normalization_30/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_42/batch_normalization_30/batchnorm/mul?
4sequential_42/batch_normalization_30/batchnorm/mul_1Mul'sequential_42/dense_91/MatMul:product:06sequential_42/batch_normalization_30/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_42/batch_normalization_30/batchnorm/mul_1?
?sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_42_batch_normalization_30_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_1?
4sequential_42/batch_normalization_30/batchnorm/mul_2MulGsequential_42/batch_normalization_30/batchnorm/ReadVariableOp_1:value:06sequential_42/batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_42/batch_normalization_30/batchnorm/mul_2?
?sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_42_batch_normalization_30_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_2?
2sequential_42/batch_normalization_30/batchnorm/subSubGsequential_42/batch_normalization_30/batchnorm/ReadVariableOp_2:value:08sequential_42/batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_42/batch_normalization_30/batchnorm/sub?
4sequential_42/batch_normalization_30/batchnorm/add_1AddV28sequential_42/batch_normalization_30/batchnorm/mul_1:z:06sequential_42/batch_normalization_30/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_42/batch_normalization_30/batchnorm/add_1?
 sequential_42/activation_18/ReluRelu8sequential_42/batch_normalization_30/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_42/activation_18/Relu?
,sequential_42/dense_92/MatMul/ReadVariableOpReadVariableOp5sequential_42_dense_92_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02.
,sequential_42/dense_92/MatMul/ReadVariableOp?
sequential_42/dense_92/MatMulMatMul.sequential_42/activation_18/Relu:activations:04sequential_42/dense_92/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
sequential_42/dense_92/MatMul?
=sequential_42/batch_normalization_31/batchnorm/ReadVariableOpReadVariableOpFsequential_42_batch_normalization_31_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype02?
=sequential_42/batch_normalization_31/batchnorm/ReadVariableOp?
4sequential_42/batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_42/batch_normalization_31/batchnorm/add/y?
2sequential_42/batch_normalization_31/batchnorm/addAddV2Esequential_42/batch_normalization_31/batchnorm/ReadVariableOp:value:0=sequential_42/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes
:T24
2sequential_42/batch_normalization_31/batchnorm/add?
4sequential_42/batch_normalization_31/batchnorm/RsqrtRsqrt6sequential_42/batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes
:T26
4sequential_42/batch_normalization_31/batchnorm/Rsqrt?
Asequential_42/batch_normalization_31/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_42_batch_normalization_31_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype02C
Asequential_42/batch_normalization_31/batchnorm/mul/ReadVariableOp?
2sequential_42/batch_normalization_31/batchnorm/mulMul8sequential_42/batch_normalization_31/batchnorm/Rsqrt:y:0Isequential_42/batch_normalization_31/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T24
2sequential_42/batch_normalization_31/batchnorm/mul?
4sequential_42/batch_normalization_31/batchnorm/mul_1Mul'sequential_42/dense_92/MatMul:product:06sequential_42/batch_normalization_31/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T26
4sequential_42/batch_normalization_31/batchnorm/mul_1?
?sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_42_batch_normalization_31_batchnorm_readvariableop_1_resource*
_output_shapes
:T*
dtype02A
?sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_1?
4sequential_42/batch_normalization_31/batchnorm/mul_2MulGsequential_42/batch_normalization_31/batchnorm/ReadVariableOp_1:value:06sequential_42/batch_normalization_31/batchnorm/mul:z:0*
T0*
_output_shapes
:T26
4sequential_42/batch_normalization_31/batchnorm/mul_2?
?sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_42_batch_normalization_31_batchnorm_readvariableop_2_resource*
_output_shapes
:T*
dtype02A
?sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_2?
2sequential_42/batch_normalization_31/batchnorm/subSubGsequential_42/batch_normalization_31/batchnorm/ReadVariableOp_2:value:08sequential_42/batch_normalization_31/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T24
2sequential_42/batch_normalization_31/batchnorm/sub?
4sequential_42/batch_normalization_31/batchnorm/add_1AddV28sequential_42/batch_normalization_31/batchnorm/mul_1:z:06sequential_42/batch_normalization_31/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T26
4sequential_42/batch_normalization_31/batchnorm/add_1?
 sequential_42/activation_19/ReluRelu8sequential_42/batch_normalization_31/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2"
 sequential_42/activation_19/Relu?
!sequential_42/dropout_26/IdentityIdentity.sequential_42/activation_19/Relu:activations:0*
T0*'
_output_shapes
:?????????T2#
!sequential_42/dropout_26/Identity?
,sequential_42/dense_93/MatMul/ReadVariableOpReadVariableOp5sequential_42_dense_93_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02.
,sequential_42/dense_93/MatMul/ReadVariableOp?
sequential_42/dense_93/MatMulMatMul*sequential_42/dropout_26/Identity:output:04sequential_42/dense_93/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_42/dense_93/MatMul?
-sequential_42/dense_93/BiasAdd/ReadVariableOpReadVariableOp6sequential_42_dense_93_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_42/dense_93/BiasAdd/ReadVariableOp?
sequential_42/dense_93/BiasAddBiasAdd'sequential_42/dense_93/MatMul:product:05sequential_42/dense_93/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_42/dense_93/BiasAdd?
sequential_42/dense_93/SoftmaxSoftmax'sequential_42/dense_93/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_42/dense_93/Softmax?
IdentityIdentity(sequential_42/dense_93/Softmax:softmax:0E^sequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOpG^sequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_14^sequential_42/batch_normalization_27/ReadVariableOp6^sequential_42/batch_normalization_27/ReadVariableOp_1E^sequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOpG^sequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_14^sequential_42/batch_normalization_28/ReadVariableOp6^sequential_42/batch_normalization_28/ReadVariableOp_1>^sequential_42/batch_normalization_29/batchnorm/ReadVariableOp@^sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_1@^sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_2B^sequential_42/batch_normalization_29/batchnorm/mul/ReadVariableOp>^sequential_42/batch_normalization_30/batchnorm/ReadVariableOp@^sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_1@^sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_2B^sequential_42/batch_normalization_30/batchnorm/mul/ReadVariableOp>^sequential_42/batch_normalization_31/batchnorm/ReadVariableOp@^sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_1@^sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_2B^sequential_42/batch_normalization_31/batchnorm/mul/ReadVariableOp0^sequential_42/conv2d_121/BiasAdd/ReadVariableOp/^sequential_42/conv2d_121/Conv2D/ReadVariableOp/^sequential_42/conv2d_122/Conv2D/ReadVariableOp0^sequential_42/conv2d_123/BiasAdd/ReadVariableOp/^sequential_42/conv2d_123/Conv2D/ReadVariableOp/^sequential_42/conv2d_124/Conv2D/ReadVariableOp-^sequential_42/dense_90/MatMul/ReadVariableOp-^sequential_42/dense_91/MatMul/ReadVariableOp-^sequential_42/dense_92/MatMul/ReadVariableOp.^sequential_42/dense_93/BiasAdd/ReadVariableOp-^sequential_42/dense_93/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Dsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOpDsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp2?
Fsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1Fsequential_42/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12j
3sequential_42/batch_normalization_27/ReadVariableOp3sequential_42/batch_normalization_27/ReadVariableOp2n
5sequential_42/batch_normalization_27/ReadVariableOp_15sequential_42/batch_normalization_27/ReadVariableOp_12?
Dsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOpDsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp2?
Fsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1Fsequential_42/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12j
3sequential_42/batch_normalization_28/ReadVariableOp3sequential_42/batch_normalization_28/ReadVariableOp2n
5sequential_42/batch_normalization_28/ReadVariableOp_15sequential_42/batch_normalization_28/ReadVariableOp_12~
=sequential_42/batch_normalization_29/batchnorm/ReadVariableOp=sequential_42/batch_normalization_29/batchnorm/ReadVariableOp2?
?sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_1?sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_12?
?sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_2?sequential_42/batch_normalization_29/batchnorm/ReadVariableOp_22?
Asequential_42/batch_normalization_29/batchnorm/mul/ReadVariableOpAsequential_42/batch_normalization_29/batchnorm/mul/ReadVariableOp2~
=sequential_42/batch_normalization_30/batchnorm/ReadVariableOp=sequential_42/batch_normalization_30/batchnorm/ReadVariableOp2?
?sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_1?sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_12?
?sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_2?sequential_42/batch_normalization_30/batchnorm/ReadVariableOp_22?
Asequential_42/batch_normalization_30/batchnorm/mul/ReadVariableOpAsequential_42/batch_normalization_30/batchnorm/mul/ReadVariableOp2~
=sequential_42/batch_normalization_31/batchnorm/ReadVariableOp=sequential_42/batch_normalization_31/batchnorm/ReadVariableOp2?
?sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_1?sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_12?
?sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_2?sequential_42/batch_normalization_31/batchnorm/ReadVariableOp_22?
Asequential_42/batch_normalization_31/batchnorm/mul/ReadVariableOpAsequential_42/batch_normalization_31/batchnorm/mul/ReadVariableOp2b
/sequential_42/conv2d_121/BiasAdd/ReadVariableOp/sequential_42/conv2d_121/BiasAdd/ReadVariableOp2`
.sequential_42/conv2d_121/Conv2D/ReadVariableOp.sequential_42/conv2d_121/Conv2D/ReadVariableOp2`
.sequential_42/conv2d_122/Conv2D/ReadVariableOp.sequential_42/conv2d_122/Conv2D/ReadVariableOp2b
/sequential_42/conv2d_123/BiasAdd/ReadVariableOp/sequential_42/conv2d_123/BiasAdd/ReadVariableOp2`
.sequential_42/conv2d_123/Conv2D/ReadVariableOp.sequential_42/conv2d_123/Conv2D/ReadVariableOp2`
.sequential_42/conv2d_124/Conv2D/ReadVariableOp.sequential_42/conv2d_124/Conv2D/ReadVariableOp2\
,sequential_42/dense_90/MatMul/ReadVariableOp,sequential_42/dense_90/MatMul/ReadVariableOp2\
,sequential_42/dense_91/MatMul/ReadVariableOp,sequential_42/dense_91/MatMul/ReadVariableOp2\
,sequential_42/dense_92/MatMul/ReadVariableOp,sequential_42/dense_92/MatMul/ReadVariableOp2^
-sequential_42/dense_93/BiasAdd/ReadVariableOp-sequential_42/dense_93/BiasAdd/ReadVariableOp2\
,sequential_42/dense_93/MatMul/ReadVariableOp,sequential_42/dense_93/MatMul/ReadVariableOp:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_121_input
?
i
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_666833

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
?
e
I__inference_activation_16_layer_call_and_return_conditional_losses_669396

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
??
?
I__inference_sequential_42_layer_call_and_return_conditional_losses_668109

inputs+
conv2d_121_668010: 
conv2d_121_668012: +
conv2d_122_668015:  +
batch_normalization_27_668018: +
batch_normalization_27_668020: +
batch_normalization_27_668022: +
batch_normalization_27_668024: +
conv2d_123_668030: @
conv2d_123_668032:@+
conv2d_124_668035:@@+
batch_normalization_28_668038:@+
batch_normalization_28_668040:@+
batch_normalization_28_668042:@+
batch_normalization_28_668044:@#
dense_90_668051:
??,
batch_normalization_29_668054:	?,
batch_normalization_29_668056:	?,
batch_normalization_29_668058:	?,
batch_normalization_29_668060:	?#
dense_91_668064:
??,
batch_normalization_30_668067:	?,
batch_normalization_30_668069:	?,
batch_normalization_30_668071:	?,
batch_normalization_30_668073:	?"
dense_92_668077:	?T+
batch_normalization_31_668080:T+
batch_normalization_31_668082:T+
batch_normalization_31_668084:T+
batch_normalization_31_668086:T!
dense_93_668091:T
dense_93_668093:
identity??.batch_normalization_27/StatefulPartitionedCall?.batch_normalization_28/StatefulPartitionedCall?.batch_normalization_29/StatefulPartitionedCall?.batch_normalization_30/StatefulPartitionedCall?.batch_normalization_31/StatefulPartitionedCall?"conv2d_121/StatefulPartitionedCall?3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?"conv2d_122/StatefulPartitionedCall?"conv2d_123/StatefulPartitionedCall?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?"conv2d_124/StatefulPartitionedCall? dense_90/StatefulPartitionedCall? dense_91/StatefulPartitionedCall? dense_92/StatefulPartitionedCall? dense_93/StatefulPartitionedCall?"dropout_24/StatefulPartitionedCall?"dropout_25/StatefulPartitionedCall?"dropout_26/StatefulPartitionedCall?
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_121_668010conv2d_121_668012*
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_6673492$
"conv2d_121/StatefulPartitionedCall?
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0conv2d_122_668015*
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_6673622$
"conv2d_122/StatefulPartitionedCall?
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0batch_normalization_27_668018batch_normalization_27_668020batch_normalization_27_668022batch_normalization_27_668024*
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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_66790920
.batch_normalization_27/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6673982
activation_15/PartitionedCall?
!max_pooling2d_105/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
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
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_6666952#
!max_pooling2d_105/PartitionedCall?
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_105/PartitionedCall:output:0*
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_6678672$
"dropout_24/StatefulPartitionedCall?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv2d_123_668030conv2d_123_668032*
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_6674252$
"conv2d_123/StatefulPartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0conv2d_124_668035*
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_6674382$
"conv2d_124/StatefulPartitionedCall?
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0batch_normalization_28_668038batch_normalization_28_668040batch_normalization_28_668042batch_normalization_28_668044*
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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_66781820
.batch_normalization_28/StatefulPartitionedCall?
activation_16/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6674742
activation_16/PartitionedCall?
!max_pooling2d_106/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
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
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_6668332#
!max_pooling2d_106/PartitionedCall?
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_106/PartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_6677762$
"dropout_25/StatefulPartitionedCall?
flatten_40/PartitionedCallPartitionedCall+dropout_25/StatefulPartitionedCall:output:0*
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_6674902
flatten_40/PartitionedCall?
 dense_90/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_90_668051*
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
D__inference_dense_90_layer_call_and_return_conditional_losses_6674992"
 dense_90/StatefulPartitionedCall?
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall)dense_90/StatefulPartitionedCall:output:0batch_normalization_29_668054batch_normalization_29_668056batch_normalization_29_668058batch_normalization_29_668060*
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
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_66692320
.batch_normalization_29/StatefulPartitionedCall?
activation_17/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6675172
activation_17/PartitionedCall?
 dense_91/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:0dense_91_668064*
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
D__inference_dense_91_layer_call_and_return_conditional_losses_6675262"
 dense_91/StatefulPartitionedCall?
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall)dense_91/StatefulPartitionedCall:output:0batch_normalization_30_668067batch_normalization_30_668069batch_normalization_30_668071batch_normalization_30_668073*
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
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_66708520
.batch_normalization_30/StatefulPartitionedCall?
activation_18/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6675442
activation_18/PartitionedCall?
 dense_92/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0dense_92_668077*
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
D__inference_dense_92_layer_call_and_return_conditional_losses_6675532"
 dense_92/StatefulPartitionedCall?
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall)dense_92/StatefulPartitionedCall:output:0batch_normalization_31_668080batch_normalization_31_668082batch_normalization_31_668084batch_normalization_31_668086*
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
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_66724720
.batch_normalization_31/StatefulPartitionedCall?
activation_19/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6675712
activation_19/PartitionedCall?
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
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
F__inference_dropout_26_layer_call_and_return_conditional_losses_6677052$
"dropout_26/StatefulPartitionedCall?
 dense_93/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0dense_93_668091dense_93_668093*
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
D__inference_dense_93_layer_call_and_return_conditional_losses_6675912"
 dense_93/StatefulPartitionedCall?
3conv2d_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_121_668010*&
_output_shapes
: *
dtype025
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_121/kernel/Regularizer/SquareSquare;conv2d_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_121/kernel/Regularizer/Square?
#conv2d_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_121/kernel/Regularizer/Const?
!conv2d_121/kernel/Regularizer/SumSum(conv2d_121/kernel/Regularizer/Square:y:0,conv2d_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/Sum?
#conv2d_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_121/kernel/Regularizer/mul/x?
!conv2d_121/kernel/Regularizer/mulMul,conv2d_121/kernel/Regularizer/mul/x:output:0*conv2d_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_121/kernel/Regularizer/mul?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_123_668030*&
_output_shapes
: @*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentity)dense_93/StatefulPartitionedCall:output:0/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall#^conv2d_121/StatefulPartitionedCall4^conv2d_121/kernel/Regularizer/Square/ReadVariableOp#^conv2d_122/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp#^conv2d_124/StatefulPartitionedCall!^dense_90/StatefulPartitionedCall!^dense_91/StatefulPartitionedCall!^dense_92/StatefulPartitionedCall!^dense_93/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2j
3conv2d_121/kernel/Regularizer/Square/ReadVariableOp3conv2d_121/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2D
 dense_90/StatefulPartitionedCall dense_90/StatefulPartitionedCall2D
 dense_91/StatefulPartitionedCall dense_91/StatefulPartitionedCall2D
 dense_92/StatefulPartitionedCall dense_92/StatefulPartitionedCall2D
 dense_93/StatefulPartitionedCall dense_93/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_669528

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
?
?
7__inference_batch_normalization_27_layer_call_fn_669081

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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6666292
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
?
N
2__inference_max_pooling2d_105_layer_call_fn_666701

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
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_6666952
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
?
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_669761

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
I__inference_activation_19_layer_call_and_return_conditional_losses_667571

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
?
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_669411

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
conv2d_121_inputB
"serving_default_conv2d_121_input:0??????????<
dense_930
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
_tf_keras_sequential??{"name": "sequential_42", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_42", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_121_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_121", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_122", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_105", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_24", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_123", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_106", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_40", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_90", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_91", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_92", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_31", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dropout", "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_93", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 63, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 129, 26, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 129, 26, 1]}, "float32", "conv2d_121_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_42", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_121_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_121", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_122", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 12}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_105", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14}, {"class_name": "Dropout", "config": {"name": "dropout_24", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "conv2d_123", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "Conv2D", "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 28}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_106", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 29}, {"class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 30}, {"class_name": "Flatten", "config": {"name": "flatten_40", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 31}, {"class_name": "Dense", "config": {"name": "dense_90", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 34}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 39}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 40}, {"class_name": "Dense", "config": {"name": "dense_91", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 45}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 48}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 49}, {"class_name": "Dense", "config": {"name": "dense_92", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 52}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_31", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 54}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 56}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 57}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 58}, {"class_name": "Dropout", "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 59}, {"class_name": "Dense", "config": {"name": "dense_93", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 62}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 65}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-08, "centered": false}}}}
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
{"name": "conv2d_121", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_121", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 129, 26, 1]}}
?


%kernel
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_122", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_122", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 125, 22, 32]}}
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
_tf_keras_layer?{"name": "batch_normalization_27", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 67}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 121, 18, 32]}}
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}
?
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_105", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 68}}
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_24", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 15}
?

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_123", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_123", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 69}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 9, 32]}}
?


Ekernel
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_124", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 70}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 58, 7, 64]}}
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
_tf_keras_layer?{"name": "batch_normalization_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 71}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 5, 64]}}
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 28}
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_106", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_106", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 72}}
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_25", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 30}
?
_	variables
`trainable_variables
aregularization_losses
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_40", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 73}}
?

ckernel
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_90", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3584}}, "shared_object_id": 74}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3584]}}
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
_tf_keras_layer?{"name": "batch_normalization_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 40}
?

ukernel
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_91", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 76}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
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
_tf_keras_layer?{"name": "batch_normalization_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 45}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 48, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}, "shared_object_id": 77}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 49}
?
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_92", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_92", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 78}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
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
_tf_keras_layer?{"name": "batch_normalization_31", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_31", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 54}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 56}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 57, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 84}}, "shared_object_id": 79}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 58}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 59}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_93", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_93", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 62, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 84}}, "shared_object_id": 80}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
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
+:) 2conv2d_121/kernel
: 2conv2d_121/bias
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
+:)  2conv2d_122/kernel
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
*:( 2batch_normalization_27/gamma
):' 2batch_normalization_27/beta
2:0  (2"batch_normalization_27/moving_mean
6:4  (2&batch_normalization_27/moving_variance
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
+:) @2conv2d_123/kernel
:@2conv2d_123/bias
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
+:)@@2conv2d_124/kernel
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
*:(@2batch_normalization_28/gamma
):'@2batch_normalization_28/beta
2:0@ (2"batch_normalization_28/moving_mean
6:4@ (2&batch_normalization_28/moving_variance
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
??2dense_90/kernel
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
+:)?2batch_normalization_29/gamma
*:(?2batch_normalization_29/beta
3:1? (2"batch_normalization_29/moving_mean
7:5? (2&batch_normalization_29/moving_variance
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
??2dense_91/kernel
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
+:)?2batch_normalization_30/gamma
*:(?2batch_normalization_30/beta
3:1? (2"batch_normalization_30/moving_mean
7:5? (2&batch_normalization_30/moving_variance
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
": 	?T2dense_92/kernel
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
*:(T2batch_normalization_31/gamma
):'T2batch_normalization_31/beta
2:0T (2"batch_normalization_31/moving_mean
6:4T (2&batch_normalization_31/moving_variance
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
!:T2dense_93/kernel
:2dense_93/bias
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
5:3 2RMSprop/conv2d_121/kernel/rms
':% 2RMSprop/conv2d_121/bias/rms
5:3  2RMSprop/conv2d_122/kernel/rms
4:2 2(RMSprop/batch_normalization_27/gamma/rms
3:1 2'RMSprop/batch_normalization_27/beta/rms
5:3 @2RMSprop/conv2d_123/kernel/rms
':%@2RMSprop/conv2d_123/bias/rms
5:3@@2RMSprop/conv2d_124/kernel/rms
4:2@2(RMSprop/batch_normalization_28/gamma/rms
3:1@2'RMSprop/batch_normalization_28/beta/rms
-:+
??2RMSprop/dense_90/kernel/rms
5:3?2(RMSprop/batch_normalization_29/gamma/rms
4:2?2'RMSprop/batch_normalization_29/beta/rms
-:+
??2RMSprop/dense_91/kernel/rms
5:3?2(RMSprop/batch_normalization_30/gamma/rms
4:2?2'RMSprop/batch_normalization_30/beta/rms
,:*	?T2RMSprop/dense_92/kernel/rms
4:2T2(RMSprop/batch_normalization_31/gamma/rms
3:1T2'RMSprop/batch_normalization_31/beta/rms
+:)T2RMSprop/dense_93/kernel/rms
%:#2RMSprop/dense_93/bias/rms
?2?
.__inference_sequential_42_layer_call_fn_667675
.__inference_sequential_42_layer_call_fn_668599
.__inference_sequential_42_layer_call_fn_668666
.__inference_sequential_42_layer_call_fn_668241?
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
!__inference__wrapped_model_666563?
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
conv2d_121_input??????????
?2?
I__inference_sequential_42_layer_call_and_return_conditional_losses_668806
I__inference_sequential_42_layer_call_and_return_conditional_losses_669009
I__inference_sequential_42_layer_call_and_return_conditional_losses_668343
I__inference_sequential_42_layer_call_and_return_conditional_losses_668445?
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
+__inference_conv2d_121_layer_call_fn_669024?
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
F__inference_conv2d_121_layer_call_and_return_conditional_losses_669041?
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
+__inference_conv2d_122_layer_call_fn_669048?
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
F__inference_conv2d_122_layer_call_and_return_conditional_losses_669055?
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
7__inference_batch_normalization_27_layer_call_fn_669068
7__inference_batch_normalization_27_layer_call_fn_669081
7__inference_batch_normalization_27_layer_call_fn_669094
7__inference_batch_normalization_27_layer_call_fn_669107?
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
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669125
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669143
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669161
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669179?
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
.__inference_activation_15_layer_call_fn_669184?
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
I__inference_activation_15_layer_call_and_return_conditional_losses_669189?
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
2__inference_max_pooling2d_105_layer_call_fn_666701?
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
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_666695?
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
+__inference_dropout_24_layer_call_fn_669194
+__inference_dropout_24_layer_call_fn_669199?
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_669204
F__inference_dropout_24_layer_call_and_return_conditional_losses_669216?
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
+__inference_conv2d_123_layer_call_fn_669231?
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_669248?
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
+__inference_conv2d_124_layer_call_fn_669255?
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_669262?
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
7__inference_batch_normalization_28_layer_call_fn_669275
7__inference_batch_normalization_28_layer_call_fn_669288
7__inference_batch_normalization_28_layer_call_fn_669301
7__inference_batch_normalization_28_layer_call_fn_669314?
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
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669332
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669350
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669368
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669386?
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
.__inference_activation_16_layer_call_fn_669391?
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
I__inference_activation_16_layer_call_and_return_conditional_losses_669396?
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
2__inference_max_pooling2d_106_layer_call_fn_666839?
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
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_666833?
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
+__inference_dropout_25_layer_call_fn_669401
+__inference_dropout_25_layer_call_fn_669406?
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_669411
F__inference_dropout_25_layer_call_and_return_conditional_losses_669423?
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
+__inference_flatten_40_layer_call_fn_669428?
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_669434?
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
)__inference_dense_90_layer_call_fn_669441?
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
D__inference_dense_90_layer_call_and_return_conditional_losses_669448?
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
7__inference_batch_normalization_29_layer_call_fn_669461
7__inference_batch_normalization_29_layer_call_fn_669474?
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
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_669494
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_669528?
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
.__inference_activation_17_layer_call_fn_669533?
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
I__inference_activation_17_layer_call_and_return_conditional_losses_669538?
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
)__inference_dense_91_layer_call_fn_669545?
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
D__inference_dense_91_layer_call_and_return_conditional_losses_669552?
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
7__inference_batch_normalization_30_layer_call_fn_669565
7__inference_batch_normalization_30_layer_call_fn_669578?
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
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_669598
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_669632?
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
.__inference_activation_18_layer_call_fn_669637?
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
I__inference_activation_18_layer_call_and_return_conditional_losses_669642?
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
)__inference_dense_92_layer_call_fn_669649?
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
D__inference_dense_92_layer_call_and_return_conditional_losses_669656?
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
7__inference_batch_normalization_31_layer_call_fn_669669
7__inference_batch_normalization_31_layer_call_fn_669682?
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
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_669702
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_669736?
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
.__inference_activation_19_layer_call_fn_669741?
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
I__inference_activation_19_layer_call_and_return_conditional_losses_669746?
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
+__inference_dropout_26_layer_call_fn_669751
+__inference_dropout_26_layer_call_fn_669756?
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
F__inference_dropout_26_layer_call_and_return_conditional_losses_669761
F__inference_dropout_26_layer_call_and_return_conditional_losses_669773?
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
)__inference_dense_93_layer_call_fn_669782?
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
D__inference_dense_93_layer_call_and_return_conditional_losses_669793?
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
__inference_loss_fn_0_669804?
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
__inference_loss_fn_1_669815?
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
$__inference_signature_wrapper_668532conv2d_121_input"?
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
!__inference__wrapped_model_666563?& %+,-.?@EKLMNclikju~{}|???????B??
8?5
3?0
conv2d_121_input??????????
? "3?0
.
dense_93"?
dense_93??????????
I__inference_activation_15_layer_call_and_return_conditional_losses_669189h7?4
-?*
(?%
inputs?????????y 
? "-?*
#? 
0?????????y 
? ?
.__inference_activation_15_layer_call_fn_669184[7?4
-?*
(?%
inputs?????????y 
? " ??????????y ?
I__inference_activation_16_layer_call_and_return_conditional_losses_669396h7?4
-?*
(?%
inputs?????????8@
? "-?*
#? 
0?????????8@
? ?
.__inference_activation_16_layer_call_fn_669391[7?4
-?*
(?%
inputs?????????8@
? " ??????????8@?
I__inference_activation_17_layer_call_and_return_conditional_losses_669538Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
.__inference_activation_17_layer_call_fn_669533M0?-
&?#
!?
inputs??????????
? "????????????
I__inference_activation_18_layer_call_and_return_conditional_losses_669642Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
.__inference_activation_18_layer_call_fn_669637M0?-
&?#
!?
inputs??????????
? "????????????
I__inference_activation_19_layer_call_and_return_conditional_losses_669746X/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????T
? }
.__inference_activation_19_layer_call_fn_669741K/?,
%?"
 ?
inputs?????????T
? "??????????T?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669125?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669143?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669161r+,-.;?8
1?.
(?%
inputs?????????y 
p 
? "-?*
#? 
0?????????y 
? ?
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_669179r+,-.;?8
1?.
(?%
inputs?????????y 
p
? "-?*
#? 
0?????????y 
? ?
7__inference_batch_normalization_27_layer_call_fn_669068?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_27_layer_call_fn_669081?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_27_layer_call_fn_669094e+,-.;?8
1?.
(?%
inputs?????????y 
p 
? " ??????????y ?
7__inference_batch_normalization_27_layer_call_fn_669107e+,-.;?8
1?.
(?%
inputs?????????y 
p
? " ??????????y ?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669332?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669350?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669368rKLMN;?8
1?.
(?%
inputs?????????8@
p 
? "-?*
#? 
0?????????8@
? ?
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_669386rKLMN;?8
1?.
(?%
inputs?????????8@
p
? "-?*
#? 
0?????????8@
? ?
7__inference_batch_normalization_28_layer_call_fn_669275?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
7__inference_batch_normalization_28_layer_call_fn_669288?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_28_layer_call_fn_669301eKLMN;?8
1?.
(?%
inputs?????????8@
p 
? " ??????????8@?
7__inference_batch_normalization_28_layer_call_fn_669314eKLMN;?8
1?.
(?%
inputs?????????8@
p
? " ??????????8@?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_669494dlikj4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_669528dklij4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_29_layer_call_fn_669461Wlikj4?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_29_layer_call_fn_669474Wklij4?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_669598d~{}|4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_669632d}~{|4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_30_layer_call_fn_669565W~{}|4?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_30_layer_call_fn_669578W}~{|4?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_669702f????3?0
)?&
 ?
inputs?????????T
p 
? "%?"
?
0?????????T
? ?
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_669736f????3?0
)?&
 ?
inputs?????????T
p
? "%?"
?
0?????????T
? ?
7__inference_batch_normalization_31_layer_call_fn_669669Y????3?0
)?&
 ?
inputs?????????T
p 
? "??????????T?
7__inference_batch_normalization_31_layer_call_fn_669682Y????3?0
)?&
 ?
inputs?????????T
p
? "??????????T?
F__inference_conv2d_121_layer_call_and_return_conditional_losses_669041m 8?5
.?+
)?&
inputs??????????
? "-?*
#? 
0?????????} 
? ?
+__inference_conv2d_121_layer_call_fn_669024` 8?5
.?+
)?&
inputs??????????
? " ??????????} ?
F__inference_conv2d_122_layer_call_and_return_conditional_losses_669055k%7?4
-?*
(?%
inputs?????????} 
? "-?*
#? 
0?????????y 
? ?
+__inference_conv2d_122_layer_call_fn_669048^%7?4
-?*
(?%
inputs?????????} 
? " ??????????y ?
F__inference_conv2d_123_layer_call_and_return_conditional_losses_669248l?@7?4
-?*
(?%
inputs?????????<	 
? "-?*
#? 
0?????????:@
? ?
+__inference_conv2d_123_layer_call_fn_669231_?@7?4
-?*
(?%
inputs?????????<	 
? " ??????????:@?
F__inference_conv2d_124_layer_call_and_return_conditional_losses_669262kE7?4
-?*
(?%
inputs?????????:@
? "-?*
#? 
0?????????8@
? ?
+__inference_conv2d_124_layer_call_fn_669255^E7?4
-?*
(?%
inputs?????????:@
? " ??????????8@?
D__inference_dense_90_layer_call_and_return_conditional_losses_669448]c0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
)__inference_dense_90_layer_call_fn_669441Pc0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_91_layer_call_and_return_conditional_losses_669552]u0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
)__inference_dense_91_layer_call_fn_669545Pu0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_92_layer_call_and_return_conditional_losses_669656]?0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????T
? }
)__inference_dense_92_layer_call_fn_669649P?0?-
&?#
!?
inputs??????????
? "??????????T?
D__inference_dense_93_layer_call_and_return_conditional_losses_669793^??/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????
? ~
)__inference_dense_93_layer_call_fn_669782Q??/?,
%?"
 ?
inputs?????????T
? "???????????
F__inference_dropout_24_layer_call_and_return_conditional_losses_669204l;?8
1?.
(?%
inputs?????????<	 
p 
? "-?*
#? 
0?????????<	 
? ?
F__inference_dropout_24_layer_call_and_return_conditional_losses_669216l;?8
1?.
(?%
inputs?????????<	 
p
? "-?*
#? 
0?????????<	 
? ?
+__inference_dropout_24_layer_call_fn_669194_;?8
1?.
(?%
inputs?????????<	 
p 
? " ??????????<	 ?
+__inference_dropout_24_layer_call_fn_669199_;?8
1?.
(?%
inputs?????????<	 
p
? " ??????????<	 ?
F__inference_dropout_25_layer_call_and_return_conditional_losses_669411l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
F__inference_dropout_25_layer_call_and_return_conditional_losses_669423l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
+__inference_dropout_25_layer_call_fn_669401_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
+__inference_dropout_25_layer_call_fn_669406_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
F__inference_dropout_26_layer_call_and_return_conditional_losses_669761\3?0
)?&
 ?
inputs?????????T
p 
? "%?"
?
0?????????T
? ?
F__inference_dropout_26_layer_call_and_return_conditional_losses_669773\3?0
)?&
 ?
inputs?????????T
p
? "%?"
?
0?????????T
? ~
+__inference_dropout_26_layer_call_fn_669751O3?0
)?&
 ?
inputs?????????T
p 
? "??????????T~
+__inference_dropout_26_layer_call_fn_669756O3?0
)?&
 ?
inputs?????????T
p
? "??????????T?
F__inference_flatten_40_layer_call_and_return_conditional_losses_669434a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_40_layer_call_fn_669428T7?4
-?*
(?%
inputs?????????@
? "???????????;
__inference_loss_fn_0_669804?

? 
? "? ;
__inference_loss_fn_1_669815??

? 
? "? ?
M__inference_max_pooling2d_105_layer_call_and_return_conditional_losses_666695?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_105_layer_call_fn_666701?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_106_layer_call_and_return_conditional_losses_666833?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_106_layer_call_fn_666839?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_42_layer_call_and_return_conditional_losses_668343?& %+,-.?@EKLMNclikju~{}|???????J?G
@?=
3?0
conv2d_121_input??????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_42_layer_call_and_return_conditional_losses_668445?& %+,-.?@EKLMNckliju}~{|???????J?G
@?=
3?0
conv2d_121_input??????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_42_layer_call_and_return_conditional_losses_668806?& %+,-.?@EKLMNclikju~{}|???????@?=
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
I__inference_sequential_42_layer_call_and_return_conditional_losses_669009?& %+,-.?@EKLMNckliju}~{|???????@?=
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
.__inference_sequential_42_layer_call_fn_667675?& %+,-.?@EKLMNclikju~{}|???????J?G
@?=
3?0
conv2d_121_input??????????
p 

 
? "???????????
.__inference_sequential_42_layer_call_fn_668241?& %+,-.?@EKLMNckliju}~{|???????J?G
@?=
3?0
conv2d_121_input??????????
p

 
? "???????????
.__inference_sequential_42_layer_call_fn_668599?& %+,-.?@EKLMNclikju~{}|???????@?=
6?3
)?&
inputs??????????
p 

 
? "???????????
.__inference_sequential_42_layer_call_fn_668666?& %+,-.?@EKLMNckliju}~{|???????@?=
6?3
)?&
inputs??????????
p

 
? "???????????
$__inference_signature_wrapper_668532?& %+,-.?@EKLMNclikju~{}|???????V?S
? 
L?I
G
conv2d_121_input3?0
conv2d_121_input??????????"3?0
.
dense_93"?
dense_93?????????