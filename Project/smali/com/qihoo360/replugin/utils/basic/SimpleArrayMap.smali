.class public Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 212
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 214
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 216
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 221
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    if-nez p1, :cond_0

    .line 223
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 224
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->allocArrays(I)V

    .line 228
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;

    .line 235
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;-><init>()V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->putAll(Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;)V

    .line 239
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 6
    .param p1, "size"    # I

    .line 142
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 143
    const-class v3, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    monitor-enter v3

    .line 144
    :try_start_0
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 145
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 146
    .local v4, "array":[Ljava/lang/Object;
    iput-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 147
    aget-object v5, v4, v1

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 148
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 149
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 150
    sget v0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCacheSize:I

    sub-int/2addr v0, v2

    sput v0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 153
    monitor-exit v3

    return-void

    .line 155
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 156
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 157
    const-class v3, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    monitor-enter v3

    .line 158
    :try_start_1
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 159
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 160
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 161
    aget-object v5, v4, v1

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 162
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 163
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 164
    sget v0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCacheSize:I

    sub-int/2addr v0, v2

    sput v0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCacheSize:I

    .line 167
    monitor-exit v3

    return-void

    .line 169
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 172
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 173
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 174
    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 7
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 177
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 178
    const-class v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    monitor-enter v0

    .line 179
    :try_start_0
    sget v6, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_1

    .line 180
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 181
    aput-object p0, p1, v5

    .line 182
    shl-int/lit8 v3, p2, 0x1

    sub-int/2addr v3, v5

    .line 182
    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 183
    aput-object v1, p1, v3

    .line 182
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 185
    .end local v3    # "i":I
    :cond_0
    sput-object p1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 186
    sget v1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 190
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 191
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 192
    const-class v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    monitor-enter v0

    .line 193
    :try_start_1
    sget v6, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v6, v4, :cond_4

    .line 194
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 195
    aput-object p0, p1, v5

    .line 196
    shl-int/lit8 v3, p2, 0x1

    sub-int/2addr v3, v5

    .line 196
    .restart local v3    # "i":I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 197
    aput-object v1, p1, v3

    .line 196
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 199
    .end local v3    # "i":I
    :cond_3
    sput-object p1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 200
    sget v1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mBaseCacheSize:I

    .line 204
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 206
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 245
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 247
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 248
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 251
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 277
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 317
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 258
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 260
    .local v0, "ohashes":[I
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 261
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->allocArrays(I)V

    .line 262
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-lez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    :cond_0
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 268
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 536
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 537
    return v0

    .line 539
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 540
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 541
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 542
    return v2

    .line 546
    :cond_1
    const/4 v3, 0x0

    .line 546
    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-ge v3, v4, :cond_5

    .line 547
    invoke-virtual {p0, v3}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 548
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 549
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 550
    .local v6, "theirs":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 551
    if-nez v6, :cond_2

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 552
    :cond_2
    return v2

    .line 554
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    .line 555
    return v2

    .line 546
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    .end local v3    # "i":I
    :cond_5
    nop

    .line 563
    return v0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 558
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 559
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 565
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 328
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 9

    .line 573
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 574
    .local v0, "hashes":[I
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 575
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 576
    .local v2, "result":I
    const/4 v3, 0x0

    .line 576
    .local v3, "i":I
    const/4 v4, 0x1

    .line 576
    .local v4, "v":I
    iget v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 576
    .local v5, "s":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 577
    aget-object v6, v1, v4

    .line 578
    .local v6, "value":Ljava/lang/Object;
    aget v7, v0, v3

    if-nez v6, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 576
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 580
    .end local v3    # "i":I
    .end local v4    # "v":I
    .end local v5    # "s":I
    :cond_1
    return v2
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 62
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 65
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 66
    const/4 v1, -0x1

    return v1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v0, p2}, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 72
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 73
    return v1

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    return v1

    .line 83
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 83
    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 84
    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    return v2

    .line 83
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .line 90
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_6

    .line 91
    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 92
    return v3

    .line 90
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 100
    .end local v3    # "i":I
    :cond_6
    xor-int/lit8 v3, v2, -0x1

    return v3
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 287
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method indexOfNull()I
    .locals 6

    .line 104
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 107
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 108
    const/4 v1, -0x1

    return v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 114
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 115
    return v1

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 120
    return v1

    .line 125
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 125
    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 126
    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    .line 125
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .line 130
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 131
    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_5

    return v3

    .line 130
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 138
    .end local v3    # "i":I
    :cond_6
    xor-int/lit8 v3, v2, -0x1

    return v3
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 291
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 292
    .local v0, "N":I
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 293
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 294
    nop

    .line 294
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 295
    aget-object v3, v1, v2

    if-nez v3, :cond_0

    .line 296
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 294
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 300
    .end local v2    # "i":I
    :cond_1
    nop

    .line 300
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 301
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 300
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 306
    .end local v2    # "i":I
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 366
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->indexOfNull()I

    move-result v1

    .line 382
    .local v1, "index":I
    goto :goto_0

    .line 384
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 385
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .line 387
    .restart local v1    # "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 388
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 389
    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 390
    .local v1, "old":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 391
    return-object v1

    .line 394
    .end local v2    # "index":I
    .local v1, "index":I
    :cond_1
    xor-int/lit8 v1, v1, -0x1

    .line 395
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 396
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-lt v2, v4, :cond_2

    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-lt v2, v3, :cond_3

    const/16 v3, 0x8

    nop

    :cond_3
    :goto_1
    move v2, v3

    .line 401
    .local v2, "n":I
    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 402
    .local v3, "ohashes":[I
    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 403
    .local v4, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->allocArrays(I)V

    .line 405
    iget-object v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    array-length v5, v5

    if-lez v5, :cond_4

    .line 407
    iget-object v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    array-length v6, v3

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iget-object v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    :cond_4
    iget v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    invoke-static {v3, v4, v5}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 414
    .end local v2    # "n":I
    .end local v3    # "ohashes":[I
    .end local v4    # "oarray":[Ljava/lang/Object;
    :cond_5
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-ge v1, v2, :cond_6

    .line 417
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    sub-int/2addr v5, v1

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    :cond_6
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    aput v0, v2, v1

    .line 422
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aput-object p1, v2, v3

    .line 423
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    aput-object p2, v2, v3

    .line 424
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 425
    const/4 v2, 0x0

    return-object v2
.end method

.method public putAll(Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    .local p1, "array":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<+TK;+TV;>;"
    iget v0, p1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 434
    .local v0, "N":I
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->ensureCapacity(I)V

    .line 435
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 436
    if-lez v0, :cond_1

    .line 437
    iget-object v1, p1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iget-object v1, p1, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    goto :goto_1

    .line 442
    :cond_0
    nop

    .line 442
    .local v2, "i":I
    :goto_0
    move v1, v2

    .line 442
    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 443
    invoke-virtual {p1, v1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    add-int/lit8 v2, v1, 0x1

    .line 442
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 446
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 456
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 457
    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 460
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 470
    .local v0, "old":Ljava/lang/Object;
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    .line 473
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    invoke-static {v1, v2, v4}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 474
    sget-object v1, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 475
    sget-object v1, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 476
    iput v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    goto/16 :goto_0

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    array-length v1, v1

    const/16 v4, 0x8

    if-le v1, v4, :cond_4

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    iget-object v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v1, v5, :cond_4

    .line 482
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    shr-int/2addr v4, v2

    add-int/2addr v4, v1

    nop

    :cond_1
    move v1, v4

    .line 486
    .local v1, "n":I
    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    .line 487
    .local v4, "ohashes":[I
    iget-object v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 488
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->allocArrays(I)V

    .line 490
    iget v6, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 491
    if-lez p1, :cond_2

    .line 493
    iget-object v6, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v3, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    iget-object v6, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v5, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    :cond_2
    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-ge p1, v3, :cond_3

    .line 499
    add-int/lit8 v3, p1, 0x1

    iget-object v6, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    iget v7, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v3, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    add-int/lit8 v3, p1, 0x1

    shl-int/2addr v3, v2

    iget-object v6, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    iget v8, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v2, v8, 0x1

    invoke-static {v5, v3, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    .end local v1    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 504
    :cond_4
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    .line 505
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-ge p1, v1, :cond_5

    .line 508
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mHashes:[I

    iget v5, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    sub-int/2addr v5, p1

    invoke-static {v1, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    shl-int/2addr v3, v2

    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    iget v6, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, p1

    shl-int/2addr v6, v2

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    :cond_5
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    shl-int/2addr v3, v2

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 513
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    shl-int/2addr v3, v2

    add-int/2addr v3, v2

    aput-object v4, v1, v3

    .line 516
    :goto_0
    return-object v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 357
    .end local p1    # "index":I
    .local v0, "index":I
    iget-object p1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object p1, p1, v0

    .line 358
    .local p1, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 359
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 523
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 592
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "{}"

    return-object v0

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 597
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    const/4 v1, 0x0

    .line 598
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mSize:I

    if-ge v1, v2, :cond_4

    .line 599
    if-lez v1, :cond_1

    .line 600
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_1
    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 603
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 606
    :cond_2
    const-string v3, "(this Map)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :goto_1
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 610
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    .line 611
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 613
    :cond_3
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v1    # "i":I
    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 346
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;, "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
