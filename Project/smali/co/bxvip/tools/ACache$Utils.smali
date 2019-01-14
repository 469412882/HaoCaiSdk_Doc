.class Lco/bxvip/tools/ACache$Utils;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/tools/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Utils"
.end annotation


# static fields
.field private static final mSeparator:C = ' '


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .line 821
    if-nez p0, :cond_0

    .line 822
    const/4 v0, 0x0

    return-object v0

    .line 824
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 825
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 826
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "b"    # [B

    .line 833
    array-length v0, p0

    if-nez v0, :cond_0

    .line 834
    const/4 v0, 0x0

    return-object v0

    .line 836
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000([B)[B
    .locals 1
    .param p0, "x0"    # [B

    .line 716
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->clearDateInfo([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;

    .line 716
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200([B)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # [B

    .line 716
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/Drawable;

    .line 716
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;

    .line 716
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .line 716
    invoke-static {p0, p1}, Lco/bxvip/tools/ACache$Utils;->newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 716
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->isDue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 716
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->clearDateInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(I[B)[B
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # [B

    .line 716
    invoke-static {p0, p1}, Lco/bxvip/tools/ACache$Utils;->newByteArrayWithDateInfo(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900([B)Z
    .locals 1
    .param p0, "x0"    # [B

    .line 716
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method private static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .line 866
    if-nez p0, :cond_0

    .line 867
    const/4 v0, 0x0

    return-object v0

    .line 869
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 870
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 871
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private static clearDateInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strInfo"    # Ljava/lang/String;

    .line 763
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lco/bxvip/tools/ACache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 766
    :cond_0
    return-object p0
.end method

.method private static clearDateInfo([B)[B
    .locals 2
    .param p0, "data"    # [B

    .line 770
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lco/bxvip/tools/ACache$Utils;->indexOf([BC)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lco/bxvip/tools/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 773
    :cond_0
    return-object p0
.end method

.method private static copyOfRange([BII)[B
    .locals 4
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 799
    sub-int v0, p2, p1

    .line 800
    .local v0, "newLength":I
    if-gez v0, :cond_0

    .line 801
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    :cond_0
    new-array v1, v0, [B

    .line 803
    .local v1, "copy":[B
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    return-object v1
.end method

.method private static createDateInfo(I)Ljava/lang/String;
    .locals 3
    .param p0, "second"    # I

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "currentTime":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 814
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 843
    if-nez p0, :cond_0

    .line 844
    const/4 v0, 0x0

    return-object v0

    .line 847
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 848
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 850
    .local v1, "h":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 852
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 854
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 855
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 857
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 858
    return-object v3
.end method

.method private static getDateInfoFromDate([B)[Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .line 781
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lco/bxvip/tools/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 783
    .local v0, "saveDate":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const/16 v3, 0xe

    const/16 v4, 0x20

    invoke-static {p0, v4}, Lco/bxvip/tools/ACache$Utils;->indexOf([BC)I

    move-result v4

    invoke-static {p0, v3, v4}, Lco/bxvip/tools/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 784
    .local v1, "deleteAfter":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v2

    const/4 v2, 0x1

    aput-object v1, v3, v2

    return-object v3

    .line 786
    .end local v0    # "saveDate":Ljava/lang/String;
    .end local v1    # "deleteAfter":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static hasDateInfo([B)Z
    .locals 2
    .param p0, "data"    # [B

    .line 777
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/16 v0, 0xd

    aget-byte v0, p0, v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lco/bxvip/tools/ACache$Utils;->indexOf([BC)I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static indexOf([BC)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "c"    # C

    .line 790
    const/4 v0, 0x0

    .line 790
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 791
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 792
    return v0

    .line 790
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static isDue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 725
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lco/bxvip/tools/ACache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method private static isDue([B)Z
    .locals 15
    .param p0, "data"    # [B

    .line 735
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->getDateInfoFromDate([B)[Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 737
    aget-object v2, v0, v1

    .line 738
    .local v2, "saveTimeStr":Ljava/lang/String;
    :goto_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 739
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 741
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 742
    .local v5, "saveTime":J
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 743
    .local v7, "deleteAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v11, v11, v7

    add-long v13, v5, v11

    cmp-long v3, v9, v13

    if-lez v3, :cond_1

    .line 744
    return v4

    .line 747
    .end local v2    # "saveTimeStr":Ljava/lang/String;
    .end local v5    # "saveTime":J
    .end local v7    # "deleteAfter":J
    :cond_1
    return v1
.end method

.method private static newByteArrayWithDateInfo(I[B)[B
    .locals 5
    .param p0, "second"    # I
    .param p1, "data2"    # [B

    .line 755
    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->createDateInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 756
    .local v0, "data1":[B
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 757
    .local v1, "retdata":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    array-length v2, v0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    return-object v1
.end method

.method private static newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "second"    # I
    .param p1, "strInfo"    # Ljava/lang/String;

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lco/bxvip/tools/ACache$Utils;->createDateInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
