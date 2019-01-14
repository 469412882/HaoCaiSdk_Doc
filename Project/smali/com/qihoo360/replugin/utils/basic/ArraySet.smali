.class public final Lcom/qihoo360/replugin/utils/basic/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Lcom/qihoo360/replugin/utils/basic/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 224
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 226
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 228
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 233
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    if-nez p1, :cond_0

    .line 235
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 236
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->allocArrays(I)V

    .line 240
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 241
    return-void
.end method

.method public constructor <init>(Lcom/qihoo360/replugin/utils/basic/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/utils/basic/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "set":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;-><init>()V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->addAll(Lcom/qihoo360/replugin/utils/basic/ArraySet;)V

    .line 251
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;-><init>()V

    .line 258
    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 261
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 6
    .param p1, "size"    # I

    .line 154
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 155
    const-class v3, Lcom/qihoo360/replugin/utils/basic/ArraySet;

    monitor-enter v3

    .line 156
    :try_start_0
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 157
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 158
    .local v4, "array":[Ljava/lang/Object;
    iput-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 159
    aget-object v5, v4, v1

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 160
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 161
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 162
    sget v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCacheSize:I

    sub-int/2addr v0, v2

    sput v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCacheSize:I

    .line 165
    monitor-exit v3

    return-void

    .line 167
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

    .line 168
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 169
    const-class v3, Lcom/qihoo360/replugin/utils/basic/ArraySet;

    monitor-enter v3

    .line 170
    :try_start_1
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 171
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 172
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 173
    aget-object v5, v4, v1

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 174
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 175
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 176
    sget v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCacheSize:I

    sub-int/2addr v0, v2

    sput v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCacheSize:I

    .line 179
    monitor-exit v3

    return-void

    .line 181
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

    .line 184
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 185
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 186
    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 7
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 189
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 190
    const-class v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;

    monitor-enter v0

    .line 191
    :try_start_0
    sget v6, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_1

    .line 192
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 193
    aput-object p0, p1, v5

    .line 194
    add-int/lit8 v3, p2, -0x1

    .line 194
    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 195
    aput-object v1, p1, v3

    .line 194
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 197
    .end local v3    # "i":I
    :cond_0
    sput-object p1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 198
    sget v1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mTwiceBaseCacheSize:I

    .line 202
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 203
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 204
    const-class v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;

    monitor-enter v0

    .line 205
    :try_start_1
    sget v6, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCacheSize:I

    if-ge v6, v4, :cond_4

    .line 206
    sget-object v4, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 207
    aput-object p0, p1, v5

    .line 208
    add-int/lit8 v3, p2, -0x1

    .line 208
    .restart local v3    # "i":I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 209
    aput-object v1, p1, v3

    .line 208
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 211
    .end local v3    # "i":I
    :cond_3
    sput-object p1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 212
    sget v1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCacheSize:I

    add-int/2addr v1, v5

    sput v1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mBaseCacheSize:I

    .line 216
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 218
    :cond_5
    :goto_2
    return-void
.end method

.method private getCollection()Lcom/qihoo360/replugin/utils/basic/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qihoo360/replugin/utils/basic/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 615
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mCollections:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;

    invoke-direct {v0, p0}, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;-><init>(Lcom/qihoo360/replugin/utils/basic/ArraySet;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mCollections:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mCollections:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 78
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 81
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 82
    const/4 v1, -0x1

    return v1

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    invoke-static {v1, v0, p2}, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 88
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 89
    return v1

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    return v1

    .line 99
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 99
    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 100
    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 99
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .line 104
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_6

    .line 105
    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    .line 104
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 112
    .end local v3    # "i":I
    :cond_6
    xor-int/lit8 v3, v2, -0x1

    return v3
.end method

.method private indexOfNull()I
    .locals 5

    .line 116
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 119
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 120
    const/4 v1, -0x1

    return v1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 126
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 127
    return v1

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 132
    return v1

    .line 137
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 137
    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 138
    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    return v2

    .line 137
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .line 142
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 143
    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_5

    return v3

    .line 142
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 150
    .end local v3    # "i":I
    :cond_6
    xor-int/lit8 v3, v2, -0x1

    return v3
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 344
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "hash":I
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->indexOfNull()I

    move-result v1

    .line 346
    .local v1, "index":I
    goto :goto_0

    .line 348
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 349
    .restart local v0    # "hash":I
    invoke-direct {p0, p1, v0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .line 351
    .restart local v1    # "index":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 352
    return v2

    .line 355
    :cond_1
    xor-int/lit8 v1, v1, -0x1

    .line 356
    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_5

    .line 357
    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    const/4 v4, 0x4

    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    shr-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-lt v3, v4, :cond_3

    const/16 v4, 0x8

    nop

    :cond_3
    :goto_1
    move v3, v4

    .line 362
    .local v3, "n":I
    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 363
    .local v4, "ohashes":[I
    iget-object v6, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 364
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->allocArrays(I)V

    .line 366
    iget-object v7, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_4

    .line 368
    iget-object v7, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    array-length v8, v4

    invoke-static {v4, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    iget-object v7, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v8, v6

    invoke-static {v6, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    :cond_4
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    invoke-static {v4, v6, v2}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 375
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_5
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-ge v1, v2, :cond_6

    .line 378
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    iget v6, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    sub-int/2addr v6, v1

    invoke-static {v2, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    iget v6, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    sub-int/2addr v6, v1

    invoke-static {v2, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    :cond_6
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    aput v0, v2, v1

    .line 383
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 384
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 385
    return v5
.end method

.method public addAll(Lcom/qihoo360/replugin/utils/basic/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/utils/basic/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 394
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "array":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<+TE;>;"
    iget v0, p1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 395
    .local v0, "N":I
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->ensureCapacity(I)V

    .line 396
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 397
    if-lez v0, :cond_1

    .line 398
    iget-object v1, p1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v1, p1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    goto :goto_1

    .line 403
    :cond_0
    nop

    .line 403
    .local v2, "i":I
    :goto_0
    move v1, v2

    .line 403
    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 404
    invoke-virtual {p1, v1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v2, v1, 0x1

    .line 403
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 407
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 703
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->ensureCapacity(I)V

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 706
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 707
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 708
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 3

    .line 268
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 270
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 271
    sget-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 274
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 301
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 687
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 688
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    const/4 v1, 0x0

    return v1

    .line 693
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 281
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 283
    .local v0, "ohashes":[I
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 284
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->allocArrays(I)V

    .line 285
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-lez v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :cond_0
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 291
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 540
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 541
    return v0

    .line 543
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 544
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 545
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 546
    return v2

    .line 550
    :cond_1
    const/4 v3, 0x0

    .line 550
    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-ge v3, v4, :cond_3

    .line 551
    invoke-virtual {p0, v3}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 552
    .local v4, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    .line 553
    return v2

    .line 550
    .end local v4    # "mine":Ljava/lang/Object;, "TE;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    .end local v3    # "i":I
    :cond_3
    nop

    .line 561
    return v0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 556
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 557
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 563
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 571
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 572
    .local v0, "hashes":[I
    const/4 v1, 0x0

    .line 573
    .local v1, "result":I
    const/4 v2, 0x0

    .line 573
    .local v2, "i":I
    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 573
    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 574
    aget v4, v0, v2

    add-int/2addr v1, v4

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 311
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 329
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 675
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->getCollection()Lcom/qihoo360/replugin/utils/basic/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 417
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 418
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 419
    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 420
    const/4 v1, 0x1

    return v1

    .line 422
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Lcom/qihoo360/replugin/utils/basic/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/utils/basic/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "array":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<+TE;>;"
    iget v0, p1, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 493
    .local v0, "N":I
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 494
    .local v1, "originalSize":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 494
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 495
    invoke-virtual {p1, v3}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 494
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    .end local v3    # "i":I
    :cond_0
    iget v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 719
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 720
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 721
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 722
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 723
    :cond_0
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 433
    .local v0, "old":Ljava/lang/Object;
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 436
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    invoke-static {v1, v3, v4}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 437
    sget-object v1, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 438
    sget-object v1, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 439
    iput v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    goto/16 :goto_0

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    array-length v1, v1

    const/16 v4, 0x8

    if-le v1, v4, :cond_4

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    iget-object v5, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v1, v5, :cond_4

    .line 445
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    shr-int/2addr v4, v3

    add-int/2addr v4, v1

    nop

    :cond_1
    move v1, v4

    .line 449
    .local v1, "n":I
    iget-object v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    .line 450
    .local v4, "ohashes":[I
    iget-object v5, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    .line 451
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->allocArrays(I)V

    .line 453
    iget v6, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 454
    if-lez p1, :cond_2

    .line 456
    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    invoke-static {v4, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    :cond_2
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-ge p1, v2, :cond_3

    .line 462
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    iget v6, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v4, v2, v3, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v5, v2, v3, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    .end local v1    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 466
    :cond_4
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    .line 467
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-ge p1, v1, :cond_5

    .line 470
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mHashes:[I

    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    :cond_5
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 476
    :goto_0
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 735
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 736
    .local v0, "removed":Z
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    .line 736
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 737
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 739
    const/4 v0, 0x1

    .line 736
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 742
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 505
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 510
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 511
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-ge v0, v1, :cond_0

    .line 518
    nop

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 520
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 522
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    array-length v0, p1

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-le v0, v1, :cond_1

    .line 524
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 526
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 588
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    invoke-virtual {p0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "{}"

    return-object v0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 593
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    const/4 v1, 0x0

    .line 594
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    if-ge v1, v2, :cond_3

    .line 595
    if-lez v1, :cond_1

    .line 596
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_1
    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 599
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 602
    :cond_2
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<TE;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
