.class public Lcom/qihoo360/loader/utils/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageArchiveInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgFilePath"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 98
    const/4 v0, 0x0

    move-object v1, v0

    .line 100
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 105
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 108
    return-object v0

    .line 113
    :cond_1
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_2

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_2

    .line 116
    invoke-static {p1}, Lcom/qihoo360/loader/utils/PackageUtils;->getPackageArchiveSignaturesInfoAndroid2x(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 121
    :cond_2
    return-object v1
.end method

.method private static final getPackageArchiveSignaturesInfoAndroid2x(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 11
    .param p0, "archiveFilePath"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.content.pm.PackageParser"

    invoke-static {v1}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/qihoo360/replugin/utils/ReflectUtils;->invokeConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    .local v1, "packageParser":Ljava/lang/Object;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 53
    const-string v4, "parsePackage"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/io/File;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const-class v8, Landroid/util/DisplayMetrics;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v8, v7, v10

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v5

    aput-object p0, v6, v2

    aput-object v3, v6, v9

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    .line 53
    invoke-static {v1, v4, v7, v6}, Lcom/qihoo360/replugin/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 55
    .local v4, "pkg":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 56
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "ws002"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to parsePackage: f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-object v0

    .line 63
    :cond_1
    const-string v6, "collectCertificates"

    new-array v7, v9, [Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v5

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    .line 63
    invoke-static {v1, v6, v7, v8}, Lcom/qihoo360/replugin/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 65
    .local v2, "rc":Z
    if-nez v2, :cond_2

    .line 66
    return-object v0

    .line 70
    :cond_2
    const-string v6, "mSignatures"

    invoke-static {v4, v6}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 71
    .local v6, "signatures":[Ljava/lang/Object;
    array-length v7, v6

    .line 72
    .local v7, "n":I
    if-gtz v7, :cond_3

    .line 73
    sget-boolean v8, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v8, :cond_3

    .line 74
    const-string v8, "ws002"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not found signatures: f="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_3
    if-lez v7, :cond_5

    .line 78
    sget-boolean v8, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v8, :cond_4

    .line 79
    const-string v8, "ws002"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found signatures for android 2.x: length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_4
    new-array v8, v7, [Landroid/content/pm/Signature;

    .line 82
    .local v8, "a":[Landroid/content/pm/Signature;
    invoke-static {v6, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object v8

    .line 89
    .end local v1    # "packageParser":Ljava/lang/Object;
    .end local v2    # "rc":Z
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "pkg":Ljava/lang/Object;
    .end local v6    # "signatures":[Ljava/lang/Object;
    .end local v7    # "n":I
    .end local v8    # "a":[Landroid/content/pm/Signature;
    :cond_5
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_6

    .line 87
    const-string v2, "ws002"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_0
    return-object v0
.end method
