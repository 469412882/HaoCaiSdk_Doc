.class public Lcom/qihoo360/replugin/utils/Dex2OatUtils;
.super Ljava/lang/Object;
.source "Dex2OatUtils.java"


# static fields
.field private static final FOR_DEV:Z

.field public static final TAG:Ljava/lang/String; = "Dex2Oat"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/qihoo360/replugin/RePluginInternal;->FOR_DEV:Z

    sput-boolean v0, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectLoadDex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "optimizedDirectory"    # Ljava/lang/String;
    .param p2, "optimizedFileName"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->isArtMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v0, "odexFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-boolean v1, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v1, :cond_4

    .line 74
    const-string v1, "Dex2Oat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u6587\u4ef6\u5b58\u5728, \u4e0d\u9700\u8981inject\uff0csize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "odexFile":Ljava/io/File;
    goto :goto_1

    .line 61
    .restart local v0    # "odexFile":Ljava/io/File;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v1, :cond_2

    .line 62
    const-string v1, "Dex2Oat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 66
    .local v1, "being":J
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->innerInjectLoadDex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 68
    .local v3, "injectLoadDex":Z
    sget-boolean v4, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v4, :cond_3

    .line 69
    const-string v4, "Dex2Oat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "injectLoadDex use:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v1

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v4, "Dex2Oat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "injectLoadDex result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "being":J
    .end local v3    # "injectLoadDex":Z
    :cond_3
    nop

    .line 78
    .end local v0    # "odexFile":Ljava/io/File;
    :cond_4
    :goto_1
    return-void
.end method

.method private static injectLoadDex4Art(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "optimizedDirectory"    # Ljava/lang/String;
    .param p2, "optimizedFileName"    # Ljava/lang/String;

    .line 125
    sget-boolean v0, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "Dex2Oat"

    const-string v1, "Andorid Art, try 2 interpretDex2Oat, interpret-only."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "odexAbsolutePath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 133
    .local v1, "begin":J
    :try_start_0
    invoke-static {p0, v0}, Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper;->interpretDex2Oat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    nop

    .line 142
    sget-boolean v3, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v3, :cond_1

    .line 143
    const-string v3, "Dex2Oat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interpretDex2Oat use:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v1

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "Dex2Oat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interpretDex2Oat odexSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper;->getOdexSize(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v4, :cond_2

    .line 136
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    const-string v4, "Dex2Oat"

    const-string v5, "interpretDex2Oat Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private static injectLoadDex4More()Z
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method private static injectLoadDexBeforeN()Z
    .locals 8

    .line 94
    invoke-static {}, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->isArtMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    .local v0, "begin":J
    sget-boolean v2, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "Dex2Oat"

    const-string v3, "Art before Android N, try 2 hook."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    sget-boolean v2, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v2, :cond_1

    .line 112
    const-string v2, "Dex2Oat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hook end, use\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 118
    .end local v0    # "begin":J
    :cond_2
    sget-boolean v0, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v0, :cond_3

    .line 119
    const-string v0, "Dex2Oat"

    const-string v1, "not Art, do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static innerInjectLoadDex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "optimizedDirectory"    # Ljava/lang/String;
    .param p2, "optimizedFileName"    # Ljava/lang/String;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 82
    sget-boolean v0, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->FOR_DEV:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "Dex2Oat"

    const-string v1, "before Android L, do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_2

    .line 87
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->injectLoadDex4Art(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 89
    :cond_2
    invoke-static {}, Lcom/qihoo360/replugin/utils/Dex2OatUtils;->injectLoadDex4More()Z

    move-result v0

    return v0
.end method

.method public static isArtMode()Z
    .locals 2

    .line 44
    const-string v0, "java.vm.version"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
