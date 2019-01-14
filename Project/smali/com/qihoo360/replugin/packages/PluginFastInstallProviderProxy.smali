.class public Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;
.super Ljava/lang/Object;
.source "PluginFastInstallProviderProxy.java"


# static fields
.field private static final LOCK:[B

.field private static final TAG:Ljava/lang/String; = "PluginFastInstallPr"

.field private static sProvider:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->LOCK:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getProvider(Landroid/content/Context;)Landroid/content/ContentProviderClient;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    sget-object v0, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->sProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->sProvider:Landroid/content/ContentProviderClient;

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->LOCK:[B

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->sProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_1

    .line 89
    sget-object v1, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->sProvider:Landroid/content/ContentProviderClient;

    monitor-exit v0

    return-object v1

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 93
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 96
    const-string v3, "ws001"

    const-string v4, "pipp.gp: cr n"

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    monitor-exit v0

    return-object v2

    .line 101
    :cond_2
    sget-object v3, Lcom/qihoo360/replugin/packages/PluginFastInstallProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 102
    .local v3, "cpc":Landroid/content/ContentProviderClient;
    if-nez v3, :cond_3

    .line 105
    const-string v4, "ws001"

    const-string v5, "pipp.gp: cpc n"

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v0

    return-object v2

    .line 111
    :cond_3
    sput-object v3, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->sProvider:Landroid/content/ContentProviderClient;

    .line 112
    monitor-exit v0

    return-object v3

    .line 113
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "cpc":Landroid/content/ContentProviderClient;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static install(Landroid/content/Context;Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 56
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->isDexExtracted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 57
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "PluginFastInstallPr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install: Already loaded, no need to install. pi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return v1

    .line 63
    :cond_1
    invoke-static {p0}, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->getProvider(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 64
    .local v0, "cpc":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 65
    return v2

    .line 69
    :cond_2
    :try_start_0
    sget-object v3, Lcom/qihoo360/replugin/packages/PluginFastInstallProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 70
    invoke-static {p1}, Lcom/qihoo360/replugin/packages/PluginFastInstallProvider;->makeInstallValues(Lcom/qihoo360/replugin/model/PluginInfo;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "inst"

    const/4 v6, 0x0

    .line 69
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 72
    .local v3, "r":I
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_3

    .line 73
    const-string v4, "PluginFastInstallPr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install: Install. pi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_3
    if-lez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 76
    .end local v3    # "r":I
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 80
    .end local v1    # "e":Landroid/os/RemoteException;
    return v2
.end method
