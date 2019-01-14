.class Lcom/qihoo360/loader2/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/Plugin$UpdateInfoTask;
    }
.end annotation


# static fields
.field static final FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qihoo360/replugin/component/ComponentList;",
            ">;>;"
        }
    .end annotation
.end field

.field static final FILENAME_2_DEX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/ClassLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field static final FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field static final FILENAME_2_RESOURCES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field static final LOAD_APP:I = 0x3

.field static final LOAD_DEX:I = 0x2

.field static final LOAD_INFO:I = 0x0

.field static final LOAD_RESOURCES:I = 0x1

.field private static final LOCK_LOAD_ENTRY:[B

.field static final PKG_NAME_2_PLUGIN_NAME:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PLUGIN_NAME_2_FILENAME:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Plugin"

.field static volatile sLoadedReasons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mApplicationClient:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

.field mContext:Landroid/content/Context;

.field mDummyPlugin:Z

.field mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

.field mInitialized:Z

.field mLoader:Lcom/qihoo360/loader2/Loader;

.field final mMainH:Landroid/os/Handler;

.field mParent:Ljava/lang/ClassLoader;

.field mPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/loader2/Plugin;->LOCK_LOAD_ENTRY:[B

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/Plugin;->PKG_NAME_2_PLUGIN_NAME:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/Plugin;->PLUGIN_NAME_2_FILENAME:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mMainH:Landroid/os/Handler;

    .line 375
    iput-object p1, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/qihoo360/loader2/Plugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/Plugin;

    .line 59
    invoke-direct {p0}, Lcom/qihoo360/loader2/Plugin;->callAppLocked()V

    return-void
.end method

.method static final build(Lcom/qihoo360/replugin/model/PluginInfo;)Lcom/qihoo360/loader2/Plugin;
    .locals 1
    .param p0, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 181
    new-instance v0, Lcom/qihoo360/loader2/Plugin;

    invoke-direct {v0, p0}, Lcom/qihoo360/loader2/Plugin;-><init>(Lcom/qihoo360/replugin/model/PluginInfo;)V

    return-object v0
.end method

.method private callApp()V
    .locals 2

    .line 897
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/qihoo360/loader2/Plugin;->callAppLocked()V

    goto :goto_0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mMainH:Landroid/os/Handler;

    new-instance v1, Lcom/qihoo360/loader2/Plugin$2;

    invoke-direct {v1, p0}, Lcom/qihoo360/loader2/Plugin$2;-><init>(Lcom/qihoo360/loader2/Plugin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 908
    :goto_0
    return-void
.end method

.method private callAppLocked()V
    .locals 4

    .line 912
    iget-boolean v0, p0, Lcom/qihoo360/loader2/Plugin;->mDummyPlugin:Z

    if-nez v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mApplicationClient:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    if-eqz v0, :cond_0

    .line 917
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 921
    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v1, v1, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    iget-object v3, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v3, v3, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v3, v3, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 920
    invoke-static {v0, v1, v2, v3}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->getOrCreate(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/qihoo360/replugin/component/ComponentList;Lcom/qihoo360/replugin/model/PluginInfo;)Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mApplicationClient:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    .line 923
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mApplicationClient:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mApplicationClient:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    iget-object v1, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v1, v1, Lcom/qihoo360/loader2/Loader;->mPkgContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->callAttachBaseContext(Landroid/content/Context;)V

    .line 925
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mApplicationClient:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->callOnCreate()V

    goto :goto_0

    .line 929
    :cond_1
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p.cal dm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_2
    :goto_0
    return-void
.end method

.method static final clearCachedPlugin(Ljava/lang/String;)V
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;

    .line 295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    .line 300
    .local v0, "dex":Ljava/lang/ClassLoader;
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    monitor-enter v1

    .line 301
    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 302
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/ClassLoader;>;"
    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    move-object v0, v3

    .line 304
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 306
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear Cached Dex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/ClassLoader;>;"
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "resources":Landroid/content/res/Resources;
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    monitor-enter v2

    .line 313
    :try_start_1
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 314
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v3, :cond_2

    .line 315
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object v1, v4

    .line 316
    sget-object v4, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_2

    .line 318
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear Cached Resources "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 323
    const/4 v2, 0x0

    .line 324
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    monitor-enter v3

    .line 325
    :try_start_2
    sget-object v4, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 326
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_3

    .line 327
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    move-object v2, v5

    .line 328
    sget-object v5, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_3

    .line 330
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clear Cached packageInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/pm/PackageInfo;>;"
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    const/4 v3, 0x0

    .line 336
    .local v3, "cl":Lcom/qihoo360/replugin/component/ComponentList;
    sget-object v4, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    monitor-enter v4

    .line 337
    :try_start_3
    sget-object v5, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 338
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/ComponentList;>;"
    if-eqz v5, :cond_4

    .line 339
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qihoo360/replugin/component/ComponentList;

    move-object v3, v6

    .line 340
    sget-object v6, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_4

    .line 342
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear Cached componentList "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/ComponentList;>;"
    :cond_4
    monitor-exit v4

    .line 347
    return-void

    .line 345
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 333
    .end local v3    # "cl":Lcom/qihoo360/replugin/component/ComponentList;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 321
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 309
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method static final cloneAndReattach(Landroid/content/Context;Lcom/qihoo360/loader2/Plugin;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "p"    # Lcom/qihoo360/loader2/Plugin;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "pm"    # Lcom/qihoo360/loader2/PluginCommImpl;

    .line 185
    if-nez p1, :cond_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    iget-object v0, p1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-static {v0}, Lcom/qihoo360/loader2/Plugin;->build(Lcom/qihoo360/replugin/model/PluginInfo;)Lcom/qihoo360/loader2/Plugin;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p0, p2, p3}, Lcom/qihoo360/loader2/Plugin;->attach(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)V

    .line 190
    return-object p1
.end method

.method private final doLoad(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;I)Z
    .locals 15
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "manager"    # Lcom/qihoo360/loader2/PluginCommImpl;
    .param p5, "load"    # I

    move-object v1, p0

    move-object/from16 v2, p2

    .line 739
    move/from16 v3, p5

    iget-object v4, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_a

    .line 741
    const/4 v4, 0x0

    .line 742
    .local v4, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    iget-object v7, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v7}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-ne v7, v5, :cond_1

    .line 744
    const-string v7, "plugins_v3"

    invoke-virtual {v2, v7, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    .line 745
    .local v7, "dir":Ljava/io/File;
    iget-object v10, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v10}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexParentDir()Ljava/io/File;

    move-result-object v10

    .line 746
    .local v10, "dexdir":Ljava/io/File;
    iget-object v11, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v11}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 747
    .local v11, "dstName":Ljava/lang/String;
    iget-object v12, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v12, v13, v11, v14}, Lcom/qihoo360/replugin/utils/AssetsUtils;->quickExtractTo(Landroid/content/Context;Lcom/qihoo360/replugin/model/PluginInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 748
    .local v12, "rc":Z
    if-nez v12, :cond_0

    .line 751
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p e b i p f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v9

    .line 755
    :cond_0
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 756
    .local v13, "file":Ljava/io/File;
    iget-object v14, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v14}, Lcom/qihoo360/replugin/model/PluginInfo;->clone()Ljava/lang/Object;

    move-result-object v14

    move-object v4, v14

    check-cast v4, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 757
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/qihoo360/replugin/model/PluginInfo;->setPath(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v4, v6}, Lcom/qihoo360/replugin/model/PluginInfo;->setType(I)V

    .line 762
    .end local v7    # "dir":Ljava/io/File;
    .end local v10    # "dexdir":Ljava/io/File;
    .end local v11    # "dstName":Ljava/lang/String;
    .end local v12    # "rc":Z
    .end local v13    # "file":Ljava/io/File;
    goto/16 :goto_0

    :cond_1
    iget-object v7, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v7}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v7

    if-ne v7, v8, :cond_7

    .line 764
    new-instance v7, Ljava/io/File;

    iget-object v10, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v10}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v10}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Type()I

    move-result v10

    invoke-static {v7, v10}, Lcom/qihoo360/loader2/V5FileInfo;->build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;

    move-result-object v7

    .line 765
    .local v7, "v5i":Lcom/qihoo360/loader2/V5FileInfo;
    if-nez v7, :cond_2

    .line 768
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p e b v i f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return v9

    .line 772
    :cond_2
    const-string v10, "plugins_v3"

    invoke-virtual {v2, v10, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    .line 773
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v7, v2, v10, v6, v6}, Lcom/qihoo360/loader2/V5FileInfo;->updateV5FileTo(Landroid/content/Context;Ljava/io/File;ZZ)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v4

    .line 774
    if-nez v4, :cond_3

    .line 777
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p u v f t f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return v9

    .line 782
    :cond_3
    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v11

    iget-object v12, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v12}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v12

    if-ne v11, v12, :cond_4

    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v11

    iget-object v12, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v12}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v12

    if-eq v11, v12, :cond_7

    .line 783
    :cond_4
    sget-boolean v11, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v11, :cond_5

    .line 784
    const-string v11, "ws001"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "v5 plugin has changed: plugin="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", original="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_5
    iget-object v11, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v11}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 788
    .restart local v11    # "dstName":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 789
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_6

    .line 791
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t load: v5 plugin has changed to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", orig "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 793
    invoke-virtual {v8}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v8}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bare not exist"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 791
    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return v9

    .line 799
    :cond_6
    invoke-static {v12}, Lcom/qihoo360/replugin/model/PluginInfo;->build(Ljava/io/File;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v4

    .line 800
    if-nez v4, :cond_7

    .line 801
    return v9

    .line 810
    .end local v7    # "v5i":Lcom/qihoo360/loader2/V5FileInfo;
    .end local v10    # "dir":Ljava/io/File;
    .end local v11    # "dstName":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    :cond_7
    :goto_0
    if-eqz v4, :cond_8

    .line 812
    iput-object v4, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 816
    :cond_8
    new-instance v7, Lcom/qihoo360/loader2/Loader;

    iget-object v10, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v10}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v11}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v2, v10, v11, v1}, Lcom/qihoo360/loader2/Loader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qihoo360/loader2/Plugin;)V

    iput-object v7, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    .line 817
    iget-object v7, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    move-object/from16 v10, p3

    invoke-virtual {v7, v10, v3}, Lcom/qihoo360/loader2/Loader;->loadDex(Ljava/lang/ClassLoader;I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 818
    return v9

    .line 824
    :cond_9
    :try_start_0
    iget-object v7, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v7}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->updateUsedIfNeeded(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    goto :goto_1

    .line 825
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 828
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 833
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    if-ne v3, v8, :cond_b

    .line 835
    move-object/from16 v7, p4

    invoke-direct {v1, v7}, Lcom/qihoo360/loader2/Plugin;->loadEntryLocked(Lcom/qihoo360/loader2/PluginCommImpl;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 836
    return v9

    .line 844
    .end local v4    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_a
    move-object/from16 v10, p3

    :cond_b
    move-object/from16 v7, p4

    :cond_c
    if-nez v3, :cond_d

    .line 845
    iget-object v4, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v4}, Lcom/qihoo360/loader2/Loader;->isPackageInfoLoaded()Z

    move-result v4

    return v4

    .line 846
    :cond_d
    if-ne v3, v6, :cond_e

    .line 847
    iget-object v4, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v4}, Lcom/qihoo360/loader2/Loader;->isResourcesLoaded()Z

    move-result v4

    return v4

    .line 848
    :cond_e
    if-ne v3, v5, :cond_f

    .line 849
    iget-object v4, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v4}, Lcom/qihoo360/loader2/Loader;->isDexLoaded()Z

    move-result v4

    return v4

    .line 851
    :cond_f
    iget-object v4, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v4}, Lcom/qihoo360/loader2/Loader;->isAppLoaded()Z

    move-result v4

    return v4
.end method

.method static final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 350
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->DUMP_ENABLED:Z

    if-eqz v0, :cond_3

    .line 351
    const-string v0, "--- cached plugin filename ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/qihoo360/loader2/Plugin;->PLUGIN_NAME_2_FILENAME:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qihoo360/loader2/Plugin;->PLUGIN_NAME_2_FILENAME:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 356
    :cond_0
    const-string v0, "--- cached plugin Resources ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    .restart local v1    # "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 361
    :cond_1
    const-string v0, "--- cached plugin PackageInfo ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 364
    .restart local v1    # "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_2

    .line 366
    :cond_2
    const-string v0, "--- cached plugin ComponentList ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    .restart local v1    # "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_3

    .line 372
    :cond_3
    return-void
.end method

.method private loadByCache(I)Z
    .locals 10
    .param p1, "load"    # I

    .line 466
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 468
    iget-object v2, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "filename":Ljava/lang/String;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 470
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v4

    .line 471
    .local v4, "cl":Lcom/qihoo360/replugin/component/ComponentList;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 472
    new-instance v5, Lcom/qihoo360/loader2/Loader;

    iget-object v6, p0, Lcom/qihoo360/loader2/Plugin;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v7}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v0, p0}, Lcom/qihoo360/loader2/Loader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qihoo360/loader2/Plugin;)V

    iput-object v5, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    .line 473
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v3, v0, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 474
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v4, v0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    .line 475
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "ws000"

    const-string v5, "loadLocked(): Cached, pkgInfo loaded"

    invoke-static {v0, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    return v1

    .line 481
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "cl":Lcom/qihoo360/replugin/component/ComponentList;
    :cond_1
    if-ne p1, v1, :cond_3

    .line 483
    iget-object v2, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .restart local v2    # "filename":Ljava/lang/String;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 485
    .local v3, "r":Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 486
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v5

    .line 487
    .local v5, "cl":Lcom/qihoo360/replugin/component/ComponentList;
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 488
    new-instance v6, Lcom/qihoo360/loader2/Loader;

    iget-object v7, p0, Lcom/qihoo360/loader2/Plugin;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v8}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v0, p0}, Lcom/qihoo360/loader2/Loader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qihoo360/loader2/Plugin;)V

    iput-object v6, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    .line 489
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v3, v0, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    .line 490
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v4, v0, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 491
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v5, v0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    .line 492
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 493
    const-string v0, "ws000"

    const-string v6, "loadLocked(): Cached, resource loaded"

    invoke-static {v0, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_2
    return v1

    .line 498
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "cl":Lcom/qihoo360/replugin/component/ComponentList;
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 500
    iget-object v2, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2    # "filename":Ljava/lang/String;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 502
    .restart local v3    # "r":Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 503
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v5

    .line 504
    .restart local v5    # "cl":Lcom/qihoo360/replugin/component/ComponentList;
    invoke-static {v2}, Lcom/qihoo360/loader2/Plugin;->queryCachedClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    .line 505
    .local v6, "clzl":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 506
    new-instance v7, Lcom/qihoo360/loader2/Loader;

    iget-object v8, p0, Lcom/qihoo360/loader2/Plugin;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v9}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v0, p0}, Lcom/qihoo360/loader2/Loader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qihoo360/loader2/Plugin;)V

    iput-object v7, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    .line 507
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v3, v0, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    .line 508
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v4, v0, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 509
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v5, v0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    .line 510
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iput-object v6, v0, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    .line 511
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_4

    .line 512
    const-string v0, "ws000"

    const-string v7, "loadLocked(): Cached, dex loaded"

    invoke-static {v0, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_4
    return v1

    .line 517
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "cl":Lcom/qihoo360/replugin/component/ComponentList;
    .end local v6    # "clzl":Ljava/lang/ClassLoader;
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private loadEntryLocked(Lcom/qihoo360/loader2/PluginCommImpl;)Z
    .locals 4
    .param p1, "manager"    # Lcom/qihoo360/loader2/PluginCommImpl;

    .line 856
    iget-boolean v0, p0, Lcom/qihoo360/loader2/Plugin;->mDummyPlugin:Z

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p.lel dm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    new-instance v1, Lcom/qihoo360/loader2/Plugin$1;

    invoke-direct {v1, p0}, Lcom/qihoo360/loader2/Plugin$1;-><init>(Lcom/qihoo360/loader2/Plugin;)V

    iput-object v1, v0, Lcom/qihoo360/loader2/Loader;->mPlugin:Lcom/qihoo360/i/IPlugin;

    goto :goto_0

    .line 867
    :cond_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 868
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin.loadEntryLocked(): Load entry, info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/Loader;->loadEntryMethod2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/Loader;->invoke2(Lcom/qihoo360/loader2/PluginCommImpl;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 872
    return v1

    .line 874
    :cond_2
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v0, v1}, Lcom/qihoo360/loader2/Loader;->loadEntryMethod(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/Loader;->invoke(Lcom/qihoo360/loader2/PluginCommImpl;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 876
    return v1

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/Loader;->loadEntryMethod3()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 879
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/Loader;->invoke2(Lcom/qihoo360/loader2/PluginCommImpl;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 880
    return v1

    .line 889
    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 884
    :cond_5
    const-string v0, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p.lel f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return v1
.end method

.method private loadLocked(IZ)Z
    .locals 23
    .param p1, "load"    # I
    .param p2, "useCache"    # Z

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 527
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/qihoo360/loader2/PluginStatusController;->getStatus(Ljava/lang/String;I)I

    move-result v9

    .line 528
    .local v9, "status":I
    const/4 v10, 0x0

    if-gez v9, :cond_1

    .line 529
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 530
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocked(): Disable in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    return v10

    .line 534
    :cond_1
    iget-boolean v1, v7, Lcom/qihoo360/loader2/Plugin;->mInitialized:Z

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_b

    .line 535
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    if-nez v1, :cond_3

    .line 536
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 537
    const-string v1, "ws000"

    const-string v2, "loadLocked(): Initialized but mLoader is Null"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_2
    return v10

    .line 541
    :cond_3
    if-nez v8, :cond_5

    .line 542
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v1}, Lcom/qihoo360/loader2/Loader;->isPackageInfoLoaded()Z

    move-result v1

    .line 543
    .local v1, "rl":Z
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_4

    .line 544
    const-string v2, "ws000"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLocked(): Initialized, pkginfo loaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_4
    return v1

    .line 548
    .end local v1    # "rl":Z
    :cond_5
    if-ne v8, v12, :cond_7

    .line 549
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v1}, Lcom/qihoo360/loader2/Loader;->isResourcesLoaded()Z

    move-result v1

    .line 550
    .restart local v1    # "rl":Z
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_6

    .line 551
    const-string v2, "ws000"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLocked(): Initialized, resource loaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_6
    return v1

    .line 555
    .end local v1    # "rl":Z
    :cond_7
    if-ne v8, v11, :cond_9

    .line 556
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v1}, Lcom/qihoo360/loader2/Loader;->isDexLoaded()Z

    move-result v1

    .line 557
    .restart local v1    # "rl":Z
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_8

    .line 558
    const-string v2, "ws000"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLocked(): Initialized, dex loaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_8
    return v1

    .line 562
    .end local v1    # "rl":Z
    :cond_9
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v1}, Lcom/qihoo360/loader2/Loader;->isAppLoaded()Z

    move-result v1

    .line 563
    .local v1, "il":Z
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_a

    .line 564
    const-string v2, "ws000"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLocked(): Initialized, is loaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_a
    return v1

    .line 568
    .end local v1    # "il":Z
    :cond_b
    iput-boolean v12, v7, Lcom/qihoo360/loader2/Plugin;->mInitialized:Z

    .line 571
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 572
    const-string v1, ""

    .line 573
    .local v1, "reason":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--- plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ---\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "load="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 576
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    move-object v4, v1

    const/4 v1, 0x0

    .line 576
    .end local v1    # "reason":Ljava/lang/String;
    .local v4, "reason":Ljava/lang/String;
    :goto_0
    if-ge v1, v3, :cond_e

    aget-object v5, v2, v1

    .line 577
    .local v5, "item":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 578
    goto :goto_1

    .line 580
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, "cn":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v13

    .line 582
    .local v13, "mn":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 583
    .local v14, "filename":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v15

    .line 584
    .local v15, "line":I
    sget-boolean v16, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v16, :cond_d

    .line 585
    const-string v11, "ws001"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 576
    .end local v5    # "item":Ljava/lang/StackTraceElement;
    .end local v6    # "cn":Ljava/lang/String;
    .end local v13    # "mn":Ljava/lang/String;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "line":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 589
    :cond_e
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->sLoadedReasons:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/qihoo360/loader2/Plugin;->sLoadedReasons:Ljava/util/ArrayList;

    .line 592
    :cond_f
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->sLoadedReasons:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v4    # "reason":Ljava/lang/String;
    :cond_10
    if-eqz p2, :cond_11

    .line 597
    invoke-direct/range {p0 .. p1}, Lcom/qihoo360/loader2/Plugin;->loadByCache(I)Z

    move-result v1

    .line 599
    .local v1, "result":Z
    if-eqz v1, :cond_11

    .line 600
    const/4 v2, 0x1

    return v2

    .line 604
    .end local v1    # "result":Z
    :cond_11
    iget-object v11, v7, Lcom/qihoo360/loader2/Plugin;->mContext:Landroid/content/Context;

    .line 605
    .local v11, "context":Landroid/content/Context;
    iget-object v12, v7, Lcom/qihoo360/loader2/Plugin;->mParent:Ljava/lang/ClassLoader;

    .line 606
    .local v12, "parent":Ljava/lang/ClassLoader;
    iget-object v13, v7, Lcom/qihoo360/loader2/Plugin;->mPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    .line 609
    .local v13, "manager":Lcom/qihoo360/loader2/PluginCommImpl;
    const-string v14, "try1"

    .line 610
    .local v14, "logTag":Ljava/lang/String;
    const-string v1, "plugin_v3_%s.lock"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v2, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 611
    .local v15, "lockFileName":Ljava/lang/String;
    new-instance v1, Lcom/qihoo360/loader/utils/ProcessLocker;

    invoke-direct {v1, v11, v15}, Lcom/qihoo360/loader/utils/ProcessLocker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v6, v1

    .line 612
    .local v6, "lock":Lcom/qihoo360/loader/utils/ProcessLocker;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_12

    .line 613
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocked(): Ready to lock! logtag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; pn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_12
    const/16 v5, 0xa

    const/16 v4, 0x1388

    invoke-virtual {v6, v4, v5}, Lcom/qihoo360/loader/utils/ProcessLocker;->tryLockTimeWait(II)Z

    move-result v1

    if-nez v1, :cond_13

    .line 618
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": failed to lock: can\'t wait plugin ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 623
    .local v17, "t1":J
    move-object v1, v7

    move-object v2, v14

    move-object v3, v11

    move/from16 v19, v9

    const/16 v9, 0x1388

    move-object v4, v12

    .line 623
    .end local v9    # "status":I
    .local v19, "status":I
    const/16 v9, 0xa

    move-object v5, v13

    move-object v9, v6

    move v6, v8

    .line 623
    .end local v6    # "lock":Lcom/qihoo360/loader/utils/ProcessLocker;
    .local v9, "lock":Lcom/qihoo360/loader/utils/ProcessLocker;
    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/loader2/Plugin;->doLoad(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;I)Z

    move-result v6

    .line 624
    .local v6, "rc":Z
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_14

    .line 625
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    sub-long v12, v3, v17

    .line 625
    .end local v12    # "parent":Ljava/lang/ClassLoader;
    .end local v13    # "manager":Lcom/qihoo360/loader2/PluginCommImpl;
    .local v20, "parent":Ljava/lang/ClassLoader;
    .local v21, "manager":Lcom/qihoo360/loader2/PluginCommImpl;
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 628
    .end local v20    # "parent":Ljava/lang/ClassLoader;
    .end local v21    # "manager":Lcom/qihoo360/loader2/PluginCommImpl;
    .restart local v12    # "parent":Ljava/lang/ClassLoader;
    .restart local v13    # "manager":Lcom/qihoo360/loader2/PluginCommImpl;
    :cond_14
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    .line 628
    .end local v12    # "parent":Ljava/lang/ClassLoader;
    .end local v13    # "manager":Lcom/qihoo360/loader2/PluginCommImpl;
    .restart local v20    # "parent":Ljava/lang/ClassLoader;
    .restart local v21    # "manager":Lcom/qihoo360/loader2/PluginCommImpl;
    :goto_2
    invoke-virtual {v9}, Lcom/qihoo360/loader/utils/ProcessLocker;->unlock()V

    .line 629
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_15

    .line 630
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocked(): Unlock! logtag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; pn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_15
    if-nez v6, :cond_16

    .line 634
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": loading fail1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_16
    const/4 v12, 0x3

    if-eqz v6, :cond_19

    .line 640
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 641
    const/4 v1, 0x2

    if-eq v8, v1, :cond_17

    if-ne v8, v12, :cond_18

    .line 642
    :cond_17
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-static {v1, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->printPluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;I)I

    .line 643
    const-string v1, "RePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "act=, loadLocked, flag=, End-1, pn=, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type=, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->printMemoryStatus(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_18
    :try_start_0
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->addToRunningPluginsNoThrows(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    goto :goto_3

    .line 649
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 651
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p.u.1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    const/4 v1, 0x1

    return v1

    .line 659
    :cond_19
    const-string v13, "try2"

    .line 660
    .end local v14    # "logTag":Ljava/lang/String;
    .local v13, "logTag":Ljava/lang/String;
    new-instance v1, Lcom/qihoo360/loader/utils/ProcessLocker;

    invoke-direct {v1, v11, v15}, Lcom/qihoo360/loader/utils/ProcessLocker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v9, v1

    .line 661
    const/16 v1, 0x1388

    const/16 v2, 0xa

    invoke-virtual {v9, v1, v2}, Lcom/qihoo360/loader/utils/ProcessLocker;->tryLockTimeWait(II)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 664
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": failed to lock: can\'t wait plugin ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1a
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    .line 670
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v14

    .line 671
    .local v14, "odex":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 672
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1b

    .line 673
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": delete exist odex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_1b
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 679
    :cond_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1d

    .line 682
    :try_start_1
    iget-object v1, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraOdexDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 685
    goto :goto_4

    .line 683
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 684
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 688
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1d
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 689
    move-object v1, v7

    move-object v2, v13

    move-object v3, v11

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v16, v6

    move v6, v8

    .line 689
    .end local v6    # "rc":Z
    .local v16, "rc":Z
    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/loader2/Plugin;->doLoad(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;I)Z

    move-result v1

    .line 690
    .end local v16    # "rc":Z
    .local v1, "rc":Z
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1e

    .line 691
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " delta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v22, v13

    sub-long v12, v4, v17

    .line 691
    .end local v13    # "logTag":Ljava/lang/String;
    .local v22, "logTag":Ljava/lang/String;
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 694
    .end local v22    # "logTag":Ljava/lang/String;
    .restart local v13    # "logTag":Ljava/lang/String;
    :cond_1e
    move-object/from16 v22, v13

    .line 694
    .end local v13    # "logTag":Ljava/lang/String;
    .restart local v22    # "logTag":Ljava/lang/String;
    :goto_5
    invoke-virtual {v9}, Lcom/qihoo360/loader/utils/ProcessLocker;->unlock()V

    .line 695
    if-nez v1, :cond_1f

    .line 697
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .end local v22    # "logTag":Ljava/lang/String;
    .local v4, "logTag":Ljava/lang/String;
    const-string v5, ": loading fail2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v2, 0x0

    return v2

    .line 704
    .end local v4    # "logTag":Ljava/lang/String;
    .restart local v22    # "logTag":Ljava/lang/String;
    :cond_1f
    move-object/from16 v4, v22

    .line 704
    .end local v22    # "logTag":Ljava/lang/String;
    .restart local v4    # "logTag":Ljava/lang/String;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 705
    const/4 v2, 0x2

    if-eq v8, v2, :cond_20

    const/4 v2, 0x3

    if-ne v8, v2, :cond_21

    .line 706
    :cond_20
    iget-object v2, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-static {v2, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->printPluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;I)I

    .line 707
    const-string v2, "RePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "act=, loadLocked, flag=, End-2, pn=, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", type=, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->printMemoryStatus(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_21
    :try_start_2
    iget-object v2, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->addToRunningPluginsNoThrows(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 718
    goto :goto_6

    .line 714
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 716
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p.u.2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_6
    const/4 v2, 0x1

    return v2
.end method

.method static final queryCachedClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "dex":Ljava/lang/ClassLoader;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    monitor-enter v1

    .line 222
    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 223
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/ClassLoader;>;"
    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    move-object v0, v3

    .line 225
    if-nez v0, :cond_0

    .line 226
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 229
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cached Dex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/ClassLoader;>;"
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 234
    :cond_2
    :goto_0
    return-object v0
.end method

.method static final queryCachedComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "cl":Lcom/qihoo360/replugin/component/ComponentList;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 278
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    monitor-enter v1

    .line 279
    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 280
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/ComponentList;>;"
    if-eqz v2, :cond_1

    .line 281
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/component/ComponentList;

    move-object v0, v3

    .line 282
    if-nez v0, :cond_0

    .line 283
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 286
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cached componentList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/ComponentList;>;"
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 291
    :cond_2
    :goto_0
    return-object v0
.end method

.method static final queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "filename":Ljava/lang/String;
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->PLUGIN_NAME_2_FILENAME:Ljava/util/HashMap;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->PLUGIN_NAME_2_FILENAME:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 211
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    monitor-exit v1

    .line 215
    return-object v0

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static final queryCachedPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    monitor-enter v1

    .line 260
    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 261
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    move-object v0, v3

    .line 263
    if-nez v0, :cond_0

    .line 264
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_0
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 267
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cached packageInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 272
    :cond_2
    :goto_0
    return-object v0
.end method

.method static final queryCachedResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 242
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v0, v3

    .line 244
    if-nez v0, :cond_0

    .line 245
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 248
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cached Resources "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 253
    :cond_2
    :goto_0
    return-object v0
.end method

.method static final queryPluginNameByPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/qihoo360/loader2/Plugin;->PKG_NAME_2_PLUGIN_NAME:Ljava/util/HashMap;

    monitor-enter v0

    .line 199
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->PKG_NAME_2_PLUGIN_NAME:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 200
    .local v1, "pluginName":Ljava/lang/String;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached pluginName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    monitor-exit v0

    .line 204
    return-object v1

    .line 203
    .end local v1    # "pluginName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 203
    .restart local v1    # "pluginName":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method final attach(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "manager"    # Lcom/qihoo360/loader2/PluginCommImpl;

    .line 387
    iput-object p1, p0, Lcom/qihoo360/loader2/Plugin;->mContext:Landroid/content/Context;

    .line 388
    iput-object p2, p0, Lcom/qihoo360/loader2/Plugin;->mParent:Ljava/lang/ClassLoader;

    .line 389
    iput-object p3, p0, Lcom/qihoo360/loader2/Plugin;->mPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    .line 390
    return-void
.end method

.method final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    return-object v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method final isInitialized()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/qihoo360/loader2/Plugin;->mInitialized:Z

    return v0
.end method

.method final isLoaded()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    return v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/Loader;->isAppLoaded()Z

    move-result v0

    return v0
.end method

.method final isPackageInfoLoaded()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    return v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/Loader;->isPackageInfoLoaded()Z

    move-result v0

    return v0
.end method

.method final load(IZ)Z
    .locals 4
    .param p1, "load"    # I
    .param p2, "useCache"    # Z

    .line 433
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 434
    .local v0, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/loader2/Plugin;->loadLocked(IZ)Z

    move-result v1

    .line 437
    .local v1, "rc":Z
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/qihoo360/loader2/Plugin;->callApp()V

    .line 442
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    if-eq v2, v0, :cond_1

    .line 443
    new-instance v2, Lcom/qihoo360/loader2/Plugin$UpdateInfoTask;

    iget-object v3, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v2, v3}, Lcom/qihoo360/loader2/Plugin$UpdateInfoTask;-><init>(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 444
    .local v2, "task":Lcom/qihoo360/loader2/Plugin$UpdateInfoTask;
    invoke-static {v2}, Lcom/qihoo360/mobilesafe/api/Tasks;->post2Thread(Ljava/lang/Runnable;)Z

    .line 446
    .end local v2    # "task":Lcom/qihoo360/loader2/Plugin$UpdateInfoTask;
    :cond_1
    return v1
.end method

.method final query(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "binder"    # Ljava/lang/String;

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mBinderPlugin:Lcom/qihoo360/loader2/Loader$ProxyPlugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader$ProxyPlugin;->mPlugin:Lcom/qihoo360/loader2/IPlugin;

    invoke-interface {v0, p1}, Lcom/qihoo360/loader2/IPlugin;->query(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 730
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "q.b.e.m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method final query(Ljava/lang/Class;)Lcom/qihoo360/i/IModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qihoo360/i/IModule;",
            ">;)",
            "Lcom/qihoo360/i/IModule;"
        }
    .end annotation

    .line 724
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qihoo360/i/IModule;>;"
    iget-object v0, p0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v0, v0, Lcom/qihoo360/loader2/Loader;->mPlugin:Lcom/qihoo360/i/IPlugin;

    invoke-interface {v0, p1}, Lcom/qihoo360/i/IPlugin;->query(Ljava/lang/Class;)Lcom/qihoo360/i/IModule;

    move-result-object v0

    return-object v0
.end method

.method final replaceInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "rc":Z
    iget-object v1, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1, p1}, Lcom/qihoo360/replugin/model/PluginInfo;->canReplaceForPn(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iput-object p1, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 453
    const/4 v0, 0x1

    .line 455
    :cond_0
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 456
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace plugin info: info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 380
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
