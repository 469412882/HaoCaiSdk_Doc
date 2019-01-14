.class public Lcom/qihoo360/replugin/PluginDexClassLoader;
.super Ldalvik/system/DexClassLoader;
.source "PluginDexClassLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginDexClassLoader"

.field private static sLoadClassMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mHostClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "optimizedDirectory"    # Ljava/lang/String;
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "parent"    # Ljava/lang/ClassLoader;

    .line 71
    invoke-direct {p0, p2, p3, p4, p5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 73
    invoke-direct {p0, p1, p2, p5}, Lcom/qihoo360/replugin/PluginDexClassLoader;->installMultiDexesBeforeLollipop(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 75
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/replugin/PluginDexClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    .line 77
    iget-object v0, p0, Lcom/qihoo360/replugin/PluginDexClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/qihoo360/replugin/PluginDexClassLoader;->initMethods(Ljava/lang/ClassLoader;)V

    .line 78
    return-void
.end method

.method private combineArray(Ljava/util/List;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    .local p1, "allElements":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 222
    .local v0, "startIndex":I
    const/4 v1, 0x0

    .line 223
    .local v1, "arrayLength":I
    const/4 v2, 0x0

    .line 225
    .local v2, "originalElements":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 227
    .local v4, "elements":[Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 228
    move-object v2, v4

    .line 231
    :cond_0
    array-length v5, v4

    add-int/2addr v1, v5

    .line 232
    .end local v4    # "elements":[Ljava/lang/Object;
    goto :goto_0

    .line 234
    :cond_1
    nop

    .line 235
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 234
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 237
    .local v3, "combined":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 239
    .local v5, "elements":[Ljava/lang/Object;
    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    array-length v6, v5

    add-int/2addr v0, v6

    .line 241
    .end local v5    # "elements":[Ljava/lang/Object;
    goto :goto_1

    .line 243
    :cond_2
    return-object v3
.end method

.method private static extractFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .locals 4
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .param p2, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 331
    invoke-static {v0, p2}, Lcom/qihoo360/replugin/utils/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 332
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const-string v1, "PluginDexClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractFile(): Success! fn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    nop

    .line 338
    return-void

    .line 336
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private getExtraDexFiles(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 260
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p1, :cond_0

    .line 261
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 262
    invoke-static {p1, v0}, Lcom/qihoo360/replugin/PluginDexClassLoader;->traverseExtraDex(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/util/zip/ZipFile;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 265
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 268
    :goto_0
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v2

    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/util/zip/ZipFile;)V

    .line 269
    nop

    .line 271
    return-object v1
.end method

.method private static initMethods(Ljava/lang/ClassLoader;)V
    .locals 5
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 82
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/qihoo360/replugin/PluginDexClassLoader;->sLoadClassMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 83
    const-string v1, "loadClass"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/qihoo360/replugin/PluginDexClassLoader;->sLoadClassMethod:Ljava/lang/reflect/Method;

    .line 84
    sget-object v1, Lcom/qihoo360/replugin/PluginDexClassLoader;->sLoadClassMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/NoSuchMethodError;

    const-string v2, "loadClass"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    return-void
.end method

.method private installMultiDexesBeforeLollipop(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 12
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 156
    return-void

    .line 162
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/PluginDexClassLoader;->getExtraDexFiles(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "dexFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 166
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 169
    .local v1, "allElements":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    const-string v2, "dalvik.system.BaseDexClassLoader"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 170
    .local v2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "pathList"

    invoke-static {v2, p0, v3}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 171
    .local v3, "pathList":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "dexElements"

    invoke-static {v4, v3, v5}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 172
    .local v4, "mainElements":[Ljava/lang/Object;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraOdexDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "optimizedDirectory":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 178
    .local v7, "file":Ljava/io/File;
    sget-boolean v8, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 179
    const-string v8, "PluginDexClassLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dex file:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    new-instance v8, Ldalvik/system/DexClassLoader;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v5, v5, p3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 184
    .local v8, "dexClassLoader":Ldalvik/system/DexClassLoader;
    const-string v9, "pathList"

    invoke-static {v2, v8, v9}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 185
    .local v9, "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "dexElements"

    invoke-static {v10, v9, v11}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 186
    .local v10, "dexElements":[Ljava/lang/Object;
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .end local v9    # "obj":Ljava/lang/Object;
    .end local v10    # "dexElements":[Ljava/lang/Object;
    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0, v1}, Lcom/qihoo360/replugin/PluginDexClassLoader;->combineArray(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    .line 193
    .local v6, "combineElements":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "dexElements"

    invoke-static {v7, v3, v8, v6}, Lcom/qihoo360/replugin/utils/ReflectUtils;->writeField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraDexDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 199
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "dexElements"

    invoke-static {v7, v3, v8}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 202
    .local v7, "object":Ljava/lang/Object;
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    .line 203
    .local v8, "length":I
    const-string v9, "PluginDexClassLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dexElements length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "dexFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "allElements":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v2    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pathList":Ljava/lang/Object;
    .end local v4    # "mainElements":[Ljava/lang/Object;
    .end local v5    # "optimizedDirectory":Ljava/lang/String;
    .end local v6    # "combineElements":Ljava/lang/Object;
    .end local v7    # "object":Ljava/lang/Object;
    .end local v8    # "length":I
    :cond_3
    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private loadClassFromHost(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
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

    .line 130
    :try_start_0
    sget-object v0, Lcom/qihoo360/replugin/PluginDexClassLoader;->sLoadClassMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/qihoo360/replugin/PluginDexClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 132
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "PluginDexClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadClass: load host class, cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    nop

    .line 140
    nop

    .line 142
    return-object v0

    .line 138
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/ClassNotFoundException;

    const-string v2, "Calling the loadClass method failed (InvocationTargetException)"

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/ClassNotFoundException;

    const-string v2, "Calling the loadClass method failed (IllegalAccessException)"

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static traverseExtraDex(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/util/zip/ZipFile;)Ljava/util/List;
    .locals 9
    .param p0, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "dir":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 286
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 287
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 289
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "name":Ljava/lang/String;
    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    goto :goto_0

    .line 296
    :cond_0
    :try_start_0
    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "classes.dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 298
    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraDexDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 302
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .local v5, "file":Ljava/io/File;
    invoke-static {p1, v3, v5}, Lcom/qihoo360/replugin/PluginDexClassLoader;->extractFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    .line 304
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    const-string v6, "PluginDexClassLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dex path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 310
    :catch_0
    move-exception v5

    .line 311
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 316
    :cond_3
    return-object v1
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
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

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    move-object v2, v1

    .line 96
    .local v2, "cnfException":Ljava/lang/ClassNotFoundException;
    :try_start_0
    invoke-super {p0, p1, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 97
    if-eqz v0, :cond_1

    .line 99
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const-string v3, "PluginDexClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadClass: load plugin class, cn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    return-object v0

    .line 107
    :cond_1
    goto :goto_0

    .line 104
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v3

    .line 111
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo360/replugin/RePluginConfig;->isUseHostClassIfNotFound()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/PluginDexClassLoader;->loadClassFromHost(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 114
    :catch_1
    move-exception v3

    .line 116
    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v3

    .line 121
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    if-eqz v2, :cond_3

    .line 122
    throw v2

    .line 124
    :cond_3
    return-object v1
.end method
