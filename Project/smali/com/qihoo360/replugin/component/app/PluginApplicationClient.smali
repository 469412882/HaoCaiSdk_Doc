.class public Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
.super Ljava/lang/Object;
.source "PluginApplicationClient.java"


# static fields
.field private static final LOCKER:[B

.field private static sAttachBaseContextMethod:Ljava/lang/reflect/Method;

.field private static volatile sInited:Z

.field private static sRunningClients:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qihoo360/replugin/component/app/PluginApplicationClient;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mApplicationConstructor:Ljava/lang/reflect/Constructor;

.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mPlgClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->LOCKER:[B

    .line 60
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    sput-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sRunningClients:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;Lcom/qihoo360/replugin/component/ComponentList;Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p1, "plgCL"    # Ljava/lang/ClassLoader;
    .param p2, "cl"    # Lcom/qihoo360/replugin/component/ComponentList;
    .param p3, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mPlgClassLoader:Ljava/lang/ClassLoader;

    .line 187
    invoke-virtual {p2}, Lcom/qihoo360/replugin/component/ComponentList;->getApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->initCustom()Z

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 195
    new-instance v0, Landroid/app/Application;

    invoke-direct {v0}, Landroid/app/Application;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    :cond_2
    new-instance v1, Landroid/app/Application;

    invoke-direct {v1}, Landroid/app/Application;-><init>()V

    iput-object v1, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    .line 204
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static getOrCreate(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/qihoo360/replugin/component/ComponentList;Lcom/qihoo360/replugin/model/PluginInfo;)Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    .locals 5
    .param p0, "pn"    # Ljava/lang/String;
    .param p1, "plgCL"    # Ljava/lang/ClassLoader;
    .param p2, "cl"    # Lcom/qihoo360/replugin/component/ComponentList;
    .param p3, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 73
    invoke-virtual {p3}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 75
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAC.create(): FrameworkVer less than 1. cl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-object v1

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->getRunning(Ljava/lang/String;)Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    move-result-object v0

    .line 81
    .local v0, "pac":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    if-eqz v0, :cond_3

    .line 83
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAC.create(): Already Loaded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    return-object v0

    .line 89
    :cond_3
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_4

    .line 90
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PAC.create(): Create and load Application. cl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->initMethods()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 103
    new-instance v2, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    invoke-direct {v2, p1, p2, p3}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;-><init>(Ljava/lang/ClassLoader;Lcom/qihoo360/replugin/component/ComponentList;Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 104
    .local v2, "pacNew":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    invoke-direct {v2}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 105
    sget-object v1, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sRunningClients:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v3}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_5

    .line 107
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/qihoo360/replugin/component/app/PluginApplicationClient$1;

    invoke-direct {v3, v2}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient$1;-><init>(Lcom/qihoo360/replugin/component/app/PluginApplicationClient;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 124
    :cond_5
    return-object v2

    .line 127
    :cond_6
    return-object v1

    .line 96
    .end local v2    # "pacNew":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 98
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    :cond_7
    return-object v1
.end method

.method public static getRunning(Ljava/lang/String;)Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    .locals 2
    .param p0, "pn"    # Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sRunningClients:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0, p0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 163
    .local v0, "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/app/PluginApplicationClient;>;"
    if-nez v0, :cond_0

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    return-object v1
.end method

.method private initCustom()Z
    .locals 3

    .line 258
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->initCustomConstructor()V

    .line 259
    invoke-direct {p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->initCustomObject()V

    .line 262
    iget-object v1, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 263
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    return v0
.end method

.method private initCustomConstructor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 274
    .local v0, "aic":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mPlgClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 275
    .local v1, "psc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplicationConstructor:Ljava/lang/reflect/Constructor;

    .line 276
    return-void
.end method

.method private initCustomObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplicationConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    .local v0, "appObj":Ljava/lang/Object;
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 281
    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    .line 283
    :cond_0
    return-void
.end method

.method private static initMethods()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 170
    sget-boolean v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sInited:Z

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->LOCKER:[B

    monitor-enter v0

    .line 174
    :try_start_0
    sget-boolean v1, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sInited:Z

    if-eqz v1, :cond_1

    .line 175
    monitor-exit v0

    return-void

    .line 179
    :cond_1
    const-class v1, Landroid/app/Application;

    const-string v2, "attach"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sAttachBaseContextMethod:Ljava/lang/reflect/Method;

    .line 180
    sget-object v1, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sAttachBaseContextMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 181
    sput-boolean v3, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sInited:Z

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isValid()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static notifyOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 152
    sget-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sRunningClients:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 153
    .local v1, "pacw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/app/PluginApplicationClient;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    .line 154
    .local v2, "pac":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    if-nez v2, :cond_0

    .line 155
    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v2, p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->callOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    .end local v1    # "pacw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/app/PluginApplicationClient;>;"
    .end local v2    # "pac":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method public static notifyOnLowMemory()V
    .locals 3

    .line 132
    sget-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sRunningClients:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 133
    .local v1, "pacw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/app/PluginApplicationClient;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    .line 134
    .local v2, "pac":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    if-nez v2, :cond_0

    .line 135
    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v2}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->callOnLowMemory()V

    .line 138
    .end local v1    # "pacw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/app/PluginApplicationClient;>;"
    .end local v2    # "pac":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public static notifyOnTrimMemory(I)V
    .locals 3
    .param p0, "level"    # I

    .line 142
    sget-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sRunningClients:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 143
    .local v1, "pacw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/app/PluginApplicationClient;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    .line 144
    .local v2, "pac":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    if-nez v2, :cond_0

    .line 145
    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v2, p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->callOnTrimMemory(I)V

    .line 148
    .end local v1    # "pacw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/qihoo360/replugin/component/app/PluginApplicationClient;>;"
    .end local v2    # "pac":Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public callAttachBaseContext(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .line 207
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAC.callAttachBaseContext(): Call attachBaseContext(), cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mPlgClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :try_start_0
    sget-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sAttachBaseContextMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 212
    sget-object v0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->sAttachBaseContextMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public callOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 246
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAC.callOnLowMemory(): Call onConfigurationChanged(), cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mPlgClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    return-void
.end method

.method public callOnCreate()V
    .locals 3

    .line 221
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAC.callOnCreate(): Call onCreate(), cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mPlgClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 225
    return-void
.end method

.method public callOnLowMemory()V
    .locals 3

    .line 228
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAC.callOnLowMemory(): Call onLowMemory(), cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mPlgClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    .line 232
    return-void
.end method

.method public callOnTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAC.callOnLowMemory(): Call onTrimMemory(), cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mPlgClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; lv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 243
    return-void
.end method

.method public getObj()Landroid/app/Application;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->mApplication:Landroid/app/Application;

    return-object v0
.end method
