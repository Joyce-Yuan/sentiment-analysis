Ø¬
ë
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22v2.9.1-132-g18960c44ad38ýÑ
Ä
6Adam/transformer_block_9/layer_normalization_19/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_9/layer_normalization_19/beta/v
½
JAdam/transformer_block_9/layer_normalization_19/beta/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_9/layer_normalization_19/beta/v*
_output_shapes
: *
dtype0
Æ
7Adam/transformer_block_9/layer_normalization_19/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/transformer_block_9/layer_normalization_19/gamma/v
¿
KAdam/transformer_block_9/layer_normalization_19/gamma/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_block_9/layer_normalization_19/gamma/v*
_output_shapes
: *
dtype0
Ä
6Adam/transformer_block_9/layer_normalization_18/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_9/layer_normalization_18/beta/v
½
JAdam/transformer_block_9/layer_normalization_18/beta/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_9/layer_normalization_18/beta/v*
_output_shapes
: *
dtype0
Æ
7Adam/transformer_block_9/layer_normalization_18/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/transformer_block_9/layer_normalization_18/gamma/v
¿
KAdam/transformer_block_9/layer_normalization_18/gamma/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_block_9/layer_normalization_18/gamma/v*
_output_shapes
: *
dtype0

Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
: *
dtype0

Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È *'
shared_nameAdam/dense_37/kernel/v

*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes
:	È *
dtype0

Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*%
shared_nameAdam/dense_36/bias/v
z
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes	
:È*
dtype0

Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È*'
shared_nameAdam/dense_36/kernel/v

*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v*
_output_shapes
:	 È*
dtype0
æ
GAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *X
shared_nameIGAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/v
ß
[Adam/transformer_block_9/multi_head_attention_9/attention_output/bias/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/v*
_output_shapes
: *
dtype0
ò
IAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *Z
shared_nameKIAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/v
ë
]Adam/transformer_block_9/multi_head_attention_9/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/v*"
_output_shapes
:  *
dtype0
Ô
<Adam/transformer_block_9/multi_head_attention_9/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_9/multi_head_attention_9/value/bias/v
Í
PAdam/transformer_block_9/multi_head_attention_9/value/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_9/multi_head_attention_9/value/bias/v*
_output_shapes

: *
dtype0
Ü
>Adam/transformer_block_9/multi_head_attention_9/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_9/multi_head_attention_9/value/kernel/v
Õ
RAdam/transformer_block_9/multi_head_attention_9/value/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_9/multi_head_attention_9/value/kernel/v*"
_output_shapes
:  *
dtype0
Ð
:Adam/transformer_block_9/multi_head_attention_9/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *K
shared_name<:Adam/transformer_block_9/multi_head_attention_9/key/bias/v
É
NAdam/transformer_block_9/multi_head_attention_9/key/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_9/multi_head_attention_9/key/bias/v*
_output_shapes

: *
dtype0
Ø
<Adam/transformer_block_9/multi_head_attention_9/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *M
shared_name><Adam/transformer_block_9/multi_head_attention_9/key/kernel/v
Ñ
PAdam/transformer_block_9/multi_head_attention_9/key/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_9/multi_head_attention_9/key/kernel/v*"
_output_shapes
:  *
dtype0
Ô
<Adam/transformer_block_9/multi_head_attention_9/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_9/multi_head_attention_9/query/bias/v
Í
PAdam/transformer_block_9/multi_head_attention_9/query/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_9/multi_head_attention_9/query/bias/v*
_output_shapes

: *
dtype0
Ü
>Adam/transformer_block_9/multi_head_attention_9/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_9/multi_head_attention_9/query/kernel/v
Õ
RAdam/transformer_block_9/multi_head_attention_9/query/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_9/multi_head_attention_9/query/kernel/v*"
_output_shapes
:  *
dtype0
×
=Adam/token_and_position_embedding_9/embedding_19/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ô *N
shared_name?=Adam/token_and_position_embedding_9/embedding_19/embeddings/v
Ð
QAdam/token_and_position_embedding_9/embedding_19/embeddings/v/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_9/embedding_19/embeddings/v*
_output_shapes
:	ô *
dtype0
×
=Adam/token_and_position_embedding_9/embedding_18/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	N *N
shared_name?=Adam/token_and_position_embedding_9/embedding_18/embeddings/v
Ð
QAdam/token_and_position_embedding_9/embedding_18/embeddings/v/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_9/embedding_18/embeddings/v*
_output_shapes
:	N *
dtype0

Adam/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_39/bias/v
y
(Adam/dense_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/v*
_output_shapes
:*
dtype0

Adam/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È*'
shared_nameAdam/dense_39/kernel/v

*Adam/dense_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/v*
_output_shapes
:	È*
dtype0

Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*%
shared_nameAdam/dense_38/bias/v
z
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes	
:È*
dtype0

Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È*'
shared_nameAdam/dense_38/kernel/v

*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v*
_output_shapes
:	 È*
dtype0
Ä
6Adam/transformer_block_9/layer_normalization_19/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_9/layer_normalization_19/beta/m
½
JAdam/transformer_block_9/layer_normalization_19/beta/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_9/layer_normalization_19/beta/m*
_output_shapes
: *
dtype0
Æ
7Adam/transformer_block_9/layer_normalization_19/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/transformer_block_9/layer_normalization_19/gamma/m
¿
KAdam/transformer_block_9/layer_normalization_19/gamma/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_block_9/layer_normalization_19/gamma/m*
_output_shapes
: *
dtype0
Ä
6Adam/transformer_block_9/layer_normalization_18/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_9/layer_normalization_18/beta/m
½
JAdam/transformer_block_9/layer_normalization_18/beta/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_9/layer_normalization_18/beta/m*
_output_shapes
: *
dtype0
Æ
7Adam/transformer_block_9/layer_normalization_18/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/transformer_block_9/layer_normalization_18/gamma/m
¿
KAdam/transformer_block_9/layer_normalization_18/gamma/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_block_9/layer_normalization_18/gamma/m*
_output_shapes
: *
dtype0

Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
: *
dtype0

Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È *'
shared_nameAdam/dense_37/kernel/m

*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes
:	È *
dtype0

Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*%
shared_nameAdam/dense_36/bias/m
z
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes	
:È*
dtype0

Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È*'
shared_nameAdam/dense_36/kernel/m

*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m*
_output_shapes
:	 È*
dtype0
æ
GAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *X
shared_nameIGAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/m
ß
[Adam/transformer_block_9/multi_head_attention_9/attention_output/bias/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/m*
_output_shapes
: *
dtype0
ò
IAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *Z
shared_nameKIAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/m
ë
]Adam/transformer_block_9/multi_head_attention_9/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/m*"
_output_shapes
:  *
dtype0
Ô
<Adam/transformer_block_9/multi_head_attention_9/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_9/multi_head_attention_9/value/bias/m
Í
PAdam/transformer_block_9/multi_head_attention_9/value/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_9/multi_head_attention_9/value/bias/m*
_output_shapes

: *
dtype0
Ü
>Adam/transformer_block_9/multi_head_attention_9/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_9/multi_head_attention_9/value/kernel/m
Õ
RAdam/transformer_block_9/multi_head_attention_9/value/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_9/multi_head_attention_9/value/kernel/m*"
_output_shapes
:  *
dtype0
Ð
:Adam/transformer_block_9/multi_head_attention_9/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *K
shared_name<:Adam/transformer_block_9/multi_head_attention_9/key/bias/m
É
NAdam/transformer_block_9/multi_head_attention_9/key/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_9/multi_head_attention_9/key/bias/m*
_output_shapes

: *
dtype0
Ø
<Adam/transformer_block_9/multi_head_attention_9/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *M
shared_name><Adam/transformer_block_9/multi_head_attention_9/key/kernel/m
Ñ
PAdam/transformer_block_9/multi_head_attention_9/key/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_9/multi_head_attention_9/key/kernel/m*"
_output_shapes
:  *
dtype0
Ô
<Adam/transformer_block_9/multi_head_attention_9/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_9/multi_head_attention_9/query/bias/m
Í
PAdam/transformer_block_9/multi_head_attention_9/query/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_9/multi_head_attention_9/query/bias/m*
_output_shapes

: *
dtype0
Ü
>Adam/transformer_block_9/multi_head_attention_9/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_9/multi_head_attention_9/query/kernel/m
Õ
RAdam/transformer_block_9/multi_head_attention_9/query/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_9/multi_head_attention_9/query/kernel/m*"
_output_shapes
:  *
dtype0
×
=Adam/token_and_position_embedding_9/embedding_19/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ô *N
shared_name?=Adam/token_and_position_embedding_9/embedding_19/embeddings/m
Ð
QAdam/token_and_position_embedding_9/embedding_19/embeddings/m/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_9/embedding_19/embeddings/m*
_output_shapes
:	ô *
dtype0
×
=Adam/token_and_position_embedding_9/embedding_18/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	N *N
shared_name?=Adam/token_and_position_embedding_9/embedding_18/embeddings/m
Ð
QAdam/token_and_position_embedding_9/embedding_18/embeddings/m/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_9/embedding_18/embeddings/m*
_output_shapes
:	N *
dtype0

Adam/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_39/bias/m
y
(Adam/dense_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/m*
_output_shapes
:*
dtype0

Adam/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È*'
shared_nameAdam/dense_39/kernel/m

*Adam/dense_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/m*
_output_shapes
:	È*
dtype0

Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*%
shared_nameAdam/dense_38/bias/m
z
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes	
:È*
dtype0

Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È*'
shared_nameAdam/dense_38/kernel/m

*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m*
_output_shapes
:	 È*
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
¶
/transformer_block_9/layer_normalization_19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_9/layer_normalization_19/beta
¯
Ctransformer_block_9/layer_normalization_19/beta/Read/ReadVariableOpReadVariableOp/transformer_block_9/layer_normalization_19/beta*
_output_shapes
: *
dtype0
¸
0transformer_block_9/layer_normalization_19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20transformer_block_9/layer_normalization_19/gamma
±
Dtransformer_block_9/layer_normalization_19/gamma/Read/ReadVariableOpReadVariableOp0transformer_block_9/layer_normalization_19/gamma*
_output_shapes
: *
dtype0
¶
/transformer_block_9/layer_normalization_18/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_9/layer_normalization_18/beta
¯
Ctransformer_block_9/layer_normalization_18/beta/Read/ReadVariableOpReadVariableOp/transformer_block_9/layer_normalization_18/beta*
_output_shapes
: *
dtype0
¸
0transformer_block_9/layer_normalization_18/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20transformer_block_9/layer_normalization_18/gamma
±
Dtransformer_block_9/layer_normalization_18/gamma/Read/ReadVariableOpReadVariableOp0transformer_block_9/layer_normalization_18/gamma*
_output_shapes
: *
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
: *
dtype0
{
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È * 
shared_namedense_37/kernel
t
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes
:	È *
dtype0
s
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*
shared_namedense_36/bias
l
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes	
:È*
dtype0
{
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È* 
shared_namedense_36/kernel
t
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel*
_output_shapes
:	 È*
dtype0
Ø
@transformer_block_9/multi_head_attention_9/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *Q
shared_nameB@transformer_block_9/multi_head_attention_9/attention_output/bias
Ñ
Ttransformer_block_9/multi_head_attention_9/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_9/multi_head_attention_9/attention_output/bias*
_output_shapes
: *
dtype0
ä
Btransformer_block_9/multi_head_attention_9/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *S
shared_nameDBtransformer_block_9/multi_head_attention_9/attention_output/kernel
Ý
Vtransformer_block_9/multi_head_attention_9/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_9/multi_head_attention_9/attention_output/kernel*"
_output_shapes
:  *
dtype0
Æ
5transformer_block_9/multi_head_attention_9/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_9/multi_head_attention_9/value/bias
¿
Itransformer_block_9/multi_head_attention_9/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_9/multi_head_attention_9/value/bias*
_output_shapes

: *
dtype0
Î
7transformer_block_9/multi_head_attention_9/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_9/multi_head_attention_9/value/kernel
Ç
Ktransformer_block_9/multi_head_attention_9/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_9/multi_head_attention_9/value/kernel*"
_output_shapes
:  *
dtype0
Â
3transformer_block_9/multi_head_attention_9/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *D
shared_name53transformer_block_9/multi_head_attention_9/key/bias
»
Gtransformer_block_9/multi_head_attention_9/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_9/multi_head_attention_9/key/bias*
_output_shapes

: *
dtype0
Ê
5transformer_block_9/multi_head_attention_9/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *F
shared_name75transformer_block_9/multi_head_attention_9/key/kernel
Ã
Itransformer_block_9/multi_head_attention_9/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_9/multi_head_attention_9/key/kernel*"
_output_shapes
:  *
dtype0
Æ
5transformer_block_9/multi_head_attention_9/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_9/multi_head_attention_9/query/bias
¿
Itransformer_block_9/multi_head_attention_9/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_9/multi_head_attention_9/query/bias*
_output_shapes

: *
dtype0
Î
7transformer_block_9/multi_head_attention_9/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_9/multi_head_attention_9/query/kernel
Ç
Ktransformer_block_9/multi_head_attention_9/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_9/multi_head_attention_9/query/kernel*"
_output_shapes
:  *
dtype0
É
6token_and_position_embedding_9/embedding_19/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ô *G
shared_name86token_and_position_embedding_9/embedding_19/embeddings
Â
Jtoken_and_position_embedding_9/embedding_19/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_9/embedding_19/embeddings*
_output_shapes
:	ô *
dtype0
É
6token_and_position_embedding_9/embedding_18/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	N *G
shared_name86token_and_position_embedding_9/embedding_18/embeddings
Â
Jtoken_and_position_embedding_9/embedding_18/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_9/embedding_18/embeddings*
_output_shapes
:	N *
dtype0
r
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_39/bias
k
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
_output_shapes
:*
dtype0
{
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	È* 
shared_namedense_39/kernel
t
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel*
_output_shapes
:	È*
dtype0
s
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*
shared_namedense_38/bias
l
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes	
:È*
dtype0
{
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È* 
shared_namedense_38/kernel
t
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes
:	 È*
dtype0

NoOpNoOp
ñÃ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*«Ã
value ÃBÃ BÃ

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
Þ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
att
 ffn
!
layernorm1
"
layernorm2
#dropout1
$dropout2*

%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
¥
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator* 
¦
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*
¥
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@_random_generator* 
¦
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias*
ª
I0
J1
K2
L3
M4
N5
O6
P7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17
818
919
G20
H21*
ª
I0
J1
K2
L3
M4
N5
O6
P7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17
818
919
G20
H21*
* 
°
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
`trace_0
atrace_1
btrace_2
ctrace_3* 
6
dtrace_0
etrace_1
ftrace_2
gtrace_3* 
* 
ü
hiter

ibeta_1

jbeta_2
	kdecay
llearning_rate8m9mGmHmImJmKmLmMmNmOmPmQmRmSmTmUmVmWmXmYmZm8v9vGvHvIvJvKvLvMvNv Ov¡Pv¢Qv£Rv¤Sv¥Tv¦Uv§Vv¨Wv©XvªYv«Zv¬*

mserving_default* 

I0
J1*

I0
J1*
* 

nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

strace_0* 

ttrace_0* 
 
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
I
embeddings*
¡
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses
J
embeddings*
z
K0
L1
M2
N3
O4
P5
Q6
R7
S8
T9
U10
V11
W12
X13
Y14
Z15*
z
K0
L1
M2
N3
O4
P5
Q6
R7
S8
T9
U10
V11
W12
X13
Y14
Z15*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense*
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¶
	variables
trainable_variables
 regularization_losses
¡	keras_api
¢__call__
+£&call_and_return_all_conditional_losses
	¤axis
	Wgamma
Xbeta*
¶
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ª&call_and_return_all_conditional_losses
	«axis
	Ygamma
Zbeta*
¬
¬	variables
­trainable_variables
®regularization_losses
¯	keras_api
°__call__
+±&call_and_return_all_conditional_losses
²_random_generator* 
¬
³	variables
´trainable_variables
µregularization_losses
¶	keras_api
·__call__
+¸&call_and_return_all_conditional_losses
¹_random_generator* 
* 
* 
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

¿trace_0* 

Àtrace_0* 
* 
* 
* 

Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

Ætrace_0
Çtrace_1* 

Ètrace_0
Étrace_1* 
* 

80
91*

80
91*
* 

Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

Ïtrace_0* 

Ðtrace_0* 
_Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_38/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

Ötrace_0
×trace_1* 

Øtrace_0
Ùtrace_1* 
* 

G0
H1*

G0
H1*
* 

Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

ßtrace_0* 

àtrace_0* 
_Y
VARIABLE_VALUEdense_39/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_39/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6token_and_position_embedding_9/embedding_18/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6token_and_position_embedding_9/embedding_19/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_block_9/multi_head_attention_9/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_block_9/multi_head_attention_9/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_block_9/multi_head_attention_9/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3transformer_block_9/multi_head_attention_9/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_block_9/multi_head_attention_9/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_block_9/multi_head_attention_9/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEBtransformer_block_9/multi_head_attention_9/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE@transformer_block_9/multi_head_attention_9/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_36/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_36/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_37/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_37/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_block_9/layer_normalization_18/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_block_9/layer_normalization_18/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_block_9/layer_normalization_19/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_block_9/layer_normalization_19/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

á0
â1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

0
1*
* 
* 
* 
* 
* 

I0*

I0*
* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*
* 
* 

J0*

J0*
* 

ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
.
0
 1
!2
"3
#4
$5*
* 
* 
* 
* 
* 
* 
* 
<
K0
L1
M2
N3
O4
P5
Q6
R7*
<
K0
L1
M2
N3
O4
P5
Q6
R7*
* 

ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
ß
ò	variables
ótrainable_variables
ôregularization_losses
õ	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses
øpartial_output_shape
ùfull_output_shape

Kkernel
Lbias*
ß
ú	variables
ûtrainable_variables
üregularization_losses
ý	keras_api
þ__call__
+ÿ&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Mkernel
Nbias*
ß
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Okernel
Pbias*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
ß
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Qkernel
Rbias*
¬
	variables
 trainable_variables
¡regularization_losses
¢	keras_api
£__call__
+¤&call_and_return_all_conditional_losses

Skernel
Tbias*
¬
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ª&call_and_return_all_conditional_losses

Ukernel
Vbias*
 
S0
T1
U2
V3*
 
S0
T1
U2
V3*
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
°trace_0
±trace_1
²trace_2
³trace_3* 
:
´trace_0
µtrace_1
¶trace_2
·trace_3* 

W0
X1*

W0
X1*
* 

¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
	variables
trainable_variables
 regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses*
* 
* 
* 

Y0
Z1*

Y0
Z1*
* 

½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
¥	variables
¦trainable_variables
§regularization_losses
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
¬	variables
­trainable_variables
®regularization_losses
°__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
³	variables
´trainable_variables
µregularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ì	variables
Í	keras_api

Îtotal

Ïcount*
M
Ð	variables
Ñ	keras_api

Òtotal

Ócount
Ô
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
0
1
2
3
4
5*
* 
* 
* 

K0
L1*

K0
L1*
* 

Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
ò	variables
ótrainable_variables
ôregularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses*
* 
* 
* 
* 

M0
N1*

M0
N1*
* 

Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
ú	variables
ûtrainable_variables
üregularization_losses
þ__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses*
* 
* 
* 
* 

O0
P1*

O0
P1*
* 

ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

änon_trainable_variables
ålayers
æmetrics
 çlayer_regularization_losses
èlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 

Q0
R1*

Q0
R1*
* 

înon_trainable_variables
ïlayers
ðmetrics
 ñlayer_regularization_losses
òlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 

S0
T1*

S0
T1*
* 

ónon_trainable_variables
ôlayers
õmetrics
 ölayer_regularization_losses
÷layer_metrics
	variables
 trainable_variables
¡regularization_losses
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses*

øtrace_0* 

ùtrace_0* 

U0
V1*

U0
V1*
* 

únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
¥	variables
¦trainable_variables
§regularization_losses
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses*

ÿtrace_0* 

trace_0* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Î0
Ï1*

Ì	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ò0
Ó1*

Ð	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_39/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_39/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/token_and_position_embedding_9/embedding_18/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/token_and_position_embedding_9/embedding_19/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_block_9/multi_head_attention_9/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_block_9/multi_head_attention_9/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_block_9/multi_head_attention_9/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_block_9/multi_head_attention_9/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_block_9/multi_head_attention_9/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_block_9/multi_head_attention_9/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUEGAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_36/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_36/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_37/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_37/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_block_9/layer_normalization_18/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/transformer_block_9/layer_normalization_18/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_block_9/layer_normalization_19/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/transformer_block_9/layer_normalization_19/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_39/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_39/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/token_and_position_embedding_9/embedding_18/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/token_and_position_embedding_9/embedding_19/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_block_9/multi_head_attention_9/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_block_9/multi_head_attention_9/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_block_9/multi_head_attention_9/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_block_9/multi_head_attention_9/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_block_9/multi_head_attention_9/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_block_9/multi_head_attention_9/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUEGAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_36/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_36/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_37/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_37/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_block_9/layer_normalization_18/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/transformer_block_9/layer_normalization_18/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_block_9/layer_normalization_19/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/transformer_block_9/layer_normalization_19/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
serving_default_input_10Placeholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿô
ç	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_106token_and_position_embedding_9/embedding_19/embeddings6token_and_position_embedding_9/embedding_18/embeddings7transformer_block_9/multi_head_attention_9/query/kernel5transformer_block_9/multi_head_attention_9/query/bias5transformer_block_9/multi_head_attention_9/key/kernel3transformer_block_9/multi_head_attention_9/key/bias7transformer_block_9/multi_head_attention_9/value/kernel5transformer_block_9/multi_head_attention_9/value/biasBtransformer_block_9/multi_head_attention_9/attention_output/kernel@transformer_block_9/multi_head_attention_9/attention_output/bias0transformer_block_9/layer_normalization_18/gamma/transformer_block_9/layer_normalization_18/betadense_36/kerneldense_36/biasdense_37/kerneldense_37/bias0transformer_block_9/layer_normalization_19/gamma/transformer_block_9/layer_normalization_19/betadense_38/kerneldense_38/biasdense_39/kerneldense_39/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_158642
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ó&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOpJtoken_and_position_embedding_9/embedding_18/embeddings/Read/ReadVariableOpJtoken_and_position_embedding_9/embedding_19/embeddings/Read/ReadVariableOpKtransformer_block_9/multi_head_attention_9/query/kernel/Read/ReadVariableOpItransformer_block_9/multi_head_attention_9/query/bias/Read/ReadVariableOpItransformer_block_9/multi_head_attention_9/key/kernel/Read/ReadVariableOpGtransformer_block_9/multi_head_attention_9/key/bias/Read/ReadVariableOpKtransformer_block_9/multi_head_attention_9/value/kernel/Read/ReadVariableOpItransformer_block_9/multi_head_attention_9/value/bias/Read/ReadVariableOpVtransformer_block_9/multi_head_attention_9/attention_output/kernel/Read/ReadVariableOpTtransformer_block_9/multi_head_attention_9/attention_output/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOpDtransformer_block_9/layer_normalization_18/gamma/Read/ReadVariableOpCtransformer_block_9/layer_normalization_18/beta/Read/ReadVariableOpDtransformer_block_9/layer_normalization_19/gamma/Read/ReadVariableOpCtransformer_block_9/layer_normalization_19/beta/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp*Adam/dense_39/kernel/m/Read/ReadVariableOp(Adam/dense_39/bias/m/Read/ReadVariableOpQAdam/token_and_position_embedding_9/embedding_18/embeddings/m/Read/ReadVariableOpQAdam/token_and_position_embedding_9/embedding_19/embeddings/m/Read/ReadVariableOpRAdam/transformer_block_9/multi_head_attention_9/query/kernel/m/Read/ReadVariableOpPAdam/transformer_block_9/multi_head_attention_9/query/bias/m/Read/ReadVariableOpPAdam/transformer_block_9/multi_head_attention_9/key/kernel/m/Read/ReadVariableOpNAdam/transformer_block_9/multi_head_attention_9/key/bias/m/Read/ReadVariableOpRAdam/transformer_block_9/multi_head_attention_9/value/kernel/m/Read/ReadVariableOpPAdam/transformer_block_9/multi_head_attention_9/value/bias/m/Read/ReadVariableOp]Adam/transformer_block_9/multi_head_attention_9/attention_output/kernel/m/Read/ReadVariableOp[Adam/transformer_block_9/multi_head_attention_9/attention_output/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOpKAdam/transformer_block_9/layer_normalization_18/gamma/m/Read/ReadVariableOpJAdam/transformer_block_9/layer_normalization_18/beta/m/Read/ReadVariableOpKAdam/transformer_block_9/layer_normalization_19/gamma/m/Read/ReadVariableOpJAdam/transformer_block_9/layer_normalization_19/beta/m/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp*Adam/dense_39/kernel/v/Read/ReadVariableOp(Adam/dense_39/bias/v/Read/ReadVariableOpQAdam/token_and_position_embedding_9/embedding_18/embeddings/v/Read/ReadVariableOpQAdam/token_and_position_embedding_9/embedding_19/embeddings/v/Read/ReadVariableOpRAdam/transformer_block_9/multi_head_attention_9/query/kernel/v/Read/ReadVariableOpPAdam/transformer_block_9/multi_head_attention_9/query/bias/v/Read/ReadVariableOpPAdam/transformer_block_9/multi_head_attention_9/key/kernel/v/Read/ReadVariableOpNAdam/transformer_block_9/multi_head_attention_9/key/bias/v/Read/ReadVariableOpRAdam/transformer_block_9/multi_head_attention_9/value/kernel/v/Read/ReadVariableOpPAdam/transformer_block_9/multi_head_attention_9/value/bias/v/Read/ReadVariableOp]Adam/transformer_block_9/multi_head_attention_9/attention_output/kernel/v/Read/ReadVariableOp[Adam/transformer_block_9/multi_head_attention_9/attention_output/bias/v/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOpKAdam/transformer_block_9/layer_normalization_18/gamma/v/Read/ReadVariableOpJAdam/transformer_block_9/layer_normalization_18/beta/v/Read/ReadVariableOpKAdam/transformer_block_9/layer_normalization_19/gamma/v/Read/ReadVariableOpJAdam/transformer_block_9/layer_normalization_19/beta/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_160043

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_38/kerneldense_38/biasdense_39/kerneldense_39/bias6token_and_position_embedding_9/embedding_18/embeddings6token_and_position_embedding_9/embedding_19/embeddings7transformer_block_9/multi_head_attention_9/query/kernel5transformer_block_9/multi_head_attention_9/query/bias5transformer_block_9/multi_head_attention_9/key/kernel3transformer_block_9/multi_head_attention_9/key/bias7transformer_block_9/multi_head_attention_9/value/kernel5transformer_block_9/multi_head_attention_9/value/biasBtransformer_block_9/multi_head_attention_9/attention_output/kernel@transformer_block_9/multi_head_attention_9/attention_output/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/bias0transformer_block_9/layer_normalization_18/gamma/transformer_block_9/layer_normalization_18/beta0transformer_block_9/layer_normalization_19/gamma/transformer_block_9/layer_normalization_19/beta	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_38/kernel/mAdam/dense_38/bias/mAdam/dense_39/kernel/mAdam/dense_39/bias/m=Adam/token_and_position_embedding_9/embedding_18/embeddings/m=Adam/token_and_position_embedding_9/embedding_19/embeddings/m>Adam/transformer_block_9/multi_head_attention_9/query/kernel/m<Adam/transformer_block_9/multi_head_attention_9/query/bias/m<Adam/transformer_block_9/multi_head_attention_9/key/kernel/m:Adam/transformer_block_9/multi_head_attention_9/key/bias/m>Adam/transformer_block_9/multi_head_attention_9/value/kernel/m<Adam/transformer_block_9/multi_head_attention_9/value/bias/mIAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/mGAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/mAdam/dense_36/kernel/mAdam/dense_36/bias/mAdam/dense_37/kernel/mAdam/dense_37/bias/m7Adam/transformer_block_9/layer_normalization_18/gamma/m6Adam/transformer_block_9/layer_normalization_18/beta/m7Adam/transformer_block_9/layer_normalization_19/gamma/m6Adam/transformer_block_9/layer_normalization_19/beta/mAdam/dense_38/kernel/vAdam/dense_38/bias/vAdam/dense_39/kernel/vAdam/dense_39/bias/v=Adam/token_and_position_embedding_9/embedding_18/embeddings/v=Adam/token_and_position_embedding_9/embedding_19/embeddings/v>Adam/transformer_block_9/multi_head_attention_9/query/kernel/v<Adam/transformer_block_9/multi_head_attention_9/query/bias/v<Adam/transformer_block_9/multi_head_attention_9/key/kernel/v:Adam/transformer_block_9/multi_head_attention_9/key/bias/v>Adam/transformer_block_9/multi_head_attention_9/value/kernel/v<Adam/transformer_block_9/multi_head_attention_9/value/bias/vIAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/vGAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/vAdam/dense_36/kernel/vAdam/dense_36/bias/vAdam/dense_37/kernel/vAdam/dense_37/bias/v7Adam/transformer_block_9/layer_normalization_18/gamma/v6Adam/transformer_block_9/layer_normalization_18/beta/v7Adam/transformer_block_9/layer_normalization_19/gamma/v6Adam/transformer_block_9/layer_normalization_19/beta/v*W
TinP
N2L*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_160278£ú
»£
²+
__inference__traced_save_160043
file_prefix.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableopU
Qsavev2_token_and_position_embedding_9_embedding_18_embeddings_read_readvariableopU
Qsavev2_token_and_position_embedding_9_embedding_19_embeddings_read_readvariableopV
Rsavev2_transformer_block_9_multi_head_attention_9_query_kernel_read_readvariableopT
Psavev2_transformer_block_9_multi_head_attention_9_query_bias_read_readvariableopT
Psavev2_transformer_block_9_multi_head_attention_9_key_kernel_read_readvariableopR
Nsavev2_transformer_block_9_multi_head_attention_9_key_bias_read_readvariableopV
Rsavev2_transformer_block_9_multi_head_attention_9_value_kernel_read_readvariableopT
Psavev2_transformer_block_9_multi_head_attention_9_value_bias_read_readvariableopa
]savev2_transformer_block_9_multi_head_attention_9_attention_output_kernel_read_readvariableop_
[savev2_transformer_block_9_multi_head_attention_9_attention_output_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableopO
Ksavev2_transformer_block_9_layer_normalization_18_gamma_read_readvariableopN
Jsavev2_transformer_block_9_layer_normalization_18_beta_read_readvariableopO
Ksavev2_transformer_block_9_layer_normalization_19_gamma_read_readvariableopN
Jsavev2_transformer_block_9_layer_normalization_19_beta_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableop5
1savev2_adam_dense_39_kernel_m_read_readvariableop3
/savev2_adam_dense_39_bias_m_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_9_embedding_18_embeddings_m_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_9_embedding_19_embeddings_m_read_readvariableop]
Ysavev2_adam_transformer_block_9_multi_head_attention_9_query_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_9_multi_head_attention_9_query_bias_m_read_readvariableop[
Wsavev2_adam_transformer_block_9_multi_head_attention_9_key_kernel_m_read_readvariableopY
Usavev2_adam_transformer_block_9_multi_head_attention_9_key_bias_m_read_readvariableop]
Ysavev2_adam_transformer_block_9_multi_head_attention_9_value_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_9_multi_head_attention_9_value_bias_m_read_readvariableoph
dsavev2_adam_transformer_block_9_multi_head_attention_9_attention_output_kernel_m_read_readvariableopf
bsavev2_adam_transformer_block_9_multi_head_attention_9_attention_output_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableopV
Rsavev2_adam_transformer_block_9_layer_normalization_18_gamma_m_read_readvariableopU
Qsavev2_adam_transformer_block_9_layer_normalization_18_beta_m_read_readvariableopV
Rsavev2_adam_transformer_block_9_layer_normalization_19_gamma_m_read_readvariableopU
Qsavev2_adam_transformer_block_9_layer_normalization_19_beta_m_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableop5
1savev2_adam_dense_39_kernel_v_read_readvariableop3
/savev2_adam_dense_39_bias_v_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_9_embedding_18_embeddings_v_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_9_embedding_19_embeddings_v_read_readvariableop]
Ysavev2_adam_transformer_block_9_multi_head_attention_9_query_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_9_multi_head_attention_9_query_bias_v_read_readvariableop[
Wsavev2_adam_transformer_block_9_multi_head_attention_9_key_kernel_v_read_readvariableopY
Usavev2_adam_transformer_block_9_multi_head_attention_9_key_bias_v_read_readvariableop]
Ysavev2_adam_transformer_block_9_multi_head_attention_9_value_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_9_multi_head_attention_9_value_bias_v_read_readvariableoph
dsavev2_adam_transformer_block_9_multi_head_attention_9_attention_output_kernel_v_read_readvariableopf
bsavev2_adam_transformer_block_9_multi_head_attention_9_attention_output_bias_v_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableopV
Rsavev2_adam_transformer_block_9_layer_normalization_18_gamma_v_read_readvariableopU
Qsavev2_adam_transformer_block_9_layer_normalization_18_beta_v_read_readvariableopV
Rsavev2_adam_transformer_block_9_layer_normalization_19_gamma_v_read_readvariableopU
Qsavev2_adam_transformer_block_9_layer_normalization_19_beta_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ³$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*Ü#
valueÒ#BÏ#LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*­
value£B LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableopQsavev2_token_and_position_embedding_9_embedding_18_embeddings_read_readvariableopQsavev2_token_and_position_embedding_9_embedding_19_embeddings_read_readvariableopRsavev2_transformer_block_9_multi_head_attention_9_query_kernel_read_readvariableopPsavev2_transformer_block_9_multi_head_attention_9_query_bias_read_readvariableopPsavev2_transformer_block_9_multi_head_attention_9_key_kernel_read_readvariableopNsavev2_transformer_block_9_multi_head_attention_9_key_bias_read_readvariableopRsavev2_transformer_block_9_multi_head_attention_9_value_kernel_read_readvariableopPsavev2_transformer_block_9_multi_head_attention_9_value_bias_read_readvariableop]savev2_transformer_block_9_multi_head_attention_9_attention_output_kernel_read_readvariableop[savev2_transformer_block_9_multi_head_attention_9_attention_output_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableopKsavev2_transformer_block_9_layer_normalization_18_gamma_read_readvariableopJsavev2_transformer_block_9_layer_normalization_18_beta_read_readvariableopKsavev2_transformer_block_9_layer_normalization_19_gamma_read_readvariableopJsavev2_transformer_block_9_layer_normalization_19_beta_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop1savev2_adam_dense_39_kernel_m_read_readvariableop/savev2_adam_dense_39_bias_m_read_readvariableopXsavev2_adam_token_and_position_embedding_9_embedding_18_embeddings_m_read_readvariableopXsavev2_adam_token_and_position_embedding_9_embedding_19_embeddings_m_read_readvariableopYsavev2_adam_transformer_block_9_multi_head_attention_9_query_kernel_m_read_readvariableopWsavev2_adam_transformer_block_9_multi_head_attention_9_query_bias_m_read_readvariableopWsavev2_adam_transformer_block_9_multi_head_attention_9_key_kernel_m_read_readvariableopUsavev2_adam_transformer_block_9_multi_head_attention_9_key_bias_m_read_readvariableopYsavev2_adam_transformer_block_9_multi_head_attention_9_value_kernel_m_read_readvariableopWsavev2_adam_transformer_block_9_multi_head_attention_9_value_bias_m_read_readvariableopdsavev2_adam_transformer_block_9_multi_head_attention_9_attention_output_kernel_m_read_readvariableopbsavev2_adam_transformer_block_9_multi_head_attention_9_attention_output_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableopRsavev2_adam_transformer_block_9_layer_normalization_18_gamma_m_read_readvariableopQsavev2_adam_transformer_block_9_layer_normalization_18_beta_m_read_readvariableopRsavev2_adam_transformer_block_9_layer_normalization_19_gamma_m_read_readvariableopQsavev2_adam_transformer_block_9_layer_normalization_19_beta_m_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop1savev2_adam_dense_39_kernel_v_read_readvariableop/savev2_adam_dense_39_bias_v_read_readvariableopXsavev2_adam_token_and_position_embedding_9_embedding_18_embeddings_v_read_readvariableopXsavev2_adam_token_and_position_embedding_9_embedding_19_embeddings_v_read_readvariableopYsavev2_adam_transformer_block_9_multi_head_attention_9_query_kernel_v_read_readvariableopWsavev2_adam_transformer_block_9_multi_head_attention_9_query_bias_v_read_readvariableopWsavev2_adam_transformer_block_9_multi_head_attention_9_key_kernel_v_read_readvariableopUsavev2_adam_transformer_block_9_multi_head_attention_9_key_bias_v_read_readvariableopYsavev2_adam_transformer_block_9_multi_head_attention_9_value_kernel_v_read_readvariableopWsavev2_adam_transformer_block_9_multi_head_attention_9_value_bias_v_read_readvariableopdsavev2_adam_transformer_block_9_multi_head_attention_9_attention_output_kernel_v_read_readvariableopbsavev2_adam_transformer_block_9_multi_head_attention_9_attention_output_bias_v_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableopRsavev2_adam_transformer_block_9_layer_normalization_18_gamma_v_read_readvariableopQsavev2_adam_transformer_block_9_layer_normalization_18_beta_v_read_readvariableopRsavev2_adam_transformer_block_9_layer_normalization_19_gamma_v_read_readvariableopQsavev2_adam_transformer_block_9_layer_normalization_19_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: :	 È:È:	È::	N :	ô :  : :  : :  : :  : :	 È:È:	È : : : : : : : : : : : : : : :	 È:È:	È::	N :	ô :  : :  : :  : :  : :	 È:È:	È : : : : : :	 È:È:	È::	N :	ô :  : :  : :  : :  : :	 È:È:	È : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	 È:!

_output_shapes	
:È:%!

_output_shapes
:	È: 

_output_shapes
::%!

_output_shapes
:	N :%!

_output_shapes
:	ô :($
"
_output_shapes
:  :$ 

_output_shapes

: :(	$
"
_output_shapes
:  :$
 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  : 

_output_shapes
: :%!

_output_shapes
:	 È:!

_output_shapes	
:È:%!

_output_shapes
:	È : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	 È:!!

_output_shapes	
:È:%"!

_output_shapes
:	È: #

_output_shapes
::%$!

_output_shapes
:	N :%%!

_output_shapes
:	ô :(&$
"
_output_shapes
:  :$' 

_output_shapes

: :(($
"
_output_shapes
:  :$) 

_output_shapes

: :(*$
"
_output_shapes
:  :$+ 

_output_shapes

: :(,$
"
_output_shapes
:  : -

_output_shapes
: :%.!

_output_shapes
:	 È:!/

_output_shapes	
:È:%0!

_output_shapes
:	È : 1

_output_shapes
: : 2

_output_shapes
: : 3

_output_shapes
: : 4

_output_shapes
: : 5

_output_shapes
: :%6!

_output_shapes
:	 È:!7

_output_shapes	
:È:%8!

_output_shapes
:	È: 9

_output_shapes
::%:!

_output_shapes
:	N :%;!

_output_shapes
:	ô :(<$
"
_output_shapes
:  :$= 

_output_shapes

: :(>$
"
_output_shapes
:  :$? 

_output_shapes

: :(@$
"
_output_shapes
:  :$A 

_output_shapes

: :(B$
"
_output_shapes
:  : C

_output_shapes
: :%D!

_output_shapes
:	 È:!E

_output_shapes	
:È:%F!

_output_shapes
:	È : G

_output_shapes
: : H

_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: : K

_output_shapes
: :L

_output_shapes
: 
ÿ¼
;
"__inference__traced_restore_160278
file_prefix3
 assignvariableop_dense_38_kernel:	 È/
 assignvariableop_1_dense_38_bias:	È5
"assignvariableop_2_dense_39_kernel:	È.
 assignvariableop_3_dense_39_bias:\
Iassignvariableop_4_token_and_position_embedding_9_embedding_18_embeddings:	N \
Iassignvariableop_5_token_and_position_embedding_9_embedding_19_embeddings:	ô `
Jassignvariableop_6_transformer_block_9_multi_head_attention_9_query_kernel:  Z
Hassignvariableop_7_transformer_block_9_multi_head_attention_9_query_bias: ^
Hassignvariableop_8_transformer_block_9_multi_head_attention_9_key_kernel:  X
Fassignvariableop_9_transformer_block_9_multi_head_attention_9_key_bias: a
Kassignvariableop_10_transformer_block_9_multi_head_attention_9_value_kernel:  [
Iassignvariableop_11_transformer_block_9_multi_head_attention_9_value_bias: l
Vassignvariableop_12_transformer_block_9_multi_head_attention_9_attention_output_kernel:  b
Tassignvariableop_13_transformer_block_9_multi_head_attention_9_attention_output_bias: 6
#assignvariableop_14_dense_36_kernel:	 È0
!assignvariableop_15_dense_36_bias:	È6
#assignvariableop_16_dense_37_kernel:	È /
!assignvariableop_17_dense_37_bias: R
Dassignvariableop_18_transformer_block_9_layer_normalization_18_gamma: Q
Cassignvariableop_19_transformer_block_9_layer_normalization_18_beta: R
Dassignvariableop_20_transformer_block_9_layer_normalization_19_gamma: Q
Cassignvariableop_21_transformer_block_9_layer_normalization_19_beta: '
assignvariableop_22_adam_iter:	 )
assignvariableop_23_adam_beta_1: )
assignvariableop_24_adam_beta_2: (
assignvariableop_25_adam_decay: 0
&assignvariableop_26_adam_learning_rate: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: #
assignvariableop_29_total: #
assignvariableop_30_count: =
*assignvariableop_31_adam_dense_38_kernel_m:	 È7
(assignvariableop_32_adam_dense_38_bias_m:	È=
*assignvariableop_33_adam_dense_39_kernel_m:	È6
(assignvariableop_34_adam_dense_39_bias_m:d
Qassignvariableop_35_adam_token_and_position_embedding_9_embedding_18_embeddings_m:	N d
Qassignvariableop_36_adam_token_and_position_embedding_9_embedding_19_embeddings_m:	ô h
Rassignvariableop_37_adam_transformer_block_9_multi_head_attention_9_query_kernel_m:  b
Passignvariableop_38_adam_transformer_block_9_multi_head_attention_9_query_bias_m: f
Passignvariableop_39_adam_transformer_block_9_multi_head_attention_9_key_kernel_m:  `
Nassignvariableop_40_adam_transformer_block_9_multi_head_attention_9_key_bias_m: h
Rassignvariableop_41_adam_transformer_block_9_multi_head_attention_9_value_kernel_m:  b
Passignvariableop_42_adam_transformer_block_9_multi_head_attention_9_value_bias_m: s
]assignvariableop_43_adam_transformer_block_9_multi_head_attention_9_attention_output_kernel_m:  i
[assignvariableop_44_adam_transformer_block_9_multi_head_attention_9_attention_output_bias_m: =
*assignvariableop_45_adam_dense_36_kernel_m:	 È7
(assignvariableop_46_adam_dense_36_bias_m:	È=
*assignvariableop_47_adam_dense_37_kernel_m:	È 6
(assignvariableop_48_adam_dense_37_bias_m: Y
Kassignvariableop_49_adam_transformer_block_9_layer_normalization_18_gamma_m: X
Jassignvariableop_50_adam_transformer_block_9_layer_normalization_18_beta_m: Y
Kassignvariableop_51_adam_transformer_block_9_layer_normalization_19_gamma_m: X
Jassignvariableop_52_adam_transformer_block_9_layer_normalization_19_beta_m: =
*assignvariableop_53_adam_dense_38_kernel_v:	 È7
(assignvariableop_54_adam_dense_38_bias_v:	È=
*assignvariableop_55_adam_dense_39_kernel_v:	È6
(assignvariableop_56_adam_dense_39_bias_v:d
Qassignvariableop_57_adam_token_and_position_embedding_9_embedding_18_embeddings_v:	N d
Qassignvariableop_58_adam_token_and_position_embedding_9_embedding_19_embeddings_v:	ô h
Rassignvariableop_59_adam_transformer_block_9_multi_head_attention_9_query_kernel_v:  b
Passignvariableop_60_adam_transformer_block_9_multi_head_attention_9_query_bias_v: f
Passignvariableop_61_adam_transformer_block_9_multi_head_attention_9_key_kernel_v:  `
Nassignvariableop_62_adam_transformer_block_9_multi_head_attention_9_key_bias_v: h
Rassignvariableop_63_adam_transformer_block_9_multi_head_attention_9_value_kernel_v:  b
Passignvariableop_64_adam_transformer_block_9_multi_head_attention_9_value_bias_v: s
]assignvariableop_65_adam_transformer_block_9_multi_head_attention_9_attention_output_kernel_v:  i
[assignvariableop_66_adam_transformer_block_9_multi_head_attention_9_attention_output_bias_v: =
*assignvariableop_67_adam_dense_36_kernel_v:	 È7
(assignvariableop_68_adam_dense_36_bias_v:	È=
*assignvariableop_69_adam_dense_37_kernel_v:	È 6
(assignvariableop_70_adam_dense_37_bias_v: Y
Kassignvariableop_71_adam_transformer_block_9_layer_normalization_18_gamma_v: X
Jassignvariableop_72_adam_transformer_block_9_layer_normalization_18_beta_v: Y
Kassignvariableop_73_adam_transformer_block_9_layer_normalization_19_gamma_v: X
Jassignvariableop_74_adam_transformer_block_9_layer_normalization_19_beta_v: 
identity_76¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_8¢AssignVariableOp_9¶$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*Ü#
valueÒ#BÏ#LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*­
value£B LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Æ
_output_shapes³
°::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_38_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_38_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_39_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_39_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_4AssignVariableOpIassignvariableop_4_token_and_position_embedding_9_embedding_18_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_5AssignVariableOpIassignvariableop_5_token_and_position_embedding_9_embedding_19_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_6AssignVariableOpJassignvariableop_6_transformer_block_9_multi_head_attention_9_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_7AssignVariableOpHassignvariableop_7_transformer_block_9_multi_head_attention_9_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_8AssignVariableOpHassignvariableop_8_transformer_block_9_multi_head_attention_9_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_9AssignVariableOpFassignvariableop_9_transformer_block_9_multi_head_attention_9_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_10AssignVariableOpKassignvariableop_10_transformer_block_9_multi_head_attention_9_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_11AssignVariableOpIassignvariableop_11_transformer_block_9_multi_head_attention_9_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_12AssignVariableOpVassignvariableop_12_transformer_block_9_multi_head_attention_9_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_13AssignVariableOpTassignvariableop_13_transformer_block_9_multi_head_attention_9_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_36_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_36_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_37_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_37_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_18AssignVariableOpDassignvariableop_18_transformer_block_9_layer_normalization_18_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_19AssignVariableOpCassignvariableop_19_transformer_block_9_layer_normalization_18_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_20AssignVariableOpDassignvariableop_20_transformer_block_9_layer_normalization_19_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_21AssignVariableOpCassignvariableop_21_transformer_block_9_layer_normalization_19_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_beta_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_decayIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_learning_rateIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_38_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_38_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_39_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_39_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_35AssignVariableOpQassignvariableop_35_adam_token_and_position_embedding_9_embedding_18_embeddings_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_36AssignVariableOpQassignvariableop_36_adam_token_and_position_embedding_9_embedding_19_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_37AssignVariableOpRassignvariableop_37_adam_transformer_block_9_multi_head_attention_9_query_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_transformer_block_9_multi_head_attention_9_query_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_39AssignVariableOpPassignvariableop_39_adam_transformer_block_9_multi_head_attention_9_key_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_40AssignVariableOpNassignvariableop_40_adam_transformer_block_9_multi_head_attention_9_key_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_block_9_multi_head_attention_9_value_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_42AssignVariableOpPassignvariableop_42_adam_transformer_block_9_multi_head_attention_9_value_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_43AssignVariableOp]assignvariableop_43_adam_transformer_block_9_multi_head_attention_9_attention_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ì
AssignVariableOp_44AssignVariableOp[assignvariableop_44_adam_transformer_block_9_multi_head_attention_9_attention_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_36_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_36_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_37_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_37_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_49AssignVariableOpKassignvariableop_49_adam_transformer_block_9_layer_normalization_18_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_50AssignVariableOpJassignvariableop_50_adam_transformer_block_9_layer_normalization_18_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_51AssignVariableOpKassignvariableop_51_adam_transformer_block_9_layer_normalization_19_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_52AssignVariableOpJassignvariableop_52_adam_transformer_block_9_layer_normalization_19_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_38_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_38_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_39_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_39_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_57AssignVariableOpQassignvariableop_57_adam_token_and_position_embedding_9_embedding_18_embeddings_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_58AssignVariableOpQassignvariableop_58_adam_token_and_position_embedding_9_embedding_19_embeddings_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_59AssignVariableOpRassignvariableop_59_adam_transformer_block_9_multi_head_attention_9_query_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_60AssignVariableOpPassignvariableop_60_adam_transformer_block_9_multi_head_attention_9_query_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_61AssignVariableOpPassignvariableop_61_adam_transformer_block_9_multi_head_attention_9_key_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_62AssignVariableOpNassignvariableop_62_adam_transformer_block_9_multi_head_attention_9_key_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_63AssignVariableOpRassignvariableop_63_adam_transformer_block_9_multi_head_attention_9_value_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_transformer_block_9_multi_head_attention_9_value_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_65AssignVariableOp]assignvariableop_65_adam_transformer_block_9_multi_head_attention_9_attention_output_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ì
AssignVariableOp_66AssignVariableOp[assignvariableop_66_adam_transformer_block_9_multi_head_attention_9_attention_output_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_36_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_36_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_37_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_37_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_71AssignVariableOpKassignvariableop_71_adam_transformer_block_9_layer_normalization_18_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_72AssignVariableOpJassignvariableop_72_adam_transformer_block_9_layer_normalization_18_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_73AssignVariableOpKassignvariableop_73_adam_transformer_block_9_layer_normalization_19_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_74AssignVariableOpJassignvariableop_74_adam_transformer_block_9_layer_normalization_19_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Á
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_76IdentityIdentity_75:output:0^NoOp_1*
T0*
_output_shapes
: ®
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_76Identity_76:output:0*­
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ö
 
!__inference__wrapped_model_157481
input_10d
Qsequential_18_token_and_position_embedding_9_embedding_19_embedding_lookup_157327:	ô d
Qsequential_18_token_and_position_embedding_9_embedding_18_embedding_lookup_157333:	N z
dsequential_18_transformer_block_9_multi_head_attention_9_query_einsum_einsum_readvariableop_resource:  l
Zsequential_18_transformer_block_9_multi_head_attention_9_query_add_readvariableop_resource: x
bsequential_18_transformer_block_9_multi_head_attention_9_key_einsum_einsum_readvariableop_resource:  j
Xsequential_18_transformer_block_9_multi_head_attention_9_key_add_readvariableop_resource: z
dsequential_18_transformer_block_9_multi_head_attention_9_value_einsum_einsum_readvariableop_resource:  l
Zsequential_18_transformer_block_9_multi_head_attention_9_value_add_readvariableop_resource: 
osequential_18_transformer_block_9_multi_head_attention_9_attention_output_einsum_einsum_readvariableop_resource:  s
esequential_18_transformer_block_9_multi_head_attention_9_attention_output_add_readvariableop_resource: l
^sequential_18_transformer_block_9_layer_normalization_18_batchnorm_mul_readvariableop_resource: h
Zsequential_18_transformer_block_9_layer_normalization_18_batchnorm_readvariableop_resource: m
Zsequential_18_transformer_block_9_sequential_19_dense_36_tensordot_readvariableop_resource:	 Èg
Xsequential_18_transformer_block_9_sequential_19_dense_36_biasadd_readvariableop_resource:	Èm
Zsequential_18_transformer_block_9_sequential_19_dense_37_tensordot_readvariableop_resource:	È f
Xsequential_18_transformer_block_9_sequential_19_dense_37_biasadd_readvariableop_resource: l
^sequential_18_transformer_block_9_layer_normalization_19_batchnorm_mul_readvariableop_resource: h
Zsequential_18_transformer_block_9_layer_normalization_19_batchnorm_readvariableop_resource: H
5sequential_18_dense_38_matmul_readvariableop_resource:	 ÈE
6sequential_18_dense_38_biasadd_readvariableop_resource:	ÈH
5sequential_18_dense_39_matmul_readvariableop_resource:	ÈD
6sequential_18_dense_39_biasadd_readvariableop_resource:
identity¢-sequential_18/dense_38/BiasAdd/ReadVariableOp¢,sequential_18/dense_38/MatMul/ReadVariableOp¢-sequential_18/dense_39/BiasAdd/ReadVariableOp¢,sequential_18/dense_39/MatMul/ReadVariableOp¢Jsequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup¢Jsequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup¢Qsequential_18/transformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp¢Usequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp¢Qsequential_18/transformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp¢Usequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp¢\sequential_18/transformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp¢fsequential_18/transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp¢Osequential_18/transformer_block_9/multi_head_attention_9/key/add/ReadVariableOp¢Ysequential_18/transformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp¢Qsequential_18/transformer_block_9/multi_head_attention_9/query/add/ReadVariableOp¢[sequential_18/transformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp¢Qsequential_18/transformer_block_9/multi_head_attention_9/value/add/ReadVariableOp¢[sequential_18/transformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp¢Osequential_18/transformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp¢Qsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp¢Osequential_18/transformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp¢Qsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpj
2sequential_18/token_and_position_embedding_9/ShapeShapeinput_10*
T0*
_output_shapes
:
@sequential_18/token_and_position_embedding_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Bsequential_18/token_and_position_embedding_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_18/token_and_position_embedding_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_18/token_and_position_embedding_9/strided_sliceStridedSlice;sequential_18/token_and_position_embedding_9/Shape:output:0Isequential_18/token_and_position_embedding_9/strided_slice/stack:output:0Ksequential_18/token_and_position_embedding_9/strided_slice/stack_1:output:0Ksequential_18/token_and_position_embedding_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8sequential_18/token_and_position_embedding_9/range/startConst*
_output_shapes
: *
dtype0*
value	B : z
8sequential_18/token_and_position_embedding_9/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :£
2sequential_18/token_and_position_embedding_9/rangeRangeAsequential_18/token_and_position_embedding_9/range/start:output:0Csequential_18/token_and_position_embedding_9/strided_slice:output:0Asequential_18/token_and_position_embedding_9/range/delta:output:0*
_output_shapes	
:ô
Jsequential_18/token_and_position_embedding_9/embedding_19/embedding_lookupResourceGatherQsequential_18_token_and_position_embedding_9_embedding_19_embedding_lookup_157327;sequential_18/token_and_position_embedding_9/range:output:0*
Tindices0*d
_classZ
XVloc:@sequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup/157327*
_output_shapes
:	ô *
dtype0Ä
Ssequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup/IdentityIdentitySsequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@sequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup/157327*
_output_shapes
:	ô é
Usequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup/Identity_1Identity\sequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	ô 
>sequential_18/token_and_position_embedding_9/embedding_18/CastCastinput_10*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¤
Jsequential_18/token_and_position_embedding_9/embedding_18/embedding_lookupResourceGatherQsequential_18_token_and_position_embedding_9_embedding_18_embedding_lookup_157333Bsequential_18/token_and_position_embedding_9/embedding_18/Cast:y:0*
Tindices0*d
_classZ
XVloc:@sequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup/157333*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0Ñ
Ssequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup/IdentityIdentitySsequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@sequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup/157333*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ö
Usequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup/Identity_1Identity\sequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô °
0sequential_18/token_and_position_embedding_9/addAddV2^sequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup/Identity_1:output:0^sequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
[sequential_18/transformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpReadVariableOpdsequential_18_transformer_block_9_multi_head_attention_9_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ò
Lsequential_18/transformer_block_9/multi_head_attention_9/query/einsum/EinsumEinsum4sequential_18/token_and_position_embedding_9/add:z:0csequential_18/transformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeì
Qsequential_18/transformer_block_9/multi_head_attention_9/query/add/ReadVariableOpReadVariableOpZsequential_18_transformer_block_9_multi_head_attention_9_query_add_readvariableop_resource*
_output_shapes

: *
dtype0¸
Bsequential_18/transformer_block_9/multi_head_attention_9/query/addAddV2Usequential_18/transformer_block_9/multi_head_attention_9/query/einsum/Einsum:output:0Ysequential_18/transformer_block_9/multi_head_attention_9/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Ysequential_18/transformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpReadVariableOpbsequential_18_transformer_block_9_multi_head_attention_9_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Î
Jsequential_18/transformer_block_9/multi_head_attention_9/key/einsum/EinsumEinsum4sequential_18/token_and_position_embedding_9/add:z:0asequential_18/transformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeè
Osequential_18/transformer_block_9/multi_head_attention_9/key/add/ReadVariableOpReadVariableOpXsequential_18_transformer_block_9_multi_head_attention_9_key_add_readvariableop_resource*
_output_shapes

: *
dtype0²
@sequential_18/transformer_block_9/multi_head_attention_9/key/addAddV2Ssequential_18/transformer_block_9/multi_head_attention_9/key/einsum/Einsum:output:0Wsequential_18/transformer_block_9/multi_head_attention_9/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
[sequential_18/transformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpReadVariableOpdsequential_18_transformer_block_9_multi_head_attention_9_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ò
Lsequential_18/transformer_block_9/multi_head_attention_9/value/einsum/EinsumEinsum4sequential_18/token_and_position_embedding_9/add:z:0csequential_18/transformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeì
Qsequential_18/transformer_block_9/multi_head_attention_9/value/add/ReadVariableOpReadVariableOpZsequential_18_transformer_block_9_multi_head_attention_9_value_add_readvariableop_resource*
_output_shapes

: *
dtype0¸
Bsequential_18/transformer_block_9/multi_head_attention_9/value/addAddV2Usequential_18/transformer_block_9/multi_head_attention_9/value/einsum/Einsum:output:0Ysequential_18/transformer_block_9/multi_head_attention_9/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
>sequential_18/transformer_block_9/multi_head_attention_9/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5>
<sequential_18/transformer_block_9/multi_head_attention_9/MulMulFsequential_18/transformer_block_9/multi_head_attention_9/query/add:z:0Gsequential_18/transformer_block_9/multi_head_attention_9/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
Fsequential_18/transformer_block_9/multi_head_attention_9/einsum/EinsumEinsumDsequential_18/transformer_block_9/multi_head_attention_9/key/add:z:0@sequential_18/transformer_block_9/multi_head_attention_9/Mul:z:0*
N*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô*
equationaecd,abcd->acbeà
Hsequential_18/transformer_block_9/multi_head_attention_9/softmax/SoftmaxSoftmaxOsequential_18/transformer_block_9/multi_head_attention_9/einsum/Einsum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôôå
Isequential_18/transformer_block_9/multi_head_attention_9/dropout/IdentityIdentityRsequential_18/transformer_block_9/multi_head_attention_9/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôôÑ
Hsequential_18/transformer_block_9/multi_head_attention_9/einsum_1/EinsumEinsumRsequential_18/transformer_block_9/multi_head_attention_9/dropout/Identity:output:0Fsequential_18/transformer_block_9/multi_head_attention_9/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationacbe,aecd->abcd
fsequential_18/transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpReadVariableOposequential_18_transformer_block_9_multi_head_attention_9_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0
Wsequential_18/transformer_block_9/multi_head_attention_9/attention_output/einsum/EinsumEinsumQsequential_18/transformer_block_9/multi_head_attention_9/einsum_1/Einsum:output:0nsequential_18/transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabcd,cde->abeþ
\sequential_18/transformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOpReadVariableOpesequential_18_transformer_block_9_multi_head_attention_9_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0Õ
Msequential_18/transformer_block_9/multi_head_attention_9/attention_output/addAddV2`sequential_18/transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum:output:0dsequential_18/transformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ë
5sequential_18/transformer_block_9/dropout_37/IdentityIdentityQsequential_18/transformer_block_9/multi_head_attention_9/attention_output/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Û
%sequential_18/transformer_block_9/addAddV24sequential_18/token_and_position_embedding_9/add:z:0>sequential_18/transformer_block_9/dropout_37/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¡
Wsequential_18/transformer_block_9/layer_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¢
Esequential_18/transformer_block_9/layer_normalization_18/moments/meanMean)sequential_18/transformer_block_9/add:z:0`sequential_18/transformer_block_9/layer_normalization_18/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(ä
Msequential_18/transformer_block_9/layer_normalization_18/moments/StopGradientStopGradientNsequential_18/transformer_block_9/layer_normalization_18/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¡
Rsequential_18/transformer_block_9/layer_normalization_18/moments/SquaredDifferenceSquaredDifference)sequential_18/transformer_block_9/add:z:0Vsequential_18/transformer_block_9/layer_normalization_18/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¥
[sequential_18/transformer_block_9/layer_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:×
Isequential_18/transformer_block_9/layer_normalization_18/moments/varianceMeanVsequential_18/transformer_block_9/layer_normalization_18/moments/SquaredDifference:z:0dsequential_18/transformer_block_9/layer_normalization_18/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(
Hsequential_18/transformer_block_9/layer_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75­
Fsequential_18/transformer_block_9/layer_normalization_18/batchnorm/addAddV2Rsequential_18/transformer_block_9/layer_normalization_18/moments/variance:output:0Qsequential_18/transformer_block_9/layer_normalization_18/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÔ
Hsequential_18/transformer_block_9/layer_normalization_18/batchnorm/RsqrtRsqrtJsequential_18/transformer_block_9/layer_normalization_18/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôð
Usequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOp^sequential_18_transformer_block_9_layer_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0±
Fsequential_18/transformer_block_9/layer_normalization_18/batchnorm/mulMulLsequential_18/transformer_block_9/layer_normalization_18/batchnorm/Rsqrt:y:0]sequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ý
Hsequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul_1Mul)sequential_18/transformer_block_9/add:z:0Jsequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¢
Hsequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul_2MulNsequential_18/transformer_block_9/layer_normalization_18/moments/mean:output:0Jsequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô è
Qsequential_18/transformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpReadVariableOpZsequential_18_transformer_block_9_layer_normalization_18_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0­
Fsequential_18/transformer_block_9/layer_normalization_18/batchnorm/subSubYsequential_18/transformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp:value:0Lsequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¢
Hsequential_18/transformer_block_9/layer_normalization_18/batchnorm/add_1AddV2Lsequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul_1:z:0Jsequential_18/transformer_block_9/layer_normalization_18/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô í
Qsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpReadVariableOpZsequential_18_transformer_block_9_sequential_19_dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0
Gsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ä
Hsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ShapeShapeLsequential_18/transformer_block_9/layer_normalization_18/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Psequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ksequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2GatherV2Qsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Shape:output:0Psequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/free:output:0Ysequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Rsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : £
Msequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1GatherV2Qsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Shape:output:0Psequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/axes:output:0[sequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Hsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Gsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ProdProdTsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2:output:0Qsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Jsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Isequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Prod_1ProdVsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1:output:0Ssequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Nsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Isequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/concatConcatV2Psequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/free:output:0Psequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/axes:output:0Wsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¤
Hsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/stackPackPsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Prod:output:0Rsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:²
Lsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/transpose	TransposeLsequential_18/transformer_block_9/layer_normalization_18/batchnorm/add_1:z:0Rsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô µ
Jsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ReshapeReshapePsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/transpose:y:0Qsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¶
Isequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/MatMulMatMulSsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Reshape:output:0Ysequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
Jsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:È
Psequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ksequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/concat_1ConcatV2Tsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2:output:0Ssequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/Const_2:output:0Ysequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:°
Bsequential_18/transformer_block_9/sequential_19/dense_36/TensordotReshapeSsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/MatMul:product:0Tsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈå
Osequential_18/transformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpReadVariableOpXsequential_18_transformer_block_9_sequential_19_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0©
@sequential_18/transformer_block_9/sequential_19/dense_36/BiasAddBiasAddKsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot:output:0Wsequential_18/transformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÈ
=sequential_18/transformer_block_9/sequential_19/dense_36/ReluReluIsequential_18/transformer_block_9/sequential_19/dense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈí
Qsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpReadVariableOpZsequential_18_transformer_block_9_sequential_19_dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0
Gsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ã
Hsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ShapeShapeKsequential_18/transformer_block_9/sequential_19/dense_36/Relu:activations:0*
T0*
_output_shapes
:
Psequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ksequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2GatherV2Qsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Shape:output:0Psequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/free:output:0Ysequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Rsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : £
Msequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1GatherV2Qsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Shape:output:0Psequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/axes:output:0[sequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Hsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Gsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ProdProdTsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2:output:0Qsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Jsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Isequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Prod_1ProdVsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1:output:0Ssequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Nsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Isequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/concatConcatV2Psequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/free:output:0Psequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/axes:output:0Wsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¤
Hsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/stackPackPsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Prod:output:0Rsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:²
Lsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/transpose	TransposeKsequential_18/transformer_block_9/sequential_19/dense_36/Relu:activations:0Rsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈµ
Jsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ReshapeReshapePsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/transpose:y:0Qsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿµ
Isequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/MatMulMatMulSsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Reshape:output:0Ysequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Jsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Psequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ksequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/concat_1ConcatV2Tsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2:output:0Ssequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/Const_2:output:0Ysequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¯
Bsequential_18/transformer_block_9/sequential_19/dense_37/TensordotReshapeSsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/MatMul:product:0Tsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ä
Osequential_18/transformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpReadVariableOpXsequential_18_transformer_block_9_sequential_19_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¨
@sequential_18/transformer_block_9/sequential_19/dense_37/BiasAddBiasAddKsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot:output:0Wsequential_18/transformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ã
5sequential_18/transformer_block_9/dropout_38/IdentityIdentityIsequential_18/transformer_block_9/sequential_19/dense_37/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô õ
'sequential_18/transformer_block_9/add_1AddV2Lsequential_18/transformer_block_9/layer_normalization_18/batchnorm/add_1:z:0>sequential_18/transformer_block_9/dropout_38/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¡
Wsequential_18/transformer_block_9/layer_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¤
Esequential_18/transformer_block_9/layer_normalization_19/moments/meanMean+sequential_18/transformer_block_9/add_1:z:0`sequential_18/transformer_block_9/layer_normalization_19/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(ä
Msequential_18/transformer_block_9/layer_normalization_19/moments/StopGradientStopGradientNsequential_18/transformer_block_9/layer_normalization_19/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô£
Rsequential_18/transformer_block_9/layer_normalization_19/moments/SquaredDifferenceSquaredDifference+sequential_18/transformer_block_9/add_1:z:0Vsequential_18/transformer_block_9/layer_normalization_19/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¥
[sequential_18/transformer_block_9/layer_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:×
Isequential_18/transformer_block_9/layer_normalization_19/moments/varianceMeanVsequential_18/transformer_block_9/layer_normalization_19/moments/SquaredDifference:z:0dsequential_18/transformer_block_9/layer_normalization_19/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(
Hsequential_18/transformer_block_9/layer_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75­
Fsequential_18/transformer_block_9/layer_normalization_19/batchnorm/addAddV2Rsequential_18/transformer_block_9/layer_normalization_19/moments/variance:output:0Qsequential_18/transformer_block_9/layer_normalization_19/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÔ
Hsequential_18/transformer_block_9/layer_normalization_19/batchnorm/RsqrtRsqrtJsequential_18/transformer_block_9/layer_normalization_19/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôð
Usequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOp^sequential_18_transformer_block_9_layer_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0±
Fsequential_18/transformer_block_9/layer_normalization_19/batchnorm/mulMulLsequential_18/transformer_block_9/layer_normalization_19/batchnorm/Rsqrt:y:0]sequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ÿ
Hsequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul_1Mul+sequential_18/transformer_block_9/add_1:z:0Jsequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¢
Hsequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul_2MulNsequential_18/transformer_block_9/layer_normalization_19/moments/mean:output:0Jsequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô è
Qsequential_18/transformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpReadVariableOpZsequential_18_transformer_block_9_layer_normalization_19_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0­
Fsequential_18/transformer_block_9/layer_normalization_19/batchnorm/subSubYsequential_18/transformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp:value:0Lsequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¢
Hsequential_18/transformer_block_9/layer_normalization_19/batchnorm/add_1AddV2Lsequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul_1:z:0Jsequential_18/transformer_block_9/layer_normalization_19/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
?sequential_18/global_average_pooling1d_9/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ÿ
-sequential_18/global_average_pooling1d_9/MeanMeanLsequential_18/transformer_block_9/layer_normalization_19/batchnorm/add_1:z:0Hsequential_18/global_average_pooling1d_9/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!sequential_18/dropout_39/IdentityIdentity6sequential_18/global_average_pooling1d_9/Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ £
,sequential_18/dense_38/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_38_matmul_readvariableop_resource*
_output_shapes
:	 È*
dtype0¼
sequential_18/dense_38/MatMulMatMul*sequential_18/dropout_39/Identity:output:04sequential_18/dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
-sequential_18/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0¼
sequential_18/dense_38/BiasAddBiasAdd'sequential_18/dense_38/MatMul:product:05sequential_18/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
sequential_18/dense_38/ReluRelu'sequential_18/dense_38/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
!sequential_18/dropout_40/IdentityIdentity)sequential_18/dense_38/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
,sequential_18/dense_39/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_39_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype0»
sequential_18/dense_39/MatMulMatMul*sequential_18/dropout_40/Identity:output:04sequential_18/dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_18/dense_39/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_18/dense_39/BiasAddBiasAdd'sequential_18/dense_39/MatMul:product:05sequential_18/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_18/dense_39/SigmoidSigmoid'sequential_18/dense_39/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentity"sequential_18/dense_39/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp.^sequential_18/dense_38/BiasAdd/ReadVariableOp-^sequential_18/dense_38/MatMul/ReadVariableOp.^sequential_18/dense_39/BiasAdd/ReadVariableOp-^sequential_18/dense_39/MatMul/ReadVariableOpK^sequential_18/token_and_position_embedding_9/embedding_18/embedding_lookupK^sequential_18/token_and_position_embedding_9/embedding_19/embedding_lookupR^sequential_18/transformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpV^sequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpR^sequential_18/transformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpV^sequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp]^sequential_18/transformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOpg^sequential_18/transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpP^sequential_18/transformer_block_9/multi_head_attention_9/key/add/ReadVariableOpZ^sequential_18/transformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpR^sequential_18/transformer_block_9/multi_head_attention_9/query/add/ReadVariableOp\^sequential_18/transformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpR^sequential_18/transformer_block_9/multi_head_attention_9/value/add/ReadVariableOp\^sequential_18/transformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpP^sequential_18/transformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpR^sequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpP^sequential_18/transformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpR^sequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 2^
-sequential_18/dense_38/BiasAdd/ReadVariableOp-sequential_18/dense_38/BiasAdd/ReadVariableOp2\
,sequential_18/dense_38/MatMul/ReadVariableOp,sequential_18/dense_38/MatMul/ReadVariableOp2^
-sequential_18/dense_39/BiasAdd/ReadVariableOp-sequential_18/dense_39/BiasAdd/ReadVariableOp2\
,sequential_18/dense_39/MatMul/ReadVariableOp,sequential_18/dense_39/MatMul/ReadVariableOp2
Jsequential_18/token_and_position_embedding_9/embedding_18/embedding_lookupJsequential_18/token_and_position_embedding_9/embedding_18/embedding_lookup2
Jsequential_18/token_and_position_embedding_9/embedding_19/embedding_lookupJsequential_18/token_and_position_embedding_9/embedding_19/embedding_lookup2¦
Qsequential_18/transformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpQsequential_18/transformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp2®
Usequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpUsequential_18/transformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp2¦
Qsequential_18/transformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpQsequential_18/transformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp2®
Usequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOpUsequential_18/transformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp2¼
\sequential_18/transformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp\sequential_18/transformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp2Ð
fsequential_18/transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpfsequential_18/transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp2¢
Osequential_18/transformer_block_9/multi_head_attention_9/key/add/ReadVariableOpOsequential_18/transformer_block_9/multi_head_attention_9/key/add/ReadVariableOp2¶
Ysequential_18/transformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpYsequential_18/transformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp2¦
Qsequential_18/transformer_block_9/multi_head_attention_9/query/add/ReadVariableOpQsequential_18/transformer_block_9/multi_head_attention_9/query/add/ReadVariableOp2º
[sequential_18/transformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp[sequential_18/transformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp2¦
Qsequential_18/transformer_block_9/multi_head_attention_9/value/add/ReadVariableOpQsequential_18/transformer_block_9/multi_head_attention_9/value/add/ReadVariableOp2º
[sequential_18/transformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp[sequential_18/transformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp2¢
Osequential_18/transformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpOsequential_18/transformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp2¦
Qsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpQsequential_18/transformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp2¢
Osequential_18/transformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpOsequential_18/transformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp2¦
Qsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpQsequential_18/transformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
"
_user_specified_name
input_10
Ì
Á
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_159471

inputsX
Bmulti_head_attention_9_query_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_9_query_add_readvariableop_resource: V
@multi_head_attention_9_key_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_9_key_add_readvariableop_resource: X
Bmulti_head_attention_9_value_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_9_value_add_readvariableop_resource: c
Mmulti_head_attention_9_attention_output_einsum_einsum_readvariableop_resource:  Q
Cmulti_head_attention_9_attention_output_add_readvariableop_resource: J
<layer_normalization_18_batchnorm_mul_readvariableop_resource: F
8layer_normalization_18_batchnorm_readvariableop_resource: K
8sequential_19_dense_36_tensordot_readvariableop_resource:	 ÈE
6sequential_19_dense_36_biasadd_readvariableop_resource:	ÈK
8sequential_19_dense_37_tensordot_readvariableop_resource:	È D
6sequential_19_dense_37_biasadd_readvariableop_resource: J
<layer_normalization_19_batchnorm_mul_readvariableop_resource: F
8layer_normalization_19_batchnorm_readvariableop_resource: 
identity¢/layer_normalization_18/batchnorm/ReadVariableOp¢3layer_normalization_18/batchnorm/mul/ReadVariableOp¢/layer_normalization_19/batchnorm/ReadVariableOp¢3layer_normalization_19/batchnorm/mul/ReadVariableOp¢:multi_head_attention_9/attention_output/add/ReadVariableOp¢Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_9/key/add/ReadVariableOp¢7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_9/query/add/ReadVariableOp¢9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_9/value/add/ReadVariableOp¢9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp¢-sequential_19/dense_36/BiasAdd/ReadVariableOp¢/sequential_19/dense_36/Tensordot/ReadVariableOp¢-sequential_19/dense_37/BiasAdd/ReadVariableOp¢/sequential_19/dense_37/Tensordot/ReadVariableOpÀ
9multi_head_attention_9/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_9_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0à
*multi_head_attention_9/query/einsum/EinsumEinsuminputsAmulti_head_attention_9/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¨
/multi_head_attention_9/query/add/ReadVariableOpReadVariableOp8multi_head_attention_9_query_add_readvariableop_resource*
_output_shapes

: *
dtype0Ò
 multi_head_attention_9/query/addAddV23multi_head_attention_9/query/einsum/Einsum:output:07multi_head_attention_9/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
7multi_head_attention_9/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_9_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ü
(multi_head_attention_9/key/einsum/EinsumEinsuminputs?multi_head_attention_9/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¤
-multi_head_attention_9/key/add/ReadVariableOpReadVariableOp6multi_head_attention_9_key_add_readvariableop_resource*
_output_shapes

: *
dtype0Ì
multi_head_attention_9/key/addAddV21multi_head_attention_9/key/einsum/Einsum:output:05multi_head_attention_9/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô À
9multi_head_attention_9/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_9_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0à
*multi_head_attention_9/value/einsum/EinsumEinsuminputsAmulti_head_attention_9/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¨
/multi_head_attention_9/value/add/ReadVariableOpReadVariableOp8multi_head_attention_9_value_add_readvariableop_resource*
_output_shapes

: *
dtype0Ò
 multi_head_attention_9/value/addAddV23multi_head_attention_9/value/einsum/Einsum:output:07multi_head_attention_9/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô a
multi_head_attention_9/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5>©
multi_head_attention_9/MulMul$multi_head_attention_9/query/add:z:0%multi_head_attention_9/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ö
$multi_head_attention_9/einsum/EinsumEinsum"multi_head_attention_9/key/add:z:0multi_head_attention_9/Mul:z:0*
N*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô*
equationaecd,abcd->acbe
&multi_head_attention_9/softmax/SoftmaxSoftmax-multi_head_attention_9/einsum/Einsum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôôë
&multi_head_attention_9/einsum_1/EinsumEinsum0multi_head_attention_9/softmax/Softmax:softmax:0$multi_head_attention_9/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationacbe,aecd->abcdÖ
Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_9_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0
5multi_head_attention_9/attention_output/einsum/EinsumEinsum/multi_head_attention_9/einsum_1/Einsum:output:0Lmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabcd,cde->abeº
:multi_head_attention_9/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_9_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0ï
+multi_head_attention_9/attention_output/addAddV2>multi_head_attention_9/attention_output/einsum/Einsum:output:0Bmulti_head_attention_9/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ]
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¨
dropout_37/dropout/MulMul/multi_head_attention_9/attention_output/add:z:0!dropout_37/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô w
dropout_37/dropout/ShapeShape/multi_head_attention_9/attention_output/add:z:0*
T0*
_output_shapes
:§
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0f
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ì
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô i
addAddV2inputsdropout_37/dropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
5layer_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¼
#layer_normalization_18/moments/meanMeanadd:z:0>layer_normalization_18/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims( 
+layer_normalization_18/moments/StopGradientStopGradient,layer_normalization_18/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô»
0layer_normalization_18/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_18/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
9layer_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
'layer_normalization_18/moments/varianceMean4layer_normalization_18/moments/SquaredDifference:z:0Blayer_normalization_18/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(k
&layer_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ç
$layer_normalization_18/batchnorm/addAddV20layer_normalization_18/moments/variance:output:0/layer_normalization_18/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&layer_normalization_18/batchnorm/RsqrtRsqrt(layer_normalization_18/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¬
3layer_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ë
$layer_normalization_18/batchnorm/mulMul*layer_normalization_18/batchnorm/Rsqrt:y:0;layer_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
&layer_normalization_18/batchnorm/mul_1Muladd:z:0(layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_18/batchnorm/mul_2Mul,layer_normalization_18/moments/mean:output:0(layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
/layer_normalization_18/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_18_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ç
$layer_normalization_18/batchnorm/subSub7layer_normalization_18/batchnorm/ReadVariableOp:value:0*layer_normalization_18/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_18/batchnorm/add_1AddV2*layer_normalization_18/batchnorm/mul_1:z:0(layer_normalization_18/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ©
/sequential_19/dense_36/Tensordot/ReadVariableOpReadVariableOp8sequential_19_dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0o
%sequential_19/dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_19/dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_19/dense_36/Tensordot/ShapeShape*layer_normalization_18/batchnorm/add_1:z:0*
T0*
_output_shapes
:p
.sequential_19/dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_36/Tensordot/GatherV2GatherV2/sequential_19/dense_36/Tensordot/Shape:output:0.sequential_19/dense_36/Tensordot/free:output:07sequential_19/dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_19/dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+sequential_19/dense_36/Tensordot/GatherV2_1GatherV2/sequential_19/dense_36/Tensordot/Shape:output:0.sequential_19/dense_36/Tensordot/axes:output:09sequential_19/dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_19/dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_19/dense_36/Tensordot/ProdProd2sequential_19/dense_36/Tensordot/GatherV2:output:0/sequential_19/dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_19/dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¹
'sequential_19/dense_36/Tensordot/Prod_1Prod4sequential_19/dense_36/Tensordot/GatherV2_1:output:01sequential_19/dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_19/dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ø
'sequential_19/dense_36/Tensordot/concatConcatV2.sequential_19/dense_36/Tensordot/free:output:0.sequential_19/dense_36/Tensordot/axes:output:05sequential_19/dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
&sequential_19/dense_36/Tensordot/stackPack.sequential_19/dense_36/Tensordot/Prod:output:00sequential_19/dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ì
*sequential_19/dense_36/Tensordot/transpose	Transpose*layer_normalization_18/batchnorm/add_1:z:00sequential_19/dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ï
(sequential_19/dense_36/Tensordot/ReshapeReshape.sequential_19/dense_36/Tensordot/transpose:y:0/sequential_19/dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ
'sequential_19/dense_36/Tensordot/MatMulMatMul1sequential_19/dense_36/Tensordot/Reshape:output:07sequential_19/dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
(sequential_19/dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Èp
.sequential_19/dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_36/Tensordot/concat_1ConcatV22sequential_19/dense_36/Tensordot/GatherV2:output:01sequential_19/dense_36/Tensordot/Const_2:output:07sequential_19/dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ê
 sequential_19/dense_36/TensordotReshape1sequential_19/dense_36/Tensordot/MatMul:product:02sequential_19/dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ¡
-sequential_19/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ã
sequential_19/dense_36/BiasAddBiasAdd)sequential_19/dense_36/Tensordot:output:05sequential_19/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
sequential_19/dense_36/ReluRelu'sequential_19/dense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ©
/sequential_19/dense_37/Tensordot/ReadVariableOpReadVariableOp8sequential_19_dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0o
%sequential_19/dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_19/dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_19/dense_37/Tensordot/ShapeShape)sequential_19/dense_36/Relu:activations:0*
T0*
_output_shapes
:p
.sequential_19/dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_37/Tensordot/GatherV2GatherV2/sequential_19/dense_37/Tensordot/Shape:output:0.sequential_19/dense_37/Tensordot/free:output:07sequential_19/dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_19/dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+sequential_19/dense_37/Tensordot/GatherV2_1GatherV2/sequential_19/dense_37/Tensordot/Shape:output:0.sequential_19/dense_37/Tensordot/axes:output:09sequential_19/dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_19/dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_19/dense_37/Tensordot/ProdProd2sequential_19/dense_37/Tensordot/GatherV2:output:0/sequential_19/dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_19/dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¹
'sequential_19/dense_37/Tensordot/Prod_1Prod4sequential_19/dense_37/Tensordot/GatherV2_1:output:01sequential_19/dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_19/dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ø
'sequential_19/dense_37/Tensordot/concatConcatV2.sequential_19/dense_37/Tensordot/free:output:0.sequential_19/dense_37/Tensordot/axes:output:05sequential_19/dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
&sequential_19/dense_37/Tensordot/stackPack.sequential_19/dense_37/Tensordot/Prod:output:00sequential_19/dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ì
*sequential_19/dense_37/Tensordot/transpose	Transpose)sequential_19/dense_36/Relu:activations:00sequential_19/dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÏ
(sequential_19/dense_37/Tensordot/ReshapeReshape.sequential_19/dense_37/Tensordot/transpose:y:0/sequential_19/dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏ
'sequential_19/dense_37/Tensordot/MatMulMatMul1sequential_19/dense_37/Tensordot/Reshape:output:07sequential_19/dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
(sequential_19/dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: p
.sequential_19/dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_37/Tensordot/concat_1ConcatV22sequential_19/dense_37/Tensordot/GatherV2:output:01sequential_19/dense_37/Tensordot/Const_2:output:07sequential_19/dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:É
 sequential_19/dense_37/TensordotReshape1sequential_19/dense_37/Tensordot/MatMul:product:02sequential_19/dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô  
-sequential_19/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_19/dense_37/BiasAddBiasAdd)sequential_19/dense_37/Tensordot:output:05sequential_19/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ]
dropout_38/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8? 
dropout_38/dropout/MulMul'sequential_19/dense_37/BiasAdd:output:0!dropout_38/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô o
dropout_38/dropout/ShapeShape'sequential_19/dense_37/BiasAdd:output:0*
T0*
_output_shapes
:§
/dropout_38/dropout/random_uniform/RandomUniformRandomUniform!dropout_38/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0f
!dropout_38/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ì
dropout_38/dropout/GreaterEqualGreaterEqual8dropout_38/dropout/random_uniform/RandomUniform:output:0*dropout_38/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_38/dropout/CastCast#dropout_38/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_38/dropout/Mul_1Muldropout_38/dropout/Mul:z:0dropout_38/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
add_1AddV2*layer_normalization_18/batchnorm/add_1:z:0dropout_38/dropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
5layer_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¾
#layer_normalization_19/moments/meanMean	add_1:z:0>layer_normalization_19/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims( 
+layer_normalization_19/moments/StopGradientStopGradient,layer_normalization_19/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô½
0layer_normalization_19/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_19/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
9layer_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
'layer_normalization_19/moments/varianceMean4layer_normalization_19/moments/SquaredDifference:z:0Blayer_normalization_19/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(k
&layer_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ç
$layer_normalization_19/batchnorm/addAddV20layer_normalization_19/moments/variance:output:0/layer_normalization_19/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&layer_normalization_19/batchnorm/RsqrtRsqrt(layer_normalization_19/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¬
3layer_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ë
$layer_normalization_19/batchnorm/mulMul*layer_normalization_19/batchnorm/Rsqrt:y:0;layer_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
&layer_normalization_19/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_19/batchnorm/mul_2Mul,layer_normalization_19/moments/mean:output:0(layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
/layer_normalization_19/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_19_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ç
$layer_normalization_19/batchnorm/subSub7layer_normalization_19/batchnorm/ReadVariableOp:value:0*layer_normalization_19/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_19/batchnorm/add_1AddV2*layer_normalization_19/batchnorm/mul_1:z:0(layer_normalization_19/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ~
IdentityIdentity*layer_normalization_19/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
NoOpNoOp0^layer_normalization_18/batchnorm/ReadVariableOp4^layer_normalization_18/batchnorm/mul/ReadVariableOp0^layer_normalization_19/batchnorm/ReadVariableOp4^layer_normalization_19/batchnorm/mul/ReadVariableOp;^multi_head_attention_9/attention_output/add/ReadVariableOpE^multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_9/key/add/ReadVariableOp8^multi_head_attention_9/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_9/query/add/ReadVariableOp:^multi_head_attention_9/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_9/value/add/ReadVariableOp:^multi_head_attention_9/value/einsum/Einsum/ReadVariableOp.^sequential_19/dense_36/BiasAdd/ReadVariableOp0^sequential_19/dense_36/Tensordot/ReadVariableOp.^sequential_19/dense_37/BiasAdd/ReadVariableOp0^sequential_19/dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿô : : : : : : : : : : : : : : : : 2b
/layer_normalization_18/batchnorm/ReadVariableOp/layer_normalization_18/batchnorm/ReadVariableOp2j
3layer_normalization_18/batchnorm/mul/ReadVariableOp3layer_normalization_18/batchnorm/mul/ReadVariableOp2b
/layer_normalization_19/batchnorm/ReadVariableOp/layer_normalization_19/batchnorm/ReadVariableOp2j
3layer_normalization_19/batchnorm/mul/ReadVariableOp3layer_normalization_19/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_9/attention_output/add/ReadVariableOp:multi_head_attention_9/attention_output/add/ReadVariableOp2
Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_9/key/add/ReadVariableOp-multi_head_attention_9/key/add/ReadVariableOp2r
7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_9/query/add/ReadVariableOp/multi_head_attention_9/query/add/ReadVariableOp2v
9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_9/value/add/ReadVariableOp/multi_head_attention_9/value/add/ReadVariableOp2v
9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp2^
-sequential_19/dense_36/BiasAdd/ReadVariableOp-sequential_19/dense_36/BiasAdd/ReadVariableOp2b
/sequential_19/dense_36/Tensordot/ReadVariableOp/sequential_19/dense_36/Tensordot/ReadVariableOp2^
-sequential_19/dense_37/BiasAdd/ReadVariableOp-sequential_19/dense_37/BiasAdd/ReadVariableOp2b
/sequential_19/dense_37/Tensordot/ReadVariableOp/sequential_19/dense_37/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
Ý
d
F__inference_dropout_40_layer_call_and_return_conditional_losses_157915

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
»½
Á
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_159331

inputsX
Bmulti_head_attention_9_query_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_9_query_add_readvariableop_resource: V
@multi_head_attention_9_key_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_9_key_add_readvariableop_resource: X
Bmulti_head_attention_9_value_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_9_value_add_readvariableop_resource: c
Mmulti_head_attention_9_attention_output_einsum_einsum_readvariableop_resource:  Q
Cmulti_head_attention_9_attention_output_add_readvariableop_resource: J
<layer_normalization_18_batchnorm_mul_readvariableop_resource: F
8layer_normalization_18_batchnorm_readvariableop_resource: K
8sequential_19_dense_36_tensordot_readvariableop_resource:	 ÈE
6sequential_19_dense_36_biasadd_readvariableop_resource:	ÈK
8sequential_19_dense_37_tensordot_readvariableop_resource:	È D
6sequential_19_dense_37_biasadd_readvariableop_resource: J
<layer_normalization_19_batchnorm_mul_readvariableop_resource: F
8layer_normalization_19_batchnorm_readvariableop_resource: 
identity¢/layer_normalization_18/batchnorm/ReadVariableOp¢3layer_normalization_18/batchnorm/mul/ReadVariableOp¢/layer_normalization_19/batchnorm/ReadVariableOp¢3layer_normalization_19/batchnorm/mul/ReadVariableOp¢:multi_head_attention_9/attention_output/add/ReadVariableOp¢Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_9/key/add/ReadVariableOp¢7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_9/query/add/ReadVariableOp¢9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_9/value/add/ReadVariableOp¢9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp¢-sequential_19/dense_36/BiasAdd/ReadVariableOp¢/sequential_19/dense_36/Tensordot/ReadVariableOp¢-sequential_19/dense_37/BiasAdd/ReadVariableOp¢/sequential_19/dense_37/Tensordot/ReadVariableOpÀ
9multi_head_attention_9/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_9_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0à
*multi_head_attention_9/query/einsum/EinsumEinsuminputsAmulti_head_attention_9/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¨
/multi_head_attention_9/query/add/ReadVariableOpReadVariableOp8multi_head_attention_9_query_add_readvariableop_resource*
_output_shapes

: *
dtype0Ò
 multi_head_attention_9/query/addAddV23multi_head_attention_9/query/einsum/Einsum:output:07multi_head_attention_9/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
7multi_head_attention_9/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_9_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ü
(multi_head_attention_9/key/einsum/EinsumEinsuminputs?multi_head_attention_9/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¤
-multi_head_attention_9/key/add/ReadVariableOpReadVariableOp6multi_head_attention_9_key_add_readvariableop_resource*
_output_shapes

: *
dtype0Ì
multi_head_attention_9/key/addAddV21multi_head_attention_9/key/einsum/Einsum:output:05multi_head_attention_9/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô À
9multi_head_attention_9/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_9_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0à
*multi_head_attention_9/value/einsum/EinsumEinsuminputsAmulti_head_attention_9/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¨
/multi_head_attention_9/value/add/ReadVariableOpReadVariableOp8multi_head_attention_9_value_add_readvariableop_resource*
_output_shapes

: *
dtype0Ò
 multi_head_attention_9/value/addAddV23multi_head_attention_9/value/einsum/Einsum:output:07multi_head_attention_9/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô a
multi_head_attention_9/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5>©
multi_head_attention_9/MulMul$multi_head_attention_9/query/add:z:0%multi_head_attention_9/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ö
$multi_head_attention_9/einsum/EinsumEinsum"multi_head_attention_9/key/add:z:0multi_head_attention_9/Mul:z:0*
N*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô*
equationaecd,abcd->acbe
&multi_head_attention_9/softmax/SoftmaxSoftmax-multi_head_attention_9/einsum/Einsum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô¡
'multi_head_attention_9/dropout/IdentityIdentity0multi_head_attention_9/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôôë
&multi_head_attention_9/einsum_1/EinsumEinsum0multi_head_attention_9/dropout/Identity:output:0$multi_head_attention_9/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationacbe,aecd->abcdÖ
Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_9_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0
5multi_head_attention_9/attention_output/einsum/EinsumEinsum/multi_head_attention_9/einsum_1/Einsum:output:0Lmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabcd,cde->abeº
:multi_head_attention_9/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_9_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0ï
+multi_head_attention_9/attention_output/addAddV2>multi_head_attention_9/attention_output/einsum/Einsum:output:0Bmulti_head_attention_9/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_37/IdentityIdentity/multi_head_attention_9/attention_output/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô i
addAddV2inputsdropout_37/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
5layer_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¼
#layer_normalization_18/moments/meanMeanadd:z:0>layer_normalization_18/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims( 
+layer_normalization_18/moments/StopGradientStopGradient,layer_normalization_18/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô»
0layer_normalization_18/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_18/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
9layer_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
'layer_normalization_18/moments/varianceMean4layer_normalization_18/moments/SquaredDifference:z:0Blayer_normalization_18/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(k
&layer_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ç
$layer_normalization_18/batchnorm/addAddV20layer_normalization_18/moments/variance:output:0/layer_normalization_18/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&layer_normalization_18/batchnorm/RsqrtRsqrt(layer_normalization_18/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¬
3layer_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ë
$layer_normalization_18/batchnorm/mulMul*layer_normalization_18/batchnorm/Rsqrt:y:0;layer_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
&layer_normalization_18/batchnorm/mul_1Muladd:z:0(layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_18/batchnorm/mul_2Mul,layer_normalization_18/moments/mean:output:0(layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
/layer_normalization_18/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_18_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ç
$layer_normalization_18/batchnorm/subSub7layer_normalization_18/batchnorm/ReadVariableOp:value:0*layer_normalization_18/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_18/batchnorm/add_1AddV2*layer_normalization_18/batchnorm/mul_1:z:0(layer_normalization_18/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ©
/sequential_19/dense_36/Tensordot/ReadVariableOpReadVariableOp8sequential_19_dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0o
%sequential_19/dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_19/dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_19/dense_36/Tensordot/ShapeShape*layer_normalization_18/batchnorm/add_1:z:0*
T0*
_output_shapes
:p
.sequential_19/dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_36/Tensordot/GatherV2GatherV2/sequential_19/dense_36/Tensordot/Shape:output:0.sequential_19/dense_36/Tensordot/free:output:07sequential_19/dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_19/dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+sequential_19/dense_36/Tensordot/GatherV2_1GatherV2/sequential_19/dense_36/Tensordot/Shape:output:0.sequential_19/dense_36/Tensordot/axes:output:09sequential_19/dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_19/dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_19/dense_36/Tensordot/ProdProd2sequential_19/dense_36/Tensordot/GatherV2:output:0/sequential_19/dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_19/dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¹
'sequential_19/dense_36/Tensordot/Prod_1Prod4sequential_19/dense_36/Tensordot/GatherV2_1:output:01sequential_19/dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_19/dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ø
'sequential_19/dense_36/Tensordot/concatConcatV2.sequential_19/dense_36/Tensordot/free:output:0.sequential_19/dense_36/Tensordot/axes:output:05sequential_19/dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
&sequential_19/dense_36/Tensordot/stackPack.sequential_19/dense_36/Tensordot/Prod:output:00sequential_19/dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ì
*sequential_19/dense_36/Tensordot/transpose	Transpose*layer_normalization_18/batchnorm/add_1:z:00sequential_19/dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ï
(sequential_19/dense_36/Tensordot/ReshapeReshape.sequential_19/dense_36/Tensordot/transpose:y:0/sequential_19/dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ
'sequential_19/dense_36/Tensordot/MatMulMatMul1sequential_19/dense_36/Tensordot/Reshape:output:07sequential_19/dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
(sequential_19/dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Èp
.sequential_19/dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_36/Tensordot/concat_1ConcatV22sequential_19/dense_36/Tensordot/GatherV2:output:01sequential_19/dense_36/Tensordot/Const_2:output:07sequential_19/dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ê
 sequential_19/dense_36/TensordotReshape1sequential_19/dense_36/Tensordot/MatMul:product:02sequential_19/dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ¡
-sequential_19/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ã
sequential_19/dense_36/BiasAddBiasAdd)sequential_19/dense_36/Tensordot:output:05sequential_19/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
sequential_19/dense_36/ReluRelu'sequential_19/dense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ©
/sequential_19/dense_37/Tensordot/ReadVariableOpReadVariableOp8sequential_19_dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0o
%sequential_19/dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_19/dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_19/dense_37/Tensordot/ShapeShape)sequential_19/dense_36/Relu:activations:0*
T0*
_output_shapes
:p
.sequential_19/dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_37/Tensordot/GatherV2GatherV2/sequential_19/dense_37/Tensordot/Shape:output:0.sequential_19/dense_37/Tensordot/free:output:07sequential_19/dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_19/dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+sequential_19/dense_37/Tensordot/GatherV2_1GatherV2/sequential_19/dense_37/Tensordot/Shape:output:0.sequential_19/dense_37/Tensordot/axes:output:09sequential_19/dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_19/dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_19/dense_37/Tensordot/ProdProd2sequential_19/dense_37/Tensordot/GatherV2:output:0/sequential_19/dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_19/dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¹
'sequential_19/dense_37/Tensordot/Prod_1Prod4sequential_19/dense_37/Tensordot/GatherV2_1:output:01sequential_19/dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_19/dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ø
'sequential_19/dense_37/Tensordot/concatConcatV2.sequential_19/dense_37/Tensordot/free:output:0.sequential_19/dense_37/Tensordot/axes:output:05sequential_19/dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
&sequential_19/dense_37/Tensordot/stackPack.sequential_19/dense_37/Tensordot/Prod:output:00sequential_19/dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ì
*sequential_19/dense_37/Tensordot/transpose	Transpose)sequential_19/dense_36/Relu:activations:00sequential_19/dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÏ
(sequential_19/dense_37/Tensordot/ReshapeReshape.sequential_19/dense_37/Tensordot/transpose:y:0/sequential_19/dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏ
'sequential_19/dense_37/Tensordot/MatMulMatMul1sequential_19/dense_37/Tensordot/Reshape:output:07sequential_19/dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
(sequential_19/dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: p
.sequential_19/dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_37/Tensordot/concat_1ConcatV22sequential_19/dense_37/Tensordot/GatherV2:output:01sequential_19/dense_37/Tensordot/Const_2:output:07sequential_19/dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:É
 sequential_19/dense_37/TensordotReshape1sequential_19/dense_37/Tensordot/MatMul:product:02sequential_19/dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô  
-sequential_19/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_19/dense_37/BiasAddBiasAdd)sequential_19/dense_37/Tensordot:output:05sequential_19/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_38/IdentityIdentity'sequential_19/dense_37/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
add_1AddV2*layer_normalization_18/batchnorm/add_1:z:0dropout_38/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
5layer_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¾
#layer_normalization_19/moments/meanMean	add_1:z:0>layer_normalization_19/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims( 
+layer_normalization_19/moments/StopGradientStopGradient,layer_normalization_19/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô½
0layer_normalization_19/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_19/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
9layer_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
'layer_normalization_19/moments/varianceMean4layer_normalization_19/moments/SquaredDifference:z:0Blayer_normalization_19/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(k
&layer_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ç
$layer_normalization_19/batchnorm/addAddV20layer_normalization_19/moments/variance:output:0/layer_normalization_19/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&layer_normalization_19/batchnorm/RsqrtRsqrt(layer_normalization_19/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¬
3layer_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ë
$layer_normalization_19/batchnorm/mulMul*layer_normalization_19/batchnorm/Rsqrt:y:0;layer_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
&layer_normalization_19/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_19/batchnorm/mul_2Mul,layer_normalization_19/moments/mean:output:0(layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
/layer_normalization_19/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_19_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ç
$layer_normalization_19/batchnorm/subSub7layer_normalization_19/batchnorm/ReadVariableOp:value:0*layer_normalization_19/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_19/batchnorm/add_1AddV2*layer_normalization_19/batchnorm/mul_1:z:0(layer_normalization_19/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ~
IdentityIdentity*layer_normalization_19/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
NoOpNoOp0^layer_normalization_18/batchnorm/ReadVariableOp4^layer_normalization_18/batchnorm/mul/ReadVariableOp0^layer_normalization_19/batchnorm/ReadVariableOp4^layer_normalization_19/batchnorm/mul/ReadVariableOp;^multi_head_attention_9/attention_output/add/ReadVariableOpE^multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_9/key/add/ReadVariableOp8^multi_head_attention_9/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_9/query/add/ReadVariableOp:^multi_head_attention_9/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_9/value/add/ReadVariableOp:^multi_head_attention_9/value/einsum/Einsum/ReadVariableOp.^sequential_19/dense_36/BiasAdd/ReadVariableOp0^sequential_19/dense_36/Tensordot/ReadVariableOp.^sequential_19/dense_37/BiasAdd/ReadVariableOp0^sequential_19/dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿô : : : : : : : : : : : : : : : : 2b
/layer_normalization_18/batchnorm/ReadVariableOp/layer_normalization_18/batchnorm/ReadVariableOp2j
3layer_normalization_18/batchnorm/mul/ReadVariableOp3layer_normalization_18/batchnorm/mul/ReadVariableOp2b
/layer_normalization_19/batchnorm/ReadVariableOp/layer_normalization_19/batchnorm/ReadVariableOp2j
3layer_normalization_19/batchnorm/mul/ReadVariableOp3layer_normalization_19/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_9/attention_output/add/ReadVariableOp:multi_head_attention_9/attention_output/add/ReadVariableOp2
Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_9/key/add/ReadVariableOp-multi_head_attention_9/key/add/ReadVariableOp2r
7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_9/query/add/ReadVariableOp/multi_head_attention_9/query/add/ReadVariableOp2v
9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_9/value/add/ReadVariableOp/multi_head_attention_9/value/add/ReadVariableOp2v
9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp2^
-sequential_19/dense_36/BiasAdd/ReadVariableOp-sequential_19/dense_36/BiasAdd/ReadVariableOp2b
/sequential_19/dense_36/Tensordot/ReadVariableOp/sequential_19/dense_36/Tensordot/ReadVariableOp2^
-sequential_19/dense_37/BiasAdd/ReadVariableOp-sequential_19/dense_37/BiasAdd/ReadVariableOp2b
/sequential_19/dense_37/Tensordot/ReadVariableOp/sequential_19/dense_37/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_39_layer_call_and_return_conditional_losses_159497

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ö
ü
D__inference_dense_37_layer_call_and_return_conditional_losses_157555

inputs4
!tensordot_readvariableop_resource:	È -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿôÈ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
 
_user_specified_nameinputs
õ-
³

I__inference_sequential_18_layer_call_and_return_conditional_losses_158585
input_108
%token_and_position_embedding_9_158533:	ô 8
%token_and_position_embedding_9_158535:	N 0
transformer_block_9_158538:  ,
transformer_block_9_158540: 0
transformer_block_9_158542:  ,
transformer_block_9_158544: 0
transformer_block_9_158546:  ,
transformer_block_9_158548: 0
transformer_block_9_158550:  (
transformer_block_9_158552: (
transformer_block_9_158554: (
transformer_block_9_158556: -
transformer_block_9_158558:	 È)
transformer_block_9_158560:	È-
transformer_block_9_158562:	È (
transformer_block_9_158564: (
transformer_block_9_158566: (
transformer_block_9_158568: "
dense_38_158573:	 È
dense_38_158575:	È"
dense_39_158579:	È
dense_39_158581:
identity¢ dense_38/StatefulPartitionedCall¢ dense_39/StatefulPartitionedCall¢"dropout_39/StatefulPartitionedCall¢"dropout_40/StatefulPartitionedCall¢6token_and_position_embedding_9/StatefulPartitionedCall¢+transformer_block_9/StatefulPartitionedCallÏ
6token_and_position_embedding_9/StatefulPartitionedCallStatefulPartitionedCallinput_10%token_and_position_embedding_9_158533%token_and_position_embedding_9_158535*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_157718þ
+transformer_block_9/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_9/StatefulPartitionedCall:output:0transformer_block_9_158538transformer_block_9_158540transformer_block_9_158542transformer_block_9_158544transformer_block_9_158546transformer_block_9_158548transformer_block_9_158550transformer_block_9_158552transformer_block_9_158554transformer_block_9_158556transformer_block_9_158558transformer_block_9_158560transformer_block_9_158562transformer_block_9_158564transformer_block_9_158566transformer_block_9_158568*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_158228
*global_average_pooling1d_9/PartitionedCallPartitionedCall4transformer_block_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_157684ù
"dropout_39/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_158045
 dense_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_39/StatefulPartitionedCall:output:0dense_38_158573dense_38_158575*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_157904
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0#^dropout_39/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_40_layer_call_and_return_conditional_losses_158012
 dense_39/StatefulPartitionedCallStatefulPartitionedCall+dropout_40/StatefulPartitionedCall:output:0dense_39_158579dense_39_158581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_157928x
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
NoOpNoOp!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall#^dropout_39/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall7^token_and_position_embedding_9/StatefulPartitionedCall,^transformer_block_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2H
"dropout_39/StatefulPartitionedCall"dropout_39/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall2p
6token_and_position_embedding_9/StatefulPartitionedCall6token_and_position_embedding_9/StatefulPartitionedCall2Z
+transformer_block_9/StatefulPartitionedCall+transformer_block_9/StatefulPartitionedCall:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
"
_user_specified_name
input_10
¡
G
+__inference_dropout_39_layer_call_fn_159487

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_157891`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ò
½
I__inference_sequential_19_layer_call_and_return_conditional_losses_157674
dense_36_input"
dense_36_157663:	 È
dense_36_157665:	È"
dense_37_157668:	È 
dense_37_157670: 
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCallþ
 dense_36/StatefulPartitionedCallStatefulPartitionedCalldense_36_inputdense_36_157663dense_36_157665*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_157519
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_157668dense_37_157670*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_157555}
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
(
_user_specified_namedense_36_input
Ì
â
.__inference_sequential_18_layer_call_fn_158691

inputs
unknown:	ô 
	unknown_0:	N 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:	 È

unknown_12:	È

unknown_13:	È 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	 È

unknown_18:	È

unknown_19:	È

unknown_20:
identity¢StatefulPartitionedCallí
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_157935o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_39_layer_call_and_return_conditional_losses_159509

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ò
½
I__inference_sequential_19_layer_call_and_return_conditional_losses_157660
dense_36_input"
dense_36_157649:	 È
dense_36_157651:	È"
dense_37_157654:	È 
dense_37_157656: 
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCallþ
 dense_36/StatefulPartitionedCallStatefulPartitionedCalldense_36_inputdense_36_157649dense_36_157651*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_157519
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_157654dense_37_157656*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_157555}
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
(
_user_specified_namedense_36_input
÷
d
+__inference_dropout_40_layer_call_fn_159539

inputs
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_40_layer_call_and_return_conditional_losses_158012p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
ü	
e
F__inference_dropout_40_layer_call_and_return_conditional_losses_158012

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
ó
d
+__inference_dropout_39_layer_call_fn_159492

inputs
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_158045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ù

)__inference_dense_37_layer_call_fn_159765

inputs
unknown:	È 
	unknown_0: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_157555t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿôÈ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
 
_user_specified_nameinputs
¢É
Ø
I__inference_sequential_18_layer_call_and_return_conditional_losses_159097

inputsV
Ctoken_and_position_embedding_9_embedding_19_embedding_lookup_158916:	ô V
Ctoken_and_position_embedding_9_embedding_18_embedding_lookup_158922:	N l
Vtransformer_block_9_multi_head_attention_9_query_einsum_einsum_readvariableop_resource:  ^
Ltransformer_block_9_multi_head_attention_9_query_add_readvariableop_resource: j
Ttransformer_block_9_multi_head_attention_9_key_einsum_einsum_readvariableop_resource:  \
Jtransformer_block_9_multi_head_attention_9_key_add_readvariableop_resource: l
Vtransformer_block_9_multi_head_attention_9_value_einsum_einsum_readvariableop_resource:  ^
Ltransformer_block_9_multi_head_attention_9_value_add_readvariableop_resource: w
atransformer_block_9_multi_head_attention_9_attention_output_einsum_einsum_readvariableop_resource:  e
Wtransformer_block_9_multi_head_attention_9_attention_output_add_readvariableop_resource: ^
Ptransformer_block_9_layer_normalization_18_batchnorm_mul_readvariableop_resource: Z
Ltransformer_block_9_layer_normalization_18_batchnorm_readvariableop_resource: _
Ltransformer_block_9_sequential_19_dense_36_tensordot_readvariableop_resource:	 ÈY
Jtransformer_block_9_sequential_19_dense_36_biasadd_readvariableop_resource:	È_
Ltransformer_block_9_sequential_19_dense_37_tensordot_readvariableop_resource:	È X
Jtransformer_block_9_sequential_19_dense_37_biasadd_readvariableop_resource: ^
Ptransformer_block_9_layer_normalization_19_batchnorm_mul_readvariableop_resource: Z
Ltransformer_block_9_layer_normalization_19_batchnorm_readvariableop_resource: :
'dense_38_matmul_readvariableop_resource:	 È7
(dense_38_biasadd_readvariableop_resource:	È:
'dense_39_matmul_readvariableop_resource:	È6
(dense_39_biasadd_readvariableop_resource:
identity¢dense_38/BiasAdd/ReadVariableOp¢dense_38/MatMul/ReadVariableOp¢dense_39/BiasAdd/ReadVariableOp¢dense_39/MatMul/ReadVariableOp¢<token_and_position_embedding_9/embedding_18/embedding_lookup¢<token_and_position_embedding_9/embedding_19/embedding_lookup¢Ctransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp¢Gtransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp¢Ctransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp¢Gtransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp¢Ntransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp¢Xtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp¢Atransformer_block_9/multi_head_attention_9/key/add/ReadVariableOp¢Ktransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp¢Ctransformer_block_9/multi_head_attention_9/query/add/ReadVariableOp¢Mtransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp¢Ctransformer_block_9/multi_head_attention_9/value/add/ReadVariableOp¢Mtransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp¢Atransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp¢Ctransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp¢Atransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp¢Ctransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpZ
$token_and_position_embedding_9/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_9/strided_sliceStridedSlice-token_and_position_embedding_9/Shape:output:0;token_and_position_embedding_9/strided_slice/stack:output:0=token_and_position_embedding_9/strided_slice/stack_1:output:0=token_and_position_embedding_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_9/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_9/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ë
$token_and_position_embedding_9/rangeRange3token_and_position_embedding_9/range/start:output:05token_and_position_embedding_9/strided_slice:output:03token_and_position_embedding_9/range/delta:output:0*
_output_shapes	
:ôØ
<token_and_position_embedding_9/embedding_19/embedding_lookupResourceGatherCtoken_and_position_embedding_9_embedding_19_embedding_lookup_158916-token_and_position_embedding_9/range:output:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_9/embedding_19/embedding_lookup/158916*
_output_shapes
:	ô *
dtype0
Etoken_and_position_embedding_9/embedding_19/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_9/embedding_19/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_9/embedding_19/embedding_lookup/158916*
_output_shapes
:	ô Í
Gtoken_and_position_embedding_9/embedding_19/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_9/embedding_19/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	ô 
0token_and_position_embedding_9/embedding_18/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿôì
<token_and_position_embedding_9/embedding_18/embedding_lookupResourceGatherCtoken_and_position_embedding_9_embedding_18_embedding_lookup_1589224token_and_position_embedding_9/embedding_18/Cast:y:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_9/embedding_18/embedding_lookup/158922*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0§
Etoken_and_position_embedding_9/embedding_18/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_9/embedding_18/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_9/embedding_18/embedding_lookup/158922*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ú
Gtoken_and_position_embedding_9/embedding_18/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_9/embedding_18/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
"token_and_position_embedding_9/addAddV2Ptoken_and_position_embedding_9/embedding_18/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_9/embedding_19/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô è
Mtransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_9_multi_head_attention_9_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0¨
>transformer_block_9/multi_head_attention_9/query/einsum/EinsumEinsum&token_and_position_embedding_9/add:z:0Utransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeÐ
Ctransformer_block_9/multi_head_attention_9/query/add/ReadVariableOpReadVariableOpLtransformer_block_9_multi_head_attention_9_query_add_readvariableop_resource*
_output_shapes

: *
dtype0
4transformer_block_9/multi_head_attention_9/query/addAddV2Gtransformer_block_9/multi_head_attention_9/query/einsum/Einsum:output:0Ktransformer_block_9/multi_head_attention_9/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ä
Ktransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_9_multi_head_attention_9_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0¤
<transformer_block_9/multi_head_attention_9/key/einsum/EinsumEinsum&token_and_position_embedding_9/add:z:0Stransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeÌ
Atransformer_block_9/multi_head_attention_9/key/add/ReadVariableOpReadVariableOpJtransformer_block_9_multi_head_attention_9_key_add_readvariableop_resource*
_output_shapes

: *
dtype0
2transformer_block_9/multi_head_attention_9/key/addAddV2Etransformer_block_9/multi_head_attention_9/key/einsum/Einsum:output:0Itransformer_block_9/multi_head_attention_9/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô è
Mtransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_9_multi_head_attention_9_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0¨
>transformer_block_9/multi_head_attention_9/value/einsum/EinsumEinsum&token_and_position_embedding_9/add:z:0Utransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeÐ
Ctransformer_block_9/multi_head_attention_9/value/add/ReadVariableOpReadVariableOpLtransformer_block_9_multi_head_attention_9_value_add_readvariableop_resource*
_output_shapes

: *
dtype0
4transformer_block_9/multi_head_attention_9/value/addAddV2Gtransformer_block_9/multi_head_attention_9/value/einsum/Einsum:output:0Ktransformer_block_9/multi_head_attention_9/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô u
0transformer_block_9/multi_head_attention_9/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5>å
.transformer_block_9/multi_head_attention_9/MulMul8transformer_block_9/multi_head_attention_9/query/add:z:09transformer_block_9/multi_head_attention_9/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
8transformer_block_9/multi_head_attention_9/einsum/EinsumEinsum6transformer_block_9/multi_head_attention_9/key/add:z:02transformer_block_9/multi_head_attention_9/Mul:z:0*
N*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô*
equationaecd,abcd->acbeÄ
:transformer_block_9/multi_head_attention_9/softmax/SoftmaxSoftmaxAtransformer_block_9/multi_head_attention_9/einsum/Einsum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô§
:transformer_block_9/multi_head_attention_9/einsum_1/EinsumEinsumDtransformer_block_9/multi_head_attention_9/softmax/Softmax:softmax:08transformer_block_9/multi_head_attention_9/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationacbe,aecd->abcdþ
Xtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_9_multi_head_attention_9_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0×
Itransformer_block_9/multi_head_attention_9/attention_output/einsum/EinsumEinsumCtransformer_block_9/multi_head_attention_9/einsum_1/Einsum:output:0`transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabcd,cde->abeâ
Ntransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_9_multi_head_attention_9_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0«
?transformer_block_9/multi_head_attention_9/attention_output/addAddV2Rtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum:output:0Vtransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô q
,transformer_block_9/dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ä
*transformer_block_9/dropout_37/dropout/MulMulCtransformer_block_9/multi_head_attention_9/attention_output/add:z:05transformer_block_9/dropout_37/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
,transformer_block_9/dropout_37/dropout/ShapeShapeCtransformer_block_9/multi_head_attention_9/attention_output/add:z:0*
T0*
_output_shapes
:Ï
Ctransformer_block_9/dropout_37/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_9/dropout_37/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0z
5transformer_block_9/dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=
3transformer_block_9/dropout_37/dropout/GreaterEqualGreaterEqualLtransformer_block_9/dropout_37/dropout/random_uniform/RandomUniform:output:0>transformer_block_9/dropout_37/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ²
+transformer_block_9/dropout_37/dropout/CastCast7transformer_block_9/dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ë
,transformer_block_9/dropout_37/dropout/Mul_1Mul.transformer_block_9/dropout_37/dropout/Mul:z:0/transformer_block_9/dropout_37/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ±
transformer_block_9/addAddV2&token_and_position_embedding_9/add:z:00transformer_block_9/dropout_37/dropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Itransformer_block_9/layer_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ø
7transformer_block_9/layer_normalization_18/moments/meanMeantransformer_block_9/add:z:0Rtransformer_block_9/layer_normalization_18/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(È
?transformer_block_9/layer_normalization_18/moments/StopGradientStopGradient@transformer_block_9/layer_normalization_18/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô÷
Dtransformer_block_9/layer_normalization_18/moments/SquaredDifferenceSquaredDifferencetransformer_block_9/add:z:0Htransformer_block_9/layer_normalization_18/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Mtransformer_block_9/layer_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:­
;transformer_block_9/layer_normalization_18/moments/varianceMeanHtransformer_block_9/layer_normalization_18/moments/SquaredDifference:z:0Vtransformer_block_9/layer_normalization_18/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(
:transformer_block_9/layer_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
8transformer_block_9/layer_normalization_18/batchnorm/addAddV2Dtransformer_block_9/layer_normalization_18/moments/variance:output:0Ctransformer_block_9/layer_normalization_18/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¸
:transformer_block_9/layer_normalization_18/batchnorm/RsqrtRsqrt<transformer_block_9/layer_normalization_18/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÔ
Gtransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_9_layer_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
8transformer_block_9/layer_normalization_18/batchnorm/mulMul>transformer_block_9/layer_normalization_18/batchnorm/Rsqrt:y:0Otransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ó
:transformer_block_9/layer_normalization_18/batchnorm/mul_1Multransformer_block_9/add:z:0<transformer_block_9/layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ø
:transformer_block_9/layer_normalization_18/batchnorm/mul_2Mul@transformer_block_9/layer_normalization_18/moments/mean:output:0<transformer_block_9/layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ì
Ctransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_9_layer_normalization_18_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
8transformer_block_9/layer_normalization_18/batchnorm/subSubKtransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp:value:0>transformer_block_9/layer_normalization_18/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ø
:transformer_block_9/layer_normalization_18/batchnorm/add_1AddV2>transformer_block_9/layer_normalization_18/batchnorm/mul_1:z:0<transformer_block_9/layer_normalization_18/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ñ
Ctransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpReadVariableOpLtransformer_block_9_sequential_19_dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0
9transformer_block_9/sequential_19/dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_block_9/sequential_19/dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¨
:transformer_block_9/sequential_19/dense_36/Tensordot/ShapeShape>transformer_block_9/layer_normalization_18/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Btransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2GatherV2Ctransformer_block_9/sequential_19/dense_36/Tensordot/Shape:output:0Btransformer_block_9/sequential_19/dense_36/Tensordot/free:output:0Ktransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1GatherV2Ctransformer_block_9/sequential_19/dense_36/Tensordot/Shape:output:0Btransformer_block_9/sequential_19/dense_36/Tensordot/axes:output:0Mtransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_block_9/sequential_19/dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_block_9/sequential_19/dense_36/Tensordot/ProdProdFtransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2:output:0Ctransformer_block_9/sequential_19/dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_block_9/sequential_19/dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_block_9/sequential_19/dense_36/Tensordot/Prod_1ProdHtransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1:output:0Etransformer_block_9/sequential_19/dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_block_9/sequential_19/dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_block_9/sequential_19/dense_36/Tensordot/concatConcatV2Btransformer_block_9/sequential_19/dense_36/Tensordot/free:output:0Btransformer_block_9/sequential_19/dense_36/Tensordot/axes:output:0Itransformer_block_9/sequential_19/dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_block_9/sequential_19/dense_36/Tensordot/stackPackBtransformer_block_9/sequential_19/dense_36/Tensordot/Prod:output:0Dtransformer_block_9/sequential_19/dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_block_9/sequential_19/dense_36/Tensordot/transpose	Transpose>transformer_block_9/layer_normalization_18/batchnorm/add_1:z:0Dtransformer_block_9/sequential_19/dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
<transformer_block_9/sequential_19/dense_36/Tensordot/ReshapeReshapeBtransformer_block_9/sequential_19/dense_36/Tensordot/transpose:y:0Ctransformer_block_9/sequential_19/dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_block_9/sequential_19/dense_36/Tensordot/MatMulMatMulEtransformer_block_9/sequential_19/dense_36/Tensordot/Reshape:output:0Ktransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
<transformer_block_9/sequential_19/dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:È
Btransformer_block_9/sequential_19/dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_block_9/sequential_19/dense_36/Tensordot/concat_1ConcatV2Ftransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2:output:0Etransformer_block_9/sequential_19/dense_36/Tensordot/Const_2:output:0Ktransformer_block_9/sequential_19/dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_block_9/sequential_19/dense_36/TensordotReshapeEtransformer_block_9/sequential_19/dense_36/Tensordot/MatMul:product:0Ftransformer_block_9/sequential_19/dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÉ
Atransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpReadVariableOpJtransformer_block_9_sequential_19_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0ÿ
2transformer_block_9/sequential_19/dense_36/BiasAddBiasAdd=transformer_block_9/sequential_19/dense_36/Tensordot:output:0Itransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ¬
/transformer_block_9/sequential_19/dense_36/ReluRelu;transformer_block_9/sequential_19/dense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÑ
Ctransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpReadVariableOpLtransformer_block_9_sequential_19_dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0
9transformer_block_9/sequential_19/dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_block_9/sequential_19/dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       §
:transformer_block_9/sequential_19/dense_37/Tensordot/ShapeShape=transformer_block_9/sequential_19/dense_36/Relu:activations:0*
T0*
_output_shapes
:
Btransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2GatherV2Ctransformer_block_9/sequential_19/dense_37/Tensordot/Shape:output:0Btransformer_block_9/sequential_19/dense_37/Tensordot/free:output:0Ktransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1GatherV2Ctransformer_block_9/sequential_19/dense_37/Tensordot/Shape:output:0Btransformer_block_9/sequential_19/dense_37/Tensordot/axes:output:0Mtransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_block_9/sequential_19/dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_block_9/sequential_19/dense_37/Tensordot/ProdProdFtransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2:output:0Ctransformer_block_9/sequential_19/dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_block_9/sequential_19/dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_block_9/sequential_19/dense_37/Tensordot/Prod_1ProdHtransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1:output:0Etransformer_block_9/sequential_19/dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_block_9/sequential_19/dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_block_9/sequential_19/dense_37/Tensordot/concatConcatV2Btransformer_block_9/sequential_19/dense_37/Tensordot/free:output:0Btransformer_block_9/sequential_19/dense_37/Tensordot/axes:output:0Itransformer_block_9/sequential_19/dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_block_9/sequential_19/dense_37/Tensordot/stackPackBtransformer_block_9/sequential_19/dense_37/Tensordot/Prod:output:0Dtransformer_block_9/sequential_19/dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_block_9/sequential_19/dense_37/Tensordot/transpose	Transpose=transformer_block_9/sequential_19/dense_36/Relu:activations:0Dtransformer_block_9/sequential_19/dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
<transformer_block_9/sequential_19/dense_37/Tensordot/ReshapeReshapeBtransformer_block_9/sequential_19/dense_37/Tensordot/transpose:y:0Ctransformer_block_9/sequential_19/dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_block_9/sequential_19/dense_37/Tensordot/MatMulMatMulEtransformer_block_9/sequential_19/dense_37/Tensordot/Reshape:output:0Ktransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
<transformer_block_9/sequential_19/dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Btransformer_block_9/sequential_19/dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_block_9/sequential_19/dense_37/Tensordot/concat_1ConcatV2Ftransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2:output:0Etransformer_block_9/sequential_19/dense_37/Tensordot/Const_2:output:0Ktransformer_block_9/sequential_19/dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_block_9/sequential_19/dense_37/TensordotReshapeEtransformer_block_9/sequential_19/dense_37/Tensordot/MatMul:product:0Ftransformer_block_9/sequential_19/dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô È
Atransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpReadVariableOpJtransformer_block_9_sequential_19_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0þ
2transformer_block_9/sequential_19/dense_37/BiasAddBiasAdd=transformer_block_9/sequential_19/dense_37/Tensordot:output:0Itransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô q
,transformer_block_9/dropout_38/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?Ü
*transformer_block_9/dropout_38/dropout/MulMul;transformer_block_9/sequential_19/dense_37/BiasAdd:output:05transformer_block_9/dropout_38/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
,transformer_block_9/dropout_38/dropout/ShapeShape;transformer_block_9/sequential_19/dense_37/BiasAdd:output:0*
T0*
_output_shapes
:Ï
Ctransformer_block_9/dropout_38/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_9/dropout_38/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0z
5transformer_block_9/dropout_38/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=
3transformer_block_9/dropout_38/dropout/GreaterEqualGreaterEqualLtransformer_block_9/dropout_38/dropout/random_uniform/RandomUniform:output:0>transformer_block_9/dropout_38/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ²
+transformer_block_9/dropout_38/dropout/CastCast7transformer_block_9/dropout_38/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ë
,transformer_block_9/dropout_38/dropout/Mul_1Mul.transformer_block_9/dropout_38/dropout/Mul:z:0/transformer_block_9/dropout_38/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ë
transformer_block_9/add_1AddV2>transformer_block_9/layer_normalization_18/batchnorm/add_1:z:00transformer_block_9/dropout_38/dropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Itransformer_block_9/layer_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ú
7transformer_block_9/layer_normalization_19/moments/meanMeantransformer_block_9/add_1:z:0Rtransformer_block_9/layer_normalization_19/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(È
?transformer_block_9/layer_normalization_19/moments/StopGradientStopGradient@transformer_block_9/layer_normalization_19/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôù
Dtransformer_block_9/layer_normalization_19/moments/SquaredDifferenceSquaredDifferencetransformer_block_9/add_1:z:0Htransformer_block_9/layer_normalization_19/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Mtransformer_block_9/layer_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:­
;transformer_block_9/layer_normalization_19/moments/varianceMeanHtransformer_block_9/layer_normalization_19/moments/SquaredDifference:z:0Vtransformer_block_9/layer_normalization_19/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(
:transformer_block_9/layer_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
8transformer_block_9/layer_normalization_19/batchnorm/addAddV2Dtransformer_block_9/layer_normalization_19/moments/variance:output:0Ctransformer_block_9/layer_normalization_19/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¸
:transformer_block_9/layer_normalization_19/batchnorm/RsqrtRsqrt<transformer_block_9/layer_normalization_19/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÔ
Gtransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_9_layer_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
8transformer_block_9/layer_normalization_19/batchnorm/mulMul>transformer_block_9/layer_normalization_19/batchnorm/Rsqrt:y:0Otransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Õ
:transformer_block_9/layer_normalization_19/batchnorm/mul_1Multransformer_block_9/add_1:z:0<transformer_block_9/layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ø
:transformer_block_9/layer_normalization_19/batchnorm/mul_2Mul@transformer_block_9/layer_normalization_19/moments/mean:output:0<transformer_block_9/layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ì
Ctransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_9_layer_normalization_19_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
8transformer_block_9/layer_normalization_19/batchnorm/subSubKtransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp:value:0>transformer_block_9/layer_normalization_19/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ø
:transformer_block_9/layer_normalization_19/batchnorm/add_1AddV2>transformer_block_9/layer_normalization_19/batchnorm/mul_1:z:0<transformer_block_9/layer_normalization_19/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô s
1global_average_pooling1d_9/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Õ
global_average_pooling1d_9/MeanMean>transformer_block_9/layer_normalization_19/batchnorm/add_1:z:0:global_average_pooling1d_9/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
dropout_39/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_39/dropout/MulMul(global_average_pooling1d_9/Mean:output:0!dropout_39/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
dropout_39/dropout/ShapeShape(global_average_pooling1d_9/Mean:output:0*
T0*
_output_shapes
:¢
/dropout_39/dropout/random_uniform/RandomUniformRandomUniform!dropout_39/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0f
!dropout_39/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ç
dropout_39/dropout/GreaterEqualGreaterEqual8dropout_39/dropout/random_uniform/RandomUniform:output:0*dropout_39/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_39/dropout/CastCast#dropout_39/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_39/dropout/Mul_1Muldropout_39/dropout/Mul:z:0dropout_39/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes
:	 È*
dtype0
dense_38/MatMulMatMuldropout_39/dropout/Mul_1:z:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈc
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ]
dropout_40/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_40/dropout/MulMuldense_38/Relu:activations:0!dropout_40/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈc
dropout_40/dropout/ShapeShapedense_38/Relu:activations:0*
T0*
_output_shapes
:£
/dropout_40/dropout/random_uniform/RandomUniformRandomUniform!dropout_40/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
dtype0f
!dropout_40/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=È
dropout_40/dropout/GreaterEqualGreaterEqual8dropout_40/dropout/random_uniform/RandomUniform:output:0*dropout_40/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
dropout_40/dropout/CastCast#dropout_40/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
dropout_40/dropout/Mul_1Muldropout_40/dropout/Mul:z:0dropout_40/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype0
dense_39/MatMulMatMuldropout_40/dropout/Mul_1:z:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_39/SigmoidSigmoiddense_39/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitydense_39/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp=^token_and_position_embedding_9/embedding_18/embedding_lookup=^token_and_position_embedding_9/embedding_19/embedding_lookupD^transformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpH^transformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpD^transformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpH^transformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOpO^transformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOpY^transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_9/multi_head_attention_9/key/add/ReadVariableOpL^transformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpD^transformer_block_9/multi_head_attention_9/query/add/ReadVariableOpN^transformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpD^transformer_block_9/multi_head_attention_9/value/add/ReadVariableOpN^transformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpB^transformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpD^transformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpB^transformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpD^transformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2|
<token_and_position_embedding_9/embedding_18/embedding_lookup<token_and_position_embedding_9/embedding_18/embedding_lookup2|
<token_and_position_embedding_9/embedding_19/embedding_lookup<token_and_position_embedding_9/embedding_19/embedding_lookup2
Ctransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpCtransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp2
Gtransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpGtransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp2
Ctransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpCtransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp2
Gtransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOpGtransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp2 
Ntransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOpNtransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp2´
Xtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp2
Atransformer_block_9/multi_head_attention_9/key/add/ReadVariableOpAtransformer_block_9/multi_head_attention_9/key/add/ReadVariableOp2
Ktransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpKtransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp2
Ctransformer_block_9/multi_head_attention_9/query/add/ReadVariableOpCtransformer_block_9/multi_head_attention_9/query/add/ReadVariableOp2
Mtransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpMtransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp2
Ctransformer_block_9/multi_head_attention_9/value/add/ReadVariableOpCtransformer_block_9/multi_head_attention_9/value/add/ReadVariableOp2
Mtransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpMtransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp2
Atransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpAtransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp2
Ctransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpCtransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp2
Atransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpAtransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp2
Ctransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpCtransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
Ï
Ü
.__inference_sequential_19_layer_call_fn_157646
dense_36_input
unknown:	 È
	unknown_0:	È
	unknown_1:	È 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_36_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_157622t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
(
_user_specified_namedense_36_input
º
µ
I__inference_sequential_19_layer_call_and_return_conditional_losses_157562

inputs"
dense_36_157520:	 È
dense_36_157522:	È"
dense_37_157556:	È 
dense_37_157558: 
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCallö
 dense_36/StatefulPartitionedCallStatefulPartitionedCallinputsdense_36_157520dense_36_157522*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_157519
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_157556dense_37_157558*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_157555}
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
»½
Á
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_157851

inputsX
Bmulti_head_attention_9_query_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_9_query_add_readvariableop_resource: V
@multi_head_attention_9_key_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_9_key_add_readvariableop_resource: X
Bmulti_head_attention_9_value_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_9_value_add_readvariableop_resource: c
Mmulti_head_attention_9_attention_output_einsum_einsum_readvariableop_resource:  Q
Cmulti_head_attention_9_attention_output_add_readvariableop_resource: J
<layer_normalization_18_batchnorm_mul_readvariableop_resource: F
8layer_normalization_18_batchnorm_readvariableop_resource: K
8sequential_19_dense_36_tensordot_readvariableop_resource:	 ÈE
6sequential_19_dense_36_biasadd_readvariableop_resource:	ÈK
8sequential_19_dense_37_tensordot_readvariableop_resource:	È D
6sequential_19_dense_37_biasadd_readvariableop_resource: J
<layer_normalization_19_batchnorm_mul_readvariableop_resource: F
8layer_normalization_19_batchnorm_readvariableop_resource: 
identity¢/layer_normalization_18/batchnorm/ReadVariableOp¢3layer_normalization_18/batchnorm/mul/ReadVariableOp¢/layer_normalization_19/batchnorm/ReadVariableOp¢3layer_normalization_19/batchnorm/mul/ReadVariableOp¢:multi_head_attention_9/attention_output/add/ReadVariableOp¢Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_9/key/add/ReadVariableOp¢7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_9/query/add/ReadVariableOp¢9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_9/value/add/ReadVariableOp¢9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp¢-sequential_19/dense_36/BiasAdd/ReadVariableOp¢/sequential_19/dense_36/Tensordot/ReadVariableOp¢-sequential_19/dense_37/BiasAdd/ReadVariableOp¢/sequential_19/dense_37/Tensordot/ReadVariableOpÀ
9multi_head_attention_9/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_9_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0à
*multi_head_attention_9/query/einsum/EinsumEinsuminputsAmulti_head_attention_9/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¨
/multi_head_attention_9/query/add/ReadVariableOpReadVariableOp8multi_head_attention_9_query_add_readvariableop_resource*
_output_shapes

: *
dtype0Ò
 multi_head_attention_9/query/addAddV23multi_head_attention_9/query/einsum/Einsum:output:07multi_head_attention_9/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
7multi_head_attention_9/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_9_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ü
(multi_head_attention_9/key/einsum/EinsumEinsuminputs?multi_head_attention_9/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¤
-multi_head_attention_9/key/add/ReadVariableOpReadVariableOp6multi_head_attention_9_key_add_readvariableop_resource*
_output_shapes

: *
dtype0Ì
multi_head_attention_9/key/addAddV21multi_head_attention_9/key/einsum/Einsum:output:05multi_head_attention_9/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô À
9multi_head_attention_9/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_9_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0à
*multi_head_attention_9/value/einsum/EinsumEinsuminputsAmulti_head_attention_9/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¨
/multi_head_attention_9/value/add/ReadVariableOpReadVariableOp8multi_head_attention_9_value_add_readvariableop_resource*
_output_shapes

: *
dtype0Ò
 multi_head_attention_9/value/addAddV23multi_head_attention_9/value/einsum/Einsum:output:07multi_head_attention_9/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô a
multi_head_attention_9/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5>©
multi_head_attention_9/MulMul$multi_head_attention_9/query/add:z:0%multi_head_attention_9/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ö
$multi_head_attention_9/einsum/EinsumEinsum"multi_head_attention_9/key/add:z:0multi_head_attention_9/Mul:z:0*
N*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô*
equationaecd,abcd->acbe
&multi_head_attention_9/softmax/SoftmaxSoftmax-multi_head_attention_9/einsum/Einsum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô¡
'multi_head_attention_9/dropout/IdentityIdentity0multi_head_attention_9/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôôë
&multi_head_attention_9/einsum_1/EinsumEinsum0multi_head_attention_9/dropout/Identity:output:0$multi_head_attention_9/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationacbe,aecd->abcdÖ
Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_9_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0
5multi_head_attention_9/attention_output/einsum/EinsumEinsum/multi_head_attention_9/einsum_1/Einsum:output:0Lmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabcd,cde->abeº
:multi_head_attention_9/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_9_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0ï
+multi_head_attention_9/attention_output/addAddV2>multi_head_attention_9/attention_output/einsum/Einsum:output:0Bmulti_head_attention_9/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_37/IdentityIdentity/multi_head_attention_9/attention_output/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô i
addAddV2inputsdropout_37/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
5layer_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¼
#layer_normalization_18/moments/meanMeanadd:z:0>layer_normalization_18/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims( 
+layer_normalization_18/moments/StopGradientStopGradient,layer_normalization_18/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô»
0layer_normalization_18/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_18/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
9layer_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
'layer_normalization_18/moments/varianceMean4layer_normalization_18/moments/SquaredDifference:z:0Blayer_normalization_18/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(k
&layer_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ç
$layer_normalization_18/batchnorm/addAddV20layer_normalization_18/moments/variance:output:0/layer_normalization_18/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&layer_normalization_18/batchnorm/RsqrtRsqrt(layer_normalization_18/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¬
3layer_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ë
$layer_normalization_18/batchnorm/mulMul*layer_normalization_18/batchnorm/Rsqrt:y:0;layer_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
&layer_normalization_18/batchnorm/mul_1Muladd:z:0(layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_18/batchnorm/mul_2Mul,layer_normalization_18/moments/mean:output:0(layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
/layer_normalization_18/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_18_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ç
$layer_normalization_18/batchnorm/subSub7layer_normalization_18/batchnorm/ReadVariableOp:value:0*layer_normalization_18/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_18/batchnorm/add_1AddV2*layer_normalization_18/batchnorm/mul_1:z:0(layer_normalization_18/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ©
/sequential_19/dense_36/Tensordot/ReadVariableOpReadVariableOp8sequential_19_dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0o
%sequential_19/dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_19/dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_19/dense_36/Tensordot/ShapeShape*layer_normalization_18/batchnorm/add_1:z:0*
T0*
_output_shapes
:p
.sequential_19/dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_36/Tensordot/GatherV2GatherV2/sequential_19/dense_36/Tensordot/Shape:output:0.sequential_19/dense_36/Tensordot/free:output:07sequential_19/dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_19/dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+sequential_19/dense_36/Tensordot/GatherV2_1GatherV2/sequential_19/dense_36/Tensordot/Shape:output:0.sequential_19/dense_36/Tensordot/axes:output:09sequential_19/dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_19/dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_19/dense_36/Tensordot/ProdProd2sequential_19/dense_36/Tensordot/GatherV2:output:0/sequential_19/dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_19/dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¹
'sequential_19/dense_36/Tensordot/Prod_1Prod4sequential_19/dense_36/Tensordot/GatherV2_1:output:01sequential_19/dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_19/dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ø
'sequential_19/dense_36/Tensordot/concatConcatV2.sequential_19/dense_36/Tensordot/free:output:0.sequential_19/dense_36/Tensordot/axes:output:05sequential_19/dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
&sequential_19/dense_36/Tensordot/stackPack.sequential_19/dense_36/Tensordot/Prod:output:00sequential_19/dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ì
*sequential_19/dense_36/Tensordot/transpose	Transpose*layer_normalization_18/batchnorm/add_1:z:00sequential_19/dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ï
(sequential_19/dense_36/Tensordot/ReshapeReshape.sequential_19/dense_36/Tensordot/transpose:y:0/sequential_19/dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ
'sequential_19/dense_36/Tensordot/MatMulMatMul1sequential_19/dense_36/Tensordot/Reshape:output:07sequential_19/dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
(sequential_19/dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Èp
.sequential_19/dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_36/Tensordot/concat_1ConcatV22sequential_19/dense_36/Tensordot/GatherV2:output:01sequential_19/dense_36/Tensordot/Const_2:output:07sequential_19/dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ê
 sequential_19/dense_36/TensordotReshape1sequential_19/dense_36/Tensordot/MatMul:product:02sequential_19/dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ¡
-sequential_19/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ã
sequential_19/dense_36/BiasAddBiasAdd)sequential_19/dense_36/Tensordot:output:05sequential_19/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
sequential_19/dense_36/ReluRelu'sequential_19/dense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ©
/sequential_19/dense_37/Tensordot/ReadVariableOpReadVariableOp8sequential_19_dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0o
%sequential_19/dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_19/dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_19/dense_37/Tensordot/ShapeShape)sequential_19/dense_36/Relu:activations:0*
T0*
_output_shapes
:p
.sequential_19/dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_37/Tensordot/GatherV2GatherV2/sequential_19/dense_37/Tensordot/Shape:output:0.sequential_19/dense_37/Tensordot/free:output:07sequential_19/dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_19/dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+sequential_19/dense_37/Tensordot/GatherV2_1GatherV2/sequential_19/dense_37/Tensordot/Shape:output:0.sequential_19/dense_37/Tensordot/axes:output:09sequential_19/dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_19/dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_19/dense_37/Tensordot/ProdProd2sequential_19/dense_37/Tensordot/GatherV2:output:0/sequential_19/dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_19/dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¹
'sequential_19/dense_37/Tensordot/Prod_1Prod4sequential_19/dense_37/Tensordot/GatherV2_1:output:01sequential_19/dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_19/dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ø
'sequential_19/dense_37/Tensordot/concatConcatV2.sequential_19/dense_37/Tensordot/free:output:0.sequential_19/dense_37/Tensordot/axes:output:05sequential_19/dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
&sequential_19/dense_37/Tensordot/stackPack.sequential_19/dense_37/Tensordot/Prod:output:00sequential_19/dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ì
*sequential_19/dense_37/Tensordot/transpose	Transpose)sequential_19/dense_36/Relu:activations:00sequential_19/dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÏ
(sequential_19/dense_37/Tensordot/ReshapeReshape.sequential_19/dense_37/Tensordot/transpose:y:0/sequential_19/dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏ
'sequential_19/dense_37/Tensordot/MatMulMatMul1sequential_19/dense_37/Tensordot/Reshape:output:07sequential_19/dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
(sequential_19/dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: p
.sequential_19/dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_37/Tensordot/concat_1ConcatV22sequential_19/dense_37/Tensordot/GatherV2:output:01sequential_19/dense_37/Tensordot/Const_2:output:07sequential_19/dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:É
 sequential_19/dense_37/TensordotReshape1sequential_19/dense_37/Tensordot/MatMul:product:02sequential_19/dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô  
-sequential_19/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_19/dense_37/BiasAddBiasAdd)sequential_19/dense_37/Tensordot:output:05sequential_19/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_38/IdentityIdentity'sequential_19/dense_37/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
add_1AddV2*layer_normalization_18/batchnorm/add_1:z:0dropout_38/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
5layer_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¾
#layer_normalization_19/moments/meanMean	add_1:z:0>layer_normalization_19/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims( 
+layer_normalization_19/moments/StopGradientStopGradient,layer_normalization_19/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô½
0layer_normalization_19/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_19/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
9layer_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
'layer_normalization_19/moments/varianceMean4layer_normalization_19/moments/SquaredDifference:z:0Blayer_normalization_19/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(k
&layer_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ç
$layer_normalization_19/batchnorm/addAddV20layer_normalization_19/moments/variance:output:0/layer_normalization_19/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&layer_normalization_19/batchnorm/RsqrtRsqrt(layer_normalization_19/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¬
3layer_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ë
$layer_normalization_19/batchnorm/mulMul*layer_normalization_19/batchnorm/Rsqrt:y:0;layer_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
&layer_normalization_19/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_19/batchnorm/mul_2Mul,layer_normalization_19/moments/mean:output:0(layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
/layer_normalization_19/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_19_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ç
$layer_normalization_19/batchnorm/subSub7layer_normalization_19/batchnorm/ReadVariableOp:value:0*layer_normalization_19/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_19/batchnorm/add_1AddV2*layer_normalization_19/batchnorm/mul_1:z:0(layer_normalization_19/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ~
IdentityIdentity*layer_normalization_19/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
NoOpNoOp0^layer_normalization_18/batchnorm/ReadVariableOp4^layer_normalization_18/batchnorm/mul/ReadVariableOp0^layer_normalization_19/batchnorm/ReadVariableOp4^layer_normalization_19/batchnorm/mul/ReadVariableOp;^multi_head_attention_9/attention_output/add/ReadVariableOpE^multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_9/key/add/ReadVariableOp8^multi_head_attention_9/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_9/query/add/ReadVariableOp:^multi_head_attention_9/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_9/value/add/ReadVariableOp:^multi_head_attention_9/value/einsum/Einsum/ReadVariableOp.^sequential_19/dense_36/BiasAdd/ReadVariableOp0^sequential_19/dense_36/Tensordot/ReadVariableOp.^sequential_19/dense_37/BiasAdd/ReadVariableOp0^sequential_19/dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿô : : : : : : : : : : : : : : : : 2b
/layer_normalization_18/batchnorm/ReadVariableOp/layer_normalization_18/batchnorm/ReadVariableOp2j
3layer_normalization_18/batchnorm/mul/ReadVariableOp3layer_normalization_18/batchnorm/mul/ReadVariableOp2b
/layer_normalization_19/batchnorm/ReadVariableOp/layer_normalization_19/batchnorm/ReadVariableOp2j
3layer_normalization_19/batchnorm/mul/ReadVariableOp3layer_normalization_19/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_9/attention_output/add/ReadVariableOp:multi_head_attention_9/attention_output/add/ReadVariableOp2
Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_9/key/add/ReadVariableOp-multi_head_attention_9/key/add/ReadVariableOp2r
7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_9/query/add/ReadVariableOp/multi_head_attention_9/query/add/ReadVariableOp2v
9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_9/value/add/ReadVariableOp/multi_head_attention_9/value/add/ReadVariableOp2v
9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp2^
-sequential_19/dense_36/BiasAdd/ReadVariableOp-sequential_19/dense_36/BiasAdd/ReadVariableOp2b
/sequential_19/dense_36/Tensordot/ReadVariableOp/sequential_19/dense_36/Tensordot/ReadVariableOp2^
-sequential_19/dense_37/BiasAdd/ReadVariableOp-sequential_19/dense_37/BiasAdd/ReadVariableOp2b
/sequential_19/dense_37/Tensordot/ReadVariableOp/sequential_19/dense_37/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
Å

)__inference_dense_39_layer_call_fn_159565

inputs
unknown:	È
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_157928o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
Ú

)__inference_dense_36_layer_call_fn_159725

inputs
unknown:	 È
	unknown_0:	È
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_157519u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿô : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs

r
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_157684

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

÷
D__inference_dense_38_layer_call_and_return_conditional_losses_159529

inputs1
matmul_readvariableop_resource:	 È.
biasadd_readvariableop_resource:	È
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 È*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
º
µ
I__inference_sequential_19_layer_call_and_return_conditional_losses_157622

inputs"
dense_36_157611:	 È
dense_36_157613:	È"
dense_37_157616:	È 
dense_37_157618: 
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCallö
 dense_36/StatefulPartitionedCallStatefulPartitionedCallinputsdense_36_157611dense_36_157613*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_157519
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_157616dense_37_157618*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_157555}
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs


ö
D__inference_dense_39_layer_call_and_return_conditional_losses_159576

inputs1
matmul_readvariableop_resource:	È-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	È*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
ï-
±

I__inference_sequential_18_layer_call_and_return_conditional_losses_158379

inputs8
%token_and_position_embedding_9_158327:	ô 8
%token_and_position_embedding_9_158329:	N 0
transformer_block_9_158332:  ,
transformer_block_9_158334: 0
transformer_block_9_158336:  ,
transformer_block_9_158338: 0
transformer_block_9_158340:  ,
transformer_block_9_158342: 0
transformer_block_9_158344:  (
transformer_block_9_158346: (
transformer_block_9_158348: (
transformer_block_9_158350: -
transformer_block_9_158352:	 È)
transformer_block_9_158354:	È-
transformer_block_9_158356:	È (
transformer_block_9_158358: (
transformer_block_9_158360: (
transformer_block_9_158362: "
dense_38_158367:	 È
dense_38_158369:	È"
dense_39_158373:	È
dense_39_158375:
identity¢ dense_38/StatefulPartitionedCall¢ dense_39/StatefulPartitionedCall¢"dropout_39/StatefulPartitionedCall¢"dropout_40/StatefulPartitionedCall¢6token_and_position_embedding_9/StatefulPartitionedCall¢+transformer_block_9/StatefulPartitionedCallÍ
6token_and_position_embedding_9/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_9_158327%token_and_position_embedding_9_158329*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_157718þ
+transformer_block_9/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_9/StatefulPartitionedCall:output:0transformer_block_9_158332transformer_block_9_158334transformer_block_9_158336transformer_block_9_158338transformer_block_9_158340transformer_block_9_158342transformer_block_9_158344transformer_block_9_158346transformer_block_9_158348transformer_block_9_158350transformer_block_9_158352transformer_block_9_158354transformer_block_9_158356transformer_block_9_158358transformer_block_9_158360transformer_block_9_158362*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_158228
*global_average_pooling1d_9/PartitionedCallPartitionedCall4transformer_block_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_157684ù
"dropout_39/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_158045
 dense_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_39/StatefulPartitionedCall:output:0dense_38_158367dense_38_158369*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_157904
"dropout_40/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0#^dropout_39/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_40_layer_call_and_return_conditional_losses_158012
 dense_39/StatefulPartitionedCallStatefulPartitionedCall+dropout_40/StatefulPartitionedCall:output:0dense_39_158373dense_39_158375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_157928x
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
NoOpNoOp!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall#^dropout_39/StatefulPartitionedCall#^dropout_40/StatefulPartitionedCall7^token_and_position_embedding_9/StatefulPartitionedCall,^transformer_block_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2H
"dropout_39/StatefulPartitionedCall"dropout_39/StatefulPartitionedCall2H
"dropout_40/StatefulPartitionedCall"dropout_40/StatefulPartitionedCall2p
6token_and_position_embedding_9/StatefulPartitionedCall6token_and_position_embedding_9/StatefulPartitionedCall2Z
+transformer_block_9/StatefulPartitionedCall+transformer_block_9/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_39_layer_call_and_return_conditional_losses_157891

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ò
ä
.__inference_sequential_18_layer_call_fn_158475
input_10
unknown:	ô 
	unknown_0:	N 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:	 È

unknown_12:	È

unknown_13:	È 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	 È

unknown_18:	È

unknown_19:	È

unknown_20:
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_158379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
"
_user_specified_name
input_10
Ì
Á
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_158228

inputsX
Bmulti_head_attention_9_query_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_9_query_add_readvariableop_resource: V
@multi_head_attention_9_key_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_9_key_add_readvariableop_resource: X
Bmulti_head_attention_9_value_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_9_value_add_readvariableop_resource: c
Mmulti_head_attention_9_attention_output_einsum_einsum_readvariableop_resource:  Q
Cmulti_head_attention_9_attention_output_add_readvariableop_resource: J
<layer_normalization_18_batchnorm_mul_readvariableop_resource: F
8layer_normalization_18_batchnorm_readvariableop_resource: K
8sequential_19_dense_36_tensordot_readvariableop_resource:	 ÈE
6sequential_19_dense_36_biasadd_readvariableop_resource:	ÈK
8sequential_19_dense_37_tensordot_readvariableop_resource:	È D
6sequential_19_dense_37_biasadd_readvariableop_resource: J
<layer_normalization_19_batchnorm_mul_readvariableop_resource: F
8layer_normalization_19_batchnorm_readvariableop_resource: 
identity¢/layer_normalization_18/batchnorm/ReadVariableOp¢3layer_normalization_18/batchnorm/mul/ReadVariableOp¢/layer_normalization_19/batchnorm/ReadVariableOp¢3layer_normalization_19/batchnorm/mul/ReadVariableOp¢:multi_head_attention_9/attention_output/add/ReadVariableOp¢Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_9/key/add/ReadVariableOp¢7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_9/query/add/ReadVariableOp¢9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_9/value/add/ReadVariableOp¢9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp¢-sequential_19/dense_36/BiasAdd/ReadVariableOp¢/sequential_19/dense_36/Tensordot/ReadVariableOp¢-sequential_19/dense_37/BiasAdd/ReadVariableOp¢/sequential_19/dense_37/Tensordot/ReadVariableOpÀ
9multi_head_attention_9/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_9_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0à
*multi_head_attention_9/query/einsum/EinsumEinsuminputsAmulti_head_attention_9/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¨
/multi_head_attention_9/query/add/ReadVariableOpReadVariableOp8multi_head_attention_9_query_add_readvariableop_resource*
_output_shapes

: *
dtype0Ò
 multi_head_attention_9/query/addAddV23multi_head_attention_9/query/einsum/Einsum:output:07multi_head_attention_9/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
7multi_head_attention_9/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_9_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ü
(multi_head_attention_9/key/einsum/EinsumEinsuminputs?multi_head_attention_9/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¤
-multi_head_attention_9/key/add/ReadVariableOpReadVariableOp6multi_head_attention_9_key_add_readvariableop_resource*
_output_shapes

: *
dtype0Ì
multi_head_attention_9/key/addAddV21multi_head_attention_9/key/einsum/Einsum:output:05multi_head_attention_9/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô À
9multi_head_attention_9/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_9_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0à
*multi_head_attention_9/value/einsum/EinsumEinsuminputsAmulti_head_attention_9/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abde¨
/multi_head_attention_9/value/add/ReadVariableOpReadVariableOp8multi_head_attention_9_value_add_readvariableop_resource*
_output_shapes

: *
dtype0Ò
 multi_head_attention_9/value/addAddV23multi_head_attention_9/value/einsum/Einsum:output:07multi_head_attention_9/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô a
multi_head_attention_9/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5>©
multi_head_attention_9/MulMul$multi_head_attention_9/query/add:z:0%multi_head_attention_9/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ö
$multi_head_attention_9/einsum/EinsumEinsum"multi_head_attention_9/key/add:z:0multi_head_attention_9/Mul:z:0*
N*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô*
equationaecd,abcd->acbe
&multi_head_attention_9/softmax/SoftmaxSoftmax-multi_head_attention_9/einsum/Einsum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôôë
&multi_head_attention_9/einsum_1/EinsumEinsum0multi_head_attention_9/softmax/Softmax:softmax:0$multi_head_attention_9/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationacbe,aecd->abcdÖ
Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_9_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0
5multi_head_attention_9/attention_output/einsum/EinsumEinsum/multi_head_attention_9/einsum_1/Einsum:output:0Lmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabcd,cde->abeº
:multi_head_attention_9/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_9_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0ï
+multi_head_attention_9/attention_output/addAddV2>multi_head_attention_9/attention_output/einsum/Einsum:output:0Bmulti_head_attention_9/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ]
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¨
dropout_37/dropout/MulMul/multi_head_attention_9/attention_output/add:z:0!dropout_37/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô w
dropout_37/dropout/ShapeShape/multi_head_attention_9/attention_output/add:z:0*
T0*
_output_shapes
:§
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0f
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ì
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô i
addAddV2inputsdropout_37/dropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
5layer_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¼
#layer_normalization_18/moments/meanMeanadd:z:0>layer_normalization_18/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims( 
+layer_normalization_18/moments/StopGradientStopGradient,layer_normalization_18/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô»
0layer_normalization_18/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_18/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
9layer_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
'layer_normalization_18/moments/varianceMean4layer_normalization_18/moments/SquaredDifference:z:0Blayer_normalization_18/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(k
&layer_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ç
$layer_normalization_18/batchnorm/addAddV20layer_normalization_18/moments/variance:output:0/layer_normalization_18/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&layer_normalization_18/batchnorm/RsqrtRsqrt(layer_normalization_18/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¬
3layer_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ë
$layer_normalization_18/batchnorm/mulMul*layer_normalization_18/batchnorm/Rsqrt:y:0;layer_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
&layer_normalization_18/batchnorm/mul_1Muladd:z:0(layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_18/batchnorm/mul_2Mul,layer_normalization_18/moments/mean:output:0(layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
/layer_normalization_18/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_18_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ç
$layer_normalization_18/batchnorm/subSub7layer_normalization_18/batchnorm/ReadVariableOp:value:0*layer_normalization_18/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_18/batchnorm/add_1AddV2*layer_normalization_18/batchnorm/mul_1:z:0(layer_normalization_18/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ©
/sequential_19/dense_36/Tensordot/ReadVariableOpReadVariableOp8sequential_19_dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0o
%sequential_19/dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_19/dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_19/dense_36/Tensordot/ShapeShape*layer_normalization_18/batchnorm/add_1:z:0*
T0*
_output_shapes
:p
.sequential_19/dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_36/Tensordot/GatherV2GatherV2/sequential_19/dense_36/Tensordot/Shape:output:0.sequential_19/dense_36/Tensordot/free:output:07sequential_19/dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_19/dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+sequential_19/dense_36/Tensordot/GatherV2_1GatherV2/sequential_19/dense_36/Tensordot/Shape:output:0.sequential_19/dense_36/Tensordot/axes:output:09sequential_19/dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_19/dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_19/dense_36/Tensordot/ProdProd2sequential_19/dense_36/Tensordot/GatherV2:output:0/sequential_19/dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_19/dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¹
'sequential_19/dense_36/Tensordot/Prod_1Prod4sequential_19/dense_36/Tensordot/GatherV2_1:output:01sequential_19/dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_19/dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ø
'sequential_19/dense_36/Tensordot/concatConcatV2.sequential_19/dense_36/Tensordot/free:output:0.sequential_19/dense_36/Tensordot/axes:output:05sequential_19/dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
&sequential_19/dense_36/Tensordot/stackPack.sequential_19/dense_36/Tensordot/Prod:output:00sequential_19/dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ì
*sequential_19/dense_36/Tensordot/transpose	Transpose*layer_normalization_18/batchnorm/add_1:z:00sequential_19/dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ï
(sequential_19/dense_36/Tensordot/ReshapeReshape.sequential_19/dense_36/Tensordot/transpose:y:0/sequential_19/dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ
'sequential_19/dense_36/Tensordot/MatMulMatMul1sequential_19/dense_36/Tensordot/Reshape:output:07sequential_19/dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
(sequential_19/dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Èp
.sequential_19/dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_36/Tensordot/concat_1ConcatV22sequential_19/dense_36/Tensordot/GatherV2:output:01sequential_19/dense_36/Tensordot/Const_2:output:07sequential_19/dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ê
 sequential_19/dense_36/TensordotReshape1sequential_19/dense_36/Tensordot/MatMul:product:02sequential_19/dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ¡
-sequential_19/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ã
sequential_19/dense_36/BiasAddBiasAdd)sequential_19/dense_36/Tensordot:output:05sequential_19/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
sequential_19/dense_36/ReluRelu'sequential_19/dense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ©
/sequential_19/dense_37/Tensordot/ReadVariableOpReadVariableOp8sequential_19_dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0o
%sequential_19/dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_19/dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_19/dense_37/Tensordot/ShapeShape)sequential_19/dense_36/Relu:activations:0*
T0*
_output_shapes
:p
.sequential_19/dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_37/Tensordot/GatherV2GatherV2/sequential_19/dense_37/Tensordot/Shape:output:0.sequential_19/dense_37/Tensordot/free:output:07sequential_19/dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_19/dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+sequential_19/dense_37/Tensordot/GatherV2_1GatherV2/sequential_19/dense_37/Tensordot/Shape:output:0.sequential_19/dense_37/Tensordot/axes:output:09sequential_19/dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_19/dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_19/dense_37/Tensordot/ProdProd2sequential_19/dense_37/Tensordot/GatherV2:output:0/sequential_19/dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_19/dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¹
'sequential_19/dense_37/Tensordot/Prod_1Prod4sequential_19/dense_37/Tensordot/GatherV2_1:output:01sequential_19/dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_19/dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ø
'sequential_19/dense_37/Tensordot/concatConcatV2.sequential_19/dense_37/Tensordot/free:output:0.sequential_19/dense_37/Tensordot/axes:output:05sequential_19/dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
&sequential_19/dense_37/Tensordot/stackPack.sequential_19/dense_37/Tensordot/Prod:output:00sequential_19/dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ì
*sequential_19/dense_37/Tensordot/transpose	Transpose)sequential_19/dense_36/Relu:activations:00sequential_19/dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÏ
(sequential_19/dense_37/Tensordot/ReshapeReshape.sequential_19/dense_37/Tensordot/transpose:y:0/sequential_19/dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏ
'sequential_19/dense_37/Tensordot/MatMulMatMul1sequential_19/dense_37/Tensordot/Reshape:output:07sequential_19/dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
(sequential_19/dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: p
.sequential_19/dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_19/dense_37/Tensordot/concat_1ConcatV22sequential_19/dense_37/Tensordot/GatherV2:output:01sequential_19/dense_37/Tensordot/Const_2:output:07sequential_19/dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:É
 sequential_19/dense_37/TensordotReshape1sequential_19/dense_37/Tensordot/MatMul:product:02sequential_19/dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô  
-sequential_19/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_19/dense_37/BiasAddBiasAdd)sequential_19/dense_37/Tensordot:output:05sequential_19/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ]
dropout_38/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8? 
dropout_38/dropout/MulMul'sequential_19/dense_37/BiasAdd:output:0!dropout_38/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô o
dropout_38/dropout/ShapeShape'sequential_19/dense_37/BiasAdd:output:0*
T0*
_output_shapes
:§
/dropout_38/dropout/random_uniform/RandomUniformRandomUniform!dropout_38/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0f
!dropout_38/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ì
dropout_38/dropout/GreaterEqualGreaterEqual8dropout_38/dropout/random_uniform/RandomUniform:output:0*dropout_38/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_38/dropout/CastCast#dropout_38/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dropout_38/dropout/Mul_1Muldropout_38/dropout/Mul:z:0dropout_38/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
add_1AddV2*layer_normalization_18/batchnorm/add_1:z:0dropout_38/dropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
5layer_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¾
#layer_normalization_19/moments/meanMean	add_1:z:0>layer_normalization_19/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims( 
+layer_normalization_19/moments/StopGradientStopGradient,layer_normalization_19/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô½
0layer_normalization_19/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_19/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
9layer_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
'layer_normalization_19/moments/varianceMean4layer_normalization_19/moments/SquaredDifference:z:0Blayer_normalization_19/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(k
&layer_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ç
$layer_normalization_19/batchnorm/addAddV20layer_normalization_19/moments/variance:output:0/layer_normalization_19/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&layer_normalization_19/batchnorm/RsqrtRsqrt(layer_normalization_19/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¬
3layer_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ë
$layer_normalization_19/batchnorm/mulMul*layer_normalization_19/batchnorm/Rsqrt:y:0;layer_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
&layer_normalization_19/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_19/batchnorm/mul_2Mul,layer_normalization_19/moments/mean:output:0(layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
/layer_normalization_19/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_19_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ç
$layer_normalization_19/batchnorm/subSub7layer_normalization_19/batchnorm/ReadVariableOp:value:0*layer_normalization_19/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¼
&layer_normalization_19/batchnorm/add_1AddV2*layer_normalization_19/batchnorm/mul_1:z:0(layer_normalization_19/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ~
IdentityIdentity*layer_normalization_19/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¤
NoOpNoOp0^layer_normalization_18/batchnorm/ReadVariableOp4^layer_normalization_18/batchnorm/mul/ReadVariableOp0^layer_normalization_19/batchnorm/ReadVariableOp4^layer_normalization_19/batchnorm/mul/ReadVariableOp;^multi_head_attention_9/attention_output/add/ReadVariableOpE^multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_9/key/add/ReadVariableOp8^multi_head_attention_9/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_9/query/add/ReadVariableOp:^multi_head_attention_9/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_9/value/add/ReadVariableOp:^multi_head_attention_9/value/einsum/Einsum/ReadVariableOp.^sequential_19/dense_36/BiasAdd/ReadVariableOp0^sequential_19/dense_36/Tensordot/ReadVariableOp.^sequential_19/dense_37/BiasAdd/ReadVariableOp0^sequential_19/dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿô : : : : : : : : : : : : : : : : 2b
/layer_normalization_18/batchnorm/ReadVariableOp/layer_normalization_18/batchnorm/ReadVariableOp2j
3layer_normalization_18/batchnorm/mul/ReadVariableOp3layer_normalization_18/batchnorm/mul/ReadVariableOp2b
/layer_normalization_19/batchnorm/ReadVariableOp/layer_normalization_19/batchnorm/ReadVariableOp2j
3layer_normalization_19/batchnorm/mul/ReadVariableOp3layer_normalization_19/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_9/attention_output/add/ReadVariableOp:multi_head_attention_9/attention_output/add/ReadVariableOp2
Dmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_9/key/add/ReadVariableOp-multi_head_attention_9/key/add/ReadVariableOp2r
7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp7multi_head_attention_9/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_9/query/add/ReadVariableOp/multi_head_attention_9/query/add/ReadVariableOp2v
9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp9multi_head_attention_9/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_9/value/add/ReadVariableOp/multi_head_attention_9/value/add/ReadVariableOp2v
9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp9multi_head_attention_9/value/einsum/Einsum/ReadVariableOp2^
-sequential_19/dense_36/BiasAdd/ReadVariableOp-sequential_19/dense_36/BiasAdd/ReadVariableOp2b
/sequential_19/dense_36/Tensordot/ReadVariableOp/sequential_19/dense_36/Tensordot/ReadVariableOp2^
-sequential_19/dense_37/BiasAdd/ReadVariableOp-sequential_19/dense_37/BiasAdd/ReadVariableOp2b
/sequential_19/dense_37/Tensordot/ReadVariableOp/sequential_19/dense_37/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
Ù
·
4__inference_transformer_block_9_layer_call_fn_159204

inputs
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:	 È

unknown_10:	È

unknown_11:	È 

unknown_12: 

unknown_13: 

unknown_14: 
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_158228t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿô : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
Ï
Ü
.__inference_sequential_19_layer_call_fn_157573
dense_36_input
unknown:	 È
	unknown_0:	È
	unknown_1:	È 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_36_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_157562t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
(
_user_specified_namedense_36_input
ì?
ã
I__inference_sequential_19_layer_call_and_return_conditional_losses_159716

inputs=
*dense_36_tensordot_readvariableop_resource:	 È7
(dense_36_biasadd_readvariableop_resource:	È=
*dense_37_tensordot_readvariableop_resource:	È 6
(dense_37_biasadd_readvariableop_resource: 
identity¢dense_36/BiasAdd/ReadVariableOp¢!dense_36/Tensordot/ReadVariableOp¢dense_37/BiasAdd/ReadVariableOp¢!dense_37/Tensordot/ReadVariableOp
!dense_36/Tensordot/ReadVariableOpReadVariableOp*dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0a
dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_36/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_36/Tensordot/GatherV2GatherV2!dense_36/Tensordot/Shape:output:0 dense_36/Tensordot/free:output:0)dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_36/Tensordot/GatherV2_1GatherV2!dense_36/Tensordot/Shape:output:0 dense_36/Tensordot/axes:output:0+dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_36/Tensordot/ProdProd$dense_36/Tensordot/GatherV2:output:0!dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_36/Tensordot/Prod_1Prod&dense_36/Tensordot/GatherV2_1:output:0#dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_36/Tensordot/concatConcatV2 dense_36/Tensordot/free:output:0 dense_36/Tensordot/axes:output:0'dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_36/Tensordot/stackPack dense_36/Tensordot/Prod:output:0"dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_36/Tensordot/transpose	Transposeinputs"dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¥
dense_36/Tensordot/ReshapeReshape dense_36/Tensordot/transpose:y:0!dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
dense_36/Tensordot/MatMulMatMul#dense_36/Tensordot/Reshape:output:0)dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Èb
 dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_36/Tensordot/concat_1ConcatV2$dense_36/Tensordot/GatherV2:output:0#dense_36/Tensordot/Const_2:output:0)dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
: 
dense_36/TensordotReshape#dense_36/Tensordot/MatMul:product:0$dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
dense_36/BiasAddBiasAdddense_36/Tensordot:output:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈh
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
!dense_37/Tensordot/ReadVariableOpReadVariableOp*dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0a
dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_37/Tensordot/ShapeShapedense_36/Relu:activations:0*
T0*
_output_shapes
:b
 dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_37/Tensordot/GatherV2GatherV2!dense_37/Tensordot/Shape:output:0 dense_37/Tensordot/free:output:0)dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_37/Tensordot/GatherV2_1GatherV2!dense_37/Tensordot/Shape:output:0 dense_37/Tensordot/axes:output:0+dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_37/Tensordot/ProdProd$dense_37/Tensordot/GatherV2:output:0!dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_37/Tensordot/Prod_1Prod&dense_37/Tensordot/GatherV2_1:output:0#dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_37/Tensordot/concatConcatV2 dense_37/Tensordot/free:output:0 dense_37/Tensordot/axes:output:0'dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_37/Tensordot/stackPack dense_37/Tensordot/Prod:output:0"dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¢
dense_37/Tensordot/transpose	Transposedense_36/Relu:activations:0"dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ¥
dense_37/Tensordot/ReshapeReshape dense_37/Tensordot/transpose:y:0!dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_37/Tensordot/MatMulMatMul#dense_37/Tensordot/Reshape:output:0)dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_37/Tensordot/concat_1ConcatV2$dense_37/Tensordot/GatherV2:output:0#dense_37/Tensordot/Const_2:output:0)dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_37/TensordotReshape#dense_37/Tensordot/MatMul:product:0$dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_37/BiasAddBiasAdddense_37/Tensordot:output:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô m
IdentityIdentitydense_37/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ò
NoOpNoOp ^dense_36/BiasAdd/ReadVariableOp"^dense_36/Tensordot/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp"^dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2F
!dense_36/Tensordot/ReadVariableOp!dense_36/Tensordot/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2F
!dense_37/Tensordot/ReadVariableOp!dense_37/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
·
Ô
.__inference_sequential_19_layer_call_fn_159589

inputs
unknown:	 È
	unknown_0:	È
	unknown_1:	È 
	unknown_2: 
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_157562t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
³
¦
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_159130
x7
$embedding_19_embedding_lookup_159117:	ô 7
$embedding_18_embedding_lookup_159123:	N 
identity¢embedding_18/embedding_lookup¢embedding_19/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :o
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes	
:ôÜ
embedding_19/embedding_lookupResourceGather$embedding_19_embedding_lookup_159117range:output:0*
Tindices0*7
_class-
+)loc:@embedding_19/embedding_lookup/159117*
_output_shapes
:	ô *
dtype0½
&embedding_19/embedding_lookup/IdentityIdentity&embedding_19/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_19/embedding_lookup/159117*
_output_shapes
:	ô 
(embedding_19/embedding_lookup/Identity_1Identity/embedding_19/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	ô ^
embedding_18/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿôð
embedding_18/embedding_lookupResourceGather$embedding_18_embedding_lookup_159123embedding_18/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_18/embedding_lookup/159123*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0Ê
&embedding_18/embedding_lookup/IdentityIdentity&embedding_18/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_18/embedding_lookup/159123*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
(embedding_18/embedding_lookup/Identity_1Identity/embedding_18/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ©
addAddV21embedding_18/embedding_lookup/Identity_1:output:01embedding_19/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô [
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
NoOpNoOp^embedding_18/embedding_lookup^embedding_19/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿô: : 2>
embedding_18/embedding_lookupembedding_18/embedding_lookup2>
embedding_19/embedding_lookupembedding_19/embedding_lookup:K G
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô

_user_specified_namex
ø*
é	
I__inference_sequential_18_layer_call_and_return_conditional_losses_158530
input_108
%token_and_position_embedding_9_158478:	ô 8
%token_and_position_embedding_9_158480:	N 0
transformer_block_9_158483:  ,
transformer_block_9_158485: 0
transformer_block_9_158487:  ,
transformer_block_9_158489: 0
transformer_block_9_158491:  ,
transformer_block_9_158493: 0
transformer_block_9_158495:  (
transformer_block_9_158497: (
transformer_block_9_158499: (
transformer_block_9_158501: -
transformer_block_9_158503:	 È)
transformer_block_9_158505:	È-
transformer_block_9_158507:	È (
transformer_block_9_158509: (
transformer_block_9_158511: (
transformer_block_9_158513: "
dense_38_158518:	 È
dense_38_158520:	È"
dense_39_158524:	È
dense_39_158526:
identity¢ dense_38/StatefulPartitionedCall¢ dense_39/StatefulPartitionedCall¢6token_and_position_embedding_9/StatefulPartitionedCall¢+transformer_block_9/StatefulPartitionedCallÏ
6token_and_position_embedding_9/StatefulPartitionedCallStatefulPartitionedCallinput_10%token_and_position_embedding_9_158478%token_and_position_embedding_9_158480*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_157718þ
+transformer_block_9/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_9/StatefulPartitionedCall:output:0transformer_block_9_158483transformer_block_9_158485transformer_block_9_158487transformer_block_9_158489transformer_block_9_158491transformer_block_9_158493transformer_block_9_158495transformer_block_9_158497transformer_block_9_158499transformer_block_9_158501transformer_block_9_158503transformer_block_9_158505transformer_block_9_158507transformer_block_9_158509transformer_block_9_158511transformer_block_9_158513*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_157851
*global_average_pooling1d_9/PartitionedCallPartitionedCall4transformer_block_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_157684é
dropout_39/PartitionedCallPartitionedCall3global_average_pooling1d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_157891
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_39/PartitionedCall:output:0dense_38_158518dense_38_158520*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_157904à
dropout_40/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_40_layer_call_and_return_conditional_losses_157915
 dense_39/StatefulPartitionedCallStatefulPartitionedCall#dropout_40/PartitionedCall:output:0dense_39_158524dense_39_158526*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_157928x
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall7^token_and_position_embedding_9/StatefulPartitionedCall,^transformer_block_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2p
6token_and_position_embedding_9/StatefulPartitionedCall6token_and_position_embedding_9/StatefulPartitionedCall2Z
+transformer_block_9/StatefulPartitionedCall+transformer_block_9/StatefulPartitionedCall:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
"
_user_specified_name
input_10
Ù
·
4__inference_transformer_block_9_layer_call_fn_159167

inputs
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:	 È

unknown_10:	È

unknown_11:	È 

unknown_12: 

unknown_13: 

unknown_14: 
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_157851t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿô : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
³
¦
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_157718
x7
$embedding_19_embedding_lookup_157705:	ô 7
$embedding_18_embedding_lookup_157711:	N 
identity¢embedding_18/embedding_lookup¢embedding_19/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :o
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes	
:ôÜ
embedding_19/embedding_lookupResourceGather$embedding_19_embedding_lookup_157705range:output:0*
Tindices0*7
_class-
+)loc:@embedding_19/embedding_lookup/157705*
_output_shapes
:	ô *
dtype0½
&embedding_19/embedding_lookup/IdentityIdentity&embedding_19/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_19/embedding_lookup/157705*
_output_shapes
:	ô 
(embedding_19/embedding_lookup/Identity_1Identity/embedding_19/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	ô ^
embedding_18/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿôð
embedding_18/embedding_lookupResourceGather$embedding_18_embedding_lookup_157711embedding_18/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_18/embedding_lookup/157711*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0Ê
&embedding_18/embedding_lookup/IdentityIdentity&embedding_18/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_18/embedding_lookup/157711*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
(embedding_18/embedding_lookup/Identity_1Identity/embedding_18/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ©
addAddV21embedding_18/embedding_lookup/Identity_1:output:01embedding_19/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô [
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
NoOpNoOp^embedding_18/embedding_lookup^embedding_19/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿô: : 2>
embedding_18/embedding_lookupembedding_18/embedding_lookup2>
embedding_19/embedding_lookupembedding_19/embedding_lookup:K G
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô

_user_specified_namex
´
ý
D__inference_dense_36_layer_call_and_return_conditional_losses_157519

inputs4
!tensordot_readvariableop_resource:	 È.
biasadd_readvariableop_resource:	È
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:ÈY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿô : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_39_layer_call_and_return_conditional_losses_158045

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÿ
W
;__inference_global_average_pooling1d_9_layer_call_fn_159476

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_157684i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
d
F__inference_dropout_40_layer_call_and_return_conditional_losses_159544

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
¥
G
+__inference_dropout_40_layer_call_fn_159534

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_40_layer_call_and_return_conditional_losses_157915a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
ò*
ç	
I__inference_sequential_18_layer_call_and_return_conditional_losses_157935

inputs8
%token_and_position_embedding_9_157719:	ô 8
%token_and_position_embedding_9_157721:	N 0
transformer_block_9_157852:  ,
transformer_block_9_157854: 0
transformer_block_9_157856:  ,
transformer_block_9_157858: 0
transformer_block_9_157860:  ,
transformer_block_9_157862: 0
transformer_block_9_157864:  (
transformer_block_9_157866: (
transformer_block_9_157868: (
transformer_block_9_157870: -
transformer_block_9_157872:	 È)
transformer_block_9_157874:	È-
transformer_block_9_157876:	È (
transformer_block_9_157878: (
transformer_block_9_157880: (
transformer_block_9_157882: "
dense_38_157905:	 È
dense_38_157907:	È"
dense_39_157929:	È
dense_39_157931:
identity¢ dense_38/StatefulPartitionedCall¢ dense_39/StatefulPartitionedCall¢6token_and_position_embedding_9/StatefulPartitionedCall¢+transformer_block_9/StatefulPartitionedCallÍ
6token_and_position_embedding_9/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_9_157719%token_and_position_embedding_9_157721*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_157718þ
+transformer_block_9/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_9/StatefulPartitionedCall:output:0transformer_block_9_157852transformer_block_9_157854transformer_block_9_157856transformer_block_9_157858transformer_block_9_157860transformer_block_9_157862transformer_block_9_157864transformer_block_9_157866transformer_block_9_157868transformer_block_9_157870transformer_block_9_157872transformer_block_9_157874transformer_block_9_157876transformer_block_9_157878transformer_block_9_157880transformer_block_9_157882*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_157851
*global_average_pooling1d_9/PartitionedCallPartitionedCall4transformer_block_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_157684é
dropout_39/PartitionedCallPartitionedCall3global_average_pooling1d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_157891
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_39/PartitionedCall:output:0dense_38_157905dense_38_157907*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_157904à
dropout_40/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_40_layer_call_and_return_conditional_losses_157915
 dense_39/StatefulPartitionedCallStatefulPartitionedCall#dropout_40/PartitionedCall:output:0dense_39_157929dense_39_157931*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_157928x
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall7^token_and_position_embedding_9/StatefulPartitionedCall,^transformer_block_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2p
6token_and_position_embedding_9/StatefulPartitionedCall6token_and_position_embedding_9/StatefulPartitionedCall2Z
+transformer_block_9/StatefulPartitionedCall+transformer_block_9/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
´
ý
D__inference_dense_36_layer_call_and_return_conditional_losses_159756

inputs4
!tensordot_readvariableop_resource:	 È.
biasadd_readvariableop_resource:	È
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:ÈY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿô : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
Ò
ä
.__inference_sequential_18_layer_call_fn_157982
input_10
unknown:	ô 
	unknown_0:	N 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:	 È

unknown_12:	È

unknown_13:	È 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	 È

unknown_18:	È

unknown_19:	È

unknown_20:
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_157935o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
"
_user_specified_name
input_10
Ì
â
.__inference_sequential_18_layer_call_fn_158740

inputs
unknown:	ô 
	unknown_0:	N 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:	 È

unknown_12:	È

unknown_13:	È 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	 È

unknown_18:	È

unknown_19:	È

unknown_20:
identity¢StatefulPartitionedCallí
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_158379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
Ö
ü
D__inference_dense_37_layer_call_and_return_conditional_losses_159795

inputs4
!tensordot_readvariableop_resource:	È -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿôÈ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
 
_user_specified_nameinputs
ì?
ã
I__inference_sequential_19_layer_call_and_return_conditional_losses_159659

inputs=
*dense_36_tensordot_readvariableop_resource:	 È7
(dense_36_biasadd_readvariableop_resource:	È=
*dense_37_tensordot_readvariableop_resource:	È 6
(dense_37_biasadd_readvariableop_resource: 
identity¢dense_36/BiasAdd/ReadVariableOp¢!dense_36/Tensordot/ReadVariableOp¢dense_37/BiasAdd/ReadVariableOp¢!dense_37/Tensordot/ReadVariableOp
!dense_36/Tensordot/ReadVariableOpReadVariableOp*dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0a
dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_36/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_36/Tensordot/GatherV2GatherV2!dense_36/Tensordot/Shape:output:0 dense_36/Tensordot/free:output:0)dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_36/Tensordot/GatherV2_1GatherV2!dense_36/Tensordot/Shape:output:0 dense_36/Tensordot/axes:output:0+dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_36/Tensordot/ProdProd$dense_36/Tensordot/GatherV2:output:0!dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_36/Tensordot/Prod_1Prod&dense_36/Tensordot/GatherV2_1:output:0#dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_36/Tensordot/concatConcatV2 dense_36/Tensordot/free:output:0 dense_36/Tensordot/axes:output:0'dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_36/Tensordot/stackPack dense_36/Tensordot/Prod:output:0"dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_36/Tensordot/transpose	Transposeinputs"dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¥
dense_36/Tensordot/ReshapeReshape dense_36/Tensordot/transpose:y:0!dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
dense_36/Tensordot/MatMulMatMul#dense_36/Tensordot/Reshape:output:0)dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Èb
 dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_36/Tensordot/concat_1ConcatV2$dense_36/Tensordot/GatherV2:output:0#dense_36/Tensordot/Const_2:output:0)dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
: 
dense_36/TensordotReshape#dense_36/Tensordot/MatMul:product:0$dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
dense_36/BiasAddBiasAdddense_36/Tensordot:output:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈh
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
!dense_37/Tensordot/ReadVariableOpReadVariableOp*dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0a
dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_37/Tensordot/ShapeShapedense_36/Relu:activations:0*
T0*
_output_shapes
:b
 dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_37/Tensordot/GatherV2GatherV2!dense_37/Tensordot/Shape:output:0 dense_37/Tensordot/free:output:0)dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_37/Tensordot/GatherV2_1GatherV2!dense_37/Tensordot/Shape:output:0 dense_37/Tensordot/axes:output:0+dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_37/Tensordot/ProdProd$dense_37/Tensordot/GatherV2:output:0!dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_37/Tensordot/Prod_1Prod&dense_37/Tensordot/GatherV2_1:output:0#dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_37/Tensordot/concatConcatV2 dense_37/Tensordot/free:output:0 dense_37/Tensordot/axes:output:0'dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_37/Tensordot/stackPack dense_37/Tensordot/Prod:output:0"dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¢
dense_37/Tensordot/transpose	Transposedense_36/Relu:activations:0"dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ¥
dense_37/Tensordot/ReshapeReshape dense_37/Tensordot/transpose:y:0!dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_37/Tensordot/MatMulMatMul#dense_37/Tensordot/Reshape:output:0)dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_37/Tensordot/concat_1ConcatV2$dense_37/Tensordot/GatherV2:output:0#dense_37/Tensordot/Const_2:output:0)dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_37/TensordotReshape#dense_37/Tensordot/MatMul:product:0$dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_37/BiasAddBiasAdddense_37/Tensordot:output:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô m
IdentityIdentitydense_37/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ò
NoOpNoOp ^dense_36/BiasAdd/ReadVariableOp"^dense_36/Tensordot/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp"^dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2F
!dense_36/Tensordot/ReadVariableOp!dense_36/Tensordot/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2F
!dense_37/Tensordot/ReadVariableOp!dense_37/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
Æ

)__inference_dense_38_layer_call_fn_159518

inputs
unknown:	 È
	unknown_0:	È
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_157904p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


ö
D__inference_dense_39_layer_call_and_return_conditional_losses_157928

inputs1
matmul_readvariableop_resource:	È-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	È*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs

r
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_159482

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü	
e
F__inference_dropout_40_layer_call_and_return_conditional_losses_159556

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
õ¦
Ø
I__inference_sequential_18_layer_call_and_return_conditional_losses_158905

inputsV
Ctoken_and_position_embedding_9_embedding_19_embedding_lookup_158751:	ô V
Ctoken_and_position_embedding_9_embedding_18_embedding_lookup_158757:	N l
Vtransformer_block_9_multi_head_attention_9_query_einsum_einsum_readvariableop_resource:  ^
Ltransformer_block_9_multi_head_attention_9_query_add_readvariableop_resource: j
Ttransformer_block_9_multi_head_attention_9_key_einsum_einsum_readvariableop_resource:  \
Jtransformer_block_9_multi_head_attention_9_key_add_readvariableop_resource: l
Vtransformer_block_9_multi_head_attention_9_value_einsum_einsum_readvariableop_resource:  ^
Ltransformer_block_9_multi_head_attention_9_value_add_readvariableop_resource: w
atransformer_block_9_multi_head_attention_9_attention_output_einsum_einsum_readvariableop_resource:  e
Wtransformer_block_9_multi_head_attention_9_attention_output_add_readvariableop_resource: ^
Ptransformer_block_9_layer_normalization_18_batchnorm_mul_readvariableop_resource: Z
Ltransformer_block_9_layer_normalization_18_batchnorm_readvariableop_resource: _
Ltransformer_block_9_sequential_19_dense_36_tensordot_readvariableop_resource:	 ÈY
Jtransformer_block_9_sequential_19_dense_36_biasadd_readvariableop_resource:	È_
Ltransformer_block_9_sequential_19_dense_37_tensordot_readvariableop_resource:	È X
Jtransformer_block_9_sequential_19_dense_37_biasadd_readvariableop_resource: ^
Ptransformer_block_9_layer_normalization_19_batchnorm_mul_readvariableop_resource: Z
Ltransformer_block_9_layer_normalization_19_batchnorm_readvariableop_resource: :
'dense_38_matmul_readvariableop_resource:	 È7
(dense_38_biasadd_readvariableop_resource:	È:
'dense_39_matmul_readvariableop_resource:	È6
(dense_39_biasadd_readvariableop_resource:
identity¢dense_38/BiasAdd/ReadVariableOp¢dense_38/MatMul/ReadVariableOp¢dense_39/BiasAdd/ReadVariableOp¢dense_39/MatMul/ReadVariableOp¢<token_and_position_embedding_9/embedding_18/embedding_lookup¢<token_and_position_embedding_9/embedding_19/embedding_lookup¢Ctransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp¢Gtransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp¢Ctransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp¢Gtransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp¢Ntransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp¢Xtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp¢Atransformer_block_9/multi_head_attention_9/key/add/ReadVariableOp¢Ktransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp¢Ctransformer_block_9/multi_head_attention_9/query/add/ReadVariableOp¢Mtransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp¢Ctransformer_block_9/multi_head_attention_9/value/add/ReadVariableOp¢Mtransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp¢Atransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp¢Ctransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp¢Atransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp¢Ctransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpZ
$token_and_position_embedding_9/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_9/strided_sliceStridedSlice-token_and_position_embedding_9/Shape:output:0;token_and_position_embedding_9/strided_slice/stack:output:0=token_and_position_embedding_9/strided_slice/stack_1:output:0=token_and_position_embedding_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_9/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_9/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ë
$token_and_position_embedding_9/rangeRange3token_and_position_embedding_9/range/start:output:05token_and_position_embedding_9/strided_slice:output:03token_and_position_embedding_9/range/delta:output:0*
_output_shapes	
:ôØ
<token_and_position_embedding_9/embedding_19/embedding_lookupResourceGatherCtoken_and_position_embedding_9_embedding_19_embedding_lookup_158751-token_and_position_embedding_9/range:output:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_9/embedding_19/embedding_lookup/158751*
_output_shapes
:	ô *
dtype0
Etoken_and_position_embedding_9/embedding_19/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_9/embedding_19/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_9/embedding_19/embedding_lookup/158751*
_output_shapes
:	ô Í
Gtoken_and_position_embedding_9/embedding_19/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_9/embedding_19/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	ô 
0token_and_position_embedding_9/embedding_18/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿôì
<token_and_position_embedding_9/embedding_18/embedding_lookupResourceGatherCtoken_and_position_embedding_9_embedding_18_embedding_lookup_1587574token_and_position_embedding_9/embedding_18/Cast:y:0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_9/embedding_18/embedding_lookup/158757*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
dtype0§
Etoken_and_position_embedding_9/embedding_18/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_9/embedding_18/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_9/embedding_18/embedding_lookup/158757*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ú
Gtoken_and_position_embedding_9/embedding_18/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_9/embedding_18/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
"token_and_position_embedding_9/addAddV2Ptoken_and_position_embedding_9/embedding_18/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_9/embedding_19/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô è
Mtransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_9_multi_head_attention_9_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0¨
>transformer_block_9/multi_head_attention_9/query/einsum/EinsumEinsum&token_and_position_embedding_9/add:z:0Utransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeÐ
Ctransformer_block_9/multi_head_attention_9/query/add/ReadVariableOpReadVariableOpLtransformer_block_9_multi_head_attention_9_query_add_readvariableop_resource*
_output_shapes

: *
dtype0
4transformer_block_9/multi_head_attention_9/query/addAddV2Gtransformer_block_9/multi_head_attention_9/query/einsum/Einsum:output:0Ktransformer_block_9/multi_head_attention_9/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ä
Ktransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_9_multi_head_attention_9_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0¤
<transformer_block_9/multi_head_attention_9/key/einsum/EinsumEinsum&token_and_position_embedding_9/add:z:0Stransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeÌ
Atransformer_block_9/multi_head_attention_9/key/add/ReadVariableOpReadVariableOpJtransformer_block_9_multi_head_attention_9_key_add_readvariableop_resource*
_output_shapes

: *
dtype0
2transformer_block_9/multi_head_attention_9/key/addAddV2Etransformer_block_9/multi_head_attention_9/key/einsum/Einsum:output:0Itransformer_block_9/multi_head_attention_9/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô è
Mtransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_9_multi_head_attention_9_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0¨
>transformer_block_9/multi_head_attention_9/value/einsum/EinsumEinsum&token_and_position_embedding_9/add:z:0Utransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabc,cde->abdeÐ
Ctransformer_block_9/multi_head_attention_9/value/add/ReadVariableOpReadVariableOpLtransformer_block_9_multi_head_attention_9_value_add_readvariableop_resource*
_output_shapes

: *
dtype0
4transformer_block_9/multi_head_attention_9/value/addAddV2Gtransformer_block_9/multi_head_attention_9/value/einsum/Einsum:output:0Ktransformer_block_9/multi_head_attention_9/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô u
0transformer_block_9/multi_head_attention_9/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ó5>å
.transformer_block_9/multi_head_attention_9/MulMul8transformer_block_9/multi_head_attention_9/query/add:z:09transformer_block_9/multi_head_attention_9/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
8transformer_block_9/multi_head_attention_9/einsum/EinsumEinsum6transformer_block_9/multi_head_attention_9/key/add:z:02transformer_block_9/multi_head_attention_9/Mul:z:0*
N*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô*
equationaecd,abcd->acbeÄ
:transformer_block_9/multi_head_attention_9/softmax/SoftmaxSoftmaxAtransformer_block_9/multi_head_attention_9/einsum/Einsum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôôÉ
;transformer_block_9/multi_head_attention_9/dropout/IdentityIdentityDtransformer_block_9/multi_head_attention_9/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô§
:transformer_block_9/multi_head_attention_9/einsum_1/EinsumEinsumDtransformer_block_9/multi_head_attention_9/dropout/Identity:output:08transformer_block_9/multi_head_attention_9/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationacbe,aecd->abcdþ
Xtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_9_multi_head_attention_9_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0×
Itransformer_block_9/multi_head_attention_9/attention_output/einsum/EinsumEinsumCtransformer_block_9/multi_head_attention_9/einsum_1/Einsum:output:0`transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *
equationabcd,cde->abeâ
Ntransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_9_multi_head_attention_9_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0«
?transformer_block_9/multi_head_attention_9/attention_output/addAddV2Rtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum:output:0Vtransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ¯
'transformer_block_9/dropout_37/IdentityIdentityCtransformer_block_9/multi_head_attention_9/attention_output/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ±
transformer_block_9/addAddV2&token_and_position_embedding_9/add:z:00transformer_block_9/dropout_37/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Itransformer_block_9/layer_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ø
7transformer_block_9/layer_normalization_18/moments/meanMeantransformer_block_9/add:z:0Rtransformer_block_9/layer_normalization_18/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(È
?transformer_block_9/layer_normalization_18/moments/StopGradientStopGradient@transformer_block_9/layer_normalization_18/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô÷
Dtransformer_block_9/layer_normalization_18/moments/SquaredDifferenceSquaredDifferencetransformer_block_9/add:z:0Htransformer_block_9/layer_normalization_18/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Mtransformer_block_9/layer_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:­
;transformer_block_9/layer_normalization_18/moments/varianceMeanHtransformer_block_9/layer_normalization_18/moments/SquaredDifference:z:0Vtransformer_block_9/layer_normalization_18/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(
:transformer_block_9/layer_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
8transformer_block_9/layer_normalization_18/batchnorm/addAddV2Dtransformer_block_9/layer_normalization_18/moments/variance:output:0Ctransformer_block_9/layer_normalization_18/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¸
:transformer_block_9/layer_normalization_18/batchnorm/RsqrtRsqrt<transformer_block_9/layer_normalization_18/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÔ
Gtransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_9_layer_normalization_18_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
8transformer_block_9/layer_normalization_18/batchnorm/mulMul>transformer_block_9/layer_normalization_18/batchnorm/Rsqrt:y:0Otransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ó
:transformer_block_9/layer_normalization_18/batchnorm/mul_1Multransformer_block_9/add:z:0<transformer_block_9/layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ø
:transformer_block_9/layer_normalization_18/batchnorm/mul_2Mul@transformer_block_9/layer_normalization_18/moments/mean:output:0<transformer_block_9/layer_normalization_18/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ì
Ctransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_9_layer_normalization_18_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
8transformer_block_9/layer_normalization_18/batchnorm/subSubKtransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp:value:0>transformer_block_9/layer_normalization_18/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ø
:transformer_block_9/layer_normalization_18/batchnorm/add_1AddV2>transformer_block_9/layer_normalization_18/batchnorm/mul_1:z:0<transformer_block_9/layer_normalization_18/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ñ
Ctransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpReadVariableOpLtransformer_block_9_sequential_19_dense_36_tensordot_readvariableop_resource*
_output_shapes
:	 È*
dtype0
9transformer_block_9/sequential_19/dense_36/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_block_9/sequential_19/dense_36/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¨
:transformer_block_9/sequential_19/dense_36/Tensordot/ShapeShape>transformer_block_9/layer_normalization_18/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Btransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2GatherV2Ctransformer_block_9/sequential_19/dense_36/Tensordot/Shape:output:0Btransformer_block_9/sequential_19/dense_36/Tensordot/free:output:0Ktransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1GatherV2Ctransformer_block_9/sequential_19/dense_36/Tensordot/Shape:output:0Btransformer_block_9/sequential_19/dense_36/Tensordot/axes:output:0Mtransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_block_9/sequential_19/dense_36/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_block_9/sequential_19/dense_36/Tensordot/ProdProdFtransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2:output:0Ctransformer_block_9/sequential_19/dense_36/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_block_9/sequential_19/dense_36/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_block_9/sequential_19/dense_36/Tensordot/Prod_1ProdHtransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2_1:output:0Etransformer_block_9/sequential_19/dense_36/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_block_9/sequential_19/dense_36/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_block_9/sequential_19/dense_36/Tensordot/concatConcatV2Btransformer_block_9/sequential_19/dense_36/Tensordot/free:output:0Btransformer_block_9/sequential_19/dense_36/Tensordot/axes:output:0Itransformer_block_9/sequential_19/dense_36/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_block_9/sequential_19/dense_36/Tensordot/stackPackBtransformer_block_9/sequential_19/dense_36/Tensordot/Prod:output:0Dtransformer_block_9/sequential_19/dense_36/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_block_9/sequential_19/dense_36/Tensordot/transpose	Transpose>transformer_block_9/layer_normalization_18/batchnorm/add_1:z:0Dtransformer_block_9/sequential_19/dense_36/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
<transformer_block_9/sequential_19/dense_36/Tensordot/ReshapeReshapeBtransformer_block_9/sequential_19/dense_36/Tensordot/transpose:y:0Ctransformer_block_9/sequential_19/dense_36/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_block_9/sequential_19/dense_36/Tensordot/MatMulMatMulEtransformer_block_9/sequential_19/dense_36/Tensordot/Reshape:output:0Ktransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
<transformer_block_9/sequential_19/dense_36/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:È
Btransformer_block_9/sequential_19/dense_36/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_block_9/sequential_19/dense_36/Tensordot/concat_1ConcatV2Ftransformer_block_9/sequential_19/dense_36/Tensordot/GatherV2:output:0Etransformer_block_9/sequential_19/dense_36/Tensordot/Const_2:output:0Ktransformer_block_9/sequential_19/dense_36/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_block_9/sequential_19/dense_36/TensordotReshapeEtransformer_block_9/sequential_19/dense_36/Tensordot/MatMul:product:0Ftransformer_block_9/sequential_19/dense_36/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÉ
Atransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpReadVariableOpJtransformer_block_9_sequential_19_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0ÿ
2transformer_block_9/sequential_19/dense_36/BiasAddBiasAdd=transformer_block_9/sequential_19/dense_36/Tensordot:output:0Itransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ¬
/transformer_block_9/sequential_19/dense_36/ReluRelu;transformer_block_9/sequential_19/dense_36/BiasAdd:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈÑ
Ctransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpReadVariableOpLtransformer_block_9_sequential_19_dense_37_tensordot_readvariableop_resource*
_output_shapes
:	È *
dtype0
9transformer_block_9/sequential_19/dense_37/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_block_9/sequential_19/dense_37/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       §
:transformer_block_9/sequential_19/dense_37/Tensordot/ShapeShape=transformer_block_9/sequential_19/dense_36/Relu:activations:0*
T0*
_output_shapes
:
Btransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2GatherV2Ctransformer_block_9/sequential_19/dense_37/Tensordot/Shape:output:0Btransformer_block_9/sequential_19/dense_37/Tensordot/free:output:0Ktransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1GatherV2Ctransformer_block_9/sequential_19/dense_37/Tensordot/Shape:output:0Btransformer_block_9/sequential_19/dense_37/Tensordot/axes:output:0Mtransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_block_9/sequential_19/dense_37/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_block_9/sequential_19/dense_37/Tensordot/ProdProdFtransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2:output:0Ctransformer_block_9/sequential_19/dense_37/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_block_9/sequential_19/dense_37/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_block_9/sequential_19/dense_37/Tensordot/Prod_1ProdHtransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2_1:output:0Etransformer_block_9/sequential_19/dense_37/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_block_9/sequential_19/dense_37/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_block_9/sequential_19/dense_37/Tensordot/concatConcatV2Btransformer_block_9/sequential_19/dense_37/Tensordot/free:output:0Btransformer_block_9/sequential_19/dense_37/Tensordot/axes:output:0Itransformer_block_9/sequential_19/dense_37/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_block_9/sequential_19/dense_37/Tensordot/stackPackBtransformer_block_9/sequential_19/dense_37/Tensordot/Prod:output:0Dtransformer_block_9/sequential_19/dense_37/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_block_9/sequential_19/dense_37/Tensordot/transpose	Transpose=transformer_block_9/sequential_19/dense_36/Relu:activations:0Dtransformer_block_9/sequential_19/dense_37/Tensordot/concat:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÈ
<transformer_block_9/sequential_19/dense_37/Tensordot/ReshapeReshapeBtransformer_block_9/sequential_19/dense_37/Tensordot/transpose:y:0Ctransformer_block_9/sequential_19/dense_37/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_block_9/sequential_19/dense_37/Tensordot/MatMulMatMulEtransformer_block_9/sequential_19/dense_37/Tensordot/Reshape:output:0Ktransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
<transformer_block_9/sequential_19/dense_37/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Btransformer_block_9/sequential_19/dense_37/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_block_9/sequential_19/dense_37/Tensordot/concat_1ConcatV2Ftransformer_block_9/sequential_19/dense_37/Tensordot/GatherV2:output:0Etransformer_block_9/sequential_19/dense_37/Tensordot/Const_2:output:0Ktransformer_block_9/sequential_19/dense_37/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_block_9/sequential_19/dense_37/TensordotReshapeEtransformer_block_9/sequential_19/dense_37/Tensordot/MatMul:product:0Ftransformer_block_9/sequential_19/dense_37/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô È
Atransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpReadVariableOpJtransformer_block_9_sequential_19_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0þ
2transformer_block_9/sequential_19/dense_37/BiasAddBiasAdd=transformer_block_9/sequential_19/dense_37/Tensordot:output:0Itransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô §
'transformer_block_9/dropout_38/IdentityIdentity;transformer_block_9/sequential_19/dense_37/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ë
transformer_block_9/add_1AddV2>transformer_block_9/layer_normalization_18/batchnorm/add_1:z:00transformer_block_9/dropout_38/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Itransformer_block_9/layer_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ú
7transformer_block_9/layer_normalization_19/moments/meanMeantransformer_block_9/add_1:z:0Rtransformer_block_9/layer_normalization_19/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(È
?transformer_block_9/layer_normalization_19/moments/StopGradientStopGradient@transformer_block_9/layer_normalization_19/moments/mean:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôù
Dtransformer_block_9/layer_normalization_19/moments/SquaredDifferenceSquaredDifferencetransformer_block_9/add_1:z:0Htransformer_block_9/layer_normalization_19/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
Mtransformer_block_9/layer_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:­
;transformer_block_9/layer_normalization_19/moments/varianceMeanHtransformer_block_9/layer_normalization_19/moments/SquaredDifference:z:0Vtransformer_block_9/layer_normalization_19/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
	keep_dims(
:transformer_block_9/layer_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
8transformer_block_9/layer_normalization_19/batchnorm/addAddV2Dtransformer_block_9/layer_normalization_19/moments/variance:output:0Ctransformer_block_9/layer_normalization_19/batchnorm/add/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô¸
:transformer_block_9/layer_normalization_19/batchnorm/RsqrtRsqrt<transformer_block_9/layer_normalization_19/batchnorm/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿôÔ
Gtransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOpReadVariableOpPtransformer_block_9_layer_normalization_19_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
8transformer_block_9/layer_normalization_19/batchnorm/mulMul>transformer_block_9/layer_normalization_19/batchnorm/Rsqrt:y:0Otransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Õ
:transformer_block_9/layer_normalization_19/batchnorm/mul_1Multransformer_block_9/add_1:z:0<transformer_block_9/layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ø
:transformer_block_9/layer_normalization_19/batchnorm/mul_2Mul@transformer_block_9/layer_normalization_19/moments/mean:output:0<transformer_block_9/layer_normalization_19/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô Ì
Ctransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpReadVariableOpLtransformer_block_9_layer_normalization_19_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
8transformer_block_9/layer_normalization_19/batchnorm/subSubKtransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp:value:0>transformer_block_9/layer_normalization_19/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô ø
:transformer_block_9/layer_normalization_19/batchnorm/add_1AddV2>transformer_block_9/layer_normalization_19/batchnorm/mul_1:z:0<transformer_block_9/layer_normalization_19/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô s
1global_average_pooling1d_9/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Õ
global_average_pooling1d_9/MeanMean>transformer_block_9/layer_normalization_19/batchnorm/add_1:z:0:global_average_pooling1d_9/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
dropout_39/IdentityIdentity(global_average_pooling1d_9/Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes
:	 È*
dtype0
dense_38/MatMulMatMuldropout_39/Identity:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈc
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈo
dropout_40/IdentityIdentitydense_38/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes
:	È*
dtype0
dense_39/MatMulMatMuldropout_40/Identity:output:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_39/SigmoidSigmoiddense_39/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitydense_39/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp=^token_and_position_embedding_9/embedding_18/embedding_lookup=^token_and_position_embedding_9/embedding_19/embedding_lookupD^transformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpH^transformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpD^transformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpH^transformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOpO^transformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOpY^transformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_9/multi_head_attention_9/key/add/ReadVariableOpL^transformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpD^transformer_block_9/multi_head_attention_9/query/add/ReadVariableOpN^transformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpD^transformer_block_9/multi_head_attention_9/value/add/ReadVariableOpN^transformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpB^transformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpD^transformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpB^transformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpD^transformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2|
<token_and_position_embedding_9/embedding_18/embedding_lookup<token_and_position_embedding_9/embedding_18/embedding_lookup2|
<token_and_position_embedding_9/embedding_19/embedding_lookup<token_and_position_embedding_9/embedding_19/embedding_lookup2
Ctransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOpCtransformer_block_9/layer_normalization_18/batchnorm/ReadVariableOp2
Gtransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOpGtransformer_block_9/layer_normalization_18/batchnorm/mul/ReadVariableOp2
Ctransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOpCtransformer_block_9/layer_normalization_19/batchnorm/ReadVariableOp2
Gtransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOpGtransformer_block_9/layer_normalization_19/batchnorm/mul/ReadVariableOp2 
Ntransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOpNtransformer_block_9/multi_head_attention_9/attention_output/add/ReadVariableOp2´
Xtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_9/multi_head_attention_9/attention_output/einsum/Einsum/ReadVariableOp2
Atransformer_block_9/multi_head_attention_9/key/add/ReadVariableOpAtransformer_block_9/multi_head_attention_9/key/add/ReadVariableOp2
Ktransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOpKtransformer_block_9/multi_head_attention_9/key/einsum/Einsum/ReadVariableOp2
Ctransformer_block_9/multi_head_attention_9/query/add/ReadVariableOpCtransformer_block_9/multi_head_attention_9/query/add/ReadVariableOp2
Mtransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOpMtransformer_block_9/multi_head_attention_9/query/einsum/Einsum/ReadVariableOp2
Ctransformer_block_9/multi_head_attention_9/value/add/ReadVariableOpCtransformer_block_9/multi_head_attention_9/value/add/ReadVariableOp2
Mtransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOpMtransformer_block_9/multi_head_attention_9/value/einsum/Einsum/ReadVariableOp2
Atransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOpAtransformer_block_9/sequential_19/dense_36/BiasAdd/ReadVariableOp2
Ctransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOpCtransformer_block_9/sequential_19/dense_36/Tensordot/ReadVariableOp2
Atransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOpAtransformer_block_9/sequential_19/dense_37/BiasAdd/ReadVariableOp2
Ctransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOpCtransformer_block_9/sequential_19/dense_37/Tensordot/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
ñ
­
?__inference_token_and_position_embedding_9_layer_call_fn_159106
x
unknown:	ô 
	unknown_0:	N 
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_157718t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿô: : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô

_user_specified_namex
·
Ô
.__inference_sequential_19_layer_call_fn_159602

inputs
unknown:	 È
	unknown_0:	È
	unknown_1:	È 
	unknown_2: 
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_157622t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿô : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô 
 
_user_specified_nameinputs
 
Ú
$__inference_signature_wrapper_158642
input_10
unknown:	ô 
	unknown_0:	N 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:	 È

unknown_12:	È

unknown_13:	È 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:	 È

unknown_18:	È

unknown_19:	È

unknown_20:
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_157481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿô: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
"
_user_specified_name
input_10
£

÷
D__inference_dense_38_layer_call_and_return_conditional_losses_157904

inputs1
matmul_readvariableop_resource:	 È.
biasadd_readvariableop_resource:	È
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 È*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*®
serving_default
>
input_102
serving_default_input_10:0ÿÿÿÿÿÿÿÿÿô<
dense_390
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ùº
©
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
ó
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
att
 ffn
!
layernorm1
"
layernorm2
#dropout1
$dropout2"
_tf_keras_layer
¥
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator"
_tf_keras_layer
»
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
¼
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@_random_generator"
_tf_keras_layer
»
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
Æ
I0
J1
K2
L3
M4
N5
O6
P7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17
818
919
G20
H21"
trackable_list_wrapper
Æ
I0
J1
K2
L3
M4
N5
O6
P7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17
818
919
G20
H21"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
î
`trace_0
atrace_1
btrace_2
ctrace_32
.__inference_sequential_18_layer_call_fn_157982
.__inference_sequential_18_layer_call_fn_158691
.__inference_sequential_18_layer_call_fn_158740
.__inference_sequential_18_layer_call_fn_158475À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z`trace_0zatrace_1zbtrace_2zctrace_3
Ú
dtrace_0
etrace_1
ftrace_2
gtrace_32ï
I__inference_sequential_18_layer_call_and_return_conditional_losses_158905
I__inference_sequential_18_layer_call_and_return_conditional_losses_159097
I__inference_sequential_18_layer_call_and_return_conditional_losses_158530
I__inference_sequential_18_layer_call_and_return_conditional_losses_158585À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zdtrace_0zetrace_1zftrace_2zgtrace_3
ÍBÊ
!__inference__wrapped_model_157481input_10"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

hiter

ibeta_1

jbeta_2
	kdecay
llearning_rate8m9mGmHmImJmKmLmMmNmOmPmQmRmSmTmUmVmWmXmYmZm8v9vGvHvIvJvKvLvMvNv Ov¡Pv¢Qv£Rv¤Sv¥Tv¦Uv§Vv¨Wv©XvªYv«Zv¬"
	optimizer
,
mserving_default"
signature_map
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
þ
strace_02á
?__inference_token_and_position_embedding_9_layer_call_fn_159106
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zstrace_0

ttrace_02ü
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_159130
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zttrace_0
µ
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
I
embeddings"
_tf_keras_layer
¶
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses
J
embeddings"
_tf_keras_layer

K0
L1
M2
N3
O4
P5
Q6
R7
S8
T9
U10
V11
W12
X13
Y14
Z15"
trackable_list_wrapper

K0
L1
M2
N3
O4
P5
Q6
R7
S8
T9
U10
V11
W12
X13
Y14
Z15"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ú
trace_0
trace_12
4__inference_transformer_block_9_layer_call_fn_159167
4__inference_transformer_block_9_layer_call_fn_159204°
§²£
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1

trace_0
trace_12Õ
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_159331
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_159471°
§²£
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense"
_tf_keras_layer

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ë
	variables
trainable_variables
 regularization_losses
¡	keras_api
¢__call__
+£&call_and_return_all_conditional_losses
	¤axis
	Wgamma
Xbeta"
_tf_keras_layer
Ë
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ª&call_and_return_all_conditional_losses
	«axis
	Ygamma
Zbeta"
_tf_keras_layer
Ã
¬	variables
­trainable_variables
®regularization_losses
¯	keras_api
°__call__
+±&call_and_return_all_conditional_losses
²_random_generator"
_tf_keras_layer
Ã
³	variables
´trainable_variables
µregularization_losses
¶	keras_api
·__call__
+¸&call_and_return_all_conditional_losses
¹_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object

¿trace_02ï
;__inference_global_average_pooling1d_9_layer_call_fn_159476¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¿trace_0
©
Àtrace_02
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_159482¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÀtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
Ì
Ætrace_0
Çtrace_12
+__inference_dropout_39_layer_call_fn_159487
+__inference_dropout_39_layer_call_fn_159492´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÆtrace_0zÇtrace_1

Ètrace_0
Étrace_12Ç
F__inference_dropout_39_layer_call_and_return_conditional_losses_159497
F__inference_dropout_39_layer_call_and_return_conditional_losses_159509´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÈtrace_0zÉtrace_1
"
_generic_user_object
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
²
Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
ï
Ïtrace_02Ð
)__inference_dense_38_layer_call_fn_159518¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÏtrace_0

Ðtrace_02ë
D__inference_dense_38_layer_call_and_return_conditional_losses_159529¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÐtrace_0
": 	 È2dense_38/kernel
:È2dense_38/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
Ì
Ötrace_0
×trace_12
+__inference_dropout_40_layer_call_fn_159534
+__inference_dropout_40_layer_call_fn_159539´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÖtrace_0z×trace_1

Øtrace_0
Ùtrace_12Ç
F__inference_dropout_40_layer_call_and_return_conditional_losses_159544
F__inference_dropout_40_layer_call_and_return_conditional_losses_159556´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zØtrace_0zÙtrace_1
"
_generic_user_object
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
ï
ßtrace_02Ð
)__inference_dense_39_layer_call_fn_159565¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zßtrace_0

àtrace_02ë
D__inference_dense_39_layer_call_and_return_conditional_losses_159576¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zàtrace_0
": 	È2dense_39/kernel
:2dense_39/bias
I:G	N 26token_and_position_embedding_9/embedding_18/embeddings
I:G	ô 26token_and_position_embedding_9/embedding_19/embeddings
M:K  27transformer_block_9/multi_head_attention_9/query/kernel
G:E 25transformer_block_9/multi_head_attention_9/query/bias
K:I  25transformer_block_9/multi_head_attention_9/key/kernel
E:C 23transformer_block_9/multi_head_attention_9/key/bias
M:K  27transformer_block_9/multi_head_attention_9/value/kernel
G:E 25transformer_block_9/multi_head_attention_9/value/bias
X:V  2Btransformer_block_9/multi_head_attention_9/attention_output/kernel
N:L 2@transformer_block_9/multi_head_attention_9/attention_output/bias
": 	 È2dense_36/kernel
:È2dense_36/bias
": 	È 2dense_37/kernel
: 2dense_37/bias
>:< 20transformer_block_9/layer_normalization_18/gamma
=:; 2/transformer_block_9/layer_normalization_18/beta
>:< 20transformer_block_9/layer_normalization_19/gamma
=:; 2/transformer_block_9/layer_normalization_19/beta
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
0
á0
â1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bÿ
.__inference_sequential_18_layer_call_fn_157982input_10"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bý
.__inference_sequential_18_layer_call_fn_158691inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bý
.__inference_sequential_18_layer_call_fn_158740inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bÿ
.__inference_sequential_18_layer_call_fn_158475input_10"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
I__inference_sequential_18_layer_call_and_return_conditional_losses_158905inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
I__inference_sequential_18_layer_call_and_return_conditional_losses_159097inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
I__inference_sequential_18_layer_call_and_return_conditional_losses_158530input_10"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
I__inference_sequential_18_layer_call_and_return_conditional_losses_158585input_10"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÌBÉ
$__inference_signature_wrapper_158642input_10"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
éBæ
?__inference_token_and_position_embedding_9_layer_call_fn_159106x"
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_159130x"
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
I0"
trackable_list_wrapper
'
I0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
J0"
trackable_list_wrapper
'
J0"
trackable_list_wrapper
 "
trackable_list_wrapper
´
ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
J
0
 1
!2
"3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
öBó
4__inference_transformer_block_9_layer_call_fn_159167inputs"°
§²£
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
öBó
4__inference_transformer_block_9_layer_call_fn_159204inputs"°
§²£
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_159331inputs"°
§²£
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_159471inputs"°
§²£
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
X
K0
L1
M2
N3
O4
P5
Q6
R7"
trackable_list_wrapper
X
K0
L1
M2
N3
O4
P5
Q6
R7"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
2ÿü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ô
ò	variables
ótrainable_variables
ôregularization_losses
õ	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses
øpartial_output_shape
ùfull_output_shape

Kkernel
Lbias"
_tf_keras_layer
ô
ú	variables
ûtrainable_variables
üregularization_losses
ý	keras_api
þ__call__
+ÿ&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Mkernel
Nbias"
_tf_keras_layer
ô
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Okernel
Pbias"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
ô
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Qkernel
Rbias"
_tf_keras_layer
Á
	variables
 trainable_variables
¡regularization_losses
¢	keras_api
£__call__
+¤&call_and_return_all_conditional_losses

Skernel
Tbias"
_tf_keras_layer
Á
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ª&call_and_return_all_conditional_losses

Ukernel
Vbias"
_tf_keras_layer
<
S0
T1
U2
V3"
trackable_list_wrapper
<
S0
T1
U2
V3"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö
°trace_0
±trace_1
²trace_2
³trace_32
.__inference_sequential_19_layer_call_fn_157573
.__inference_sequential_19_layer_call_fn_159589
.__inference_sequential_19_layer_call_fn_159602
.__inference_sequential_19_layer_call_fn_157646À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z°trace_0z±trace_1z²trace_2z³trace_3
â
´trace_0
µtrace_1
¶trace_2
·trace_32ï
I__inference_sequential_19_layer_call_and_return_conditional_losses_159659
I__inference_sequential_19_layer_call_and_return_conditional_losses_159716
I__inference_sequential_19_layer_call_and_return_conditional_losses_157660
I__inference_sequential_19_layer_call_and_return_conditional_losses_157674À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z´trace_0zµtrace_1z¶trace_2z·trace_3
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
	variables
trainable_variables
 regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
¥	variables
¦trainable_variables
§regularization_losses
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
¬	variables
­trainable_variables
®regularization_losses
°__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
³	variables
´trainable_variables
µregularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
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
üBù
;__inference_global_average_pooling1d_9_layer_call_fn_159476inputs"¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_159482inputs"¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ñBî
+__inference_dropout_39_layer_call_fn_159487inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ñBî
+__inference_dropout_39_layer_call_fn_159492inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
F__inference_dropout_39_layer_call_and_return_conditional_losses_159497inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
F__inference_dropout_39_layer_call_and_return_conditional_losses_159509inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
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
ÝBÚ
)__inference_dense_38_layer_call_fn_159518inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_38_layer_call_and_return_conditional_losses_159529inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ñBî
+__inference_dropout_40_layer_call_fn_159534inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ñBî
+__inference_dropout_40_layer_call_fn_159539inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
F__inference_dropout_40_layer_call_and_return_conditional_losses_159544inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
F__inference_dropout_40_layer_call_and_return_conditional_losses_159556inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
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
ÝBÚ
)__inference_dense_39_layer_call_fn_159565inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_39_layer_call_and_return_conditional_losses_159576inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
Ì	variables
Í	keras_api

Îtotal

Ïcount"
_tf_keras_metric
c
Ð	variables
Ñ	keras_api

Òtotal

Ócount
Ô
_fn_kwargs"
_tf_keras_metric
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
P
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
ò	variables
ótrainable_variables
ôregularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
ú	variables
ûtrainable_variables
üregularization_losses
þ__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
änon_trainable_variables
ålayers
æmetrics
 çlayer_regularization_losses
èlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
înon_trainable_variables
ïlayers
ðmetrics
 ñlayer_regularization_losses
òlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ónon_trainable_variables
ôlayers
õmetrics
 ölayer_regularization_losses
÷layer_metrics
	variables
 trainable_variables
¡regularization_losses
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
ï
øtrace_02Ð
)__inference_dense_36_layer_call_fn_159725¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zøtrace_0

ùtrace_02ë
D__inference_dense_36_layer_call_and_return_conditional_losses_159756¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zùtrace_0
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
¥	variables
¦trainable_variables
§regularization_losses
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
ï
ÿtrace_02Ð
)__inference_dense_37_layer_call_fn_159765¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÿtrace_0

trace_02ë
D__inference_dense_37_layer_call_and_return_conditional_losses_159795¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_sequential_19_layer_call_fn_157573dense_36_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bý
.__inference_sequential_19_layer_call_fn_159589inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bý
.__inference_sequential_19_layer_call_fn_159602inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
.__inference_sequential_19_layer_call_fn_157646dense_36_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
I__inference_sequential_19_layer_call_and_return_conditional_losses_159659inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
I__inference_sequential_19_layer_call_and_return_conditional_losses_159716inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
I__inference_sequential_19_layer_call_and_return_conditional_losses_157660dense_36_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
I__inference_sequential_19_layer_call_and_return_conditional_losses_157674dense_36_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
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
0
Î0
Ï1"
trackable_list_wrapper
.
Ì	variables"
_generic_user_object
:  (2total
:  (2count
0
Ò0
Ó1"
trackable_list_wrapper
.
Ð	variables"
_generic_user_object
:  (2total
:  (2count
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
ÝBÚ
)__inference_dense_36_layer_call_fn_159725inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_36_layer_call_and_return_conditional_losses_159756inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÝBÚ
)__inference_dense_37_layer_call_fn_159765inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_37_layer_call_and_return_conditional_losses_159795inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
':%	 È2Adam/dense_38/kernel/m
!:È2Adam/dense_38/bias/m
':%	È2Adam/dense_39/kernel/m
 :2Adam/dense_39/bias/m
N:L	N 2=Adam/token_and_position_embedding_9/embedding_18/embeddings/m
N:L	ô 2=Adam/token_and_position_embedding_9/embedding_19/embeddings/m
R:P  2>Adam/transformer_block_9/multi_head_attention_9/query/kernel/m
L:J 2<Adam/transformer_block_9/multi_head_attention_9/query/bias/m
P:N  2<Adam/transformer_block_9/multi_head_attention_9/key/kernel/m
J:H 2:Adam/transformer_block_9/multi_head_attention_9/key/bias/m
R:P  2>Adam/transformer_block_9/multi_head_attention_9/value/kernel/m
L:J 2<Adam/transformer_block_9/multi_head_attention_9/value/bias/m
]:[  2IAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/m
S:Q 2GAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/m
':%	 È2Adam/dense_36/kernel/m
!:È2Adam/dense_36/bias/m
':%	È 2Adam/dense_37/kernel/m
 : 2Adam/dense_37/bias/m
C:A 27Adam/transformer_block_9/layer_normalization_18/gamma/m
B:@ 26Adam/transformer_block_9/layer_normalization_18/beta/m
C:A 27Adam/transformer_block_9/layer_normalization_19/gamma/m
B:@ 26Adam/transformer_block_9/layer_normalization_19/beta/m
':%	 È2Adam/dense_38/kernel/v
!:È2Adam/dense_38/bias/v
':%	È2Adam/dense_39/kernel/v
 :2Adam/dense_39/bias/v
N:L	N 2=Adam/token_and_position_embedding_9/embedding_18/embeddings/v
N:L	ô 2=Adam/token_and_position_embedding_9/embedding_19/embeddings/v
R:P  2>Adam/transformer_block_9/multi_head_attention_9/query/kernel/v
L:J 2<Adam/transformer_block_9/multi_head_attention_9/query/bias/v
P:N  2<Adam/transformer_block_9/multi_head_attention_9/key/kernel/v
J:H 2:Adam/transformer_block_9/multi_head_attention_9/key/bias/v
R:P  2>Adam/transformer_block_9/multi_head_attention_9/value/kernel/v
L:J 2<Adam/transformer_block_9/multi_head_attention_9/value/bias/v
]:[  2IAdam/transformer_block_9/multi_head_attention_9/attention_output/kernel/v
S:Q 2GAdam/transformer_block_9/multi_head_attention_9/attention_output/bias/v
':%	 È2Adam/dense_36/kernel/v
!:È2Adam/dense_36/bias/v
':%	È 2Adam/dense_37/kernel/v
 : 2Adam/dense_37/bias/v
C:A 27Adam/transformer_block_9/layer_normalization_18/gamma/v
B:@ 26Adam/transformer_block_9/layer_normalization_18/beta/v
C:A 27Adam/transformer_block_9/layer_normalization_19/gamma/v
B:@ 26Adam/transformer_block_9/layer_normalization_19/beta/v§
!__inference__wrapped_model_157481JIKLMNOPQRWXSTUVYZ89GH2¢/
(¢%
# 
input_10ÿÿÿÿÿÿÿÿÿô
ª "3ª0
.
dense_39"
dense_39ÿÿÿÿÿÿÿÿÿ¯
D__inference_dense_36_layer_call_and_return_conditional_losses_159756gST4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿô 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿôÈ
 
)__inference_dense_36_layer_call_fn_159725ZST4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿô 
ª "ÿÿÿÿÿÿÿÿÿôÈ¯
D__inference_dense_37_layer_call_and_return_conditional_losses_159795gUV5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿôÈ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿô 
 
)__inference_dense_37_layer_call_fn_159765ZUV5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿôÈ
ª "ÿÿÿÿÿÿÿÿÿô ¥
D__inference_dense_38_layer_call_and_return_conditional_losses_159529]89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 }
)__inference_dense_38_layer_call_fn_159518P89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿÈ¥
D__inference_dense_39_layer_call_and_return_conditional_losses_159576]GH0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_39_layer_call_fn_159565PGH0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dropout_39_layer_call_and_return_conditional_losses_159497\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¦
F__inference_dropout_39_layer_call_and_return_conditional_losses_159509\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ~
+__inference_dropout_39_layer_call_fn_159487O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ ~
+__inference_dropout_39_layer_call_fn_159492O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ ¨
F__inference_dropout_40_layer_call_and_return_conditional_losses_159544^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÈ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 ¨
F__inference_dropout_40_layer_call_and_return_conditional_losses_159556^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÈ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 
+__inference_dropout_40_layer_call_fn_159534Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÈ
p 
ª "ÿÿÿÿÿÿÿÿÿÈ
+__inference_dropout_40_layer_call_fn_159539Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÈ
p
ª "ÿÿÿÿÿÿÿÿÿÈÕ
V__inference_global_average_pooling1d_9_layer_call_and_return_conditional_losses_159482{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ­
;__inference_global_average_pooling1d_9_layer_call_fn_159476nI¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
ª "!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
I__inference_sequential_18_layer_call_and_return_conditional_losses_158530{JIKLMNOPQRWXSTUVYZ89GH:¢7
0¢-
# 
input_10ÿÿÿÿÿÿÿÿÿô
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 È
I__inference_sequential_18_layer_call_and_return_conditional_losses_158585{JIKLMNOPQRWXSTUVYZ89GH:¢7
0¢-
# 
input_10ÿÿÿÿÿÿÿÿÿô
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
I__inference_sequential_18_layer_call_and_return_conditional_losses_158905yJIKLMNOPQRWXSTUVYZ89GH8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿô
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
I__inference_sequential_18_layer_call_and_return_conditional_losses_159097yJIKLMNOPQRWXSTUVYZ89GH8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿô
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
  
.__inference_sequential_18_layer_call_fn_157982nJIKLMNOPQRWXSTUVYZ89GH:¢7
0¢-
# 
input_10ÿÿÿÿÿÿÿÿÿô
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
.__inference_sequential_18_layer_call_fn_158475nJIKLMNOPQRWXSTUVYZ89GH:¢7
0¢-
# 
input_10ÿÿÿÿÿÿÿÿÿô
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_18_layer_call_fn_158691lJIKLMNOPQRWXSTUVYZ89GH8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿô
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_18_layer_call_fn_158740lJIKLMNOPQRWXSTUVYZ89GH8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿô
p

 
ª "ÿÿÿÿÿÿÿÿÿÅ
I__inference_sequential_19_layer_call_and_return_conditional_losses_157660xSTUVD¢A
:¢7
-*
dense_36_inputÿÿÿÿÿÿÿÿÿô 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿô 
 Å
I__inference_sequential_19_layer_call_and_return_conditional_losses_157674xSTUVD¢A
:¢7
-*
dense_36_inputÿÿÿÿÿÿÿÿÿô 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿô 
 ½
I__inference_sequential_19_layer_call_and_return_conditional_losses_159659pSTUV<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿô 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿô 
 ½
I__inference_sequential_19_layer_call_and_return_conditional_losses_159716pSTUV<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿô 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿô 
 
.__inference_sequential_19_layer_call_fn_157573kSTUVD¢A
:¢7
-*
dense_36_inputÿÿÿÿÿÿÿÿÿô 
p 

 
ª "ÿÿÿÿÿÿÿÿÿô 
.__inference_sequential_19_layer_call_fn_157646kSTUVD¢A
:¢7
-*
dense_36_inputÿÿÿÿÿÿÿÿÿô 
p

 
ª "ÿÿÿÿÿÿÿÿÿô 
.__inference_sequential_19_layer_call_fn_159589cSTUV<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿô 
p 

 
ª "ÿÿÿÿÿÿÿÿÿô 
.__inference_sequential_19_layer_call_fn_159602cSTUV<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿô 
p

 
ª "ÿÿÿÿÿÿÿÿÿô ¶
$__inference_signature_wrapper_158642JIKLMNOPQRWXSTUVYZ89GH>¢;
¢ 
4ª1
/
input_10# 
input_10ÿÿÿÿÿÿÿÿÿô"3ª0
.
dense_39"
dense_39ÿÿÿÿÿÿÿÿÿ»
Z__inference_token_and_position_embedding_9_layer_call_and_return_conditional_losses_159130]JI+¢(
!¢

xÿÿÿÿÿÿÿÿÿô
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿô 
 
?__inference_token_and_position_embedding_9_layer_call_fn_159106PJI+¢(
!¢

xÿÿÿÿÿÿÿÿÿô
ª "ÿÿÿÿÿÿÿÿÿô Ë
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_159331xKLMNOPQRWXSTUVYZ8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿô 
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿô 
 Ë
O__inference_transformer_block_9_layer_call_and_return_conditional_losses_159471xKLMNOPQRWXSTUVYZ8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿô 
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿô 
 £
4__inference_transformer_block_9_layer_call_fn_159167kKLMNOPQRWXSTUVYZ8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿô 
p 
ª "ÿÿÿÿÿÿÿÿÿô £
4__inference_transformer_block_9_layer_call_fn_159204kKLMNOPQRWXSTUVYZ8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿô 
p
ª "ÿÿÿÿÿÿÿÿÿô 