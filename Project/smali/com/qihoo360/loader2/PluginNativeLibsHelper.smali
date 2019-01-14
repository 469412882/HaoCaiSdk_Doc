.class public Lcom/qihoo360/loader2/PluginNativeLibsHelper;
.super Ljava/lang/Object;
.source "PluginNativeLibsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginNativeLibsHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/io/File;)V
    .locals 1
    .param p0, "nativeDir"    # Ljava/io/File;

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
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

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 144
    invoke-static {v0, p2}, Lcom/qihoo360/replugin/utils/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 145
    sget-boolean v1, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "PluginNativeLibsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractFile(): Success! fn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static findSoPathForAbis(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 155
    .local p0, "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-static {}, Lcom/qihoo360/loader2/VMRuntimeCompat;->is64Bit()Z

    move-result v0

    .line 167
    .local v0, "is64":Z
    if-eqz v0, :cond_1

    .line 168
    sget-object v1, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 168
    .local v1, "abis":[Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v1    # "abis":[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/qihoo360/loader2/BuildCompat;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 174
    .restart local v1    # "abis":[Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v1}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->findSoPathWithAbiList(Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "soPath":Ljava/lang/String;
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 176
    const-string v3, "PluginNativeLibsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findSoPathForAbis: Find so path. name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; Host-is-64bit?="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; abis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    return-object v2

    .line 156
    .end local v0    # "is64":Z
    .end local v1    # "abis":[Ljava/lang/String;
    .end local v2    # "soPath":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findSoPathWithAbiList(Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "supportAbis"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 183
    .local p0, "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 184
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "soPath":Ljava/lang/String;
    const-string v2, "lib/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "abi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 189
    return-object v1

    .line 191
    .end local v1    # "soPath":Ljava/lang/String;
    .end local v2    # "abi":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static injectEntriesAndLibsMap(Ljava/util/zip/ZipFile;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 119
    .local p1, "libZipEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/zip/ZipEntry;>;"
    .local p2, "soList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 120
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 122
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "name":Ljava/lang/String;
    const-string v3, "../"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    goto :goto_0

    .line 127
    :cond_0
    const-string v3, "lib/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "soName":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 131
    .local v4, "fs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 132
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    move-object v4, v5

    .line 133
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "soName":Ljava/lang/String;
    .end local v4    # "fs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 138
    :cond_3
    return-void
.end method

.method public static install(Ljava/lang/String;Ljava/io/File;)Z
    .locals 10
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "nativeDir"    # Ljava/io/File;

    .line 60
    sget-boolean v0, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "PluginNativeLibsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install(): Start. apkp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; nd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->clear(Ljava/io/File;)V

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v1, "libZipEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/zip/ZipEntry;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v2, "soList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {v0, v1, v2}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->injectEntriesAndLibsMap(Ljava/util/zip/ZipFile;Ljava/util/Map;Ljava/util/Map;)V

    .line 78
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    .local v4, "soName":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 80
    .local v5, "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v5, v4}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->findSoPathForAbis(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "soPath":Ljava/lang/String;
    sget-boolean v7, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 82
    const-string v7, "PluginNativeLibsHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "install(): Ready to extract. so="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; sop="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    if-nez v6, :cond_2

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v7, "file":Ljava/io/File;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    invoke-static {v0, v8, v7}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->extractFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v4    # "soName":Ljava/lang/String;
    .end local v5    # "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "soPath":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    goto :goto_0

    .line 90
    :cond_3
    const/4 v3, 0x1

    .line 99
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return v3

    .line 99
    .end local v1    # "libZipEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "soList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-boolean v2, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    :cond_4
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->clear(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const/4 v2, 0x0

    .line 99
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/util/zip/ZipFile;)V

    return v2

    .line 99
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/util/zip/ZipFile;)V

    throw v1
.end method
