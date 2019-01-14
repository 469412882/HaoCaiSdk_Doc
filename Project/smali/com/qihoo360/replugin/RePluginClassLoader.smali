.class public Lcom/qihoo360/replugin/RePluginClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "RePluginClassLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RePluginClassLoader"


# instance fields
.field private findLibraryMethod:Ljava/lang/reflect/Method;

.field private findResourceMethod:Ljava/lang/reflect/Method;

.field private findResourcesMethod:Ljava/lang/reflect/Method;

.field private getPackageMethod:Ljava/lang/reflect/Method;

.field private final mOrig:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "orig"    # Ljava/lang/ClassLoader;

    .line 71
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 72
    iput-object p2, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->mOrig:Ljava/lang/ClassLoader;

    .line 77
    invoke-direct {p0, p2}, Lcom/qihoo360/replugin/RePluginClassLoader;->copyFromOriginal(Ljava/lang/ClassLoader;)V

    .line 79
    invoke-direct {p0, p2}, Lcom/qihoo360/replugin/RePluginClassLoader;->initMethods(Ljava/lang/ClassLoader;)V

    .line 80
    return-void
.end method

.method private copyFieldValue(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "orig"    # Ljava/lang/ClassLoader;

    .line 117
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 118
    .local v0, "f":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 120
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rpcl.cfv: null! f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 126
    :cond_0
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/ReflectUtils;->removeFieldFinalModifier(Ljava/lang/reflect/Field;)V

    .line 129
    invoke-static {v0, p2}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v0, p0, v1}, Lcom/qihoo360/replugin/utils/ReflectUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 133
    invoke-static {v0, p0}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 134
    .local v2, "test":Ljava/lang/Object;
    const-string v3, "RePluginClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFieldValue: Copied. f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; actually="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; orig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "test":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rpcl.cfv: fail! f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    return-void
.end method

.method private copyFromOriginal(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "orig"    # Ljava/lang/ClassLoader;

    .line 95
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "RePluginClassLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFromOriginal: Fields="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getAllFieldsList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/loader/utils/StringUtils;->toStringWithLines(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 102
    const-string v0, "libPath"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/replugin/RePluginClassLoader;->copyFieldValue(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 103
    const-string v0, "libraryPathElements"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/replugin/RePluginClassLoader;->copyFieldValue(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 104
    const-string v0, "mDexs"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/replugin/RePluginClassLoader;->copyFieldValue(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 105
    const-string v0, "mFiles"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/replugin/RePluginClassLoader;->copyFieldValue(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 106
    const-string v0, "mPaths"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/replugin/RePluginClassLoader;->copyFieldValue(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 107
    const-string v0, "mZips"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/replugin/RePluginClassLoader;->copyFieldValue(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 111
    :cond_1
    const-string v0, "pathList"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/replugin/RePluginClassLoader;->copyFieldValue(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 113
    :goto_0
    return-void
.end method

.method private initMethods(Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "findResource"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findResourceMethod:Ljava/lang/reflect/Method;

    .line 85
    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findResourceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    const-string v1, "findResources"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findResourcesMethod:Ljava/lang/reflect/Method;

    .line 87
    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findResourcesMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 88
    const-string v1, "findLibrary"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findLibraryMethod:Ljava/lang/reflect/Method;

    .line 89
    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findLibraryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    const-string v1, "getPackage"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->getPackageMethod:Ljava/lang/reflect/Method;

    .line 91
    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->getPackageMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 170
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NRH lcl.fc: c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "libName"    # Ljava/lang/String;

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findLibraryMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->mOrig:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 213
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 210
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 211
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 208
    :catch_2
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 214
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 215
    :goto_1
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "resName"    # Ljava/lang/String;

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findResourceMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->mOrig:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 184
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 181
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 182
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 179
    :catch_2
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 185
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 186
    :goto_1
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->findResourcesMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->mOrig:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 199
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 197
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 194
    :catch_2
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 200
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 201
    :goto_1
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    nop

    .line 227
    .local v0, "pack":Ljava/lang/Package;
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->getPackageMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->mOrig:Ljava/lang/ClassLoader;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 234
    :goto_0
    goto :goto_1

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 233
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 230
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 231
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 228
    :catch_2
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 229
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 235
    :goto_1
    if-nez v0, :cond_0

    .line 237
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NRH lcl.gp.1: n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 241
    :cond_0
    if-nez v0, :cond_1

    .line 243
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NRH lcl.gp.2: n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const-string v8, "Unknown"

    const-string v9, "0.0"

    const-string v10, "Unknown"

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/qihoo360/replugin/RePluginClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v1

    return-object v1

    .line 247
    :cond_1
    return-object v0

    .line 249
    .end local v0    # "pack":Ljava/lang/Package;
    :cond_2
    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/qihoo360/loader2/PMF;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    return-object v0

    .line 153
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->mOrig:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 155
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    const-string v1, "RePluginClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadClass: load other class, cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_1
    return-object v0

    .line 159
    :catch_0
    move-exception v1

    .line 163
    invoke-super {p0, p1, p2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[mBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/replugin/RePluginClassLoader;->mOrig:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
