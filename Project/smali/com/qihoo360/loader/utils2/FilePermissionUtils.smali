.class public Lcom/qihoo360/loader/utils2/FilePermissionUtils;
.super Ljava/lang/Object;
.source "FilePermissionUtils.java"


# static fields
.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static sFileUtilsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sGetPermissionMethod:Ljava/lang/reflect/Method;

.field private static sSetPermissionMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissions(Ljava/lang/String;[I)I
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "outPermissions"    # [I

    .line 85
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->initClass()V

    .line 86
    sget-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sGetPermissionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sFileUtilsClass:Ljava/lang/Class;

    const-string v4, "getPermissions"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, [I

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sGetPermissionMethod:Ljava/lang/reflect/Method;

    .line 90
    :cond_0
    sget-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sGetPermissionMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "retObj":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 92
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 98
    .end local v0    # "retObj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 94
    :catch_2
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 101
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private static initClass()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sFileUtilsClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 106
    const-string v0, "android.os.FileUtils"

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sFileUtilsClass:Ljava/lang/Class;

    .line 108
    :cond_0
    return-void
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 58
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->initClass()V

    .line 59
    sget-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sSetPermissionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sFileUtilsClass:Ljava/lang/Class;

    const-string v6, "setPermissions"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-static {v0, v6, v7}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sSetPermissionMethod:Ljava/lang/reflect/Method;

    .line 63
    :cond_0
    sget-object v0, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->sSetPermissionMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "retObj":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 65
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 71
    .end local v0    # "retObj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 72
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 67
    :catch_2
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 73
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 74
    :goto_1
    const/4 v0, -0x1

    return v0
.end method
