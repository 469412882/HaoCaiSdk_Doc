.class final Lcom/google/zxing/aztec/encoder/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field static final INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;


# instance fields
.field private final binaryShiftByteCount:I

.field private final bitCount:I

.field private final mode:I

.field private final token:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    sget-object v1, Lcom/google/zxing/aztec/encoder/Token;->EMPTY:Lcom/google/zxing/aztec/encoder/Token;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/Token;III)V
    .locals 0
    .param p1, "token"    # Lcom/google/zxing/aztec/encoder/Token;
    .param p2, "mode"    # I
    .param p3, "binaryBytes"    # I
    .param p4, "bitCount"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 46
    iput p2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 47
    iput p3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 48
    iput p4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 55
    return-void
.end method


# virtual methods
.method addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 7
    .param p1, "index"    # I

    .line 104
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 105
    .local v0, "token":Lcom/google/zxing/aztec/encoder/Token;
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 106
    .local v1, "mode":I
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 107
    .local v2, "bitCount":I
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 109
    :cond_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 110
    .local v3, "latch":I
    const v4, 0xffff

    and-int/2addr v4, v3

    shr-int/lit8 v5, v3, 0x10

    invoke-virtual {v0, v4, v5}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v0

    .line 111
    shr-int/lit8 v4, v3, 0x10

    add-int/2addr v2, v4

    .line 112
    const/4 v1, 0x0

    .line 114
    .end local v3    # "latch":I
    :cond_1
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v3, 0x12

    .line 117
    .local v3, "deltaBitCount":I
    :goto_1
    new-instance v4, Lcom/google/zxing/aztec/encoder/State;

    iget v5, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    add-int/lit8 v5, v5, 0x1

    add-int v6, v2, v3

    invoke-direct {v4, v0, v1, v5, v6}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    const/4 v5, 0x0

    .line 118
    .local v5, "result":Lcom/google/zxing/aztec/encoder/State;
    move-object v5, v4

    iget v4, v4, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v6, 0x81e

    if-ne v4, v6, :cond_5

    .line 120
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v5, v4}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 122
    :cond_5
    return-object v5
.end method

.method endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 5
    .param p1, "index"    # I

    .line 128
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-nez v0, :cond_0

    .line 129
    return-object p0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    const/4 v1, 0x0

    .line 132
    .local v1, "token":Lcom/google/zxing/aztec/encoder/Token;
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/aztec/encoder/Token;->addBinaryShift(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v0

    .line 134
    .end local v1    # "token":Lcom/google/zxing/aztec/encoder/Token;
    .local v0, "token":Lcom/google/zxing/aztec/encoder/Token;
    new-instance v1, Lcom/google/zxing/aztec/encoder/State;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v1
.end method

.method getBinaryShiftByteCount()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    return v0
.end method

.method getBitCount()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    return v0
.end method

.method getMode()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    return v0
.end method

.method getToken()Lcom/google/zxing/aztec/encoder/Token;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    return-object v0
.end method

.method isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
    .locals 3
    .param p1, "other"    # Lcom/google/zxing/aztec/encoder/State;

    .line 140
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 141
    .local v0, "mySize":I
    iget v1, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-le v1, v2, :cond_1

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 145
    :cond_1
    iget v1, p1, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    if-gt v0, v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 6
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .line 77
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 78
    .local v0, "bitCount":I
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 79
    .local v1, "token":Lcom/google/zxing/aztec/encoder/Token;
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-eq p1, v2, :cond_0

    .line 80
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v2, v2, v3

    aget v2, v2, p1

    .line 81
    .local v2, "latch":I
    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v4, v2, 0x10

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v1

    .line 82
    shr-int/lit8 v3, v2, 0x10

    add-int/2addr v0, v3

    .line 84
    .end local v2    # "latch":I
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    .line 85
    .local v2, "latchModeBitCount":I
    :goto_0
    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v1

    .line 86
    new-instance v3, Lcom/google/zxing/aztec/encoder/State;

    const/4 v4, 0x0

    add-int v5, v0, v2

    invoke-direct {v3, v1, p1, v4, v5}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v3
.end method

.method shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 7
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .line 93
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 94
    .local v0, "token":Lcom/google/zxing/aztec/encoder/Token;
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 96
    .local v1, "thisModeBitCount":I
    :goto_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v3, v3, v4

    aget v3, v3, p1

    invoke-virtual {v0, v3, v1}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v3

    .line 97
    invoke-virtual {v3, p2, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v0

    .line 98
    new-instance v3, Lcom/google/zxing/aztec/encoder/State;

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v3
.end method

.method toBitArray([B)Lcom/google/zxing/common/BitArray;
    .locals 4
    .param p1, "text"    # [B

    .line 151
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 152
    .local v0, "symbols":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/google/zxing/aztec/encoder/Token;>;"
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    iget-object v1, v1, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 152
    .local v1, "token":Lcom/google/zxing/aztec/encoder/Token;
    :goto_0
    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/Token;->getPrevious()Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v1

    goto :goto_0

    .line 155
    .end local v1    # "token":Lcom/google/zxing/aztec/encoder/Token;
    :cond_0
    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 157
    .local v1, "bitArray":Lcom/google/zxing/common/BitArray;
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/Token;

    .line 158
    invoke-virtual {v3, v1, p1}, Lcom/google/zxing/aztec/encoder/Token;->appendTo(Lcom/google/zxing/common/BitArray;[B)V

    .line 159
    goto :goto_1

    .line 161
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 166
    const-string v0, "%s bits=%d bytes=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
