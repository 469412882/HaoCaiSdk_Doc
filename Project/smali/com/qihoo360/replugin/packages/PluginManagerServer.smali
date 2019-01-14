.class public Lcom/qihoo360/replugin/packages/PluginManagerServer;
.super Ljava/lang/Object;
.source "PluginManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;
    }
.end annotation


# static fields
.field private static final LOCKER:[B

.field private static final LOCKER_PROCESS_KILLED:[B

.field public static final PLUGIN_TYPE_APK:I = 0x2

.field public static final PLUGIN_TYPE_INVALID:I = 0x0

.field public static final PLUGIN_TYPE_PN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PluginManagerServer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Lcom/qihoo360/replugin/model/PluginInfoList;

.field private mProcess2PluginsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/replugin/packages/PluginRunningList;",
            ">;"
        }
    .end annotation
.end field

.field private mStub:Lcom/qihoo360/replugin/packages/IPluginManagerServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/qihoo360/replugin/packages/PluginManagerServer;->LOCKER_PROCESS_KILLED:[B

    .line 72
    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->LOCKER:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/qihoo360/replugin/model/PluginInfoList;

    invoke-direct {v0}, Lcom/qihoo360/replugin/model/PluginInfoList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;-><init>(Lcom/qihoo360/replugin/packages/PluginManagerServer;Lcom/qihoo360/replugin/packages/PluginManagerServer$1;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mStub:Lcom/qihoo360/replugin/packages/IPluginManagerServer;

    .line 87
    return-void
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 61
    sget-object v0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->LOCKER:[B

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->addToRunningPluginsLocked(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getRunningProcessesByPluginLocked(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->installLocked(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qihoo360/replugin/packages/PluginManagerServer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 61
    invoke-direct {p0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->loadLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/qihoo360/replugin/packages/PluginManagerServer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 61
    invoke-direct {p0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateAllLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateUsedLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/qihoo360/replugin/packages/PluginManagerServer;Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;
    .param p1, "x1"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 61
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->uninstallLocked(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/qihoo360/replugin/packages/PluginManagerServer;)Lcom/qihoo360/replugin/packages/PluginRunningList;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 61
    invoke-direct {p0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getRunningPluginsLocked()Lcom/qihoo360/replugin/packages/PluginRunningList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->isPluginRunningLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/qihoo360/replugin/packages/PluginManagerServer;Lcom/qihoo360/replugin/packages/PluginRunningList;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;
    .param p1, "x1"    # Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 61
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->syncRunningPluginsLocked(Lcom/qihoo360/replugin/packages/PluginRunningList;)V

    return-void
.end method

.method private addToRunningPluginsLocked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "pluginName"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 592
    .local v0, "l":Lcom/qihoo360/replugin/packages/PluginRunningList;
    if-nez v0, :cond_0

    .line 593
    new-instance v1, Lcom/qihoo360/replugin/packages/PluginRunningList;

    invoke-direct {v1}, Lcom/qihoo360/replugin/packages/PluginRunningList;-><init>()V

    move-object v0, v1

    .line 594
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/qihoo360/replugin/packages/PluginRunningList;->setProcessInfo(Ljava/lang/String;I)V

    .line 599
    invoke-virtual {v0, p3}, Lcom/qihoo360/replugin/packages/PluginRunningList;->add(Ljava/lang/String;)V

    .line 601
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 602
    const-string v1, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToRunningPluginsLocked: Added! pl ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; map="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_1
    return-void
.end method

.method private checkVersion(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)I
    .locals 5
    .param p1, "instPli"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "curPli"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 216
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v0

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getPluginType(Lcom/qihoo360/replugin/model/PluginInfo;)I

    move-result v0

    invoke-static {p2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getPluginType(Lcom/qihoo360/replugin/model/PluginInfo;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 217
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSameVersion: same version. inst_ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; cur_ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v0

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    .line 226
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 227
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVersion: Older than current, install fail. pn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; inst_ver="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; cur_ver="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    return v2

    .line 235
    :cond_3
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getPendingUpdate()Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 236
    .local v0, "curUpdatePli":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 237
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_4

    .line 238
    const-string v1, "PluginManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVersion: Older than updating plugin. Ignore. pn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cur_ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; old_ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; new_ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_4
    return v2

    .line 243
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private copyOrMoveApk(Ljava/lang/String;Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "instPli"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v1

    .line 252
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 258
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qihoo360/replugin/RePluginConfig;->isMoveFileWhenInstalling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-static {v0, v1}, Lcom/qihoo360/replugin/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {v0, v1}, Lcom/qihoo360/replugin/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    nop

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/qihoo360/replugin/model/PluginInfo;->setPath(Ljava/lang/String;)V

    .line 271
    const/16 v2, 0xb

    invoke-virtual {p2, v2}, Lcom/qihoo360/replugin/model/PluginInfo;->setType(I)V

    .line 272
    const/4 v2, 0x1

    return v2

    .line 263
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PluginManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyOrMoveApk: Copy/Move Failed! src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; dest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    const/4 v3, 0x0

    return v3
.end method

.method private delete(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 477
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 478
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraOdexDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 488
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static getPluginType(Lcom/qihoo360/replugin/model/PluginInfo;)I
    .locals 1
    .param p0, "pluginInfo"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 331
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isPnPlugin()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private getRunningPluginsLocked()Lcom/qihoo360/replugin/packages/PluginRunningList;
    .locals 6

    .line 549
    new-instance v0, Lcom/qihoo360/replugin/packages/PluginRunningList;

    invoke-direct {v0}, Lcom/qihoo360/replugin/packages/PluginRunningList;-><init>()V

    .line 550
    .local v0, "l":Lcom/qihoo360/replugin/packages/PluginRunningList;
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 551
    .local v2, "ps":Lcom/qihoo360/replugin/packages/PluginRunningList;
    invoke-virtual {v2}, Lcom/qihoo360/replugin/packages/PluginRunningList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 552
    .local v4, "p":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/qihoo360/replugin/packages/PluginRunningList;->isRunning(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 553
    invoke-virtual {v0, v4}, Lcom/qihoo360/replugin/packages/PluginRunningList;->add(Ljava/lang/String;)V

    .line 555
    .end local v4    # "p":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 556
    .end local v2    # "ps":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :cond_1
    goto :goto_0

    .line 557
    :cond_2
    return-object v0
.end method

.method private getRunningProcessesByPluginLocked(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "pluginName"    # Ljava/lang/String;

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 609
    .local v2, "prl":Lcom/qihoo360/replugin/packages/PluginRunningList;
    invoke-virtual {v2, p1}, Lcom/qihoo360/replugin/packages/PluginRunningList;->isRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    iget-object v3, v2, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    .end local v2    # "prl":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :cond_0
    goto :goto_0

    .line 613
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private installLocked(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getVerifySign()Z

    move-result v0

    .line 127
    .local v0, "verifySignEnable":Z
    if-eqz v0, :cond_0

    const/16 v1, 0xc0

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    .line 130
    .local v1, "flags":I
    :goto_0
    iget-object v2, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 131
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 132
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_1

    .line 133
    const-string v4, "PluginManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installLocked: Not a valid apk. path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v4

    sget-object v5, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->READ_PKG_INFO_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    invoke-virtual {v4, p1, v5}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V

    .line 137
    return-object v3

    .line 141
    :cond_2
    if-eqz v0, :cond_3

    .line 142
    invoke-direct {p0, v2, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->verifySignature(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    return-object v3

    .line 148
    :cond_3
    invoke-static {v2, p1}, Lcom/qihoo360/replugin/model/PluginInfo;->parseFromPackageInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v4

    .line 149
    .local v4, "instPli":Lcom/qihoo360/replugin/model/PluginInfo;
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_4

    .line 150
    const-string v5, "PluginManagerServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installLocked: Info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_4
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/qihoo360/replugin/model/PluginInfo;->setType(I)V

    .line 159
    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v5

    .line 160
    .local v5, "curPli":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v5, :cond_7

    .line 161
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_5

    .line 162
    const-string v6, "PluginManagerServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installLocked: Has installed plugin. current="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_5
    invoke-direct {p0, v4, v5}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->checkVersion(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)I

    move-result v6

    .line 167
    .local v6, "checkResult":I
    if-gez v6, :cond_6

    .line 168
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v7

    sget-object v8, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->VERIFY_VER_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    invoke-virtual {v7, p1, v8}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V

    .line 169
    return-object v3

    .line 170
    :cond_6
    if-nez v6, :cond_7

    .line 171
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/qihoo360/replugin/model/PluginInfo;->setIsPendingCover(Z)V

    .line 177
    .end local v6    # "checkResult":I
    :cond_7
    invoke-direct {p0, p1, v4}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->copyOrMoveApk(Ljava/lang/String;Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 178
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v6

    sget-object v7, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->COPY_APK_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    invoke-virtual {v6, p1, v7}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V

    .line 179
    return-object v3

    .line 183
    :cond_8
    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->install(Ljava/lang/String;Ljava/io/File;)Z

    .line 186
    if-eqz v5, :cond_9

    .line 187
    invoke-direct {p0, v5, v4}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateOrLater(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V

    goto :goto_1

    .line 189
    :cond_9
    iget-object v3, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    invoke-virtual {v3, v4}, Lcom/qihoo360/replugin/model/PluginInfoList;->add(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 193
    :goto_1
    iget-object v3, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    iget-object v6, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/qihoo360/replugin/model/PluginInfoList;->save(Landroid/content/Context;)Z

    .line 195
    return-object v4
.end method

.method private isPluginRunningLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "process"    # Ljava/lang/String;

    .line 561
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 564
    .local v2, "ps":Lcom/qihoo360/replugin/packages/PluginRunningList;
    invoke-virtual {v2, p1}, Lcom/qihoo360/replugin/packages/PluginRunningList;->isRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    return v1

    .line 567
    .end local v2    # "ps":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :cond_0
    goto :goto_0

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 571
    .local v0, "ps":Lcom/qihoo360/replugin/packages/PluginRunningList;
    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/packages/PluginRunningList;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    return v1

    .line 577
    .end local v0    # "ps":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private loadLocked()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/model/PluginInfoList;->load(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateAllLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private move(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 3
    .param p1, "curPi"    # Lcom/qihoo360/replugin/model/PluginInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newPi"    # Lcom/qihoo360/replugin/model/PluginInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 441
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move. curPi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; newPi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 447
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 451
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 452
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraOdexDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraOdexDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/utils/FileUtils;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 455
    :cond_2
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/utils/FileUtils;->copyDir(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 466
    .local v0, "parentDir":Ljava/io/File;
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    .end local v0    # "parentDir":Ljava/io/File;
    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 459
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 466
    .local v0, "parentDir":Ljava/io/File;
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 471
    .end local v0    # "parentDir":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 467
    :catch_1
    move-exception v0

    .line 469
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 473
    :goto_1
    return-void

    .line 464
    :goto_2
    nop

    .line 465
    :try_start_4
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 466
    .local v1, "parentDir":Ljava/io/File;
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 471
    .end local v1    # "parentDir":Ljava/io/File;
    goto :goto_3

    .line 467
    :catch_2
    move-exception v1

    .line 469
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 471
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    throw v0
.end method

.method private syncRunningPluginsLocked(Lcom/qihoo360/replugin/packages/PluginRunningList;)V
    .locals 4
    .param p1, "list"    # Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 582
    new-instance v0, Lcom/qihoo360/replugin/packages/PluginRunningList;

    invoke-direct {v0, p1}, Lcom/qihoo360/replugin/packages/PluginRunningList;-><init>(Lcom/qihoo360/replugin/packages/PluginRunningList;)V

    .line 583
    .local v0, "newList":Lcom/qihoo360/replugin/packages/PluginRunningList;
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 586
    const-string v1, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncRunningPluginsLocked: Synced! pl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; map="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    return-void
.end method

.method private uninstallLater(Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 519
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is running. Uninstall later! pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 523
    .local v0, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v0, :cond_1

    .line 524
    return v1

    .line 526
    :cond_1
    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingDelete(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 529
    iget-object v2, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    iget-object v3, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/model/PluginInfoList;->save(Landroid/content/Context;)Z

    .line 530
    return v1
.end method

.method private uninstallLocked(Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 1
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 505
    if-nez p1, :cond_0

    .line 506
    const/4 v0, 0x0

    return v0

    .line 510
    :cond_0
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/RePlugin;->isPluginRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->uninstallLater(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v0

    return v0

    .line 515
    :cond_1
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->uninstallNow(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v0

    return v0
.end method

.method private uninstallNow(Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 534
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not running. Uninstall now! pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    invoke-static {p1}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->forceDelete(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 542
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/model/PluginInfoList;->remove(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/model/PluginInfoList;->save(Landroid/content/Context;)Z

    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method private updateAllIfNeeded()V
    .locals 4

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "updateNum":I
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfoList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 366
    .local v2, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-direct {p0, v2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateIfNeeded(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 369
    .end local v2    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_0
    goto :goto_0

    .line 371
    :cond_1
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 372
    const-string v1, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllIfNeeded: Updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " plugins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2
    if-lez v0, :cond_3

    .line 375
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    iget-object v2, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/qihoo360/replugin/model/PluginInfoList;->save(Landroid/content/Context;)Z

    .line 377
    :cond_3
    return-void
.end method

.method private updateAllLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateAllIfNeeded()V

    .line 122
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfoList;->cloneList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private updateIfNeeded(Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 4
    .param p1, "curInfo"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 381
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->isPluginRunningLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 383
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 384
    const-string v0, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIfNeeded: Plugin is running. pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    return v1

    .line 390
    :cond_1
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->isNeedUninstall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 392
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIfNeeded: delete plugin. pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPendingDelete()Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->uninstallNow(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v0

    return v0

    .line 398
    :cond_3
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->isNeedUpdate()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 400
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPendingUpdate()Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateNow(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 401
    return v2

    .line 402
    :cond_4
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->isNeedCover()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPendingCover()Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateNow(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 404
    return v2

    .line 407
    :cond_5
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_6

    .line 408
    const-string v0, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIfNeeded: Not need to update. pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_6
    return v1
.end method

.method private updateNow(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 4
    .param p1, "curInfo"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "newInfo"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 415
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getIsPendingCover()Z

    move-result v0

    .line 416
    .local v0, "covered":Z
    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->move(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->delete(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 423
    :goto_0
    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->setType(I)V

    .line 424
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 425
    const-string v1, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNow: Update. pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; cur_ver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; update_ver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {p1, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingCover(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 431
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->setIsPendingCover(Z)V

    .line 433
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->setPath(Ljava/lang/String;)V

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {p1, p2}, Lcom/qihoo360/replugin/model/PluginInfo;->update(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 436
    invoke-virtual {p1, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingUpdate(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 438
    :goto_1
    return-void
.end method

.method private updateOrLater(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 4
    .param p1, "curPli"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "instPli"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 276
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrLater: Need update. pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; cur_ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; update_ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->isPnPlugin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/model/PluginInfoList;->add(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 287
    :cond_1
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPendingUpdate()Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 288
    .local v0, "curUpdatePli":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v0, :cond_2

    .line 289
    invoke-direct {p0, p1, p2, v0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updatePendingUpdate(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 293
    return-void

    .line 297
    :cond_2
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/RePlugin;->isPluginRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 298
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_3

    .line 299
    const-string v1, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOrLater: Plugin is running. Later. pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_3
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_5

    .line 302
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-static {p2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getPluginType(Lcom/qihoo360/replugin/model/PluginInfo;)I

    move-result v1

    invoke-static {p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getPluginType(Lcom/qihoo360/replugin/model/PluginInfo;)I

    move-result v2

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 310
    :cond_4
    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 312
    invoke-virtual {p1, p2}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingCover(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 313
    invoke-virtual {p1, v3}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingDelete(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 315
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_6

    .line 316
    const-string v1, "PluginManagerServer"

    const-string v2, "updateOrLater: Plugin need update same version. clear PendingDelete."

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    :cond_5
    :goto_0
    invoke-virtual {p1, p2}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingUpdate(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 305
    invoke-virtual {p1, v3}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingDelete(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 306
    invoke-virtual {p1, v3}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingCover(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 307
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_6

    .line 308
    const-string v1, "PluginManagerServer"

    const-string v2, "updateOrLater: Plugin need update high version. clear PendingDelete and PendingCover."

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_6
    :goto_1
    invoke-virtual {p2, p1}, Lcom/qihoo360/replugin/model/PluginInfo;->setParentInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    goto :goto_2

    .line 323
    :cond_7
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_8

    .line 324
    const-string v1, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOrLater: Not running. Update now! pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->updateNow(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 328
    :goto_2
    return-void
.end method

.method private updatePendingUpdate(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 3
    .param p1, "curPli"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "instPli"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p3, "curUpdatePli"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 335
    invoke-virtual {p3}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v0

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 338
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePendingUpdate: Found newer plugin, replace. pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cur_ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; old_ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; new_ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    invoke-virtual {p1, p2}, Lcom/qihoo360/replugin/model/PluginInfo;->setPendingUpdate(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 348
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 356
    :cond_1
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 357
    const-string v0, "PluginManagerServer"

    const-string v1, "updatePendingUpdate: Older than updating plugin. But..."

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    :goto_1
    return-void
.end method

.method private updateUsedLocked(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "used"    # Z

    .line 491
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 492
    .local v0, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v0, :cond_0

    .line 493
    return-void

    .line 497
    :cond_0
    invoke-virtual {v0, p2}, Lcom/qihoo360/replugin/model/PluginInfo;->setIsUsed(Z)V

    .line 498
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mList:Lcom/qihoo360/replugin/model/PluginInfoList;

    iget-object v2, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/qihoo360/replugin/model/PluginInfoList;->save(Landroid/content/Context;)Z

    .line 501
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/qihoo360/replugin/packages/PluginInfoUpdater;->updateIsUsed(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 502
    return-void
.end method

.method private verifySignature(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "path"    # Ljava/lang/String;

    .line 199
    invoke-static {p1}, Lcom/qihoo360/loader2/CertUtils;->isPluginSignatures(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySignature: invalid cert:  name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v0

    sget-object v1, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->VERIFY_SIGN_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    invoke-virtual {v0, p2, v1}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_1
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "PluginManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySignature: valid cert:  name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getService()Lcom/qihoo360/replugin/packages/IPluginManagerServer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mStub:Lcom/qihoo360/replugin/packages/IPluginManagerServer;

    return-object v0
.end method

.method public onClientProcessKilled(Ljava/lang/String;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->LOCKER_PROCESS_KILLED:[B

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientProcessKilled: Killed! process="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; remains="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer;->mProcess2PluginsMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
