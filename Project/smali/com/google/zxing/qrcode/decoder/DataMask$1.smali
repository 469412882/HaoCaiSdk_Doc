.class final enum Lcom/google/zxing/qrcode/decoder/DataMask$1;
.super Lcom/google/zxing/qrcode/decoder/DataMask;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 42
    add-int v0, p1, p2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
