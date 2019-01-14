.class public Lcom/qihoo360/loader2/VMRuntimeCompat;
.super Ljava/lang/Object;
.source "VMRuntimeCompat.java"


# static fields
.field private static final GET_LOCKER:[B

.field private static volatile sIs64Bit:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/loader2/VMRuntimeCompat;->GET_LOCKER:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtOatCpuType()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-static {}, Lcom/qihoo360/loader2/VMRuntimeCompat;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "arm64"

    goto :goto_0

    :cond_0
    const-string v0, "arm"

    :goto_0
    return-object v0
.end method

.method public static is64Bit()Z
    .locals 2

    .line 42
    sget-object v0, Lcom/qihoo360/loader2/VMRuntimeCompat;->sIs64Bit:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/qihoo360/loader2/VMRuntimeCompat;->sIs64Bit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 45
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/VMRuntimeCompat;->GET_LOCKER:[B

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/VMRuntimeCompat;->sIs64Bit:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, Lcom/qihoo360/loader2/VMRuntimeCompat;->sIs64Bit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 51
    :cond_1
    invoke-static {}, Lcom/qihoo360/loader2/VMRuntimeCompat;->is64BitImpl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/qihoo360/loader2/VMRuntimeCompat;->sIs64Bit:Ljava/lang/Boolean;

    .line 52
    sget-object v1, Lcom/qihoo360/loader2/VMRuntimeCompat;->sIs64Bit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static is64BitImpl()Z
    .locals 7

    .line 58
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 60
    return v0

    .line 63
    :cond_0
    const-string v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 64
    .local v1, "clzVMRuntime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 65
    return v0

    .line 67
    :cond_1
    const-string v2, "getRuntime"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 68
    .local v2, "mthVMRuntimeGet":Ljava/lang/reflect/Method;
    if-nez v2, :cond_2

    .line 69
    return v0

    .line 71
    :cond_2
    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "objVMRuntime":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 73
    return v0

    .line 75
    :cond_3
    const-string v4, "is64Bit"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 76
    .local v4, "sVMRuntimeIs64BitMethod":Ljava/lang/reflect/Method;
    if-nez v4, :cond_4

    .line 77
    return v0

    .line 79
    :cond_4
    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 80
    .local v5, "objIs64Bit":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    .line 81
    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 87
    .end local v1    # "clzVMRuntime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mthVMRuntimeGet":Ljava/lang/reflect/Method;
    .end local v3    # "objVMRuntime":Ljava/lang/Object;
    .end local v4    # "sVMRuntimeIs64BitMethod":Ljava/lang/reflect/Method;
    .end local v5    # "objIs64Bit":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 85
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_0
    return v0
.end method
