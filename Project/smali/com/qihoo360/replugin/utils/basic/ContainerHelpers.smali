.class Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_INTS:[I

    .line 24
    new-array v1, v0, [J

    sput-object v1, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_LONGS:[J

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "lo":I
    add-int/lit8 v1, p1, -0x1

    .line 54
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 55
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 56
    .local v2, "mid":I
    aget v3, p0, v2

    .line 58
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 59
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 60
    :cond_0
    if-le v3, p2, :cond_1

    .line 61
    add-int/lit8 v1, v2, -0x1

    .line 65
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_1
    goto :goto_0

    .line 63
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_1
    return v2

    .line 66
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    xor-int/lit8 v2, v0, -0x1

    return v2
.end method

.method static binarySearch([JIJ)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "size"    # I
    .param p2, "value"    # J

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "lo":I
    add-int/lit8 v1, p1, -0x1

    .line 73
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 74
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 75
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 77
    .local v3, "midVal":J
    cmp-long v5, v3, p2

    if-gez v5, :cond_0

    .line 78
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 79
    :cond_0
    cmp-long v5, v3, p2

    if-lez v5, :cond_1

    .line 80
    add-int/lit8 v1, v2, -0x1

    .line 84
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :goto_1
    goto :goto_0

    .line 82
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":J
    :cond_1
    return v2

    .line 85
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :cond_2
    xor-int/lit8 v2, v0, -0x1

    return v2
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 46
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .line 36
    const/4 v0, 0x4

    .line 36
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 37
    const/4 v1, 0x1

    shl-int v2, v1, v0

    add-int/lit8 v2, v2, -0xc

    if-gt p0, v2, :cond_0

    .line 38
    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    :cond_1
    return p0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 28
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .line 32
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/basic/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
