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
conv2d_137/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_137/kernel

%conv2d_137/kernel/Read/ReadVariableOpReadVariableOpconv2d_137/kernel*&
_output_shapes
: *
dtype0
v
conv2d_137/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_137/bias
o
#conv2d_137/bias/Read/ReadVariableOpReadVariableOpconv2d_137/bias*
_output_shapes
: *
dtype0
?
conv2d_138/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_138/kernel

%conv2d_138/kernel/Read/ReadVariableOpReadVariableOpconv2d_138/kernel*&
_output_shapes
:  *
dtype0
?
batch_normalization_47/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_47/gamma
?
0batch_normalization_47/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_47/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_47/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_47/beta
?
/batch_normalization_47/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_47/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_47/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_47/moving_mean
?
6batch_normalization_47/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_47/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_47/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_47/moving_variance
?
:batch_normalization_47/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_47/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_139/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_139/kernel

%conv2d_139/kernel/Read/ReadVariableOpReadVariableOpconv2d_139/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_139/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_139/bias
o
#conv2d_139/bias/Read/ReadVariableOpReadVariableOpconv2d_139/bias*
_output_shapes
:@*
dtype0
?
conv2d_140/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_140/kernel

%conv2d_140/kernel/Read/ReadVariableOpReadVariableOpconv2d_140/kernel*&
_output_shapes
:@@*
dtype0
?
batch_normalization_48/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_48/gamma
?
0batch_normalization_48/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_48/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_48/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_48/beta
?
/batch_normalization_48/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_48/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_48/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_48/moving_mean
?
6batch_normalization_48/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_48/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_48/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_48/moving_variance
?
:batch_normalization_48/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_48/moving_variance*
_output_shapes
:@*
dtype0
~
dense_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_106/kernel
w
$dense_106/kernel/Read/ReadVariableOpReadVariableOpdense_106/kernel* 
_output_shapes
:
??*
dtype0
?
batch_normalization_49/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_49/gamma
?
0batch_normalization_49/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_49/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_49/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_49/beta
?
/batch_normalization_49/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_49/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_49/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_49/moving_mean
?
6batch_normalization_49/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_49/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_49/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_49/moving_variance
?
:batch_normalization_49/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_49/moving_variance*
_output_shapes	
:?*
dtype0
~
dense_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_107/kernel
w
$dense_107/kernel/Read/ReadVariableOpReadVariableOpdense_107/kernel* 
_output_shapes
:
??*
dtype0
?
batch_normalization_50/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_50/gamma
?
0batch_normalization_50/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_50/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_50/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_50/beta
?
/batch_normalization_50/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_50/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_50/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_50/moving_mean
?
6batch_normalization_50/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_50/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_50/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_50/moving_variance
?
:batch_normalization_50/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_50/moving_variance*
_output_shapes	
:?*
dtype0
}
dense_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T*!
shared_namedense_108/kernel
v
$dense_108/kernel/Read/ReadVariableOpReadVariableOpdense_108/kernel*
_output_shapes
:	?T*
dtype0
?
batch_normalization_51/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*-
shared_namebatch_normalization_51/gamma
?
0batch_normalization_51/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_51/gamma*
_output_shapes
:T*
dtype0
?
batch_normalization_51/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*,
shared_namebatch_normalization_51/beta
?
/batch_normalization_51/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_51/beta*
_output_shapes
:T*
dtype0
?
"batch_normalization_51/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*3
shared_name$"batch_normalization_51/moving_mean
?
6batch_normalization_51/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_51/moving_mean*
_output_shapes
:T*
dtype0
?
&batch_normalization_51/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*7
shared_name(&batch_normalization_51/moving_variance
?
:batch_normalization_51/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_51/moving_variance*
_output_shapes
:T*
dtype0
|
dense_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*!
shared_namedense_109/kernel
u
$dense_109/kernel/Read/ReadVariableOpReadVariableOpdense_109/kernel*
_output_shapes

:T*
dtype0
t
dense_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_109/bias
m
"dense_109/bias/Read/ReadVariableOpReadVariableOpdense_109/bias*
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
RMSprop/conv2d_137/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameRMSprop/conv2d_137/kernel/rms
?
1RMSprop/conv2d_137/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_137/kernel/rms*&
_output_shapes
: *
dtype0
?
RMSprop/conv2d_137/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameRMSprop/conv2d_137/bias/rms
?
/RMSprop/conv2d_137/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_137/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_138/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *.
shared_nameRMSprop/conv2d_138/kernel/rms
?
1RMSprop/conv2d_138/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_138/kernel/rms*&
_output_shapes
:  *
dtype0
?
(RMSprop/batch_normalization_47/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(RMSprop/batch_normalization_47/gamma/rms
?
<RMSprop/batch_normalization_47/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_47/gamma/rms*
_output_shapes
: *
dtype0
?
'RMSprop/batch_normalization_47/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'RMSprop/batch_normalization_47/beta/rms
?
;RMSprop/batch_normalization_47/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_47/beta/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_139/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*.
shared_nameRMSprop/conv2d_139/kernel/rms
?
1RMSprop/conv2d_139/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_139/kernel/rms*&
_output_shapes
: @*
dtype0
?
RMSprop/conv2d_139/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameRMSprop/conv2d_139/bias/rms
?
/RMSprop/conv2d_139/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_139/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/conv2d_140/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_nameRMSprop/conv2d_140/kernel/rms
?
1RMSprop/conv2d_140/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_140/kernel/rms*&
_output_shapes
:@@*
dtype0
?
(RMSprop/batch_normalization_48/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(RMSprop/batch_normalization_48/gamma/rms
?
<RMSprop/batch_normalization_48/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_48/gamma/rms*
_output_shapes
:@*
dtype0
?
'RMSprop/batch_normalization_48/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'RMSprop/batch_normalization_48/beta/rms
?
;RMSprop/batch_normalization_48/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_48/beta/rms*
_output_shapes
:@*
dtype0
?
RMSprop/dense_106/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameRMSprop/dense_106/kernel/rms
?
0RMSprop/dense_106/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_106/kernel/rms* 
_output_shapes
:
??*
dtype0
?
(RMSprop/batch_normalization_49/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(RMSprop/batch_normalization_49/gamma/rms
?
<RMSprop/batch_normalization_49/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_49/gamma/rms*
_output_shapes	
:?*
dtype0
?
'RMSprop/batch_normalization_49/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_49/beta/rms
?
;RMSprop/batch_normalization_49/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_49/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_107/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameRMSprop/dense_107/kernel/rms
?
0RMSprop/dense_107/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_107/kernel/rms* 
_output_shapes
:
??*
dtype0
?
(RMSprop/batch_normalization_50/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(RMSprop/batch_normalization_50/gamma/rms
?
<RMSprop/batch_normalization_50/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_50/gamma/rms*
_output_shapes	
:?*
dtype0
?
'RMSprop/batch_normalization_50/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_50/beta/rms
?
;RMSprop/batch_normalization_50/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_50/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_108/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T*-
shared_nameRMSprop/dense_108/kernel/rms
?
0RMSprop/dense_108/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_108/kernel/rms*
_output_shapes
:	?T*
dtype0
?
(RMSprop/batch_normalization_51/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*9
shared_name*(RMSprop/batch_normalization_51/gamma/rms
?
<RMSprop/batch_normalization_51/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_51/gamma/rms*
_output_shapes
:T*
dtype0
?
'RMSprop/batch_normalization_51/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*8
shared_name)'RMSprop/batch_normalization_51/beta/rms
?
;RMSprop/batch_normalization_51/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_51/beta/rms*
_output_shapes
:T*
dtype0
?
RMSprop/dense_109/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*-
shared_nameRMSprop/dense_109/kernel/rms
?
0RMSprop/dense_109/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_109/kernel/rms*
_output_shapes

:T*
dtype0
?
RMSprop/dense_109/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/dense_109/bias/rms
?
.RMSprop/dense_109/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_109/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*τ
valueĄB?? B??
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
VARIABLE_VALUEconv2d_137/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_137/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_138/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_47/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_47/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_47/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_47/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEconv2d_139/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_139/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_140/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_48/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_48/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_48/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_48/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
\Z
VARIABLE_VALUEdense_106/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_49/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_49/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_49/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_49/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
\Z
VARIABLE_VALUEdense_107/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_50/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_50/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_50/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_50/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
][
VARIABLE_VALUEdense_108/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_51/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_51/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_51/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_51/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
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
][
VARIABLE_VALUEdense_109/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_109/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUERMSprop/conv2d_137/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_137/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_138/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_47/gamma/rmsSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_47/beta/rmsRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_139/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_139/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_140/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_48/gamma/rmsSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_48/beta/rmsRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_106/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_49/gamma/rmsSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_49/beta/rmsRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_107/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_50/gamma/rmsSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_50/beta/rmsRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_108/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(RMSprop/batch_normalization_51/gamma/rmsTlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_51/beta/rmsSlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_109/kernel/rmsUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_109/bias/rmsSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_137_inputPlaceholder*0
_output_shapes
:??????????*
dtype0*%
shape:??????????
?	
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_137_inputconv2d_137/kernelconv2d_137/biasconv2d_138/kernelbatch_normalization_47/gammabatch_normalization_47/beta"batch_normalization_47/moving_mean&batch_normalization_47/moving_varianceconv2d_139/kernelconv2d_139/biasconv2d_140/kernelbatch_normalization_48/gammabatch_normalization_48/beta"batch_normalization_48/moving_mean&batch_normalization_48/moving_variancedense_106/kernel&batch_normalization_49/moving_variancebatch_normalization_49/gamma"batch_normalization_49/moving_meanbatch_normalization_49/betadense_107/kernel&batch_normalization_50/moving_variancebatch_normalization_50/gamma"batch_normalization_50/moving_meanbatch_normalization_50/betadense_108/kernel&batch_normalization_51/moving_variancebatch_normalization_51/gamma"batch_normalization_51/moving_meanbatch_normalization_51/betadense_109/kerneldense_109/bias*+
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
GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1820510
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_137/kernel/Read/ReadVariableOp#conv2d_137/bias/Read/ReadVariableOp%conv2d_138/kernel/Read/ReadVariableOp0batch_normalization_47/gamma/Read/ReadVariableOp/batch_normalization_47/beta/Read/ReadVariableOp6batch_normalization_47/moving_mean/Read/ReadVariableOp:batch_normalization_47/moving_variance/Read/ReadVariableOp%conv2d_139/kernel/Read/ReadVariableOp#conv2d_139/bias/Read/ReadVariableOp%conv2d_140/kernel/Read/ReadVariableOp0batch_normalization_48/gamma/Read/ReadVariableOp/batch_normalization_48/beta/Read/ReadVariableOp6batch_normalization_48/moving_mean/Read/ReadVariableOp:batch_normalization_48/moving_variance/Read/ReadVariableOp$dense_106/kernel/Read/ReadVariableOp0batch_normalization_49/gamma/Read/ReadVariableOp/batch_normalization_49/beta/Read/ReadVariableOp6batch_normalization_49/moving_mean/Read/ReadVariableOp:batch_normalization_49/moving_variance/Read/ReadVariableOp$dense_107/kernel/Read/ReadVariableOp0batch_normalization_50/gamma/Read/ReadVariableOp/batch_normalization_50/beta/Read/ReadVariableOp6batch_normalization_50/moving_mean/Read/ReadVariableOp:batch_normalization_50/moving_variance/Read/ReadVariableOp$dense_108/kernel/Read/ReadVariableOp0batch_normalization_51/gamma/Read/ReadVariableOp/batch_normalization_51/beta/Read/ReadVariableOp6batch_normalization_51/moving_mean/Read/ReadVariableOp:batch_normalization_51/moving_variance/Read/ReadVariableOp$dense_109/kernel/Read/ReadVariableOp"dense_109/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1RMSprop/conv2d_137/kernel/rms/Read/ReadVariableOp/RMSprop/conv2d_137/bias/rms/Read/ReadVariableOp1RMSprop/conv2d_138/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_47/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_47/beta/rms/Read/ReadVariableOp1RMSprop/conv2d_139/kernel/rms/Read/ReadVariableOp/RMSprop/conv2d_139/bias/rms/Read/ReadVariableOp1RMSprop/conv2d_140/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_48/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_48/beta/rms/Read/ReadVariableOp0RMSprop/dense_106/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_49/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_49/beta/rms/Read/ReadVariableOp0RMSprop/dense_107/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_50/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_50/beta/rms/Read/ReadVariableOp0RMSprop/dense_108/kernel/rms/Read/ReadVariableOp<RMSprop/batch_normalization_51/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_51/beta/rms/Read/ReadVariableOp0RMSprop/dense_109/kernel/rms/Read/ReadVariableOp.RMSprop/dense_109/bias/rms/Read/ReadVariableOpConst*J
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1821999
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_137/kernelconv2d_137/biasconv2d_138/kernelbatch_normalization_47/gammabatch_normalization_47/beta"batch_normalization_47/moving_mean&batch_normalization_47/moving_varianceconv2d_139/kernelconv2d_139/biasconv2d_140/kernelbatch_normalization_48/gammabatch_normalization_48/beta"batch_normalization_48/moving_mean&batch_normalization_48/moving_variancedense_106/kernelbatch_normalization_49/gammabatch_normalization_49/beta"batch_normalization_49/moving_mean&batch_normalization_49/moving_variancedense_107/kernelbatch_normalization_50/gammabatch_normalization_50/beta"batch_normalization_50/moving_mean&batch_normalization_50/moving_variancedense_108/kernelbatch_normalization_51/gammabatch_normalization_51/beta"batch_normalization_51/moving_mean&batch_normalization_51/moving_variancedense_109/kerneldense_109/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_137/kernel/rmsRMSprop/conv2d_137/bias/rmsRMSprop/conv2d_138/kernel/rms(RMSprop/batch_normalization_47/gamma/rms'RMSprop/batch_normalization_47/beta/rmsRMSprop/conv2d_139/kernel/rmsRMSprop/conv2d_139/bias/rmsRMSprop/conv2d_140/kernel/rms(RMSprop/batch_normalization_48/gamma/rms'RMSprop/batch_normalization_48/beta/rmsRMSprop/dense_106/kernel/rms(RMSprop/batch_normalization_49/gamma/rms'RMSprop/batch_normalization_49/beta/rmsRMSprop/dense_107/kernel/rms(RMSprop/batch_normalization_50/gamma/rms'RMSprop/batch_normalization_50/beta/rmsRMSprop/dense_108/kernel/rms(RMSprop/batch_normalization_51/gamma/rms'RMSprop/batch_normalization_51/beta/rmsRMSprop/dense_109/kernel/rmsRMSprop/dense_109/bias/rms*I
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1822192??
?
j
N__inference_max_pooling2d_114_layer_call_and_return_conditional_losses_1818811

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
f
J__inference_activation_36_layer_call_and_return_conditional_losses_1819452

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
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820423
conv2d_137_input,
conv2d_137_1820324:  
conv2d_137_1820326: ,
conv2d_138_1820329:  ,
batch_normalization_47_1820332: ,
batch_normalization_47_1820334: ,
batch_normalization_47_1820336: ,
batch_normalization_47_1820338: ,
conv2d_139_1820344: @ 
conv2d_139_1820346:@,
conv2d_140_1820349:@@,
batch_normalization_48_1820352:@,
batch_normalization_48_1820354:@,
batch_normalization_48_1820356:@,
batch_normalization_48_1820358:@%
dense_106_1820365:
??-
batch_normalization_49_1820368:	?-
batch_normalization_49_1820370:	?-
batch_normalization_49_1820372:	?-
batch_normalization_49_1820374:	?%
dense_107_1820378:
??-
batch_normalization_50_1820381:	?-
batch_normalization_50_1820383:	?-
batch_normalization_50_1820385:	?-
batch_normalization_50_1820387:	?$
dense_108_1820391:	?T,
batch_normalization_51_1820394:T,
batch_normalization_51_1820396:T,
batch_normalization_51_1820398:T,
batch_normalization_51_1820400:T#
dense_109_1820405:T
dense_109_1820407:
identity??.batch_normalization_47/StatefulPartitionedCall?.batch_normalization_48/StatefulPartitionedCall?.batch_normalization_49/StatefulPartitionedCall?.batch_normalization_50/StatefulPartitionedCall?.batch_normalization_51/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?"conv2d_138/StatefulPartitionedCall?"conv2d_139/StatefulPartitionedCall?3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?"conv2d_140/StatefulPartitionedCall?!dense_106/StatefulPartitionedCall?!dense_107/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?"dropout_37/StatefulPartitionedCall?"dropout_38/StatefulPartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCallconv2d_137_inputconv2d_137_1820324conv2d_137_1820326*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_137_layer_call_and_return_conditional_losses_18193272$
"conv2d_137/StatefulPartitionedCall?
"conv2d_138/StatefulPartitionedCallStatefulPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0conv2d_138_1820329*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_138_layer_call_and_return_conditional_losses_18193402$
"conv2d_138/StatefulPartitionedCall?
.batch_normalization_47/StatefulPartitionedCallStatefulPartitionedCall+conv2d_138/StatefulPartitionedCall:output:0batch_normalization_47_1820332batch_normalization_47_1820334batch_normalization_47_1820336batch_normalization_47_1820338*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_181988720
.batch_normalization_47/StatefulPartitionedCall?
activation_35/PartitionedCallPartitionedCall7batch_normalization_47/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_35_layer_call_and_return_conditional_losses_18193762
activation_35/PartitionedCall?
!max_pooling2d_113/PartitionedCallPartitionedCall&activation_35/PartitionedCall:output:0*
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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_113_layer_call_and_return_conditional_losses_18186732#
!max_pooling2d_113/PartitionedCall?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_113/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_18198452$
"dropout_36/StatefulPartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0conv2d_139_1820344conv2d_139_1820346*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_139_layer_call_and_return_conditional_losses_18194032$
"conv2d_139/StatefulPartitionedCall?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0conv2d_140_1820349*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_140_layer_call_and_return_conditional_losses_18194162$
"conv2d_140/StatefulPartitionedCall?
.batch_normalization_48/StatefulPartitionedCallStatefulPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0batch_normalization_48_1820352batch_normalization_48_1820354batch_normalization_48_1820356batch_normalization_48_1820358*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_181979620
.batch_normalization_48/StatefulPartitionedCall?
activation_36/PartitionedCallPartitionedCall7batch_normalization_48/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_36_layer_call_and_return_conditional_losses_18194522
activation_36/PartitionedCall?
!max_pooling2d_114/PartitionedCallPartitionedCall&activation_36/PartitionedCall:output:0*
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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_114_layer_call_and_return_conditional_losses_18188112#
!max_pooling2d_114/PartitionedCall?
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_114/PartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_18197542$
"dropout_37/StatefulPartitionedCall?
flatten_44/PartitionedCallPartitionedCall+dropout_37/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_flatten_44_layer_call_and_return_conditional_losses_18194682
flatten_44/PartitionedCall?
!dense_106/StatefulPartitionedCallStatefulPartitionedCall#flatten_44/PartitionedCall:output:0dense_106_1820365*
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
GPU 2J 8? *O
fJRH
F__inference_dense_106_layer_call_and_return_conditional_losses_18194772#
!dense_106/StatefulPartitionedCall?
.batch_normalization_49/StatefulPartitionedCallStatefulPartitionedCall*dense_106/StatefulPartitionedCall:output:0batch_normalization_49_1820368batch_normalization_49_1820370batch_normalization_49_1820372batch_normalization_49_1820374*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_181890120
.batch_normalization_49/StatefulPartitionedCall?
activation_37/PartitionedCallPartitionedCall7batch_normalization_49/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_37_layer_call_and_return_conditional_losses_18194952
activation_37/PartitionedCall?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall&activation_37/PartitionedCall:output:0dense_107_1820378*
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
GPU 2J 8? *O
fJRH
F__inference_dense_107_layer_call_and_return_conditional_losses_18195042#
!dense_107/StatefulPartitionedCall?
.batch_normalization_50/StatefulPartitionedCallStatefulPartitionedCall*dense_107/StatefulPartitionedCall:output:0batch_normalization_50_1820381batch_normalization_50_1820383batch_normalization_50_1820385batch_normalization_50_1820387*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_181906320
.batch_normalization_50/StatefulPartitionedCall?
activation_38/PartitionedCallPartitionedCall7batch_normalization_50/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_38_layer_call_and_return_conditional_losses_18195222
activation_38/PartitionedCall?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall&activation_38/PartitionedCall:output:0dense_108_1820391*
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
GPU 2J 8? *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_18195312#
!dense_108/StatefulPartitionedCall?
.batch_normalization_51/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0batch_normalization_51_1820394batch_normalization_51_1820396batch_normalization_51_1820398batch_normalization_51_1820400*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_181922520
.batch_normalization_51/StatefulPartitionedCall?
activation_39/PartitionedCallPartitionedCall7batch_normalization_51/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_39_layer_call_and_return_conditional_losses_18195492
activation_39/PartitionedCall?
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall&activation_39/PartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_18196832$
"dropout_38/StatefulPartitionedCall?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall+dropout_38/StatefulPartitionedCall:output:0dense_109_1820405dense_109_1820407*
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
GPU 2J 8? *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_18195692#
!dense_109/StatefulPartitionedCall?
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_137_1820324*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_139_1820344*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0/^batch_normalization_47/StatefulPartitionedCall/^batch_normalization_48/StatefulPartitionedCall/^batch_normalization_49/StatefulPartitionedCall/^batch_normalization_50/StatefulPartitionedCall/^batch_normalization_51/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall4^conv2d_137/kernel/Regularizer/Square/ReadVariableOp#^conv2d_138/StatefulPartitionedCall#^conv2d_139/StatefulPartitionedCall4^conv2d_139/kernel/Regularizer/Square/ReadVariableOp#^conv2d_140/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall"^dense_107/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_47/StatefulPartitionedCall.batch_normalization_47/StatefulPartitionedCall2`
.batch_normalization_48/StatefulPartitionedCall.batch_normalization_48/StatefulPartitionedCall2`
.batch_normalization_49/StatefulPartitionedCall.batch_normalization_49/StatefulPartitionedCall2`
.batch_normalization_50/StatefulPartitionedCall.batch_normalization_50/StatefulPartitionedCall2`
.batch_normalization_51/StatefulPartitionedCall.batch_normalization_51/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2j
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_138/StatefulPartitionedCall"conv2d_138/StatefulPartitionedCall2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2j
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_137_input
?
K
/__inference_activation_39_layer_call_fn_1821719

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
GPU 2J 8? *S
fNRL
J__inference_activation_39_layer_call_and_return_conditional_losses_18195492
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
?
?
F__inference_dense_107_layer_call_and_return_conditional_losses_1819504

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
F__inference_dense_109_layer_call_and_return_conditional_losses_1819569

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
?

?
F__inference_dense_109_layer_call_and_return_conditional_losses_1821771

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
?
?
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_1819165

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
?
?
F__inference_dense_108_layer_call_and_return_conditional_losses_1819531

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
f
G__inference_dropout_38_layer_call_and_return_conditional_losses_1819683

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
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1818607

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
?
f
J__inference_activation_39_layer_call_and_return_conditional_losses_1819549

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
?
?
,__inference_conv2d_140_layer_call_fn_1821233

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
GPU 2J 8? *P
fKRI
G__inference_conv2d_140_layer_call_and_return_conditional_losses_18194162
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
??
?
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820784

inputsC
)conv2d_137_conv2d_readvariableop_resource: 8
*conv2d_137_biasadd_readvariableop_resource: C
)conv2d_138_conv2d_readvariableop_resource:  <
.batch_normalization_47_readvariableop_resource: >
0batch_normalization_47_readvariableop_1_resource: M
?batch_normalization_47_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_47_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_139_conv2d_readvariableop_resource: @8
*conv2d_139_biasadd_readvariableop_resource:@C
)conv2d_140_conv2d_readvariableop_resource:@@<
.batch_normalization_48_readvariableop_resource:@>
0batch_normalization_48_readvariableop_1_resource:@M
?batch_normalization_48_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_48_fusedbatchnormv3_readvariableop_1_resource:@<
(dense_106_matmul_readvariableop_resource:
??G
8batch_normalization_49_batchnorm_readvariableop_resource:	?K
<batch_normalization_49_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_49_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_49_batchnorm_readvariableop_2_resource:	?<
(dense_107_matmul_readvariableop_resource:
??G
8batch_normalization_50_batchnorm_readvariableop_resource:	?K
<batch_normalization_50_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_50_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_50_batchnorm_readvariableop_2_resource:	?;
(dense_108_matmul_readvariableop_resource:	?TF
8batch_normalization_51_batchnorm_readvariableop_resource:TJ
<batch_normalization_51_batchnorm_mul_readvariableop_resource:TH
:batch_normalization_51_batchnorm_readvariableop_1_resource:TH
:batch_normalization_51_batchnorm_readvariableop_2_resource:T:
(dense_109_matmul_readvariableop_resource:T7
)dense_109_biasadd_readvariableop_resource:
identity??6batch_normalization_47/FusedBatchNormV3/ReadVariableOp?8batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_47/ReadVariableOp?'batch_normalization_47/ReadVariableOp_1?6batch_normalization_48/FusedBatchNormV3/ReadVariableOp?8batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_48/ReadVariableOp?'batch_normalization_48/ReadVariableOp_1?/batch_normalization_49/batchnorm/ReadVariableOp?1batch_normalization_49/batchnorm/ReadVariableOp_1?1batch_normalization_49/batchnorm/ReadVariableOp_2?3batch_normalization_49/batchnorm/mul/ReadVariableOp?/batch_normalization_50/batchnorm/ReadVariableOp?1batch_normalization_50/batchnorm/ReadVariableOp_1?1batch_normalization_50/batchnorm/ReadVariableOp_2?3batch_normalization_50/batchnorm/mul/ReadVariableOp?/batch_normalization_51/batchnorm/ReadVariableOp?1batch_normalization_51/batchnorm/ReadVariableOp_1?1batch_normalization_51/batchnorm/ReadVariableOp_2?3batch_normalization_51/batchnorm/mul/ReadVariableOp?!conv2d_137/BiasAdd/ReadVariableOp? conv2d_137/Conv2D/ReadVariableOp?3conv2d_137/kernel/Regularizer/Square/ReadVariableOp? conv2d_138/Conv2D/ReadVariableOp?!conv2d_139/BiasAdd/ReadVariableOp? conv2d_139/Conv2D/ReadVariableOp?3conv2d_139/kernel/Regularizer/Square/ReadVariableOp? conv2d_140/Conv2D/ReadVariableOp?dense_106/MatMul/ReadVariableOp?dense_107/MatMul/ReadVariableOp?dense_108/MatMul/ReadVariableOp? dense_109/BiasAdd/ReadVariableOp?dense_109/MatMul/ReadVariableOp?
 conv2d_137/Conv2D/ReadVariableOpReadVariableOp)conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_137/Conv2D/ReadVariableOp?
conv2d_137/Conv2DConv2Dinputs(conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2
conv2d_137/Conv2D?
!conv2d_137/BiasAdd/ReadVariableOpReadVariableOp*conv2d_137_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_137/BiasAdd/ReadVariableOp?
conv2d_137/BiasAddBiasAddconv2d_137/Conv2D:output:0)conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2
conv2d_137/BiasAdd?
conv2d_137/ReluReluconv2d_137/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
conv2d_137/Relu?
 conv2d_138/Conv2D/ReadVariableOpReadVariableOp)conv2d_138_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_138/Conv2D/ReadVariableOp?
conv2d_138/Conv2DConv2Dconv2d_137/Relu:activations:0(conv2d_138/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2
conv2d_138/Conv2D?
%batch_normalization_47/ReadVariableOpReadVariableOp.batch_normalization_47_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_47/ReadVariableOp?
'batch_normalization_47/ReadVariableOp_1ReadVariableOp0batch_normalization_47_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_47/ReadVariableOp_1?
6batch_normalization_47/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_47_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_47/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_47_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_47/FusedBatchNormV3FusedBatchNormV3conv2d_138/Conv2D:output:0-batch_normalization_47/ReadVariableOp:value:0/batch_normalization_47/ReadVariableOp_1:value:0>batch_normalization_47/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
is_training( 2)
'batch_normalization_47/FusedBatchNormV3?
activation_35/ReluRelu+batch_normalization_47/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2
activation_35/Relu?
max_pooling2d_113/MaxPoolMaxPool activation_35/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_113/MaxPool?
dropout_36/IdentityIdentity"max_pooling2d_113/MaxPool:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout_36/Identity?
 conv2d_139/Conv2D/ReadVariableOpReadVariableOp)conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_139/Conv2D/ReadVariableOp?
conv2d_139/Conv2DConv2Ddropout_36/Identity:output:0(conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2
conv2d_139/Conv2D?
!conv2d_139/BiasAdd/ReadVariableOpReadVariableOp*conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_139/BiasAdd/ReadVariableOp?
conv2d_139/BiasAddBiasAddconv2d_139/Conv2D:output:0)conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2
conv2d_139/BiasAdd?
conv2d_139/ReluReluconv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
conv2d_139/Relu?
 conv2d_140/Conv2D/ReadVariableOpReadVariableOp)conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_140/Conv2D/ReadVariableOp?
conv2d_140/Conv2DConv2Dconv2d_139/Relu:activations:0(conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
conv2d_140/Conv2D?
%batch_normalization_48/ReadVariableOpReadVariableOp.batch_normalization_48_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_48/ReadVariableOp?
'batch_normalization_48/ReadVariableOp_1ReadVariableOp0batch_normalization_48_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_48/ReadVariableOp_1?
6batch_normalization_48/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_48_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_48/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_48_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_48/FusedBatchNormV3FusedBatchNormV3conv2d_140/Conv2D:output:0-batch_normalization_48/ReadVariableOp:value:0/batch_normalization_48/ReadVariableOp_1:value:0>batch_normalization_48/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_48/FusedBatchNormV3?
activation_36/ReluRelu+batch_normalization_48/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2
activation_36/Relu?
max_pooling2d_114/MaxPoolMaxPool activation_36/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_114/MaxPool?
dropout_37/IdentityIdentity"max_pooling2d_114/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_37/Identityu
flatten_44/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_44/Const?
flatten_44/ReshapeReshapedropout_37/Identity:output:0flatten_44/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_44/Reshape?
dense_106/MatMul/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_106/MatMul/ReadVariableOp?
dense_106/MatMulMatMulflatten_44/Reshape:output:0'dense_106/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_106/MatMul?
/batch_normalization_49/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_49_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_49/batchnorm/ReadVariableOp?
&batch_normalization_49/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_49/batchnorm/add/y?
$batch_normalization_49/batchnorm/addAddV27batch_normalization_49/batchnorm/ReadVariableOp:value:0/batch_normalization_49/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_49/batchnorm/add?
&batch_normalization_49/batchnorm/RsqrtRsqrt(batch_normalization_49/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_49/batchnorm/Rsqrt?
3batch_normalization_49/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_49_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_49/batchnorm/mul/ReadVariableOp?
$batch_normalization_49/batchnorm/mulMul*batch_normalization_49/batchnorm/Rsqrt:y:0;batch_normalization_49/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_49/batchnorm/mul?
&batch_normalization_49/batchnorm/mul_1Muldense_106/MatMul:product:0(batch_normalization_49/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_49/batchnorm/mul_1?
1batch_normalization_49/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_49_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_49/batchnorm/ReadVariableOp_1?
&batch_normalization_49/batchnorm/mul_2Mul9batch_normalization_49/batchnorm/ReadVariableOp_1:value:0(batch_normalization_49/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_49/batchnorm/mul_2?
1batch_normalization_49/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_49_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_49/batchnorm/ReadVariableOp_2?
$batch_normalization_49/batchnorm/subSub9batch_normalization_49/batchnorm/ReadVariableOp_2:value:0*batch_normalization_49/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_49/batchnorm/sub?
&batch_normalization_49/batchnorm/add_1AddV2*batch_normalization_49/batchnorm/mul_1:z:0(batch_normalization_49/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_49/batchnorm/add_1?
activation_37/ReluRelu*batch_normalization_49/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_37/Relu?
dense_107/MatMul/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_107/MatMul/ReadVariableOp?
dense_107/MatMulMatMul activation_37/Relu:activations:0'dense_107/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_107/MatMul?
/batch_normalization_50/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_50_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_50/batchnorm/ReadVariableOp?
&batch_normalization_50/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_50/batchnorm/add/y?
$batch_normalization_50/batchnorm/addAddV27batch_normalization_50/batchnorm/ReadVariableOp:value:0/batch_normalization_50/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_50/batchnorm/add?
&batch_normalization_50/batchnorm/RsqrtRsqrt(batch_normalization_50/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_50/batchnorm/Rsqrt?
3batch_normalization_50/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_50_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_50/batchnorm/mul/ReadVariableOp?
$batch_normalization_50/batchnorm/mulMul*batch_normalization_50/batchnorm/Rsqrt:y:0;batch_normalization_50/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_50/batchnorm/mul?
&batch_normalization_50/batchnorm/mul_1Muldense_107/MatMul:product:0(batch_normalization_50/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_50/batchnorm/mul_1?
1batch_normalization_50/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_50_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_50/batchnorm/ReadVariableOp_1?
&batch_normalization_50/batchnorm/mul_2Mul9batch_normalization_50/batchnorm/ReadVariableOp_1:value:0(batch_normalization_50/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_50/batchnorm/mul_2?
1batch_normalization_50/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_50_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_50/batchnorm/ReadVariableOp_2?
$batch_normalization_50/batchnorm/subSub9batch_normalization_50/batchnorm/ReadVariableOp_2:value:0*batch_normalization_50/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_50/batchnorm/sub?
&batch_normalization_50/batchnorm/add_1AddV2*batch_normalization_50/batchnorm/mul_1:z:0(batch_normalization_50/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_50/batchnorm/add_1?
activation_38/ReluRelu*batch_normalization_50/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_38/Relu?
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02!
dense_108/MatMul/ReadVariableOp?
dense_108/MatMulMatMul activation_38/Relu:activations:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_108/MatMul?
/batch_normalization_51/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_51_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype021
/batch_normalization_51/batchnorm/ReadVariableOp?
&batch_normalization_51/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_51/batchnorm/add/y?
$batch_normalization_51/batchnorm/addAddV27batch_normalization_51/batchnorm/ReadVariableOp:value:0/batch_normalization_51/batchnorm/add/y:output:0*
T0*
_output_shapes
:T2&
$batch_normalization_51/batchnorm/add?
&batch_normalization_51/batchnorm/RsqrtRsqrt(batch_normalization_51/batchnorm/add:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_51/batchnorm/Rsqrt?
3batch_normalization_51/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_51_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype025
3batch_normalization_51/batchnorm/mul/ReadVariableOp?
$batch_normalization_51/batchnorm/mulMul*batch_normalization_51/batchnorm/Rsqrt:y:0;batch_normalization_51/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2&
$batch_normalization_51/batchnorm/mul?
&batch_normalization_51/batchnorm/mul_1Muldense_108/MatMul:product:0(batch_normalization_51/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_51/batchnorm/mul_1?
1batch_normalization_51/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_51_batchnorm_readvariableop_1_resource*
_output_shapes
:T*
dtype023
1batch_normalization_51/batchnorm/ReadVariableOp_1?
&batch_normalization_51/batchnorm/mul_2Mul9batch_normalization_51/batchnorm/ReadVariableOp_1:value:0(batch_normalization_51/batchnorm/mul:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_51/batchnorm/mul_2?
1batch_normalization_51/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_51_batchnorm_readvariableop_2_resource*
_output_shapes
:T*
dtype023
1batch_normalization_51/batchnorm/ReadVariableOp_2?
$batch_normalization_51/batchnorm/subSub9batch_normalization_51/batchnorm/ReadVariableOp_2:value:0*batch_normalization_51/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2&
$batch_normalization_51/batchnorm/sub?
&batch_normalization_51/batchnorm/add_1AddV2*batch_normalization_51/batchnorm/mul_1:z:0(batch_normalization_51/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_51/batchnorm/add_1?
activation_39/ReluRelu*batch_normalization_51/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2
activation_39/Relu?
dropout_38/IdentityIdentity activation_39/Relu:activations:0*
T0*'
_output_shapes
:?????????T2
dropout_38/Identity?
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02!
dense_109/MatMul/ReadVariableOp?
dense_109/MatMulMatMuldropout_38/Identity:output:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_109/MatMul?
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_109/BiasAdd/ReadVariableOp?
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_109/BiasAdd
dense_109/SoftmaxSoftmaxdense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_109/Softmax?
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentitydense_109/Softmax:softmax:07^batch_normalization_47/FusedBatchNormV3/ReadVariableOp9^batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_47/ReadVariableOp(^batch_normalization_47/ReadVariableOp_17^batch_normalization_48/FusedBatchNormV3/ReadVariableOp9^batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_48/ReadVariableOp(^batch_normalization_48/ReadVariableOp_10^batch_normalization_49/batchnorm/ReadVariableOp2^batch_normalization_49/batchnorm/ReadVariableOp_12^batch_normalization_49/batchnorm/ReadVariableOp_24^batch_normalization_49/batchnorm/mul/ReadVariableOp0^batch_normalization_50/batchnorm/ReadVariableOp2^batch_normalization_50/batchnorm/ReadVariableOp_12^batch_normalization_50/batchnorm/ReadVariableOp_24^batch_normalization_50/batchnorm/mul/ReadVariableOp0^batch_normalization_51/batchnorm/ReadVariableOp2^batch_normalization_51/batchnorm/ReadVariableOp_12^batch_normalization_51/batchnorm/ReadVariableOp_24^batch_normalization_51/batchnorm/mul/ReadVariableOp"^conv2d_137/BiasAdd/ReadVariableOp!^conv2d_137/Conv2D/ReadVariableOp4^conv2d_137/kernel/Regularizer/Square/ReadVariableOp!^conv2d_138/Conv2D/ReadVariableOp"^conv2d_139/BiasAdd/ReadVariableOp!^conv2d_139/Conv2D/ReadVariableOp4^conv2d_139/kernel/Regularizer/Square/ReadVariableOp!^conv2d_140/Conv2D/ReadVariableOp ^dense_106/MatMul/ReadVariableOp ^dense_107/MatMul/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_47/FusedBatchNormV3/ReadVariableOp6batch_normalization_47/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_47/FusedBatchNormV3/ReadVariableOp_18batch_normalization_47/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_47/ReadVariableOp%batch_normalization_47/ReadVariableOp2R
'batch_normalization_47/ReadVariableOp_1'batch_normalization_47/ReadVariableOp_12p
6batch_normalization_48/FusedBatchNormV3/ReadVariableOp6batch_normalization_48/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_48/FusedBatchNormV3/ReadVariableOp_18batch_normalization_48/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_48/ReadVariableOp%batch_normalization_48/ReadVariableOp2R
'batch_normalization_48/ReadVariableOp_1'batch_normalization_48/ReadVariableOp_12b
/batch_normalization_49/batchnorm/ReadVariableOp/batch_normalization_49/batchnorm/ReadVariableOp2f
1batch_normalization_49/batchnorm/ReadVariableOp_11batch_normalization_49/batchnorm/ReadVariableOp_12f
1batch_normalization_49/batchnorm/ReadVariableOp_21batch_normalization_49/batchnorm/ReadVariableOp_22j
3batch_normalization_49/batchnorm/mul/ReadVariableOp3batch_normalization_49/batchnorm/mul/ReadVariableOp2b
/batch_normalization_50/batchnorm/ReadVariableOp/batch_normalization_50/batchnorm/ReadVariableOp2f
1batch_normalization_50/batchnorm/ReadVariableOp_11batch_normalization_50/batchnorm/ReadVariableOp_12f
1batch_normalization_50/batchnorm/ReadVariableOp_21batch_normalization_50/batchnorm/ReadVariableOp_22j
3batch_normalization_50/batchnorm/mul/ReadVariableOp3batch_normalization_50/batchnorm/mul/ReadVariableOp2b
/batch_normalization_51/batchnorm/ReadVariableOp/batch_normalization_51/batchnorm/ReadVariableOp2f
1batch_normalization_51/batchnorm/ReadVariableOp_11batch_normalization_51/batchnorm/ReadVariableOp_12f
1batch_normalization_51/batchnorm/ReadVariableOp_21batch_normalization_51/batchnorm/ReadVariableOp_22j
3batch_normalization_51/batchnorm/mul/ReadVariableOp3batch_normalization_51/batchnorm/mul/ReadVariableOp2F
!conv2d_137/BiasAdd/ReadVariableOp!conv2d_137/BiasAdd/ReadVariableOp2D
 conv2d_137/Conv2D/ReadVariableOp conv2d_137/Conv2D/ReadVariableOp2j
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_138/Conv2D/ReadVariableOp conv2d_138/Conv2D/ReadVariableOp2F
!conv2d_139/BiasAdd/ReadVariableOp!conv2d_139/BiasAdd/ReadVariableOp2D
 conv2d_139/Conv2D/ReadVariableOp conv2d_139/Conv2D/ReadVariableOp2j
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_140/Conv2D/ReadVariableOp conv2d_140/Conv2D/ReadVariableOp2B
dense_106/MatMul/ReadVariableOpdense_106/MatMul/ReadVariableOp2B
dense_107/MatMul/ReadVariableOpdense_107/MatMul/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1818745

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
?
?
/__inference_sequential_46_layer_call_fn_1820577

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
GPU 2J 8? *S
fNRL
J__inference_sequential_46_layer_call_and_return_conditional_losses_18195882
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
?
?
+__inference_dense_106_layer_call_fn_1821419

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
GPU 2J 8? *O
fJRH
F__inference_dense_106_layer_call_and_return_conditional_losses_18194772
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
?
?
8__inference_batch_normalization_51_layer_call_fn_1821660

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_18192252
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
?
f
J__inference_activation_35_layer_call_and_return_conditional_losses_1819376

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
?
?
G__inference_conv2d_139_layer_call_and_return_conditional_losses_1819403

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_139/kernel/Regularizer/Square/ReadVariableOp*
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
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_1821793V
<conv2d_139_kernel_regularizer_square_readvariableop_resource: @
identity??3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_139_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentity%conv2d_139/kernel/Regularizer/mul:z:04^conv2d_139/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2j
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp
?
f
G__inference_dropout_38_layer_call_and_return_conditional_losses_1821751

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
G__inference_conv2d_138_layer_call_and_return_conditional_losses_1821033

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
?
?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821346

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
?
c
G__inference_flatten_44_layer_call_and_return_conditional_losses_1821412

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
?
K
/__inference_activation_37_layer_call_fn_1821511

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
GPU 2J 8? *S
fNRL
J__inference_activation_37_layer_call_and_return_conditional_losses_18194952
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
?
f
J__inference_activation_38_layer_call_and_return_conditional_losses_1819522

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
e
,__inference_dropout_38_layer_call_fn_1821734

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
GPU 2J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_18196832
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
?
?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821103

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
?
?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821328

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
?*
?
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_1821610

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
?
e
G__inference_dropout_36_layer_call_and_return_conditional_losses_1821182

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
?
?
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_1819003

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
?
e
G__inference_dropout_38_layer_call_and_return_conditional_losses_1821739

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
?
?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1819437

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
?
?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1819361

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
H
,__inference_dropout_37_layer_call_fn_1821379

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
GPU 2J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_18194602
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
?
f
J__inference_activation_35_layer_call_and_return_conditional_losses_1821167

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
?
?
 __inference__traced_save_1821999
file_prefix0
,savev2_conv2d_137_kernel_read_readvariableop.
*savev2_conv2d_137_bias_read_readvariableop0
,savev2_conv2d_138_kernel_read_readvariableop;
7savev2_batch_normalization_47_gamma_read_readvariableop:
6savev2_batch_normalization_47_beta_read_readvariableopA
=savev2_batch_normalization_47_moving_mean_read_readvariableopE
Asavev2_batch_normalization_47_moving_variance_read_readvariableop0
,savev2_conv2d_139_kernel_read_readvariableop.
*savev2_conv2d_139_bias_read_readvariableop0
,savev2_conv2d_140_kernel_read_readvariableop;
7savev2_batch_normalization_48_gamma_read_readvariableop:
6savev2_batch_normalization_48_beta_read_readvariableopA
=savev2_batch_normalization_48_moving_mean_read_readvariableopE
Asavev2_batch_normalization_48_moving_variance_read_readvariableop/
+savev2_dense_106_kernel_read_readvariableop;
7savev2_batch_normalization_49_gamma_read_readvariableop:
6savev2_batch_normalization_49_beta_read_readvariableopA
=savev2_batch_normalization_49_moving_mean_read_readvariableopE
Asavev2_batch_normalization_49_moving_variance_read_readvariableop/
+savev2_dense_107_kernel_read_readvariableop;
7savev2_batch_normalization_50_gamma_read_readvariableop:
6savev2_batch_normalization_50_beta_read_readvariableopA
=savev2_batch_normalization_50_moving_mean_read_readvariableopE
Asavev2_batch_normalization_50_moving_variance_read_readvariableop/
+savev2_dense_108_kernel_read_readvariableop;
7savev2_batch_normalization_51_gamma_read_readvariableop:
6savev2_batch_normalization_51_beta_read_readvariableopA
=savev2_batch_normalization_51_moving_mean_read_readvariableopE
Asavev2_batch_normalization_51_moving_variance_read_readvariableop/
+savev2_dense_109_kernel_read_readvariableop-
)savev2_dense_109_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_rmsprop_conv2d_137_kernel_rms_read_readvariableop:
6savev2_rmsprop_conv2d_137_bias_rms_read_readvariableop<
8savev2_rmsprop_conv2d_138_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_47_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_47_beta_rms_read_readvariableop<
8savev2_rmsprop_conv2d_139_kernel_rms_read_readvariableop:
6savev2_rmsprop_conv2d_139_bias_rms_read_readvariableop<
8savev2_rmsprop_conv2d_140_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_48_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_48_beta_rms_read_readvariableop;
7savev2_rmsprop_dense_106_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_49_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_49_beta_rms_read_readvariableop;
7savev2_rmsprop_dense_107_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_50_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_50_beta_rms_read_readvariableop;
7savev2_rmsprop_dense_108_kernel_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_51_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_51_beta_rms_read_readvariableop;
7savev2_rmsprop_dense_109_kernel_rms_read_readvariableop9
5savev2_rmsprop_dense_109_bias_rms_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_137_kernel_read_readvariableop*savev2_conv2d_137_bias_read_readvariableop,savev2_conv2d_138_kernel_read_readvariableop7savev2_batch_normalization_47_gamma_read_readvariableop6savev2_batch_normalization_47_beta_read_readvariableop=savev2_batch_normalization_47_moving_mean_read_readvariableopAsavev2_batch_normalization_47_moving_variance_read_readvariableop,savev2_conv2d_139_kernel_read_readvariableop*savev2_conv2d_139_bias_read_readvariableop,savev2_conv2d_140_kernel_read_readvariableop7savev2_batch_normalization_48_gamma_read_readvariableop6savev2_batch_normalization_48_beta_read_readvariableop=savev2_batch_normalization_48_moving_mean_read_readvariableopAsavev2_batch_normalization_48_moving_variance_read_readvariableop+savev2_dense_106_kernel_read_readvariableop7savev2_batch_normalization_49_gamma_read_readvariableop6savev2_batch_normalization_49_beta_read_readvariableop=savev2_batch_normalization_49_moving_mean_read_readvariableopAsavev2_batch_normalization_49_moving_variance_read_readvariableop+savev2_dense_107_kernel_read_readvariableop7savev2_batch_normalization_50_gamma_read_readvariableop6savev2_batch_normalization_50_beta_read_readvariableop=savev2_batch_normalization_50_moving_mean_read_readvariableopAsavev2_batch_normalization_50_moving_variance_read_readvariableop+savev2_dense_108_kernel_read_readvariableop7savev2_batch_normalization_51_gamma_read_readvariableop6savev2_batch_normalization_51_beta_read_readvariableop=savev2_batch_normalization_51_moving_mean_read_readvariableopAsavev2_batch_normalization_51_moving_variance_read_readvariableop+savev2_dense_109_kernel_read_readvariableop)savev2_dense_109_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_rmsprop_conv2d_137_kernel_rms_read_readvariableop6savev2_rmsprop_conv2d_137_bias_rms_read_readvariableop8savev2_rmsprop_conv2d_138_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_47_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_47_beta_rms_read_readvariableop8savev2_rmsprop_conv2d_139_kernel_rms_read_readvariableop6savev2_rmsprop_conv2d_139_bias_rms_read_readvariableop8savev2_rmsprop_conv2d_140_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_48_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_48_beta_rms_read_readvariableop7savev2_rmsprop_dense_106_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_49_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_49_beta_rms_read_readvariableop7savev2_rmsprop_dense_107_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_50_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_50_beta_rms_read_readvariableop7savev2_rmsprop_dense_108_kernel_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_51_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_51_beta_rms_read_readvariableop7savev2_rmsprop_dense_109_kernel_rms_read_readvariableop5savev2_rmsprop_dense_109_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
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
?*
?
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_1818901

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
?
?
,__inference_conv2d_138_layer_call_fn_1821026

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
GPU 2J 8? *P
fKRI
G__inference_conv2d_138_layer_call_and_return_conditional_losses_18193402
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
?
?
8__inference_batch_normalization_48_layer_call_fn_1821253

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_18187012
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
?
?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821139

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
?
f
J__inference_activation_36_layer_call_and_return_conditional_losses_1821374

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
?
e
G__inference_dropout_38_layer_call_and_return_conditional_losses_1819556

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
?
?
8__inference_batch_normalization_49_layer_call_fn_1821452

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_18189012
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
?
?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1818701

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
?
?
/__inference_sequential_46_layer_call_fn_1820644

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
GPU 2J 8? *S
fNRL
J__inference_sequential_46_layer_call_and_return_conditional_losses_18200872
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
?
O
3__inference_max_pooling2d_113_layer_call_fn_1818679

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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_113_layer_call_and_return_conditional_losses_18186732
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
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821121

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
?
?
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_1821576

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
?
e
,__inference_dropout_37_layer_call_fn_1821384

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
GPU 2J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_18197542
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
??
?!
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820987

inputsC
)conv2d_137_conv2d_readvariableop_resource: 8
*conv2d_137_biasadd_readvariableop_resource: C
)conv2d_138_conv2d_readvariableop_resource:  <
.batch_normalization_47_readvariableop_resource: >
0batch_normalization_47_readvariableop_1_resource: M
?batch_normalization_47_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_47_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_139_conv2d_readvariableop_resource: @8
*conv2d_139_biasadd_readvariableop_resource:@C
)conv2d_140_conv2d_readvariableop_resource:@@<
.batch_normalization_48_readvariableop_resource:@>
0batch_normalization_48_readvariableop_1_resource:@M
?batch_normalization_48_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_48_fusedbatchnormv3_readvariableop_1_resource:@<
(dense_106_matmul_readvariableop_resource:
??M
>batch_normalization_49_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_49_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_49_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_49_batchnorm_readvariableop_resource:	?<
(dense_107_matmul_readvariableop_resource:
??M
>batch_normalization_50_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_50_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_50_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_50_batchnorm_readvariableop_resource:	?;
(dense_108_matmul_readvariableop_resource:	?TL
>batch_normalization_51_assignmovingavg_readvariableop_resource:TN
@batch_normalization_51_assignmovingavg_1_readvariableop_resource:TJ
<batch_normalization_51_batchnorm_mul_readvariableop_resource:TF
8batch_normalization_51_batchnorm_readvariableop_resource:T:
(dense_109_matmul_readvariableop_resource:T7
)dense_109_biasadd_readvariableop_resource:
identity??%batch_normalization_47/AssignNewValue?'batch_normalization_47/AssignNewValue_1?6batch_normalization_47/FusedBatchNormV3/ReadVariableOp?8batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_47/ReadVariableOp?'batch_normalization_47/ReadVariableOp_1?%batch_normalization_48/AssignNewValue?'batch_normalization_48/AssignNewValue_1?6batch_normalization_48/FusedBatchNormV3/ReadVariableOp?8batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_48/ReadVariableOp?'batch_normalization_48/ReadVariableOp_1?&batch_normalization_49/AssignMovingAvg?5batch_normalization_49/AssignMovingAvg/ReadVariableOp?(batch_normalization_49/AssignMovingAvg_1?7batch_normalization_49/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_49/batchnorm/ReadVariableOp?3batch_normalization_49/batchnorm/mul/ReadVariableOp?&batch_normalization_50/AssignMovingAvg?5batch_normalization_50/AssignMovingAvg/ReadVariableOp?(batch_normalization_50/AssignMovingAvg_1?7batch_normalization_50/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_50/batchnorm/ReadVariableOp?3batch_normalization_50/batchnorm/mul/ReadVariableOp?&batch_normalization_51/AssignMovingAvg?5batch_normalization_51/AssignMovingAvg/ReadVariableOp?(batch_normalization_51/AssignMovingAvg_1?7batch_normalization_51/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_51/batchnorm/ReadVariableOp?3batch_normalization_51/batchnorm/mul/ReadVariableOp?!conv2d_137/BiasAdd/ReadVariableOp? conv2d_137/Conv2D/ReadVariableOp?3conv2d_137/kernel/Regularizer/Square/ReadVariableOp? conv2d_138/Conv2D/ReadVariableOp?!conv2d_139/BiasAdd/ReadVariableOp? conv2d_139/Conv2D/ReadVariableOp?3conv2d_139/kernel/Regularizer/Square/ReadVariableOp? conv2d_140/Conv2D/ReadVariableOp?dense_106/MatMul/ReadVariableOp?dense_107/MatMul/ReadVariableOp?dense_108/MatMul/ReadVariableOp? dense_109/BiasAdd/ReadVariableOp?dense_109/MatMul/ReadVariableOp?
 conv2d_137/Conv2D/ReadVariableOpReadVariableOp)conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_137/Conv2D/ReadVariableOp?
conv2d_137/Conv2DConv2Dinputs(conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2
conv2d_137/Conv2D?
!conv2d_137/BiasAdd/ReadVariableOpReadVariableOp*conv2d_137_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_137/BiasAdd/ReadVariableOp?
conv2d_137/BiasAddBiasAddconv2d_137/Conv2D:output:0)conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2
conv2d_137/BiasAdd?
conv2d_137/ReluReluconv2d_137/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
conv2d_137/Relu?
 conv2d_138/Conv2D/ReadVariableOpReadVariableOp)conv2d_138_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_138/Conv2D/ReadVariableOp?
conv2d_138/Conv2DConv2Dconv2d_137/Relu:activations:0(conv2d_138/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2
conv2d_138/Conv2D?
%batch_normalization_47/ReadVariableOpReadVariableOp.batch_normalization_47_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_47/ReadVariableOp?
'batch_normalization_47/ReadVariableOp_1ReadVariableOp0batch_normalization_47_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_47/ReadVariableOp_1?
6batch_normalization_47/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_47_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_47/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_47_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_47/FusedBatchNormV3FusedBatchNormV3conv2d_138/Conv2D:output:0-batch_normalization_47/ReadVariableOp:value:0/batch_normalization_47/ReadVariableOp_1:value:0>batch_normalization_47/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_47/FusedBatchNormV3?
%batch_normalization_47/AssignNewValueAssignVariableOp?batch_normalization_47_fusedbatchnormv3_readvariableop_resource4batch_normalization_47/FusedBatchNormV3:batch_mean:07^batch_normalization_47/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_47/AssignNewValue?
'batch_normalization_47/AssignNewValue_1AssignVariableOpAbatch_normalization_47_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_47/FusedBatchNormV3:batch_variance:09^batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_47/AssignNewValue_1?
activation_35/ReluRelu+batch_normalization_47/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2
activation_35/Relu?
max_pooling2d_113/MaxPoolMaxPool activation_35/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_113/MaxPooly
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_36/dropout/Const?
dropout_36/dropout/MulMul"max_pooling2d_113/MaxPool:output:0!dropout_36/dropout/Const:output:0*
T0*/
_output_shapes
:?????????<	 2
dropout_36/dropout/Mul?
dropout_36/dropout/ShapeShape"max_pooling2d_113/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_36/dropout/Shape?
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????<	 *
dtype021
/dropout_36/dropout/random_uniform/RandomUniform?
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_36/dropout/GreaterEqual/y?
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<	 2!
dropout_36/dropout/GreaterEqual?
dropout_36/dropout/CastCast#dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<	 2
dropout_36/dropout/Cast?
dropout_36/dropout/Mul_1Muldropout_36/dropout/Mul:z:0dropout_36/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<	 2
dropout_36/dropout/Mul_1?
 conv2d_139/Conv2D/ReadVariableOpReadVariableOp)conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_139/Conv2D/ReadVariableOp?
conv2d_139/Conv2DConv2Ddropout_36/dropout/Mul_1:z:0(conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2
conv2d_139/Conv2D?
!conv2d_139/BiasAdd/ReadVariableOpReadVariableOp*conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_139/BiasAdd/ReadVariableOp?
conv2d_139/BiasAddBiasAddconv2d_139/Conv2D:output:0)conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2
conv2d_139/BiasAdd?
conv2d_139/ReluReluconv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
conv2d_139/Relu?
 conv2d_140/Conv2D/ReadVariableOpReadVariableOp)conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_140/Conv2D/ReadVariableOp?
conv2d_140/Conv2DConv2Dconv2d_139/Relu:activations:0(conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
conv2d_140/Conv2D?
%batch_normalization_48/ReadVariableOpReadVariableOp.batch_normalization_48_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_48/ReadVariableOp?
'batch_normalization_48/ReadVariableOp_1ReadVariableOp0batch_normalization_48_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_48/ReadVariableOp_1?
6batch_normalization_48/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_48_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_48/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_48_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_48/FusedBatchNormV3FusedBatchNormV3conv2d_140/Conv2D:output:0-batch_normalization_48/ReadVariableOp:value:0/batch_normalization_48/ReadVariableOp_1:value:0>batch_normalization_48/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_48/FusedBatchNormV3?
%batch_normalization_48/AssignNewValueAssignVariableOp?batch_normalization_48_fusedbatchnormv3_readvariableop_resource4batch_normalization_48/FusedBatchNormV3:batch_mean:07^batch_normalization_48/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_48/AssignNewValue?
'batch_normalization_48/AssignNewValue_1AssignVariableOpAbatch_normalization_48_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_48/FusedBatchNormV3:batch_variance:09^batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_48/AssignNewValue_1?
activation_36/ReluRelu+batch_normalization_48/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2
activation_36/Relu?
max_pooling2d_114/MaxPoolMaxPool activation_36/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_114/MaxPooly
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_37/dropout/Const?
dropout_37/dropout/MulMul"max_pooling2d_114/MaxPool:output:0!dropout_37/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_37/dropout/Mul?
dropout_37/dropout/ShapeShape"max_pooling2d_114/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_37/dropout/Shape?
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_37/dropout/random_uniform/RandomUniform?
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_37/dropout/GreaterEqual/y?
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_37/dropout/GreaterEqual?
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_37/dropout/Cast?
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_37/dropout/Mul_1u
flatten_44/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_44/Const?
flatten_44/ReshapeReshapedropout_37/dropout/Mul_1:z:0flatten_44/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_44/Reshape?
dense_106/MatMul/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_106/MatMul/ReadVariableOp?
dense_106/MatMulMatMulflatten_44/Reshape:output:0'dense_106/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_106/MatMul?
5batch_normalization_49/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_49/moments/mean/reduction_indices?
#batch_normalization_49/moments/meanMeandense_106/MatMul:product:0>batch_normalization_49/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_49/moments/mean?
+batch_normalization_49/moments/StopGradientStopGradient,batch_normalization_49/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_49/moments/StopGradient?
0batch_normalization_49/moments/SquaredDifferenceSquaredDifferencedense_106/MatMul:product:04batch_normalization_49/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_49/moments/SquaredDifference?
9batch_normalization_49/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_49/moments/variance/reduction_indices?
'batch_normalization_49/moments/varianceMean4batch_normalization_49/moments/SquaredDifference:z:0Bbatch_normalization_49/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_49/moments/variance?
&batch_normalization_49/moments/SqueezeSqueeze,batch_normalization_49/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_49/moments/Squeeze?
(batch_normalization_49/moments/Squeeze_1Squeeze0batch_normalization_49/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_49/moments/Squeeze_1?
,batch_normalization_49/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_49/AssignMovingAvg/decay?
5batch_normalization_49/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_49_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_49/AssignMovingAvg/ReadVariableOp?
*batch_normalization_49/AssignMovingAvg/subSub=batch_normalization_49/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_49/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_49/AssignMovingAvg/sub?
*batch_normalization_49/AssignMovingAvg/mulMul.batch_normalization_49/AssignMovingAvg/sub:z:05batch_normalization_49/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_49/AssignMovingAvg/mul?
&batch_normalization_49/AssignMovingAvgAssignSubVariableOp>batch_normalization_49_assignmovingavg_readvariableop_resource.batch_normalization_49/AssignMovingAvg/mul:z:06^batch_normalization_49/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_49/AssignMovingAvg?
.batch_normalization_49/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_49/AssignMovingAvg_1/decay?
7batch_normalization_49/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_49_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_49/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_49/AssignMovingAvg_1/subSub?batch_normalization_49/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_49/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_49/AssignMovingAvg_1/sub?
,batch_normalization_49/AssignMovingAvg_1/mulMul0batch_normalization_49/AssignMovingAvg_1/sub:z:07batch_normalization_49/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_49/AssignMovingAvg_1/mul?
(batch_normalization_49/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_49_assignmovingavg_1_readvariableop_resource0batch_normalization_49/AssignMovingAvg_1/mul:z:08^batch_normalization_49/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_49/AssignMovingAvg_1?
&batch_normalization_49/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_49/batchnorm/add/y?
$batch_normalization_49/batchnorm/addAddV21batch_normalization_49/moments/Squeeze_1:output:0/batch_normalization_49/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_49/batchnorm/add?
&batch_normalization_49/batchnorm/RsqrtRsqrt(batch_normalization_49/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_49/batchnorm/Rsqrt?
3batch_normalization_49/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_49_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_49/batchnorm/mul/ReadVariableOp?
$batch_normalization_49/batchnorm/mulMul*batch_normalization_49/batchnorm/Rsqrt:y:0;batch_normalization_49/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_49/batchnorm/mul?
&batch_normalization_49/batchnorm/mul_1Muldense_106/MatMul:product:0(batch_normalization_49/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_49/batchnorm/mul_1?
&batch_normalization_49/batchnorm/mul_2Mul/batch_normalization_49/moments/Squeeze:output:0(batch_normalization_49/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_49/batchnorm/mul_2?
/batch_normalization_49/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_49_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_49/batchnorm/ReadVariableOp?
$batch_normalization_49/batchnorm/subSub7batch_normalization_49/batchnorm/ReadVariableOp:value:0*batch_normalization_49/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_49/batchnorm/sub?
&batch_normalization_49/batchnorm/add_1AddV2*batch_normalization_49/batchnorm/mul_1:z:0(batch_normalization_49/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_49/batchnorm/add_1?
activation_37/ReluRelu*batch_normalization_49/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_37/Relu?
dense_107/MatMul/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_107/MatMul/ReadVariableOp?
dense_107/MatMulMatMul activation_37/Relu:activations:0'dense_107/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_107/MatMul?
5batch_normalization_50/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_50/moments/mean/reduction_indices?
#batch_normalization_50/moments/meanMeandense_107/MatMul:product:0>batch_normalization_50/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_50/moments/mean?
+batch_normalization_50/moments/StopGradientStopGradient,batch_normalization_50/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_50/moments/StopGradient?
0batch_normalization_50/moments/SquaredDifferenceSquaredDifferencedense_107/MatMul:product:04batch_normalization_50/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_50/moments/SquaredDifference?
9batch_normalization_50/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_50/moments/variance/reduction_indices?
'batch_normalization_50/moments/varianceMean4batch_normalization_50/moments/SquaredDifference:z:0Bbatch_normalization_50/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_50/moments/variance?
&batch_normalization_50/moments/SqueezeSqueeze,batch_normalization_50/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_50/moments/Squeeze?
(batch_normalization_50/moments/Squeeze_1Squeeze0batch_normalization_50/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_50/moments/Squeeze_1?
,batch_normalization_50/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_50/AssignMovingAvg/decay?
5batch_normalization_50/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_50_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_50/AssignMovingAvg/ReadVariableOp?
*batch_normalization_50/AssignMovingAvg/subSub=batch_normalization_50/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_50/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_50/AssignMovingAvg/sub?
*batch_normalization_50/AssignMovingAvg/mulMul.batch_normalization_50/AssignMovingAvg/sub:z:05batch_normalization_50/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_50/AssignMovingAvg/mul?
&batch_normalization_50/AssignMovingAvgAssignSubVariableOp>batch_normalization_50_assignmovingavg_readvariableop_resource.batch_normalization_50/AssignMovingAvg/mul:z:06^batch_normalization_50/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_50/AssignMovingAvg?
.batch_normalization_50/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_50/AssignMovingAvg_1/decay?
7batch_normalization_50/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_50_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_50/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_50/AssignMovingAvg_1/subSub?batch_normalization_50/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_50/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_50/AssignMovingAvg_1/sub?
,batch_normalization_50/AssignMovingAvg_1/mulMul0batch_normalization_50/AssignMovingAvg_1/sub:z:07batch_normalization_50/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_50/AssignMovingAvg_1/mul?
(batch_normalization_50/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_50_assignmovingavg_1_readvariableop_resource0batch_normalization_50/AssignMovingAvg_1/mul:z:08^batch_normalization_50/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_50/AssignMovingAvg_1?
&batch_normalization_50/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_50/batchnorm/add/y?
$batch_normalization_50/batchnorm/addAddV21batch_normalization_50/moments/Squeeze_1:output:0/batch_normalization_50/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_50/batchnorm/add?
&batch_normalization_50/batchnorm/RsqrtRsqrt(batch_normalization_50/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_50/batchnorm/Rsqrt?
3batch_normalization_50/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_50_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_50/batchnorm/mul/ReadVariableOp?
$batch_normalization_50/batchnorm/mulMul*batch_normalization_50/batchnorm/Rsqrt:y:0;batch_normalization_50/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_50/batchnorm/mul?
&batch_normalization_50/batchnorm/mul_1Muldense_107/MatMul:product:0(batch_normalization_50/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_50/batchnorm/mul_1?
&batch_normalization_50/batchnorm/mul_2Mul/batch_normalization_50/moments/Squeeze:output:0(batch_normalization_50/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_50/batchnorm/mul_2?
/batch_normalization_50/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_50_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_50/batchnorm/ReadVariableOp?
$batch_normalization_50/batchnorm/subSub7batch_normalization_50/batchnorm/ReadVariableOp:value:0*batch_normalization_50/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_50/batchnorm/sub?
&batch_normalization_50/batchnorm/add_1AddV2*batch_normalization_50/batchnorm/mul_1:z:0(batch_normalization_50/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_50/batchnorm/add_1?
activation_38/ReluRelu*batch_normalization_50/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_38/Relu?
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02!
dense_108/MatMul/ReadVariableOp?
dense_108/MatMulMatMul activation_38/Relu:activations:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_108/MatMul?
5batch_normalization_51/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_51/moments/mean/reduction_indices?
#batch_normalization_51/moments/meanMeandense_108/MatMul:product:0>batch_normalization_51/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2%
#batch_normalization_51/moments/mean?
+batch_normalization_51/moments/StopGradientStopGradient,batch_normalization_51/moments/mean:output:0*
T0*
_output_shapes

:T2-
+batch_normalization_51/moments/StopGradient?
0batch_normalization_51/moments/SquaredDifferenceSquaredDifferencedense_108/MatMul:product:04batch_normalization_51/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????T22
0batch_normalization_51/moments/SquaredDifference?
9batch_normalization_51/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_51/moments/variance/reduction_indices?
'batch_normalization_51/moments/varianceMean4batch_normalization_51/moments/SquaredDifference:z:0Bbatch_normalization_51/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:T*
	keep_dims(2)
'batch_normalization_51/moments/variance?
&batch_normalization_51/moments/SqueezeSqueeze,batch_normalization_51/moments/mean:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2(
&batch_normalization_51/moments/Squeeze?
(batch_normalization_51/moments/Squeeze_1Squeeze0batch_normalization_51/moments/variance:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 2*
(batch_normalization_51/moments/Squeeze_1?
,batch_normalization_51/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_51/AssignMovingAvg/decay?
5batch_normalization_51/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_51_assignmovingavg_readvariableop_resource*
_output_shapes
:T*
dtype027
5batch_normalization_51/AssignMovingAvg/ReadVariableOp?
*batch_normalization_51/AssignMovingAvg/subSub=batch_normalization_51/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_51/moments/Squeeze:output:0*
T0*
_output_shapes
:T2,
*batch_normalization_51/AssignMovingAvg/sub?
*batch_normalization_51/AssignMovingAvg/mulMul.batch_normalization_51/AssignMovingAvg/sub:z:05batch_normalization_51/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:T2,
*batch_normalization_51/AssignMovingAvg/mul?
&batch_normalization_51/AssignMovingAvgAssignSubVariableOp>batch_normalization_51_assignmovingavg_readvariableop_resource.batch_normalization_51/AssignMovingAvg/mul:z:06^batch_normalization_51/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_51/AssignMovingAvg?
.batch_normalization_51/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_51/AssignMovingAvg_1/decay?
7batch_normalization_51/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_51_assignmovingavg_1_readvariableop_resource*
_output_shapes
:T*
dtype029
7batch_normalization_51/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_51/AssignMovingAvg_1/subSub?batch_normalization_51/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_51/moments/Squeeze_1:output:0*
T0*
_output_shapes
:T2.
,batch_normalization_51/AssignMovingAvg_1/sub?
,batch_normalization_51/AssignMovingAvg_1/mulMul0batch_normalization_51/AssignMovingAvg_1/sub:z:07batch_normalization_51/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:T2.
,batch_normalization_51/AssignMovingAvg_1/mul?
(batch_normalization_51/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_51_assignmovingavg_1_readvariableop_resource0batch_normalization_51/AssignMovingAvg_1/mul:z:08^batch_normalization_51/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_51/AssignMovingAvg_1?
&batch_normalization_51/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_51/batchnorm/add/y?
$batch_normalization_51/batchnorm/addAddV21batch_normalization_51/moments/Squeeze_1:output:0/batch_normalization_51/batchnorm/add/y:output:0*
T0*
_output_shapes
:T2&
$batch_normalization_51/batchnorm/add?
&batch_normalization_51/batchnorm/RsqrtRsqrt(batch_normalization_51/batchnorm/add:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_51/batchnorm/Rsqrt?
3batch_normalization_51/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_51_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype025
3batch_normalization_51/batchnorm/mul/ReadVariableOp?
$batch_normalization_51/batchnorm/mulMul*batch_normalization_51/batchnorm/Rsqrt:y:0;batch_normalization_51/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T2&
$batch_normalization_51/batchnorm/mul?
&batch_normalization_51/batchnorm/mul_1Muldense_108/MatMul:product:0(batch_normalization_51/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_51/batchnorm/mul_1?
&batch_normalization_51/batchnorm/mul_2Mul/batch_normalization_51/moments/Squeeze:output:0(batch_normalization_51/batchnorm/mul:z:0*
T0*
_output_shapes
:T2(
&batch_normalization_51/batchnorm/mul_2?
/batch_normalization_51/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_51_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype021
/batch_normalization_51/batchnorm/ReadVariableOp?
$batch_normalization_51/batchnorm/subSub7batch_normalization_51/batchnorm/ReadVariableOp:value:0*batch_normalization_51/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T2&
$batch_normalization_51/batchnorm/sub?
&batch_normalization_51/batchnorm/add_1AddV2*batch_normalization_51/batchnorm/mul_1:z:0(batch_normalization_51/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T2(
&batch_normalization_51/batchnorm/add_1?
activation_39/ReluRelu*batch_normalization_51/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2
activation_39/Reluy
dropout_38/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_38/dropout/Const?
dropout_38/dropout/MulMul activation_39/Relu:activations:0!dropout_38/dropout/Const:output:0*
T0*'
_output_shapes
:?????????T2
dropout_38/dropout/Mul?
dropout_38/dropout/ShapeShape activation_39/Relu:activations:0*
T0*
_output_shapes
:2
dropout_38/dropout/Shape?
/dropout_38/dropout/random_uniform/RandomUniformRandomUniform!dropout_38/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????T*
dtype021
/dropout_38/dropout/random_uniform/RandomUniform?
!dropout_38/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_38/dropout/GreaterEqual/y?
dropout_38/dropout/GreaterEqualGreaterEqual8dropout_38/dropout/random_uniform/RandomUniform:output:0*dropout_38/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????T2!
dropout_38/dropout/GreaterEqual?
dropout_38/dropout/CastCast#dropout_38/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????T2
dropout_38/dropout/Cast?
dropout_38/dropout/Mul_1Muldropout_38/dropout/Mul:z:0dropout_38/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????T2
dropout_38/dropout/Mul_1?
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02!
dense_109/MatMul/ReadVariableOp?
dense_109/MatMulMatMuldropout_38/dropout/Mul_1:z:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_109/MatMul?
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_109/BiasAdd/ReadVariableOp?
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_109/BiasAdd
dense_109/SoftmaxSoftmaxdense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_109/Softmax?
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentitydense_109/Softmax:softmax:0&^batch_normalization_47/AssignNewValue(^batch_normalization_47/AssignNewValue_17^batch_normalization_47/FusedBatchNormV3/ReadVariableOp9^batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_47/ReadVariableOp(^batch_normalization_47/ReadVariableOp_1&^batch_normalization_48/AssignNewValue(^batch_normalization_48/AssignNewValue_17^batch_normalization_48/FusedBatchNormV3/ReadVariableOp9^batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_48/ReadVariableOp(^batch_normalization_48/ReadVariableOp_1'^batch_normalization_49/AssignMovingAvg6^batch_normalization_49/AssignMovingAvg/ReadVariableOp)^batch_normalization_49/AssignMovingAvg_18^batch_normalization_49/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_49/batchnorm/ReadVariableOp4^batch_normalization_49/batchnorm/mul/ReadVariableOp'^batch_normalization_50/AssignMovingAvg6^batch_normalization_50/AssignMovingAvg/ReadVariableOp)^batch_normalization_50/AssignMovingAvg_18^batch_normalization_50/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_50/batchnorm/ReadVariableOp4^batch_normalization_50/batchnorm/mul/ReadVariableOp'^batch_normalization_51/AssignMovingAvg6^batch_normalization_51/AssignMovingAvg/ReadVariableOp)^batch_normalization_51/AssignMovingAvg_18^batch_normalization_51/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_51/batchnorm/ReadVariableOp4^batch_normalization_51/batchnorm/mul/ReadVariableOp"^conv2d_137/BiasAdd/ReadVariableOp!^conv2d_137/Conv2D/ReadVariableOp4^conv2d_137/kernel/Regularizer/Square/ReadVariableOp!^conv2d_138/Conv2D/ReadVariableOp"^conv2d_139/BiasAdd/ReadVariableOp!^conv2d_139/Conv2D/ReadVariableOp4^conv2d_139/kernel/Regularizer/Square/ReadVariableOp!^conv2d_140/Conv2D/ReadVariableOp ^dense_106/MatMul/ReadVariableOp ^dense_107/MatMul/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_47/AssignNewValue%batch_normalization_47/AssignNewValue2R
'batch_normalization_47/AssignNewValue_1'batch_normalization_47/AssignNewValue_12p
6batch_normalization_47/FusedBatchNormV3/ReadVariableOp6batch_normalization_47/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_47/FusedBatchNormV3/ReadVariableOp_18batch_normalization_47/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_47/ReadVariableOp%batch_normalization_47/ReadVariableOp2R
'batch_normalization_47/ReadVariableOp_1'batch_normalization_47/ReadVariableOp_12N
%batch_normalization_48/AssignNewValue%batch_normalization_48/AssignNewValue2R
'batch_normalization_48/AssignNewValue_1'batch_normalization_48/AssignNewValue_12p
6batch_normalization_48/FusedBatchNormV3/ReadVariableOp6batch_normalization_48/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_48/FusedBatchNormV3/ReadVariableOp_18batch_normalization_48/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_48/ReadVariableOp%batch_normalization_48/ReadVariableOp2R
'batch_normalization_48/ReadVariableOp_1'batch_normalization_48/ReadVariableOp_12P
&batch_normalization_49/AssignMovingAvg&batch_normalization_49/AssignMovingAvg2n
5batch_normalization_49/AssignMovingAvg/ReadVariableOp5batch_normalization_49/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_49/AssignMovingAvg_1(batch_normalization_49/AssignMovingAvg_12r
7batch_normalization_49/AssignMovingAvg_1/ReadVariableOp7batch_normalization_49/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_49/batchnorm/ReadVariableOp/batch_normalization_49/batchnorm/ReadVariableOp2j
3batch_normalization_49/batchnorm/mul/ReadVariableOp3batch_normalization_49/batchnorm/mul/ReadVariableOp2P
&batch_normalization_50/AssignMovingAvg&batch_normalization_50/AssignMovingAvg2n
5batch_normalization_50/AssignMovingAvg/ReadVariableOp5batch_normalization_50/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_50/AssignMovingAvg_1(batch_normalization_50/AssignMovingAvg_12r
7batch_normalization_50/AssignMovingAvg_1/ReadVariableOp7batch_normalization_50/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_50/batchnorm/ReadVariableOp/batch_normalization_50/batchnorm/ReadVariableOp2j
3batch_normalization_50/batchnorm/mul/ReadVariableOp3batch_normalization_50/batchnorm/mul/ReadVariableOp2P
&batch_normalization_51/AssignMovingAvg&batch_normalization_51/AssignMovingAvg2n
5batch_normalization_51/AssignMovingAvg/ReadVariableOp5batch_normalization_51/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_51/AssignMovingAvg_1(batch_normalization_51/AssignMovingAvg_12r
7batch_normalization_51/AssignMovingAvg_1/ReadVariableOp7batch_normalization_51/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_51/batchnorm/ReadVariableOp/batch_normalization_51/batchnorm/ReadVariableOp2j
3batch_normalization_51/batchnorm/mul/ReadVariableOp3batch_normalization_51/batchnorm/mul/ReadVariableOp2F
!conv2d_137/BiasAdd/ReadVariableOp!conv2d_137/BiasAdd/ReadVariableOp2D
 conv2d_137/Conv2D/ReadVariableOp conv2d_137/Conv2D/ReadVariableOp2j
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_138/Conv2D/ReadVariableOp conv2d_138/Conv2D/ReadVariableOp2F
!conv2d_139/BiasAdd/ReadVariableOp!conv2d_139/BiasAdd/ReadVariableOp2D
 conv2d_139/Conv2D/ReadVariableOp conv2d_139/Conv2D/ReadVariableOp2j
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_140/Conv2D/ReadVariableOp conv2d_140/Conv2D/ReadVariableOp2B
dense_106/MatMul/ReadVariableOpdense_106/MatMul/ReadVariableOp2B
dense_107/MatMul/ReadVariableOpdense_107/MatMul/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_47_layer_call_fn_1821072

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_18193612
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
?
?
%__inference_signature_wrapper_1820510
conv2d_137_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_137_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8? *+
f&R$
"__inference__wrapped_model_18185412
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
_user_specified_nameconv2d_137_input
?
?
G__inference_conv2d_140_layer_call_and_return_conditional_losses_1819416

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
?
?
G__inference_conv2d_139_layer_call_and_return_conditional_losses_1821226

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_139/kernel/Regularizer/Square/ReadVariableOp*
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
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????<	 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821310

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
?
K
/__inference_activation_38_layer_call_fn_1821615

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
GPU 2J 8? *S
fNRL
J__inference_activation_38_layer_call_and_return_conditional_losses_18195222
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
8__inference_batch_normalization_49_layer_call_fn_1821439

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_18188412
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
?*
?
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_1819063

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
?
j
N__inference_max_pooling2d_113_layer_call_and_return_conditional_losses_1818673

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
?
H
,__inference_dropout_36_layer_call_fn_1821172

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
GPU 2J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_18193842
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
?)
?
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_1819225

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
?*
?
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_1821506

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
?
e
G__inference_dropout_37_layer_call_and_return_conditional_losses_1821389

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
?)
?
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_1821714

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
?
?
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_1818841

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
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1819887

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
?
?
8__inference_batch_normalization_50_layer_call_fn_1821543

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_18190032
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
?
H
,__inference_dropout_38_layer_call_fn_1821729

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
GPU 2J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_18195562
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
??
?
J__inference_sequential_46_layer_call_and_return_conditional_losses_1819588

inputs,
conv2d_137_1819328:  
conv2d_137_1819330: ,
conv2d_138_1819341:  ,
batch_normalization_47_1819362: ,
batch_normalization_47_1819364: ,
batch_normalization_47_1819366: ,
batch_normalization_47_1819368: ,
conv2d_139_1819404: @ 
conv2d_139_1819406:@,
conv2d_140_1819417:@@,
batch_normalization_48_1819438:@,
batch_normalization_48_1819440:@,
batch_normalization_48_1819442:@,
batch_normalization_48_1819444:@%
dense_106_1819478:
??-
batch_normalization_49_1819481:	?-
batch_normalization_49_1819483:	?-
batch_normalization_49_1819485:	?-
batch_normalization_49_1819487:	?%
dense_107_1819505:
??-
batch_normalization_50_1819508:	?-
batch_normalization_50_1819510:	?-
batch_normalization_50_1819512:	?-
batch_normalization_50_1819514:	?$
dense_108_1819532:	?T,
batch_normalization_51_1819535:T,
batch_normalization_51_1819537:T,
batch_normalization_51_1819539:T,
batch_normalization_51_1819541:T#
dense_109_1819570:T
dense_109_1819572:
identity??.batch_normalization_47/StatefulPartitionedCall?.batch_normalization_48/StatefulPartitionedCall?.batch_normalization_49/StatefulPartitionedCall?.batch_normalization_50/StatefulPartitionedCall?.batch_normalization_51/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?"conv2d_138/StatefulPartitionedCall?"conv2d_139/StatefulPartitionedCall?3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?"conv2d_140/StatefulPartitionedCall?!dense_106/StatefulPartitionedCall?!dense_107/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_137_1819328conv2d_137_1819330*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_137_layer_call_and_return_conditional_losses_18193272$
"conv2d_137/StatefulPartitionedCall?
"conv2d_138/StatefulPartitionedCallStatefulPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0conv2d_138_1819341*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_138_layer_call_and_return_conditional_losses_18193402$
"conv2d_138/StatefulPartitionedCall?
.batch_normalization_47/StatefulPartitionedCallStatefulPartitionedCall+conv2d_138/StatefulPartitionedCall:output:0batch_normalization_47_1819362batch_normalization_47_1819364batch_normalization_47_1819366batch_normalization_47_1819368*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_181936120
.batch_normalization_47/StatefulPartitionedCall?
activation_35/PartitionedCallPartitionedCall7batch_normalization_47/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_35_layer_call_and_return_conditional_losses_18193762
activation_35/PartitionedCall?
!max_pooling2d_113/PartitionedCallPartitionedCall&activation_35/PartitionedCall:output:0*
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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_113_layer_call_and_return_conditional_losses_18186732#
!max_pooling2d_113/PartitionedCall?
dropout_36/PartitionedCallPartitionedCall*max_pooling2d_113/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_18193842
dropout_36/PartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0conv2d_139_1819404conv2d_139_1819406*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_139_layer_call_and_return_conditional_losses_18194032$
"conv2d_139/StatefulPartitionedCall?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0conv2d_140_1819417*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_140_layer_call_and_return_conditional_losses_18194162$
"conv2d_140/StatefulPartitionedCall?
.batch_normalization_48/StatefulPartitionedCallStatefulPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0batch_normalization_48_1819438batch_normalization_48_1819440batch_normalization_48_1819442batch_normalization_48_1819444*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_181943720
.batch_normalization_48/StatefulPartitionedCall?
activation_36/PartitionedCallPartitionedCall7batch_normalization_48/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_36_layer_call_and_return_conditional_losses_18194522
activation_36/PartitionedCall?
!max_pooling2d_114/PartitionedCallPartitionedCall&activation_36/PartitionedCall:output:0*
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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_114_layer_call_and_return_conditional_losses_18188112#
!max_pooling2d_114/PartitionedCall?
dropout_37/PartitionedCallPartitionedCall*max_pooling2d_114/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_18194602
dropout_37/PartitionedCall?
flatten_44/PartitionedCallPartitionedCall#dropout_37/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_flatten_44_layer_call_and_return_conditional_losses_18194682
flatten_44/PartitionedCall?
!dense_106/StatefulPartitionedCallStatefulPartitionedCall#flatten_44/PartitionedCall:output:0dense_106_1819478*
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
GPU 2J 8? *O
fJRH
F__inference_dense_106_layer_call_and_return_conditional_losses_18194772#
!dense_106/StatefulPartitionedCall?
.batch_normalization_49/StatefulPartitionedCallStatefulPartitionedCall*dense_106/StatefulPartitionedCall:output:0batch_normalization_49_1819481batch_normalization_49_1819483batch_normalization_49_1819485batch_normalization_49_1819487*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_181884120
.batch_normalization_49/StatefulPartitionedCall?
activation_37/PartitionedCallPartitionedCall7batch_normalization_49/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_37_layer_call_and_return_conditional_losses_18194952
activation_37/PartitionedCall?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall&activation_37/PartitionedCall:output:0dense_107_1819505*
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
GPU 2J 8? *O
fJRH
F__inference_dense_107_layer_call_and_return_conditional_losses_18195042#
!dense_107/StatefulPartitionedCall?
.batch_normalization_50/StatefulPartitionedCallStatefulPartitionedCall*dense_107/StatefulPartitionedCall:output:0batch_normalization_50_1819508batch_normalization_50_1819510batch_normalization_50_1819512batch_normalization_50_1819514*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_181900320
.batch_normalization_50/StatefulPartitionedCall?
activation_38/PartitionedCallPartitionedCall7batch_normalization_50/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_38_layer_call_and_return_conditional_losses_18195222
activation_38/PartitionedCall?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall&activation_38/PartitionedCall:output:0dense_108_1819532*
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
GPU 2J 8? *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_18195312#
!dense_108/StatefulPartitionedCall?
.batch_normalization_51/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0batch_normalization_51_1819535batch_normalization_51_1819537batch_normalization_51_1819539batch_normalization_51_1819541*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_181916520
.batch_normalization_51/StatefulPartitionedCall?
activation_39/PartitionedCallPartitionedCall7batch_normalization_51/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_39_layer_call_and_return_conditional_losses_18195492
activation_39/PartitionedCall?
dropout_38/PartitionedCallPartitionedCall&activation_39/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_18195562
dropout_38/PartitionedCall?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall#dropout_38/PartitionedCall:output:0dense_109_1819570dense_109_1819572*
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
GPU 2J 8? *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_18195692#
!dense_109/StatefulPartitionedCall?
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_137_1819328*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_139_1819404*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0/^batch_normalization_47/StatefulPartitionedCall/^batch_normalization_48/StatefulPartitionedCall/^batch_normalization_49/StatefulPartitionedCall/^batch_normalization_50/StatefulPartitionedCall/^batch_normalization_51/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall4^conv2d_137/kernel/Regularizer/Square/ReadVariableOp#^conv2d_138/StatefulPartitionedCall#^conv2d_139/StatefulPartitionedCall4^conv2d_139/kernel/Regularizer/Square/ReadVariableOp#^conv2d_140/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall"^dense_107/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_47/StatefulPartitionedCall.batch_normalization_47/StatefulPartitionedCall2`
.batch_normalization_48/StatefulPartitionedCall.batch_normalization_48/StatefulPartitionedCall2`
.batch_normalization_49/StatefulPartitionedCall.batch_normalization_49/StatefulPartitionedCall2`
.batch_normalization_50/StatefulPartitionedCall.batch_normalization_50/StatefulPartitionedCall2`
.batch_normalization_51/StatefulPartitionedCall.batch_normalization_51/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2j
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_138/StatefulPartitionedCall"conv2d_138/StatefulPartitionedCall2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2j
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_activation_37_layer_call_and_return_conditional_losses_1819495

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
f
J__inference_activation_39_layer_call_and_return_conditional_losses_1821724

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
?
f
G__inference_dropout_37_layer_call_and_return_conditional_losses_1819754

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
f
J__inference_activation_37_layer_call_and_return_conditional_losses_1821516

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
?
?
__inference_loss_fn_0_1821782V
<conv2d_137_kernel_regularizer_square_readvariableop_resource: 
identity??3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_137_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
IdentityIdentity%conv2d_137/kernel/Regularizer/mul:z:04^conv2d_137/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2j
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp
?
?
,__inference_conv2d_139_layer_call_fn_1821209

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
GPU 2J 8? *P
fKRI
G__inference_conv2d_139_layer_call_and_return_conditional_losses_18194032
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
?
e
G__inference_dropout_36_layer_call_and_return_conditional_losses_1819384

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
?
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820321
conv2d_137_input,
conv2d_137_1820222:  
conv2d_137_1820224: ,
conv2d_138_1820227:  ,
batch_normalization_47_1820230: ,
batch_normalization_47_1820232: ,
batch_normalization_47_1820234: ,
batch_normalization_47_1820236: ,
conv2d_139_1820242: @ 
conv2d_139_1820244:@,
conv2d_140_1820247:@@,
batch_normalization_48_1820250:@,
batch_normalization_48_1820252:@,
batch_normalization_48_1820254:@,
batch_normalization_48_1820256:@%
dense_106_1820263:
??-
batch_normalization_49_1820266:	?-
batch_normalization_49_1820268:	?-
batch_normalization_49_1820270:	?-
batch_normalization_49_1820272:	?%
dense_107_1820276:
??-
batch_normalization_50_1820279:	?-
batch_normalization_50_1820281:	?-
batch_normalization_50_1820283:	?-
batch_normalization_50_1820285:	?$
dense_108_1820289:	?T,
batch_normalization_51_1820292:T,
batch_normalization_51_1820294:T,
batch_normalization_51_1820296:T,
batch_normalization_51_1820298:T#
dense_109_1820303:T
dense_109_1820305:
identity??.batch_normalization_47/StatefulPartitionedCall?.batch_normalization_48/StatefulPartitionedCall?.batch_normalization_49/StatefulPartitionedCall?.batch_normalization_50/StatefulPartitionedCall?.batch_normalization_51/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?"conv2d_138/StatefulPartitionedCall?"conv2d_139/StatefulPartitionedCall?3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?"conv2d_140/StatefulPartitionedCall?!dense_106/StatefulPartitionedCall?!dense_107/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCallconv2d_137_inputconv2d_137_1820222conv2d_137_1820224*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_137_layer_call_and_return_conditional_losses_18193272$
"conv2d_137/StatefulPartitionedCall?
"conv2d_138/StatefulPartitionedCallStatefulPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0conv2d_138_1820227*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_138_layer_call_and_return_conditional_losses_18193402$
"conv2d_138/StatefulPartitionedCall?
.batch_normalization_47/StatefulPartitionedCallStatefulPartitionedCall+conv2d_138/StatefulPartitionedCall:output:0batch_normalization_47_1820230batch_normalization_47_1820232batch_normalization_47_1820234batch_normalization_47_1820236*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_181936120
.batch_normalization_47/StatefulPartitionedCall?
activation_35/PartitionedCallPartitionedCall7batch_normalization_47/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_35_layer_call_and_return_conditional_losses_18193762
activation_35/PartitionedCall?
!max_pooling2d_113/PartitionedCallPartitionedCall&activation_35/PartitionedCall:output:0*
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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_113_layer_call_and_return_conditional_losses_18186732#
!max_pooling2d_113/PartitionedCall?
dropout_36/PartitionedCallPartitionedCall*max_pooling2d_113/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_18193842
dropout_36/PartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0conv2d_139_1820242conv2d_139_1820244*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_139_layer_call_and_return_conditional_losses_18194032$
"conv2d_139/StatefulPartitionedCall?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0conv2d_140_1820247*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_140_layer_call_and_return_conditional_losses_18194162$
"conv2d_140/StatefulPartitionedCall?
.batch_normalization_48/StatefulPartitionedCallStatefulPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0batch_normalization_48_1820250batch_normalization_48_1820252batch_normalization_48_1820254batch_normalization_48_1820256*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_181943720
.batch_normalization_48/StatefulPartitionedCall?
activation_36/PartitionedCallPartitionedCall7batch_normalization_48/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_36_layer_call_and_return_conditional_losses_18194522
activation_36/PartitionedCall?
!max_pooling2d_114/PartitionedCallPartitionedCall&activation_36/PartitionedCall:output:0*
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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_114_layer_call_and_return_conditional_losses_18188112#
!max_pooling2d_114/PartitionedCall?
dropout_37/PartitionedCallPartitionedCall*max_pooling2d_114/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_18194602
dropout_37/PartitionedCall?
flatten_44/PartitionedCallPartitionedCall#dropout_37/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_flatten_44_layer_call_and_return_conditional_losses_18194682
flatten_44/PartitionedCall?
!dense_106/StatefulPartitionedCallStatefulPartitionedCall#flatten_44/PartitionedCall:output:0dense_106_1820263*
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
GPU 2J 8? *O
fJRH
F__inference_dense_106_layer_call_and_return_conditional_losses_18194772#
!dense_106/StatefulPartitionedCall?
.batch_normalization_49/StatefulPartitionedCallStatefulPartitionedCall*dense_106/StatefulPartitionedCall:output:0batch_normalization_49_1820266batch_normalization_49_1820268batch_normalization_49_1820270batch_normalization_49_1820272*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_181884120
.batch_normalization_49/StatefulPartitionedCall?
activation_37/PartitionedCallPartitionedCall7batch_normalization_49/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_37_layer_call_and_return_conditional_losses_18194952
activation_37/PartitionedCall?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall&activation_37/PartitionedCall:output:0dense_107_1820276*
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
GPU 2J 8? *O
fJRH
F__inference_dense_107_layer_call_and_return_conditional_losses_18195042#
!dense_107/StatefulPartitionedCall?
.batch_normalization_50/StatefulPartitionedCallStatefulPartitionedCall*dense_107/StatefulPartitionedCall:output:0batch_normalization_50_1820279batch_normalization_50_1820281batch_normalization_50_1820283batch_normalization_50_1820285*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_181900320
.batch_normalization_50/StatefulPartitionedCall?
activation_38/PartitionedCallPartitionedCall7batch_normalization_50/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_38_layer_call_and_return_conditional_losses_18195222
activation_38/PartitionedCall?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall&activation_38/PartitionedCall:output:0dense_108_1820289*
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
GPU 2J 8? *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_18195312#
!dense_108/StatefulPartitionedCall?
.batch_normalization_51/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0batch_normalization_51_1820292batch_normalization_51_1820294batch_normalization_51_1820296batch_normalization_51_1820298*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_181916520
.batch_normalization_51/StatefulPartitionedCall?
activation_39/PartitionedCallPartitionedCall7batch_normalization_51/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_39_layer_call_and_return_conditional_losses_18195492
activation_39/PartitionedCall?
dropout_38/PartitionedCallPartitionedCall&activation_39/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_18195562
dropout_38/PartitionedCall?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall#dropout_38/PartitionedCall:output:0dense_109_1820303dense_109_1820305*
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
GPU 2J 8? *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_18195692#
!dense_109/StatefulPartitionedCall?
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_137_1820222*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_139_1820242*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0/^batch_normalization_47/StatefulPartitionedCall/^batch_normalization_48/StatefulPartitionedCall/^batch_normalization_49/StatefulPartitionedCall/^batch_normalization_50/StatefulPartitionedCall/^batch_normalization_51/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall4^conv2d_137/kernel/Regularizer/Square/ReadVariableOp#^conv2d_138/StatefulPartitionedCall#^conv2d_139/StatefulPartitionedCall4^conv2d_139/kernel/Regularizer/Square/ReadVariableOp#^conv2d_140/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall"^dense_107/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_47/StatefulPartitionedCall.batch_normalization_47/StatefulPartitionedCall2`
.batch_normalization_48/StatefulPartitionedCall.batch_normalization_48/StatefulPartitionedCall2`
.batch_normalization_49/StatefulPartitionedCall.batch_normalization_49/StatefulPartitionedCall2`
.batch_normalization_50/StatefulPartitionedCall.batch_normalization_50/StatefulPartitionedCall2`
.batch_normalization_51/StatefulPartitionedCall.batch_normalization_51/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2j
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_138/StatefulPartitionedCall"conv2d_138/StatefulPartitionedCall2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2j
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_137_input
?
?
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_1821680

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
?
?
G__inference_conv2d_137_layer_call_and_return_conditional_losses_1819327

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_137/kernel/Regularizer/Square/ReadVariableOp*
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
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_140_layer_call_and_return_conditional_losses_1821240

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
e
,__inference_dropout_36_layer_call_fn_1821177

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
GPU 2J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_18198452
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
??
?)
#__inference__traced_restore_1822192
file_prefix<
"assignvariableop_conv2d_137_kernel: 0
"assignvariableop_1_conv2d_137_bias: >
$assignvariableop_2_conv2d_138_kernel:  =
/assignvariableop_3_batch_normalization_47_gamma: <
.assignvariableop_4_batch_normalization_47_beta: C
5assignvariableop_5_batch_normalization_47_moving_mean: G
9assignvariableop_6_batch_normalization_47_moving_variance: >
$assignvariableop_7_conv2d_139_kernel: @0
"assignvariableop_8_conv2d_139_bias:@>
$assignvariableop_9_conv2d_140_kernel:@@>
0assignvariableop_10_batch_normalization_48_gamma:@=
/assignvariableop_11_batch_normalization_48_beta:@D
6assignvariableop_12_batch_normalization_48_moving_mean:@H
:assignvariableop_13_batch_normalization_48_moving_variance:@8
$assignvariableop_14_dense_106_kernel:
???
0assignvariableop_15_batch_normalization_49_gamma:	?>
/assignvariableop_16_batch_normalization_49_beta:	?E
6assignvariableop_17_batch_normalization_49_moving_mean:	?I
:assignvariableop_18_batch_normalization_49_moving_variance:	?8
$assignvariableop_19_dense_107_kernel:
???
0assignvariableop_20_batch_normalization_50_gamma:	?>
/assignvariableop_21_batch_normalization_50_beta:	?E
6assignvariableop_22_batch_normalization_50_moving_mean:	?I
:assignvariableop_23_batch_normalization_50_moving_variance:	?7
$assignvariableop_24_dense_108_kernel:	?T>
0assignvariableop_25_batch_normalization_51_gamma:T=
/assignvariableop_26_batch_normalization_51_beta:TD
6assignvariableop_27_batch_normalization_51_moving_mean:TH
:assignvariableop_28_batch_normalization_51_moving_variance:T6
$assignvariableop_29_dense_109_kernel:T0
"assignvariableop_30_dense_109_bias:*
 assignvariableop_31_rmsprop_iter:	 +
!assignvariableop_32_rmsprop_decay: 3
)assignvariableop_33_rmsprop_learning_rate: .
$assignvariableop_34_rmsprop_momentum: )
assignvariableop_35_rmsprop_rho: #
assignvariableop_36_total: #
assignvariableop_37_count: %
assignvariableop_38_total_1: %
assignvariableop_39_count_1: K
1assignvariableop_40_rmsprop_conv2d_137_kernel_rms: =
/assignvariableop_41_rmsprop_conv2d_137_bias_rms: K
1assignvariableop_42_rmsprop_conv2d_138_kernel_rms:  J
<assignvariableop_43_rmsprop_batch_normalization_47_gamma_rms: I
;assignvariableop_44_rmsprop_batch_normalization_47_beta_rms: K
1assignvariableop_45_rmsprop_conv2d_139_kernel_rms: @=
/assignvariableop_46_rmsprop_conv2d_139_bias_rms:@K
1assignvariableop_47_rmsprop_conv2d_140_kernel_rms:@@J
<assignvariableop_48_rmsprop_batch_normalization_48_gamma_rms:@I
;assignvariableop_49_rmsprop_batch_normalization_48_beta_rms:@D
0assignvariableop_50_rmsprop_dense_106_kernel_rms:
??K
<assignvariableop_51_rmsprop_batch_normalization_49_gamma_rms:	?J
;assignvariableop_52_rmsprop_batch_normalization_49_beta_rms:	?D
0assignvariableop_53_rmsprop_dense_107_kernel_rms:
??K
<assignvariableop_54_rmsprop_batch_normalization_50_gamma_rms:	?J
;assignvariableop_55_rmsprop_batch_normalization_50_beta_rms:	?C
0assignvariableop_56_rmsprop_dense_108_kernel_rms:	?TJ
<assignvariableop_57_rmsprop_batch_normalization_51_gamma_rms:TI
;assignvariableop_58_rmsprop_batch_normalization_51_beta_rms:TB
0assignvariableop_59_rmsprop_dense_109_kernel_rms:T<
.assignvariableop_60_rmsprop_dense_109_bias_rms:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_137_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_137_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_138_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_47_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_47_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp5assignvariableop_5_batch_normalization_47_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp9assignvariableop_6_batch_normalization_47_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp$assignvariableop_7_conv2d_139_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_139_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp$assignvariableop_9_conv2d_140_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_batch_normalization_48_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_48_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp6assignvariableop_12_batch_normalization_48_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp:assignvariableop_13_batch_normalization_48_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_dense_106_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_49_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_49_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_batch_normalization_49_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp:assignvariableop_18_batch_normalization_49_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp$assignvariableop_19_dense_107_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_50_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_50_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_50_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_50_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_108_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp0assignvariableop_25_batch_normalization_51_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp/assignvariableop_26_batch_normalization_51_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp6assignvariableop_27_batch_normalization_51_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp:assignvariableop_28_batch_normalization_51_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp$assignvariableop_29_dense_109_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp"assignvariableop_30_dense_109_biasIdentity_30:output:0"/device:CPU:0*
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
AssignVariableOp_40AssignVariableOp1assignvariableop_40_rmsprop_conv2d_137_kernel_rmsIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp/assignvariableop_41_rmsprop_conv2d_137_bias_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp1assignvariableop_42_rmsprop_conv2d_138_kernel_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp<assignvariableop_43_rmsprop_batch_normalization_47_gamma_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp;assignvariableop_44_rmsprop_batch_normalization_47_beta_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp1assignvariableop_45_rmsprop_conv2d_139_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp/assignvariableop_46_rmsprop_conv2d_139_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp1assignvariableop_47_rmsprop_conv2d_140_kernel_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp<assignvariableop_48_rmsprop_batch_normalization_48_gamma_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp;assignvariableop_49_rmsprop_batch_normalization_48_beta_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp0assignvariableop_50_rmsprop_dense_106_kernel_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp<assignvariableop_51_rmsprop_batch_normalization_49_gamma_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp;assignvariableop_52_rmsprop_batch_normalization_49_beta_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp0assignvariableop_53_rmsprop_dense_107_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp<assignvariableop_54_rmsprop_batch_normalization_50_gamma_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp;assignvariableop_55_rmsprop_batch_normalization_50_beta_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp0assignvariableop_56_rmsprop_dense_108_kernel_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp<assignvariableop_57_rmsprop_batch_normalization_51_gamma_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp;assignvariableop_58_rmsprop_batch_normalization_51_beta_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp0assignvariableop_59_rmsprop_dense_109_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp.assignvariableop_60_rmsprop_dense_109_bias_rmsIdentity_60:output:0"/device:CPU:0*
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
G__inference_conv2d_137_layer_call_and_return_conditional_losses_1821019

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_137/kernel/Regularizer/Square/ReadVariableOp*
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
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_48_layer_call_fn_1821266

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_18187452
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
c
G__inference_flatten_44_layer_call_and_return_conditional_losses_1819468

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
?
H
,__inference_flatten_44_layer_call_fn_1821406

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
GPU 2J 8? *P
fKRI
G__inference_flatten_44_layer_call_and_return_conditional_losses_18194682
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
?
+__inference_dense_107_layer_call_fn_1821523

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
GPU 2J 8? *O
fJRH
F__inference_dense_107_layer_call_and_return_conditional_losses_18195042
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
8__inference_batch_normalization_48_layer_call_fn_1821279

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_18194372
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
?
?
/__inference_sequential_46_layer_call_fn_1819653
conv2d_137_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_137_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8? *S
fNRL
J__inference_sequential_46_layer_call_and_return_conditional_losses_18195882
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
_user_specified_nameconv2d_137_input
?
?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1819796

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
??
?
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820087

inputs,
conv2d_137_1819988:  
conv2d_137_1819990: ,
conv2d_138_1819993:  ,
batch_normalization_47_1819996: ,
batch_normalization_47_1819998: ,
batch_normalization_47_1820000: ,
batch_normalization_47_1820002: ,
conv2d_139_1820008: @ 
conv2d_139_1820010:@,
conv2d_140_1820013:@@,
batch_normalization_48_1820016:@,
batch_normalization_48_1820018:@,
batch_normalization_48_1820020:@,
batch_normalization_48_1820022:@%
dense_106_1820029:
??-
batch_normalization_49_1820032:	?-
batch_normalization_49_1820034:	?-
batch_normalization_49_1820036:	?-
batch_normalization_49_1820038:	?%
dense_107_1820042:
??-
batch_normalization_50_1820045:	?-
batch_normalization_50_1820047:	?-
batch_normalization_50_1820049:	?-
batch_normalization_50_1820051:	?$
dense_108_1820055:	?T,
batch_normalization_51_1820058:T,
batch_normalization_51_1820060:T,
batch_normalization_51_1820062:T,
batch_normalization_51_1820064:T#
dense_109_1820069:T
dense_109_1820071:
identity??.batch_normalization_47/StatefulPartitionedCall?.batch_normalization_48/StatefulPartitionedCall?.batch_normalization_49/StatefulPartitionedCall?.batch_normalization_50/StatefulPartitionedCall?.batch_normalization_51/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?"conv2d_138/StatefulPartitionedCall?"conv2d_139/StatefulPartitionedCall?3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?"conv2d_140/StatefulPartitionedCall?!dense_106/StatefulPartitionedCall?!dense_107/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?"dropout_37/StatefulPartitionedCall?"dropout_38/StatefulPartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_137_1819988conv2d_137_1819990*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_137_layer_call_and_return_conditional_losses_18193272$
"conv2d_137/StatefulPartitionedCall?
"conv2d_138/StatefulPartitionedCallStatefulPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0conv2d_138_1819993*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_138_layer_call_and_return_conditional_losses_18193402$
"conv2d_138/StatefulPartitionedCall?
.batch_normalization_47/StatefulPartitionedCallStatefulPartitionedCall+conv2d_138/StatefulPartitionedCall:output:0batch_normalization_47_1819996batch_normalization_47_1819998batch_normalization_47_1820000batch_normalization_47_1820002*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_181988720
.batch_normalization_47/StatefulPartitionedCall?
activation_35/PartitionedCallPartitionedCall7batch_normalization_47/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_35_layer_call_and_return_conditional_losses_18193762
activation_35/PartitionedCall?
!max_pooling2d_113/PartitionedCallPartitionedCall&activation_35/PartitionedCall:output:0*
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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_113_layer_call_and_return_conditional_losses_18186732#
!max_pooling2d_113/PartitionedCall?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_113/PartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_18198452$
"dropout_36/StatefulPartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0conv2d_139_1820008conv2d_139_1820010*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_139_layer_call_and_return_conditional_losses_18194032$
"conv2d_139/StatefulPartitionedCall?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0conv2d_140_1820013*
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
GPU 2J 8? *P
fKRI
G__inference_conv2d_140_layer_call_and_return_conditional_losses_18194162$
"conv2d_140/StatefulPartitionedCall?
.batch_normalization_48/StatefulPartitionedCallStatefulPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0batch_normalization_48_1820016batch_normalization_48_1820018batch_normalization_48_1820020batch_normalization_48_1820022*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_181979620
.batch_normalization_48/StatefulPartitionedCall?
activation_36/PartitionedCallPartitionedCall7batch_normalization_48/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_36_layer_call_and_return_conditional_losses_18194522
activation_36/PartitionedCall?
!max_pooling2d_114/PartitionedCallPartitionedCall&activation_36/PartitionedCall:output:0*
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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_114_layer_call_and_return_conditional_losses_18188112#
!max_pooling2d_114/PartitionedCall?
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_114/PartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_18197542$
"dropout_37/StatefulPartitionedCall?
flatten_44/PartitionedCallPartitionedCall+dropout_37/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_flatten_44_layer_call_and_return_conditional_losses_18194682
flatten_44/PartitionedCall?
!dense_106/StatefulPartitionedCallStatefulPartitionedCall#flatten_44/PartitionedCall:output:0dense_106_1820029*
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
GPU 2J 8? *O
fJRH
F__inference_dense_106_layer_call_and_return_conditional_losses_18194772#
!dense_106/StatefulPartitionedCall?
.batch_normalization_49/StatefulPartitionedCallStatefulPartitionedCall*dense_106/StatefulPartitionedCall:output:0batch_normalization_49_1820032batch_normalization_49_1820034batch_normalization_49_1820036batch_normalization_49_1820038*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_181890120
.batch_normalization_49/StatefulPartitionedCall?
activation_37/PartitionedCallPartitionedCall7batch_normalization_49/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_37_layer_call_and_return_conditional_losses_18194952
activation_37/PartitionedCall?
!dense_107/StatefulPartitionedCallStatefulPartitionedCall&activation_37/PartitionedCall:output:0dense_107_1820042*
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
GPU 2J 8? *O
fJRH
F__inference_dense_107_layer_call_and_return_conditional_losses_18195042#
!dense_107/StatefulPartitionedCall?
.batch_normalization_50/StatefulPartitionedCallStatefulPartitionedCall*dense_107/StatefulPartitionedCall:output:0batch_normalization_50_1820045batch_normalization_50_1820047batch_normalization_50_1820049batch_normalization_50_1820051*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_181906320
.batch_normalization_50/StatefulPartitionedCall?
activation_38/PartitionedCallPartitionedCall7batch_normalization_50/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_38_layer_call_and_return_conditional_losses_18195222
activation_38/PartitionedCall?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall&activation_38/PartitionedCall:output:0dense_108_1820055*
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
GPU 2J 8? *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_18195312#
!dense_108/StatefulPartitionedCall?
.batch_normalization_51/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0batch_normalization_51_1820058batch_normalization_51_1820060batch_normalization_51_1820062batch_normalization_51_1820064*
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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_181922520
.batch_normalization_51/StatefulPartitionedCall?
activation_39/PartitionedCallPartitionedCall7batch_normalization_51/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_activation_39_layer_call_and_return_conditional_losses_18195492
activation_39/PartitionedCall?
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall&activation_39/PartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
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
GPU 2J 8? *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_18196832$
"dropout_38/StatefulPartitionedCall?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall+dropout_38/StatefulPartitionedCall:output:0dense_109_1820069dense_109_1820071*
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
GPU 2J 8? *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_18195692#
!dense_109/StatefulPartitionedCall?
3conv2d_137/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_137_1819988*&
_output_shapes
: *
dtype025
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_137/kernel/Regularizer/SquareSquare;conv2d_137/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_137/kernel/Regularizer/Square?
#conv2d_137/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_137/kernel/Regularizer/Const?
!conv2d_137/kernel/Regularizer/SumSum(conv2d_137/kernel/Regularizer/Square:y:0,conv2d_137/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/Sum?
#conv2d_137/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_137/kernel/Regularizer/mul/x?
!conv2d_137/kernel/Regularizer/mulMul,conv2d_137/kernel/Regularizer/mul/x:output:0*conv2d_137/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_137/kernel/Regularizer/mul?
3conv2d_139/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_139_1820008*&
_output_shapes
: @*
dtype025
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_139/kernel/Regularizer/SquareSquare;conv2d_139/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_139/kernel/Regularizer/Square?
#conv2d_139/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_139/kernel/Regularizer/Const?
!conv2d_139/kernel/Regularizer/SumSum(conv2d_139/kernel/Regularizer/Square:y:0,conv2d_139/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/Sum?
#conv2d_139/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#conv2d_139/kernel/Regularizer/mul/x?
!conv2d_139/kernel/Regularizer/mulMul,conv2d_139/kernel/Regularizer/mul/x:output:0*conv2d_139/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_139/kernel/Regularizer/mul?
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0/^batch_normalization_47/StatefulPartitionedCall/^batch_normalization_48/StatefulPartitionedCall/^batch_normalization_49/StatefulPartitionedCall/^batch_normalization_50/StatefulPartitionedCall/^batch_normalization_51/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall4^conv2d_137/kernel/Regularizer/Square/ReadVariableOp#^conv2d_138/StatefulPartitionedCall#^conv2d_139/StatefulPartitionedCall4^conv2d_139/kernel/Regularizer/Square/ReadVariableOp#^conv2d_140/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall"^dense_107/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_47/StatefulPartitionedCall.batch_normalization_47/StatefulPartitionedCall2`
.batch_normalization_48/StatefulPartitionedCall.batch_normalization_48/StatefulPartitionedCall2`
.batch_normalization_49/StatefulPartitionedCall.batch_normalization_49/StatefulPartitionedCall2`
.batch_normalization_50/StatefulPartitionedCall.batch_normalization_50/StatefulPartitionedCall2`
.batch_normalization_51/StatefulPartitionedCall.batch_normalization_51/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2j
3conv2d_137/kernel/Regularizer/Square/ReadVariableOp3conv2d_137/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_138/StatefulPartitionedCall"conv2d_138/StatefulPartitionedCall2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2j
3conv2d_139/kernel/Regularizer/Square/ReadVariableOp3conv2d_139/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_dense_108_layer_call_and_return_conditional_losses_1821634

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
?
e
G__inference_dropout_37_layer_call_and_return_conditional_losses_1819460

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
8__inference_batch_normalization_47_layer_call_fn_1821046

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_18185632
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
?
+__inference_dense_108_layer_call_fn_1821627

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
GPU 2J 8? *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_18195312
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
?
K
/__inference_activation_35_layer_call_fn_1821162

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
GPU 2J 8? *S
fNRL
J__inference_activation_35_layer_call_and_return_conditional_losses_18193762
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
O
3__inference_max_pooling2d_114_layer_call_fn_1818817

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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_114_layer_call_and_return_conditional_losses_18188112
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
f
G__inference_dropout_36_layer_call_and_return_conditional_losses_1819845

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
?
?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1818563

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
?
?
G__inference_conv2d_138_layer_call_and_return_conditional_losses_1819340

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
?
f
G__inference_dropout_37_layer_call_and_return_conditional_losses_1821401

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
f
G__inference_dropout_36_layer_call_and_return_conditional_losses_1821194

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
?
?
8__inference_batch_normalization_48_layer_call_fn_1821292

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_18197962
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
?
f
J__inference_activation_38_layer_call_and_return_conditional_losses_1821620

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
F__inference_dense_106_layer_call_and_return_conditional_losses_1821426

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
?
?
8__inference_batch_normalization_47_layer_call_fn_1821085

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_18198872
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
K
/__inference_activation_36_layer_call_fn_1821369

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
GPU 2J 8? *S
fNRL
J__inference_activation_36_layer_call_and_return_conditional_losses_18194522
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
?
?
F__inference_dense_107_layer_call_and_return_conditional_losses_1821530

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
?
?
,__inference_conv2d_137_layer_call_fn_1821002

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
GPU 2J 8? *P
fKRI
G__inference_conv2d_137_layer_call_and_return_conditional_losses_18193272
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
8__inference_batch_normalization_47_layer_call_fn_1821059

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_18186072
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
?
?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821157

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
??
?#
"__inference__wrapped_model_1818541
conv2d_137_inputQ
7sequential_46_conv2d_137_conv2d_readvariableop_resource: F
8sequential_46_conv2d_137_biasadd_readvariableop_resource: Q
7sequential_46_conv2d_138_conv2d_readvariableop_resource:  J
<sequential_46_batch_normalization_47_readvariableop_resource: L
>sequential_46_batch_normalization_47_readvariableop_1_resource: [
Msequential_46_batch_normalization_47_fusedbatchnormv3_readvariableop_resource: ]
Osequential_46_batch_normalization_47_fusedbatchnormv3_readvariableop_1_resource: Q
7sequential_46_conv2d_139_conv2d_readvariableop_resource: @F
8sequential_46_conv2d_139_biasadd_readvariableop_resource:@Q
7sequential_46_conv2d_140_conv2d_readvariableop_resource:@@J
<sequential_46_batch_normalization_48_readvariableop_resource:@L
>sequential_46_batch_normalization_48_readvariableop_1_resource:@[
Msequential_46_batch_normalization_48_fusedbatchnormv3_readvariableop_resource:@]
Osequential_46_batch_normalization_48_fusedbatchnormv3_readvariableop_1_resource:@J
6sequential_46_dense_106_matmul_readvariableop_resource:
??U
Fsequential_46_batch_normalization_49_batchnorm_readvariableop_resource:	?Y
Jsequential_46_batch_normalization_49_batchnorm_mul_readvariableop_resource:	?W
Hsequential_46_batch_normalization_49_batchnorm_readvariableop_1_resource:	?W
Hsequential_46_batch_normalization_49_batchnorm_readvariableop_2_resource:	?J
6sequential_46_dense_107_matmul_readvariableop_resource:
??U
Fsequential_46_batch_normalization_50_batchnorm_readvariableop_resource:	?Y
Jsequential_46_batch_normalization_50_batchnorm_mul_readvariableop_resource:	?W
Hsequential_46_batch_normalization_50_batchnorm_readvariableop_1_resource:	?W
Hsequential_46_batch_normalization_50_batchnorm_readvariableop_2_resource:	?I
6sequential_46_dense_108_matmul_readvariableop_resource:	?TT
Fsequential_46_batch_normalization_51_batchnorm_readvariableop_resource:TX
Jsequential_46_batch_normalization_51_batchnorm_mul_readvariableop_resource:TV
Hsequential_46_batch_normalization_51_batchnorm_readvariableop_1_resource:TV
Hsequential_46_batch_normalization_51_batchnorm_readvariableop_2_resource:TH
6sequential_46_dense_109_matmul_readvariableop_resource:TE
7sequential_46_dense_109_biasadd_readvariableop_resource:
identity??Dsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp?Fsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1?3sequential_46/batch_normalization_47/ReadVariableOp?5sequential_46/batch_normalization_47/ReadVariableOp_1?Dsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp?Fsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1?3sequential_46/batch_normalization_48/ReadVariableOp?5sequential_46/batch_normalization_48/ReadVariableOp_1?=sequential_46/batch_normalization_49/batchnorm/ReadVariableOp??sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_1??sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_2?Asequential_46/batch_normalization_49/batchnorm/mul/ReadVariableOp?=sequential_46/batch_normalization_50/batchnorm/ReadVariableOp??sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_1??sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_2?Asequential_46/batch_normalization_50/batchnorm/mul/ReadVariableOp?=sequential_46/batch_normalization_51/batchnorm/ReadVariableOp??sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_1??sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_2?Asequential_46/batch_normalization_51/batchnorm/mul/ReadVariableOp?/sequential_46/conv2d_137/BiasAdd/ReadVariableOp?.sequential_46/conv2d_137/Conv2D/ReadVariableOp?.sequential_46/conv2d_138/Conv2D/ReadVariableOp?/sequential_46/conv2d_139/BiasAdd/ReadVariableOp?.sequential_46/conv2d_139/Conv2D/ReadVariableOp?.sequential_46/conv2d_140/Conv2D/ReadVariableOp?-sequential_46/dense_106/MatMul/ReadVariableOp?-sequential_46/dense_107/MatMul/ReadVariableOp?-sequential_46/dense_108/MatMul/ReadVariableOp?.sequential_46/dense_109/BiasAdd/ReadVariableOp?-sequential_46/dense_109/MatMul/ReadVariableOp?
.sequential_46/conv2d_137/Conv2D/ReadVariableOpReadVariableOp7sequential_46_conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_46/conv2d_137/Conv2D/ReadVariableOp?
sequential_46/conv2d_137/Conv2DConv2Dconv2d_137_input6sequential_46/conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} *
paddingVALID*
strides
2!
sequential_46/conv2d_137/Conv2D?
/sequential_46/conv2d_137/BiasAdd/ReadVariableOpReadVariableOp8sequential_46_conv2d_137_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_46/conv2d_137/BiasAdd/ReadVariableOp?
 sequential_46/conv2d_137/BiasAddBiasAdd(sequential_46/conv2d_137/Conv2D:output:07sequential_46/conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????} 2"
 sequential_46/conv2d_137/BiasAdd?
sequential_46/conv2d_137/ReluRelu)sequential_46/conv2d_137/BiasAdd:output:0*
T0*/
_output_shapes
:?????????} 2
sequential_46/conv2d_137/Relu?
.sequential_46/conv2d_138/Conv2D/ReadVariableOpReadVariableOp7sequential_46_conv2d_138_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.sequential_46/conv2d_138/Conv2D/ReadVariableOp?
sequential_46/conv2d_138/Conv2DConv2D+sequential_46/conv2d_137/Relu:activations:06sequential_46/conv2d_138/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????y *
paddingVALID*
strides
2!
sequential_46/conv2d_138/Conv2D?
3sequential_46/batch_normalization_47/ReadVariableOpReadVariableOp<sequential_46_batch_normalization_47_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_46/batch_normalization_47/ReadVariableOp?
5sequential_46/batch_normalization_47/ReadVariableOp_1ReadVariableOp>sequential_46_batch_normalization_47_readvariableop_1_resource*
_output_shapes
: *
dtype027
5sequential_46/batch_normalization_47/ReadVariableOp_1?
Dsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_46_batch_normalization_47_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp?
Fsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_46_batch_normalization_47_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1?
5sequential_46/batch_normalization_47/FusedBatchNormV3FusedBatchNormV3(sequential_46/conv2d_138/Conv2D:output:0;sequential_46/batch_normalization_47/ReadVariableOp:value:0=sequential_46/batch_normalization_47/ReadVariableOp_1:value:0Lsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????y : : : : :*
epsilon%o?:*
is_training( 27
5sequential_46/batch_normalization_47/FusedBatchNormV3?
 sequential_46/activation_35/ReluRelu9sequential_46/batch_normalization_47/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????y 2"
 sequential_46/activation_35/Relu?
'sequential_46/max_pooling2d_113/MaxPoolMaxPool.sequential_46/activation_35/Relu:activations:0*/
_output_shapes
:?????????<	 *
ksize
*
paddingVALID*
strides
2)
'sequential_46/max_pooling2d_113/MaxPool?
!sequential_46/dropout_36/IdentityIdentity0sequential_46/max_pooling2d_113/MaxPool:output:0*
T0*/
_output_shapes
:?????????<	 2#
!sequential_46/dropout_36/Identity?
.sequential_46/conv2d_139/Conv2D/ReadVariableOpReadVariableOp7sequential_46_conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_46/conv2d_139/Conv2D/ReadVariableOp?
sequential_46/conv2d_139/Conv2DConv2D*sequential_46/dropout_36/Identity:output:06sequential_46/conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@*
paddingVALID*
strides
2!
sequential_46/conv2d_139/Conv2D?
/sequential_46/conv2d_139/BiasAdd/ReadVariableOpReadVariableOp8sequential_46_conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_46/conv2d_139/BiasAdd/ReadVariableOp?
 sequential_46/conv2d_139/BiasAddBiasAdd(sequential_46/conv2d_139/Conv2D:output:07sequential_46/conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????:@2"
 sequential_46/conv2d_139/BiasAdd?
sequential_46/conv2d_139/ReluRelu)sequential_46/conv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????:@2
sequential_46/conv2d_139/Relu?
.sequential_46/conv2d_140/Conv2D/ReadVariableOpReadVariableOp7sequential_46_conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.sequential_46/conv2d_140/Conv2D/ReadVariableOp?
sequential_46/conv2d_140/Conv2DConv2D+sequential_46/conv2d_139/Relu:activations:06sequential_46/conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2!
sequential_46/conv2d_140/Conv2D?
3sequential_46/batch_normalization_48/ReadVariableOpReadVariableOp<sequential_46_batch_normalization_48_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_46/batch_normalization_48/ReadVariableOp?
5sequential_46/batch_normalization_48/ReadVariableOp_1ReadVariableOp>sequential_46_batch_normalization_48_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_46/batch_normalization_48/ReadVariableOp_1?
Dsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_46_batch_normalization_48_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp?
Fsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_46_batch_normalization_48_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1?
5sequential_46/batch_normalization_48/FusedBatchNormV3FusedBatchNormV3(sequential_46/conv2d_140/Conv2D:output:0;sequential_46/batch_normalization_48/ReadVariableOp:value:0=sequential_46/batch_normalization_48/ReadVariableOp_1:value:0Lsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????8@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_46/batch_normalization_48/FusedBatchNormV3?
 sequential_46/activation_36/ReluRelu9sequential_46/batch_normalization_48/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????8@2"
 sequential_46/activation_36/Relu?
'sequential_46/max_pooling2d_114/MaxPoolMaxPool.sequential_46/activation_36/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2)
'sequential_46/max_pooling2d_114/MaxPool?
!sequential_46/dropout_37/IdentityIdentity0sequential_46/max_pooling2d_114/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!sequential_46/dropout_37/Identity?
sequential_46/flatten_44/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
sequential_46/flatten_44/Const?
 sequential_46/flatten_44/ReshapeReshape*sequential_46/dropout_37/Identity:output:0'sequential_46/flatten_44/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_46/flatten_44/Reshape?
-sequential_46/dense_106/MatMul/ReadVariableOpReadVariableOp6sequential_46_dense_106_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_46/dense_106/MatMul/ReadVariableOp?
sequential_46/dense_106/MatMulMatMul)sequential_46/flatten_44/Reshape:output:05sequential_46/dense_106/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_46/dense_106/MatMul?
=sequential_46/batch_normalization_49/batchnorm/ReadVariableOpReadVariableOpFsequential_46_batch_normalization_49_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_46/batch_normalization_49/batchnorm/ReadVariableOp?
4sequential_46/batch_normalization_49/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_46/batch_normalization_49/batchnorm/add/y?
2sequential_46/batch_normalization_49/batchnorm/addAddV2Esequential_46/batch_normalization_49/batchnorm/ReadVariableOp:value:0=sequential_46/batch_normalization_49/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_46/batch_normalization_49/batchnorm/add?
4sequential_46/batch_normalization_49/batchnorm/RsqrtRsqrt6sequential_46/batch_normalization_49/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_46/batch_normalization_49/batchnorm/Rsqrt?
Asequential_46/batch_normalization_49/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_46_batch_normalization_49_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_46/batch_normalization_49/batchnorm/mul/ReadVariableOp?
2sequential_46/batch_normalization_49/batchnorm/mulMul8sequential_46/batch_normalization_49/batchnorm/Rsqrt:y:0Isequential_46/batch_normalization_49/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_46/batch_normalization_49/batchnorm/mul?
4sequential_46/batch_normalization_49/batchnorm/mul_1Mul(sequential_46/dense_106/MatMul:product:06sequential_46/batch_normalization_49/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_46/batch_normalization_49/batchnorm/mul_1?
?sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_46_batch_normalization_49_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_1?
4sequential_46/batch_normalization_49/batchnorm/mul_2MulGsequential_46/batch_normalization_49/batchnorm/ReadVariableOp_1:value:06sequential_46/batch_normalization_49/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_46/batch_normalization_49/batchnorm/mul_2?
?sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_46_batch_normalization_49_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_2?
2sequential_46/batch_normalization_49/batchnorm/subSubGsequential_46/batch_normalization_49/batchnorm/ReadVariableOp_2:value:08sequential_46/batch_normalization_49/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_46/batch_normalization_49/batchnorm/sub?
4sequential_46/batch_normalization_49/batchnorm/add_1AddV28sequential_46/batch_normalization_49/batchnorm/mul_1:z:06sequential_46/batch_normalization_49/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_46/batch_normalization_49/batchnorm/add_1?
 sequential_46/activation_37/ReluRelu8sequential_46/batch_normalization_49/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_46/activation_37/Relu?
-sequential_46/dense_107/MatMul/ReadVariableOpReadVariableOp6sequential_46_dense_107_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_46/dense_107/MatMul/ReadVariableOp?
sequential_46/dense_107/MatMulMatMul.sequential_46/activation_37/Relu:activations:05sequential_46/dense_107/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_46/dense_107/MatMul?
=sequential_46/batch_normalization_50/batchnorm/ReadVariableOpReadVariableOpFsequential_46_batch_normalization_50_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_46/batch_normalization_50/batchnorm/ReadVariableOp?
4sequential_46/batch_normalization_50/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_46/batch_normalization_50/batchnorm/add/y?
2sequential_46/batch_normalization_50/batchnorm/addAddV2Esequential_46/batch_normalization_50/batchnorm/ReadVariableOp:value:0=sequential_46/batch_normalization_50/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_46/batch_normalization_50/batchnorm/add?
4sequential_46/batch_normalization_50/batchnorm/RsqrtRsqrt6sequential_46/batch_normalization_50/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_46/batch_normalization_50/batchnorm/Rsqrt?
Asequential_46/batch_normalization_50/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_46_batch_normalization_50_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_46/batch_normalization_50/batchnorm/mul/ReadVariableOp?
2sequential_46/batch_normalization_50/batchnorm/mulMul8sequential_46/batch_normalization_50/batchnorm/Rsqrt:y:0Isequential_46/batch_normalization_50/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_46/batch_normalization_50/batchnorm/mul?
4sequential_46/batch_normalization_50/batchnorm/mul_1Mul(sequential_46/dense_107/MatMul:product:06sequential_46/batch_normalization_50/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_46/batch_normalization_50/batchnorm/mul_1?
?sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_46_batch_normalization_50_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_1?
4sequential_46/batch_normalization_50/batchnorm/mul_2MulGsequential_46/batch_normalization_50/batchnorm/ReadVariableOp_1:value:06sequential_46/batch_normalization_50/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_46/batch_normalization_50/batchnorm/mul_2?
?sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_46_batch_normalization_50_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_2?
2sequential_46/batch_normalization_50/batchnorm/subSubGsequential_46/batch_normalization_50/batchnorm/ReadVariableOp_2:value:08sequential_46/batch_normalization_50/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_46/batch_normalization_50/batchnorm/sub?
4sequential_46/batch_normalization_50/batchnorm/add_1AddV28sequential_46/batch_normalization_50/batchnorm/mul_1:z:06sequential_46/batch_normalization_50/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_46/batch_normalization_50/batchnorm/add_1?
 sequential_46/activation_38/ReluRelu8sequential_46/batch_normalization_50/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_46/activation_38/Relu?
-sequential_46/dense_108/MatMul/ReadVariableOpReadVariableOp6sequential_46_dense_108_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02/
-sequential_46/dense_108/MatMul/ReadVariableOp?
sequential_46/dense_108/MatMulMatMul.sequential_46/activation_38/Relu:activations:05sequential_46/dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2 
sequential_46/dense_108/MatMul?
=sequential_46/batch_normalization_51/batchnorm/ReadVariableOpReadVariableOpFsequential_46_batch_normalization_51_batchnorm_readvariableop_resource*
_output_shapes
:T*
dtype02?
=sequential_46/batch_normalization_51/batchnorm/ReadVariableOp?
4sequential_46/batch_normalization_51/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_46/batch_normalization_51/batchnorm/add/y?
2sequential_46/batch_normalization_51/batchnorm/addAddV2Esequential_46/batch_normalization_51/batchnorm/ReadVariableOp:value:0=sequential_46/batch_normalization_51/batchnorm/add/y:output:0*
T0*
_output_shapes
:T24
2sequential_46/batch_normalization_51/batchnorm/add?
4sequential_46/batch_normalization_51/batchnorm/RsqrtRsqrt6sequential_46/batch_normalization_51/batchnorm/add:z:0*
T0*
_output_shapes
:T26
4sequential_46/batch_normalization_51/batchnorm/Rsqrt?
Asequential_46/batch_normalization_51/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_46_batch_normalization_51_batchnorm_mul_readvariableop_resource*
_output_shapes
:T*
dtype02C
Asequential_46/batch_normalization_51/batchnorm/mul/ReadVariableOp?
2sequential_46/batch_normalization_51/batchnorm/mulMul8sequential_46/batch_normalization_51/batchnorm/Rsqrt:y:0Isequential_46/batch_normalization_51/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T24
2sequential_46/batch_normalization_51/batchnorm/mul?
4sequential_46/batch_normalization_51/batchnorm/mul_1Mul(sequential_46/dense_108/MatMul:product:06sequential_46/batch_normalization_51/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????T26
4sequential_46/batch_normalization_51/batchnorm/mul_1?
?sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_46_batch_normalization_51_batchnorm_readvariableop_1_resource*
_output_shapes
:T*
dtype02A
?sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_1?
4sequential_46/batch_normalization_51/batchnorm/mul_2MulGsequential_46/batch_normalization_51/batchnorm/ReadVariableOp_1:value:06sequential_46/batch_normalization_51/batchnorm/mul:z:0*
T0*
_output_shapes
:T26
4sequential_46/batch_normalization_51/batchnorm/mul_2?
?sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_46_batch_normalization_51_batchnorm_readvariableop_2_resource*
_output_shapes
:T*
dtype02A
?sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_2?
2sequential_46/batch_normalization_51/batchnorm/subSubGsequential_46/batch_normalization_51/batchnorm/ReadVariableOp_2:value:08sequential_46/batch_normalization_51/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T24
2sequential_46/batch_normalization_51/batchnorm/sub?
4sequential_46/batch_normalization_51/batchnorm/add_1AddV28sequential_46/batch_normalization_51/batchnorm/mul_1:z:06sequential_46/batch_normalization_51/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????T26
4sequential_46/batch_normalization_51/batchnorm/add_1?
 sequential_46/activation_39/ReluRelu8sequential_46/batch_normalization_51/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????T2"
 sequential_46/activation_39/Relu?
!sequential_46/dropout_38/IdentityIdentity.sequential_46/activation_39/Relu:activations:0*
T0*'
_output_shapes
:?????????T2#
!sequential_46/dropout_38/Identity?
-sequential_46/dense_109/MatMul/ReadVariableOpReadVariableOp6sequential_46_dense_109_matmul_readvariableop_resource*
_output_shapes

:T*
dtype02/
-sequential_46/dense_109/MatMul/ReadVariableOp?
sequential_46/dense_109/MatMulMatMul*sequential_46/dropout_38/Identity:output:05sequential_46/dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_46/dense_109/MatMul?
.sequential_46/dense_109/BiasAdd/ReadVariableOpReadVariableOp7sequential_46_dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_46/dense_109/BiasAdd/ReadVariableOp?
sequential_46/dense_109/BiasAddBiasAdd(sequential_46/dense_109/MatMul:product:06sequential_46/dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_46/dense_109/BiasAdd?
sequential_46/dense_109/SoftmaxSoftmax(sequential_46/dense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2!
sequential_46/dense_109/Softmax?
IdentityIdentity)sequential_46/dense_109/Softmax:softmax:0E^sequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOpG^sequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_14^sequential_46/batch_normalization_47/ReadVariableOp6^sequential_46/batch_normalization_47/ReadVariableOp_1E^sequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOpG^sequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp_14^sequential_46/batch_normalization_48/ReadVariableOp6^sequential_46/batch_normalization_48/ReadVariableOp_1>^sequential_46/batch_normalization_49/batchnorm/ReadVariableOp@^sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_1@^sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_2B^sequential_46/batch_normalization_49/batchnorm/mul/ReadVariableOp>^sequential_46/batch_normalization_50/batchnorm/ReadVariableOp@^sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_1@^sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_2B^sequential_46/batch_normalization_50/batchnorm/mul/ReadVariableOp>^sequential_46/batch_normalization_51/batchnorm/ReadVariableOp@^sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_1@^sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_2B^sequential_46/batch_normalization_51/batchnorm/mul/ReadVariableOp0^sequential_46/conv2d_137/BiasAdd/ReadVariableOp/^sequential_46/conv2d_137/Conv2D/ReadVariableOp/^sequential_46/conv2d_138/Conv2D/ReadVariableOp0^sequential_46/conv2d_139/BiasAdd/ReadVariableOp/^sequential_46/conv2d_139/Conv2D/ReadVariableOp/^sequential_46/conv2d_140/Conv2D/ReadVariableOp.^sequential_46/dense_106/MatMul/ReadVariableOp.^sequential_46/dense_107/MatMul/ReadVariableOp.^sequential_46/dense_108/MatMul/ReadVariableOp/^sequential_46/dense_109/BiasAdd/ReadVariableOp.^sequential_46/dense_109/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Dsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOpDsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp2?
Fsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1Fsequential_46/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_12j
3sequential_46/batch_normalization_47/ReadVariableOp3sequential_46/batch_normalization_47/ReadVariableOp2n
5sequential_46/batch_normalization_47/ReadVariableOp_15sequential_46/batch_normalization_47/ReadVariableOp_12?
Dsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOpDsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp2?
Fsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp_1Fsequential_46/batch_normalization_48/FusedBatchNormV3/ReadVariableOp_12j
3sequential_46/batch_normalization_48/ReadVariableOp3sequential_46/batch_normalization_48/ReadVariableOp2n
5sequential_46/batch_normalization_48/ReadVariableOp_15sequential_46/batch_normalization_48/ReadVariableOp_12~
=sequential_46/batch_normalization_49/batchnorm/ReadVariableOp=sequential_46/batch_normalization_49/batchnorm/ReadVariableOp2?
?sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_1?sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_12?
?sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_2?sequential_46/batch_normalization_49/batchnorm/ReadVariableOp_22?
Asequential_46/batch_normalization_49/batchnorm/mul/ReadVariableOpAsequential_46/batch_normalization_49/batchnorm/mul/ReadVariableOp2~
=sequential_46/batch_normalization_50/batchnorm/ReadVariableOp=sequential_46/batch_normalization_50/batchnorm/ReadVariableOp2?
?sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_1?sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_12?
?sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_2?sequential_46/batch_normalization_50/batchnorm/ReadVariableOp_22?
Asequential_46/batch_normalization_50/batchnorm/mul/ReadVariableOpAsequential_46/batch_normalization_50/batchnorm/mul/ReadVariableOp2~
=sequential_46/batch_normalization_51/batchnorm/ReadVariableOp=sequential_46/batch_normalization_51/batchnorm/ReadVariableOp2?
?sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_1?sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_12?
?sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_2?sequential_46/batch_normalization_51/batchnorm/ReadVariableOp_22?
Asequential_46/batch_normalization_51/batchnorm/mul/ReadVariableOpAsequential_46/batch_normalization_51/batchnorm/mul/ReadVariableOp2b
/sequential_46/conv2d_137/BiasAdd/ReadVariableOp/sequential_46/conv2d_137/BiasAdd/ReadVariableOp2`
.sequential_46/conv2d_137/Conv2D/ReadVariableOp.sequential_46/conv2d_137/Conv2D/ReadVariableOp2`
.sequential_46/conv2d_138/Conv2D/ReadVariableOp.sequential_46/conv2d_138/Conv2D/ReadVariableOp2b
/sequential_46/conv2d_139/BiasAdd/ReadVariableOp/sequential_46/conv2d_139/BiasAdd/ReadVariableOp2`
.sequential_46/conv2d_139/Conv2D/ReadVariableOp.sequential_46/conv2d_139/Conv2D/ReadVariableOp2`
.sequential_46/conv2d_140/Conv2D/ReadVariableOp.sequential_46/conv2d_140/Conv2D/ReadVariableOp2^
-sequential_46/dense_106/MatMul/ReadVariableOp-sequential_46/dense_106/MatMul/ReadVariableOp2^
-sequential_46/dense_107/MatMul/ReadVariableOp-sequential_46/dense_107/MatMul/ReadVariableOp2^
-sequential_46/dense_108/MatMul/ReadVariableOp-sequential_46/dense_108/MatMul/ReadVariableOp2`
.sequential_46/dense_109/BiasAdd/ReadVariableOp.sequential_46/dense_109/BiasAdd/ReadVariableOp2^
-sequential_46/dense_109/MatMul/ReadVariableOp-sequential_46/dense_109/MatMul/ReadVariableOp:b ^
0
_output_shapes
:??????????
*
_user_specified_nameconv2d_137_input
?
?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821364

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
?
?
8__inference_batch_normalization_51_layer_call_fn_1821647

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_18191652
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
8__inference_batch_normalization_50_layer_call_fn_1821556

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
GPU 2J 8? *\
fWRU
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_18190632
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
?
?
/__inference_sequential_46_layer_call_fn_1820219
conv2d_137_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_137_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8? *S
fNRL
J__inference_sequential_46_layer_call_and_return_conditional_losses_18200872
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
_user_specified_nameconv2d_137_input
?
?
F__inference_dense_106_layer_call_and_return_conditional_losses_1819477

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
?
?
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_1821472

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
?
?
+__inference_dense_109_layer_call_fn_1821760

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
GPU 2J 8? *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_18195692
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
conv2d_137_inputB
"serving_default_conv2d_137_input:0??????????=
	dense_1090
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
_tf_keras_sequential??{"name": "sequential_46", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_46", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_137_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_137", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_138", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_47", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_113", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_139", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_140", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_48", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_114", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_37", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_44", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_106", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_49", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_107", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_50", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_108", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_51", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_39", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dropout", "config": {"name": "dropout_38", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 63, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 129, 26, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 129, 26, 1]}, "float32", "conv2d_137_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_46", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_137_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_137", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_138", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_47", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 12}, {"class_name": "Activation", "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_113", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14}, {"class_name": "Dropout", "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "conv2d_139", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "Conv2D", "config": {"name": "conv2d_140", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_48", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27}, {"class_name": "Activation", "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 28}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_114", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 29}, {"class_name": "Dropout", "config": {"name": "dropout_37", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 30}, {"class_name": "Flatten", "config": {"name": "flatten_44", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 31}, {"class_name": "Dense", "config": {"name": "dense_106", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 34}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_49", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 39}, {"class_name": "Activation", "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 40}, {"class_name": "Dense", "config": {"name": "dense_107", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_50", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 45}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 48}, {"class_name": "Activation", "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 49}, {"class_name": "Dense", "config": {"name": "dense_108", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 52}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_51", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 54}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 56}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 57}, {"class_name": "Activation", "config": {"name": "activation_39", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 58}, {"class_name": "Dropout", "config": {"name": "dropout_38", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 59}, {"class_name": "Dense", "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 62}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 65}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-08, "centered": false}}}}
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
{"name": "conv2d_137", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_137", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 129, 26, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 129, 26, 1]}}
?


%kernel
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_138", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_138", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 125, 22, 32]}}
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
_tf_keras_layer?{"name": "batch_normalization_47", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_47", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 67}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 121, 18, 32]}}
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 13}
?
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_113", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_113", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 68}}
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_36", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 15}
?

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_139", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_139", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0005000000237487257}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 69}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 9, 32]}}
?


Ekernel
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_140", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_140", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 70}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 58, 7, 64]}}
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
_tf_keras_layer?{"name": "batch_normalization_48", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_48", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 71}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 5, 64]}}
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 28}
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_114", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_114", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 72}}
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_37", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_37", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 30}
?
_	variables
`trainable_variables
aregularization_losses
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_44", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 73}}
?

ckernel
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_106", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_106", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3584}}, "shared_object_id": 74}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3584]}}
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
_tf_keras_layer?{"name": "batch_normalization_49", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_49", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 40}
?

ukernel
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_107", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_107", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 76}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
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
_tf_keras_layer?{"name": "batch_normalization_50", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_50", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 45}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 47}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 48, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}, "shared_object_id": 77}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 49}
?
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_108", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_108", "trainable": true, "dtype": "float32", "units": 84, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 78}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
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
_tf_keras_layer?{"name": "batch_normalization_51", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_51", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 53}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 54}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 56}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 57, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 84}}, "shared_object_id": 79}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_39", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 58}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_38", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_38", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 59}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_109", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 62, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 84}}, "shared_object_id": 80}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
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
+:) 2conv2d_137/kernel
: 2conv2d_137/bias
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
+:)  2conv2d_138/kernel
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
*:( 2batch_normalization_47/gamma
):' 2batch_normalization_47/beta
2:0  (2"batch_normalization_47/moving_mean
6:4  (2&batch_normalization_47/moving_variance
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
+:) @2conv2d_139/kernel
:@2conv2d_139/bias
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
+:)@@2conv2d_140/kernel
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
*:(@2batch_normalization_48/gamma
):'@2batch_normalization_48/beta
2:0@ (2"batch_normalization_48/moving_mean
6:4@ (2&batch_normalization_48/moving_variance
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
$:"
??2dense_106/kernel
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
+:)?2batch_normalization_49/gamma
*:(?2batch_normalization_49/beta
3:1? (2"batch_normalization_49/moving_mean
7:5? (2&batch_normalization_49/moving_variance
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
$:"
??2dense_107/kernel
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
+:)?2batch_normalization_50/gamma
*:(?2batch_normalization_50/beta
3:1? (2"batch_normalization_50/moving_mean
7:5? (2&batch_normalization_50/moving_variance
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
#:!	?T2dense_108/kernel
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
*:(T2batch_normalization_51/gamma
):'T2batch_normalization_51/beta
2:0T (2"batch_normalization_51/moving_mean
6:4T (2&batch_normalization_51/moving_variance
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
": T2dense_109/kernel
:2dense_109/bias
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
5:3 2RMSprop/conv2d_137/kernel/rms
':% 2RMSprop/conv2d_137/bias/rms
5:3  2RMSprop/conv2d_138/kernel/rms
4:2 2(RMSprop/batch_normalization_47/gamma/rms
3:1 2'RMSprop/batch_normalization_47/beta/rms
5:3 @2RMSprop/conv2d_139/kernel/rms
':%@2RMSprop/conv2d_139/bias/rms
5:3@@2RMSprop/conv2d_140/kernel/rms
4:2@2(RMSprop/batch_normalization_48/gamma/rms
3:1@2'RMSprop/batch_normalization_48/beta/rms
.:,
??2RMSprop/dense_106/kernel/rms
5:3?2(RMSprop/batch_normalization_49/gamma/rms
4:2?2'RMSprop/batch_normalization_49/beta/rms
.:,
??2RMSprop/dense_107/kernel/rms
5:3?2(RMSprop/batch_normalization_50/gamma/rms
4:2?2'RMSprop/batch_normalization_50/beta/rms
-:+	?T2RMSprop/dense_108/kernel/rms
4:2T2(RMSprop/batch_normalization_51/gamma/rms
3:1T2'RMSprop/batch_normalization_51/beta/rms
,:*T2RMSprop/dense_109/kernel/rms
&:$2RMSprop/dense_109/bias/rms
?2?
/__inference_sequential_46_layer_call_fn_1819653
/__inference_sequential_46_layer_call_fn_1820577
/__inference_sequential_46_layer_call_fn_1820644
/__inference_sequential_46_layer_call_fn_1820219?
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
"__inference__wrapped_model_1818541?
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
conv2d_137_input??????????
?2?
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820784
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820987
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820321
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820423?
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
,__inference_conv2d_137_layer_call_fn_1821002?
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
G__inference_conv2d_137_layer_call_and_return_conditional_losses_1821019?
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
,__inference_conv2d_138_layer_call_fn_1821026?
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
G__inference_conv2d_138_layer_call_and_return_conditional_losses_1821033?
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
8__inference_batch_normalization_47_layer_call_fn_1821046
8__inference_batch_normalization_47_layer_call_fn_1821059
8__inference_batch_normalization_47_layer_call_fn_1821072
8__inference_batch_normalization_47_layer_call_fn_1821085?
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
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821103
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821121
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821139
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821157?
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
/__inference_activation_35_layer_call_fn_1821162?
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
J__inference_activation_35_layer_call_and_return_conditional_losses_1821167?
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
3__inference_max_pooling2d_113_layer_call_fn_1818679?
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
N__inference_max_pooling2d_113_layer_call_and_return_conditional_losses_1818673?
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
,__inference_dropout_36_layer_call_fn_1821172
,__inference_dropout_36_layer_call_fn_1821177?
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
G__inference_dropout_36_layer_call_and_return_conditional_losses_1821182
G__inference_dropout_36_layer_call_and_return_conditional_losses_1821194?
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
,__inference_conv2d_139_layer_call_fn_1821209?
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
G__inference_conv2d_139_layer_call_and_return_conditional_losses_1821226?
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
,__inference_conv2d_140_layer_call_fn_1821233?
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
G__inference_conv2d_140_layer_call_and_return_conditional_losses_1821240?
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
8__inference_batch_normalization_48_layer_call_fn_1821253
8__inference_batch_normalization_48_layer_call_fn_1821266
8__inference_batch_normalization_48_layer_call_fn_1821279
8__inference_batch_normalization_48_layer_call_fn_1821292?
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
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821310
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821328
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821346
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821364?
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
/__inference_activation_36_layer_call_fn_1821369?
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
J__inference_activation_36_layer_call_and_return_conditional_losses_1821374?
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
3__inference_max_pooling2d_114_layer_call_fn_1818817?
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
N__inference_max_pooling2d_114_layer_call_and_return_conditional_losses_1818811?
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
,__inference_dropout_37_layer_call_fn_1821379
,__inference_dropout_37_layer_call_fn_1821384?
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
G__inference_dropout_37_layer_call_and_return_conditional_losses_1821389
G__inference_dropout_37_layer_call_and_return_conditional_losses_1821401?
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
,__inference_flatten_44_layer_call_fn_1821406?
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
G__inference_flatten_44_layer_call_and_return_conditional_losses_1821412?
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
+__inference_dense_106_layer_call_fn_1821419?
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
F__inference_dense_106_layer_call_and_return_conditional_losses_1821426?
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
8__inference_batch_normalization_49_layer_call_fn_1821439
8__inference_batch_normalization_49_layer_call_fn_1821452?
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
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_1821472
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_1821506?
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
/__inference_activation_37_layer_call_fn_1821511?
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
J__inference_activation_37_layer_call_and_return_conditional_losses_1821516?
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
+__inference_dense_107_layer_call_fn_1821523?
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
F__inference_dense_107_layer_call_and_return_conditional_losses_1821530?
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
8__inference_batch_normalization_50_layer_call_fn_1821543
8__inference_batch_normalization_50_layer_call_fn_1821556?
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
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_1821576
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_1821610?
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
/__inference_activation_38_layer_call_fn_1821615?
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
J__inference_activation_38_layer_call_and_return_conditional_losses_1821620?
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
+__inference_dense_108_layer_call_fn_1821627?
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
F__inference_dense_108_layer_call_and_return_conditional_losses_1821634?
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
8__inference_batch_normalization_51_layer_call_fn_1821647
8__inference_batch_normalization_51_layer_call_fn_1821660?
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
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_1821680
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_1821714?
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
/__inference_activation_39_layer_call_fn_1821719?
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
J__inference_activation_39_layer_call_and_return_conditional_losses_1821724?
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
,__inference_dropout_38_layer_call_fn_1821729
,__inference_dropout_38_layer_call_fn_1821734?
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
G__inference_dropout_38_layer_call_and_return_conditional_losses_1821739
G__inference_dropout_38_layer_call_and_return_conditional_losses_1821751?
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
+__inference_dense_109_layer_call_fn_1821760?
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
F__inference_dense_109_layer_call_and_return_conditional_losses_1821771?
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
__inference_loss_fn_0_1821782?
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
__inference_loss_fn_1_1821793?
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
%__inference_signature_wrapper_1820510conv2d_137_input"?
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
"__inference__wrapped_model_1818541?& %+,-.?@EKLMNclikju~{}|???????B??
8?5
3?0
conv2d_137_input??????????
? "5?2
0
	dense_109#? 
	dense_109??????????
J__inference_activation_35_layer_call_and_return_conditional_losses_1821167h7?4
-?*
(?%
inputs?????????y 
? "-?*
#? 
0?????????y 
? ?
/__inference_activation_35_layer_call_fn_1821162[7?4
-?*
(?%
inputs?????????y 
? " ??????????y ?
J__inference_activation_36_layer_call_and_return_conditional_losses_1821374h7?4
-?*
(?%
inputs?????????8@
? "-?*
#? 
0?????????8@
? ?
/__inference_activation_36_layer_call_fn_1821369[7?4
-?*
(?%
inputs?????????8@
? " ??????????8@?
J__inference_activation_37_layer_call_and_return_conditional_losses_1821516Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_37_layer_call_fn_1821511M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_activation_38_layer_call_and_return_conditional_losses_1821620Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_38_layer_call_fn_1821615M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_activation_39_layer_call_and_return_conditional_losses_1821724X/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????T
? ~
/__inference_activation_39_layer_call_fn_1821719K/?,
%?"
 ?
inputs?????????T
? "??????????T?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821103?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821121?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821139r+,-.;?8
1?.
(?%
inputs?????????y 
p 
? "-?*
#? 
0?????????y 
? ?
S__inference_batch_normalization_47_layer_call_and_return_conditional_losses_1821157r+,-.;?8
1?.
(?%
inputs?????????y 
p
? "-?*
#? 
0?????????y 
? ?
8__inference_batch_normalization_47_layer_call_fn_1821046?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_47_layer_call_fn_1821059?+,-.M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_47_layer_call_fn_1821072e+,-.;?8
1?.
(?%
inputs?????????y 
p 
? " ??????????y ?
8__inference_batch_normalization_47_layer_call_fn_1821085e+,-.;?8
1?.
(?%
inputs?????????y 
p
? " ??????????y ?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821310?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821328?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821346rKLMN;?8
1?.
(?%
inputs?????????8@
p 
? "-?*
#? 
0?????????8@
? ?
S__inference_batch_normalization_48_layer_call_and_return_conditional_losses_1821364rKLMN;?8
1?.
(?%
inputs?????????8@
p
? "-?*
#? 
0?????????8@
? ?
8__inference_batch_normalization_48_layer_call_fn_1821253?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_48_layer_call_fn_1821266?KLMNM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_48_layer_call_fn_1821279eKLMN;?8
1?.
(?%
inputs?????????8@
p 
? " ??????????8@?
8__inference_batch_normalization_48_layer_call_fn_1821292eKLMN;?8
1?.
(?%
inputs?????????8@
p
? " ??????????8@?
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_1821472dlikj4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_49_layer_call_and_return_conditional_losses_1821506dklij4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_49_layer_call_fn_1821439Wlikj4?1
*?'
!?
inputs??????????
p 
? "????????????
8__inference_batch_normalization_49_layer_call_fn_1821452Wklij4?1
*?'
!?
inputs??????????
p
? "????????????
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_1821576d~{}|4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_50_layer_call_and_return_conditional_losses_1821610d}~{|4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_50_layer_call_fn_1821543W~{}|4?1
*?'
!?
inputs??????????
p 
? "????????????
8__inference_batch_normalization_50_layer_call_fn_1821556W}~{|4?1
*?'
!?
inputs??????????
p
? "????????????
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_1821680f????3?0
)?&
 ?
inputs?????????T
p 
? "%?"
?
0?????????T
? ?
S__inference_batch_normalization_51_layer_call_and_return_conditional_losses_1821714f????3?0
)?&
 ?
inputs?????????T
p
? "%?"
?
0?????????T
? ?
8__inference_batch_normalization_51_layer_call_fn_1821647Y????3?0
)?&
 ?
inputs?????????T
p 
? "??????????T?
8__inference_batch_normalization_51_layer_call_fn_1821660Y????3?0
)?&
 ?
inputs?????????T
p
? "??????????T?
G__inference_conv2d_137_layer_call_and_return_conditional_losses_1821019m 8?5
.?+
)?&
inputs??????????
? "-?*
#? 
0?????????} 
? ?
,__inference_conv2d_137_layer_call_fn_1821002` 8?5
.?+
)?&
inputs??????????
? " ??????????} ?
G__inference_conv2d_138_layer_call_and_return_conditional_losses_1821033k%7?4
-?*
(?%
inputs?????????} 
? "-?*
#? 
0?????????y 
? ?
,__inference_conv2d_138_layer_call_fn_1821026^%7?4
-?*
(?%
inputs?????????} 
? " ??????????y ?
G__inference_conv2d_139_layer_call_and_return_conditional_losses_1821226l?@7?4
-?*
(?%
inputs?????????<	 
? "-?*
#? 
0?????????:@
? ?
,__inference_conv2d_139_layer_call_fn_1821209_?@7?4
-?*
(?%
inputs?????????<	 
? " ??????????:@?
G__inference_conv2d_140_layer_call_and_return_conditional_losses_1821240kE7?4
-?*
(?%
inputs?????????:@
? "-?*
#? 
0?????????8@
? ?
,__inference_conv2d_140_layer_call_fn_1821233^E7?4
-?*
(?%
inputs?????????:@
? " ??????????8@?
F__inference_dense_106_layer_call_and_return_conditional_losses_1821426]c0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
+__inference_dense_106_layer_call_fn_1821419Pc0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_107_layer_call_and_return_conditional_losses_1821530]u0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
+__inference_dense_107_layer_call_fn_1821523Pu0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_108_layer_call_and_return_conditional_losses_1821634]?0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????T
? 
+__inference_dense_108_layer_call_fn_1821627P?0?-
&?#
!?
inputs??????????
? "??????????T?
F__inference_dense_109_layer_call_and_return_conditional_losses_1821771^??/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????
? ?
+__inference_dense_109_layer_call_fn_1821760Q??/?,
%?"
 ?
inputs?????????T
? "???????????
G__inference_dropout_36_layer_call_and_return_conditional_losses_1821182l;?8
1?.
(?%
inputs?????????<	 
p 
? "-?*
#? 
0?????????<	 
? ?
G__inference_dropout_36_layer_call_and_return_conditional_losses_1821194l;?8
1?.
(?%
inputs?????????<	 
p
? "-?*
#? 
0?????????<	 
? ?
,__inference_dropout_36_layer_call_fn_1821172_;?8
1?.
(?%
inputs?????????<	 
p 
? " ??????????<	 ?
,__inference_dropout_36_layer_call_fn_1821177_;?8
1?.
(?%
inputs?????????<	 
p
? " ??????????<	 ?
G__inference_dropout_37_layer_call_and_return_conditional_losses_1821389l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
G__inference_dropout_37_layer_call_and_return_conditional_losses_1821401l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
,__inference_dropout_37_layer_call_fn_1821379_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
,__inference_dropout_37_layer_call_fn_1821384_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
G__inference_dropout_38_layer_call_and_return_conditional_losses_1821739\3?0
)?&
 ?
inputs?????????T
p 
? "%?"
?
0?????????T
? ?
G__inference_dropout_38_layer_call_and_return_conditional_losses_1821751\3?0
)?&
 ?
inputs?????????T
p
? "%?"
?
0?????????T
? 
,__inference_dropout_38_layer_call_fn_1821729O3?0
)?&
 ?
inputs?????????T
p 
? "??????????T
,__inference_dropout_38_layer_call_fn_1821734O3?0
)?&
 ?
inputs?????????T
p
? "??????????T?
G__inference_flatten_44_layer_call_and_return_conditional_losses_1821412a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
,__inference_flatten_44_layer_call_fn_1821406T7?4
-?*
(?%
inputs?????????@
? "???????????<
__inference_loss_fn_0_1821782?

? 
? "? <
__inference_loss_fn_1_1821793??

? 
? "? ?
N__inference_max_pooling2d_113_layer_call_and_return_conditional_losses_1818673?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_113_layer_call_fn_1818679?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_114_layer_call_and_return_conditional_losses_1818811?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_114_layer_call_fn_1818817?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820321?& %+,-.?@EKLMNclikju~{}|???????J?G
@?=
3?0
conv2d_137_input??????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820423?& %+,-.?@EKLMNckliju}~{|???????J?G
@?=
3?0
conv2d_137_input??????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820784?& %+,-.?@EKLMNclikju~{}|???????@?=
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_1820987?& %+,-.?@EKLMNckliju}~{|???????@?=
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
/__inference_sequential_46_layer_call_fn_1819653?& %+,-.?@EKLMNclikju~{}|???????J?G
@?=
3?0
conv2d_137_input??????????
p 

 
? "???????????
/__inference_sequential_46_layer_call_fn_1820219?& %+,-.?@EKLMNckliju}~{|???????J?G
@?=
3?0
conv2d_137_input??????????
p

 
? "???????????
/__inference_sequential_46_layer_call_fn_1820577?& %+,-.?@EKLMNclikju~{}|???????@?=
6?3
)?&
inputs??????????
p 

 
? "???????????
/__inference_sequential_46_layer_call_fn_1820644?& %+,-.?@EKLMNckliju}~{|???????@?=
6?3
)?&
inputs??????????
p

 
? "???????????
%__inference_signature_wrapper_1820510?& %+,-.?@EKLMNclikju~{}|???????V?S
? 
L?I
G
conv2d_137_input3?0
conv2d_137_input??????????"5?2
0
	dense_109#? 
	dense_109?????????