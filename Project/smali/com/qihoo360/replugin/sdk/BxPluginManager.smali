.class public Lcom/qihoo360/replugin/sdk/BxPluginManager;
.super Ljava/lang/Object;
.source "BxPluginManager.java"


# static fields
.field private static volatile instance:Lcom/qihoo360/replugin/sdk/BxPluginManager;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Lcom/qihoo360/replugin/sdk/BxPluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/BxPluginManager;->TAG:Ljava/lang/String;

    .line 24
    if-nez p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/BxPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "context can not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/qihoo360/replugin/sdk/a;->a(Landroid/content/Context;)V

    .line 33
    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/qihoo360/replugin/sdk/BxPluginManager;
    .locals 3
    .param p0, "var0"    # Landroid/content/Context;

    .line 11
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxPluginManager;->instance:Lcom/qihoo360/replugin/sdk/BxPluginManager;

    if-nez v0, :cond_1

    .line 12
    const-class v0, Lcom/qihoo360/replugin/sdk/BxPluginManager;

    .line 13
    .local v0, "var1":Ljava/lang/Class;
    const-class v1, Lcom/qihoo360/replugin/sdk/BxPluginManager;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v2, Lcom/qihoo360/replugin/sdk/BxPluginManager;->instance:Lcom/qihoo360/replugin/sdk/BxPluginManager;

    if-nez v2, :cond_0

    .line 15
    new-instance v2, Lcom/qihoo360/replugin/sdk/BxPluginManager;

    invoke-direct {v2, p0}, Lcom/qihoo360/replugin/sdk/BxPluginManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/qihoo360/replugin/sdk/BxPluginManager;->instance:Lcom/qihoo360/replugin/sdk/BxPluginManager;

    .line 17
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 20
    .end local v0    # "var1":Ljava/lang/Class;
    :cond_1
    :goto_0
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxPluginManager;->instance:Lcom/qihoo360/replugin/sdk/BxPluginManager;

    return-object v0
.end method

.method private start(Landroid/content/Context;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;

    .line 45
    return-void
.end method
