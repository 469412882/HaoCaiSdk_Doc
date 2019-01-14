.class public Lcom/qihoo360/loader2/PluginContext;
.super Landroid/view/ContextThemeWrapper;
.source "PluginContext.java"


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

.field private mDatabasesDir:Ljava/io/File;

.field mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFilesDir:Ljava/io/File;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLoader:Lcom/qihoo360/loader2/Loader;

.field private final mNewClassLoader:Ljava/lang/ClassLoader;

.field private final mNewResources:Landroid/content/res/Resources;

.field private final mPlugin:Ljava/lang/String;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/ClassLoader;Landroid/content/res/Resources;Ljava/lang/String;Lcom/qihoo360/loader2/Loader;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeres"    # I
    .param p3, "cl"    # Ljava/lang/ClassLoader;
    .param p4, "r"    # Landroid/content/res/Resources;
    .param p5, "plugin"    # Ljava/lang/String;
    .param p6, "loader"    # Lcom/qihoo360/loader2/Loader;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mSync:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/qihoo360/loader2/PluginContext$1;

    invoke-direct {v0, p0}, Lcom/qihoo360/loader2/PluginContext$1;-><init>(Lcom/qihoo360/loader2/PluginContext;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 90
    iput-object p3, p0, Lcom/qihoo360/loader2/PluginContext;->mNewClassLoader:Ljava/lang/ClassLoader;

    .line 91
    iput-object p4, p0, Lcom/qihoo360/loader2/PluginContext;->mNewResources:Landroid/content/res/Resources;

    .line 92
    iput-object p5, p0, Lcom/qihoo360/loader2/PluginContext;->mPlugin:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    .line 95
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginCallbacks;->createContextInjector()Lcom/qihoo360/replugin/ContextInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/qihoo360/loader2/PluginContext;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContext;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginContext;->handleCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final getDataDirFile()Ljava/io/File;
    .locals 7

    .line 324
    invoke-virtual {p0}, Lcom/qihoo360/loader2/PluginContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 327
    .local v0, "dir0":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "plugins_v3_data"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/16 v3, 0x1f9

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t create dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-object v5

    .line 335
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4, v3}, Lcom/qihoo360/loader2/PluginContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContext;->mPlugin:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/qihoo360/loader2/PluginContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 340
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 341
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_2

    .line 343
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t create dir: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-object v5

    .line 347
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4, v3}, Lcom/qihoo360/loader2/PluginContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 350
    :cond_3
    return-object v2
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContext;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mDatabasesDir:Ljava/io/File;

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mDatabasesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "databases"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mDatabasesDir:Ljava/io/File;

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mDatabasesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final handleCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 355
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mIgnores:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 357
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout.cache: ignore plugin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/loader2/PluginContext;->mPlugin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    return-object v1

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mConstructors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 367
    .local v0, "construct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_8

    .line 369
    const/4 v5, 0x0

    .line 370
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v6, v4

    .line 373
    .local v6, "found":Z
    :try_start_0
    iget-object v7, p0, Lcom/qihoo360/loader2/PluginContext;->mNewClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v7, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    .line 374
    if-nez v5, :cond_2

    .line 376
    goto :goto_0

    .line 378
    :cond_2
    const-class v7, Landroid/view/ViewStub;

    if-ne v5, v7, :cond_3

    .line 380
    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/qihoo360/loader2/PluginContext;->mNewClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, v8, :cond_4

    .line 384
    goto :goto_0

    .line 387
    :cond_4
    const/4 v6, 0x1

    .line 391
    goto :goto_0

    .line 388
    :catch_0
    move-exception v7

    .line 390
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 393
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-nez v6, :cond_6

    .line 395
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 396
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout.cache: new ignore plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qihoo360/loader2/PluginContext;->mPlugin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_5
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mIgnores:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    return-object v1

    .line 403
    :cond_6
    :try_start_1
    new-array v1, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v1, v4

    const-class v7, Landroid/util/AttributeSet;

    aput-object v7, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    move-object v0, v1

    .line 404
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_7

    .line 405
    const-string v1, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "layout.cache: new constructor. plugin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qihoo360/loader2/PluginContext;->mPlugin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_7
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v1, v1, Lcom/qihoo360/loader2/Loader;->mConstructors:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 411
    goto :goto_1

    .line 408
    :catch_1
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Error inflating mobilesafe class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    .local v2, "ie":Landroid/view/InflateException;
    throw v2

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ie":Landroid/view/InflateException;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "found":Z
    :cond_8
    :goto_1
    :try_start_2
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 418
    .local v1, "v":Landroid/view/View;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 419
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout.cache: create view ok. plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qihoo360/loader2/PluginContext;->mPlugin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 421
    :cond_9
    return-object v1

    .line 422
    .end local v1    # "v":Landroid/view/View;
    :catch_2
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Error inflating mobilesafe class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    .restart local v2    # "ie":Landroid/view/InflateException;
    throw v2
.end method

.method private final makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 281
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 282
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "extraPermissions"    # I

    .line 301
    or-int/lit16 v0, p3, 0x1b0

    .line 308
    .local v0, "perms":I
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", perms=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    const/4 v1, -0x1

    invoke-static {p1, v0, v1, v1}, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->setPermissions(Ljava/lang/String;III)I

    .line 312
    return-void
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "createDirectory"    # Z

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_0

    .line 264
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "dir":Ljava/io/File;
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 267
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .end local v0    # "dirPath":Ljava/lang/String;
    move-object v0, v2

    .line 268
    .local v0, "f":Ljava/io/File;
    goto :goto_0

    .line 269
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContext;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    .line 270
    .restart local v1    # "dir":Ljava/io/File;
    invoke-direct {p0, v1, p1}, Lcom/qihoo360/loader2/PluginContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 273
    .restart local v0    # "f":Ljava/io/File;
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->setPermissions(Ljava/lang/String;III)I

    .line 277
    :cond_1
    return-object v0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 535
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 537
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0

    .line 540
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;IZ)Z

    move-result v0
    :try_end_0
    .catch Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 541
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/qihoo360/loader2/PluginContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 173
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 444
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mApplicationClient:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    if-nez v0, :cond_1

    .line 451
    return-object p0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mApplicationClient:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->getObj()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 579
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/ComponentList;->getApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mNewResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mNewResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContext;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 212
    :cond_1
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create cache directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->setPermissions(Ljava/lang/String;III)I

    .line 218
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mCacheDir:Ljava/io/File;

    return-object v0

    .line 218
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mNewClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mNewClassLoader:Ljava/lang/ClassLoader;

    return-object v0

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContext;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 240
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-direct {p0, v1, p2, v2}, Lcom/qihoo360/loader2/PluginContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 244
    :cond_0
    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/qihoo360/loader2/PluginContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContext;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 189
    :cond_1
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->setPermissions(Ljava/lang/String;III)I

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mFilesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 569
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 432
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mNewResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mNewResources:Landroid/content/res/Resources;

    return-object v0

    .line 111
    :cond_0
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-super {p0, p1, p2}, Landroid/view/ContextThemeWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 124
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 128
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContext;->mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 131
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mInflater:Landroid/view/LayoutInflater;

    .line 133
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mInflater:Landroid/view/LayoutInflater;

    return-object v0

    .line 135
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/qihoo360/loader2/PluginContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 147
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 152
    const v0, 0x8000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "append":Z
    :goto_0
    invoke-virtual {p0}, Lcom/qihoo360/loader2/PluginContext;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/qihoo360/loader2/PluginContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 155
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 156
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2, v1}, Lcom/qihoo360/loader2/PluginContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-object v3

    .line 158
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 163
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f8

    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Lcom/qihoo360/loader/utils2/FilePermissionUtils;->setPermissions(Ljava/lang/String;III)I

    .line 165
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 166
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2, v1}, Lcom/qihoo360/loader2/PluginContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 167
    return-object v4
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 467
    invoke-static {p0, p1}, Lcom/qihoo360/i/Factory2;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    invoke-interface {v0, p1}, Lcom/qihoo360/replugin/ContextInjector;->startActivityBefore(Landroid/content/Intent;)V

    .line 472
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->startActivity(Landroid/content/Intent;)V

    .line 474
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    invoke-interface {v0, p1}, Lcom/qihoo360/replugin/ContextInjector;->startActivityAfter(Landroid/content/Intent;)V

    .line 478
    :cond_1
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 484
    invoke-static {p0, p1}, Lcom/qihoo360/i/Factory2;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    invoke-interface {v0, p1, p2}, Lcom/qihoo360/replugin/ContextInjector;->startActivityBefore(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 489
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ContextThemeWrapper;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 491
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    invoke-interface {v0, p1, p2}, Lcom/qihoo360/replugin/ContextInjector;->startActivityAfter(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 495
    :cond_1
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;

    .line 499
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    invoke-interface {v0, p1}, Lcom/qihoo360/replugin/ContextInjector;->startServiceBefore(Landroid/content/Intent;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 505
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 508
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->startService(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    if-eqz v1, :cond_2

    .line 514
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    invoke-interface {v1, p1}, Lcom/qihoo360/replugin/ContextInjector;->startServiceAfter(Landroid/content/Intent;)V

    :cond_2
    return-object v0

    .line 513
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    if-eqz v2, :cond_3

    .line 514
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    invoke-interface {v2, p1}, Lcom/qihoo360/replugin/ContextInjector;->startServiceAfter(Landroid/content/Intent;)V

    :cond_3
    return-object v1

    .line 513
    .end local v0    # "e":Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;
    :goto_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    if-eqz v1, :cond_4

    .line 514
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContext;->mContextInjector:Lcom/qihoo360/replugin/ContextInjector;

    invoke-interface {v1, p1}, Lcom/qihoo360/replugin/ContextInjector;->startServiceAfter(Landroid/content/Intent;)V

    :cond_4
    throw v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "name"    # Landroid/content/Intent;

    .line 521
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 523
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 526
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->stopService(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0
    :try_end_0
    .catch Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->stopService(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 2
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 549
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 551
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 552
    return-void

    .line 556
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 562
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z

    .line 563
    return-void
.end method
