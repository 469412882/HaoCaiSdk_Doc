.class public Lcom/qihoo360/loader2/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# static fields
.field public static final ARM:Ljava/lang/String; = "arm"

.field public static final ARM64:Ljava/lang/String; = "arm64"

.field public static final SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

.field public static final SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

.field public static final SUPPORTED_ABIS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v0, v1, :cond_1

    .line 39
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 41
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    sget-object v5, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_ABIS:[Ljava/lang/String;

    sget-object v6, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v0, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 43
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v5, v0, v4

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v0, v2

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v5, v0, v4

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v0, v2

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 50
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    .line 51
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 53
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    sget-object v5, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    sget-object v6, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v0, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 55
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v5, v0, v4

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v0, v2

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v5, v0, v4

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v0, v2

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 62
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5

    .line 63
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 64
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 65
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    sget-object v1, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    sget-object v2, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 67
    :cond_4
    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    goto :goto_2

    .line 70
    :cond_5
    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 72
    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
