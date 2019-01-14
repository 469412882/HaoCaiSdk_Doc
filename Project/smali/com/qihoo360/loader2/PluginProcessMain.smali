.class public Lcom/qihoo360/loader2/PluginProcessMain;
.super Ljava/lang/Object;
.source "PluginProcessMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;,
        Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    }
.end annotation


# static fields
.field private static final ALL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECK:Ljava/lang/Runnable;

.field static final CHECK_STAGE1_DELAY:I = 0x4268

.field private static final CHECK_STAGE2_DELAY:I = 0x2af8

.field private static final CHECK_STAGE3_DELAY:I = 0xbb8

.field private static final COOKIE_LOCK:Ljava/lang/Object;

.field private static final PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

.field private static final STATE_ALLOCATED:I = 0x1

.field private static final STATE_RUNNING:I = 0x2

.field private static final STATE_STOPED:I = 0x4

.field private static final STATE_UNUSED:I

.field static sBinders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersisistCookie:J

.field private static sPersisistCookieInitialized:Z

.field private static sPluginHostLocal:Lcom/qihoo360/loader2/IPluginHost;

.field private static sPluginHostRemote:Lcom/qihoo360/loader2/IPluginHost;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->sBinders:Ljava/util/HashMap;

    .line 86
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    sput-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    .line 95
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 96
    new-instance v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    invoke-direct {v3, v2, v1}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;-><init>(II)V

    .line 97
    .local v3, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    sget-object v4, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aput-object v3, v4, v2

    .line 95
    .end local v3    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->COOKIE_LOCK:Ljava/lang/Object;

    .line 122
    new-instance v0, Lcom/qihoo360/loader2/PluginProcessMain$1;

    invoke-direct {v0}, Lcom/qihoo360/loader2/PluginProcessMain$1;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->CHECK:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 56
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->doPluginProcessLoop()V

    return-void
.end method

.method static synthetic access$100(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;Lcom/qihoo360/replugin/packages/PluginManagerServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    .param p1, "x1"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 56
    invoke-static {p0, p1}, Lcom/qihoo360/loader2/PluginProcessMain;->handleBinderDied(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;Lcom/qihoo360/replugin/packages/PluginManagerServer;)V

    return-void
.end method

.method static synthetic access$202(Lcom/qihoo360/loader2/IPluginHost;)Lcom/qihoo360/loader2/IPluginHost;
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/IPluginHost;

    .line 56
    sput-object p0, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostRemote:Lcom/qihoo360/loader2/IPluginHost;

    return-object p0
.end method

.method static final allocProcess(Ljava/lang/String;I)I
    .locals 4
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "process"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    const-string v0, "ui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    invoke-static {p1}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->isCustomPluginProcess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    return p1

    .line 679
    :cond_1
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginTable;->getPluginInfo(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 680
    .local v0, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v0, :cond_3

    .line 681
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 682
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alloc process: plugin not found: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_2
    const/high16 v1, -0x80000000

    return v1

    .line 687
    :cond_3
    sget-object v2, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v2

    .line 688
    :try_start_0
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginProcessMain;->allocProcessLocked(Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 672
    .end local v0    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_4
    :goto_0
    return v1
.end method

.method private static final allocProcessLocked(Ljava/lang/String;)I
    .locals 12
    .param p0, "plugin"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 872
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 873
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alloc plugin process: plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/base/AMSUtils;->getRunningAppProcessesNoThrows(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 880
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    .line 888
    :cond_1
    invoke-static {v0}, Lcom/qihoo360/loader2/PluginProcessMain;->updateListLocked(Ljava/util/List;)V

    .line 891
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v2, :cond_7

    aget-object v6, v1, v4

    .line 892
    .local v6, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget-object v7, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    invoke-static {p0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 893
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 894
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alloc plugin process: found saved plugin process: index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_2
    iget v1, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    if-eqz v1, :cond_3

    iget v1, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    if-ne v1, v5, :cond_4

    .line 898
    :cond_3
    invoke-virtual {v6, p0}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->allocate(Ljava/lang/String;)V

    .line 900
    iget v1, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/PluginProcessMain;->lookupPluginProcess(Ljava/util/List;I)I

    move-result v1

    .line 901
    .local v1, "pid":I
    if-lez v1, :cond_4

    .line 903
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppr k i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 906
    invoke-static {v1}, Lcom/qihoo360/loader2/PluginProcessMain;->waitKilled(I)V

    .line 909
    .end local v1    # "pid":I
    :cond_4
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_5

    .line 910
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "used st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_5
    iget v1, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    return v1

    .line 891
    .end local v6    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 917
    :cond_7
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_b

    aget-object v6, v1, v4

    .line 918
    .restart local v6    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v7, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    if-nez v7, :cond_a

    .line 919
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_8

    .line 920
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alloc plugin process: found unused plugin process: index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "free st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " orig.p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_8
    invoke-virtual {v6, p0}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->allocate(Ljava/lang/String;)V

    .line 926
    iget v1, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/PluginProcessMain;->lookupPluginProcess(Ljava/util/List;I)I

    move-result v1

    .line 927
    .restart local v1    # "pid":I
    if-lez v1, :cond_9

    .line 929
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppr k i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 932
    invoke-static {v1}, Lcom/qihoo360/loader2/PluginProcessMain;->waitKilled(I)V

    .line 934
    :cond_9
    iget v2, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    return v2

    .line 917
    .end local v1    # "pid":I
    .end local v6    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 939
    :cond_b
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_f

    aget-object v6, v1, v4

    .line 940
    .restart local v6    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v7, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    if-ne v7, v5, :cond_e

    .line 941
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_c

    .line 942
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alloc plugin process: found stoped plugin process: index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stoped st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " orig.p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_c
    invoke-virtual {v6, p0}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->allocate(Ljava/lang/String;)V

    .line 948
    iget v1, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/PluginProcessMain;->lookupPluginProcess(Ljava/util/List;I)I

    move-result v1

    .line 949
    .restart local v1    # "pid":I
    if-lez v1, :cond_d

    .line 951
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ppr k i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 954
    invoke-static {v1}, Lcom/qihoo360/loader2/PluginProcessMain;->waitKilled(I)V

    .line 956
    :cond_d
    iget v2, v6, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    return v2

    .line 939
    .end local v1    # "pid":I
    .end local v6    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 963
    :cond_f
    const/4 v1, -0x1

    .line 964
    .local v1, "i":I
    const-wide v4, 0x7fffffffffffffffL

    .line 965
    .local v4, "mod":J
    sget-object v2, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v6, v2

    move-wide v7, v4

    move v4, v1

    const/4 v1, 0x0

    .line 965
    .end local v1    # "i":I
    .local v4, "i":I
    .local v7, "mod":J
    :goto_3
    if-ge v1, v6, :cond_12

    aget-object v5, v2, v1

    .line 966
    .local v5, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v9, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10

    .line 967
    goto :goto_4

    .line 969
    :cond_10
    iget-wide v9, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    cmp-long v11, v9, v7

    if-gez v11, :cond_11

    .line 970
    iget v4, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    .line 971
    iget-wide v7, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 965
    .end local v5    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_11
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 974
    :cond_12
    if-ltz v4, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v5, v1, v7

    const-wide/16 v1, 0x2710

    cmp-long v9, v5, v1

    if-lez v9, :cond_15

    .line 975
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aget-object v1, v1, v4

    .line 976
    .local v1, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_13

    .line 977
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alloc plugin process: plugin processes maybe busy, reuse process which allocating and expired: index="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force maybe st="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " i="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " orig.p="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_13
    invoke-virtual {v1}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->setStoped()V

    .line 983
    invoke-virtual {v1, p0}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->allocate(Ljava/lang/String;)V

    .line 985
    iget v2, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-static {v0, v2}, Lcom/qihoo360/loader2/PluginProcessMain;->lookupPluginProcess(Ljava/util/List;I)I

    move-result v2

    .line 986
    .local v2, "pid":I
    if-lez v2, :cond_14

    .line 988
    const-string v3, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ppr k i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 991
    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->waitKilled(I)V

    .line 993
    :cond_14
    iget v3, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    return v3

    .line 999
    .end local v1    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    .end local v2    # "pid":I
    .end local v4    # "i":I
    .end local v7    # "mod":J
    :cond_15
    const/4 v1, -0x1

    .line 1000
    .local v1, "i":I
    const-wide v4, 0x7fffffffffffffffL

    .line 1001
    .local v4, "mod":J
    sget-object v2, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v6, v2

    move-wide v7, v4

    move v4, v1

    const/4 v1, 0x0

    .line 1001
    .end local v1    # "i":I
    .local v4, "i":I
    .restart local v7    # "mod":J
    :goto_5
    if-ge v1, v6, :cond_1a

    aget-object v5, v2, v1

    .line 1002
    .restart local v5    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v9, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    if-lez v9, :cond_16

    .line 1003
    goto :goto_6

    .line 1005
    :cond_16
    iget v9, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    if-lez v9, :cond_17

    .line 1006
    goto :goto_6

    .line 1008
    :cond_17
    iget v9, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    if-lez v9, :cond_18

    .line 1009
    goto :goto_6

    .line 1011
    :cond_18
    iget-wide v9, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    cmp-long v11, v9, v7

    if-gez v11, :cond_19

    .line 1012
    iget v4, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    .line 1013
    iget-wide v7, v5, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 1001
    .end local v5    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_19
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1016
    :cond_1a
    if-ltz v4, :cond_1c

    .line 1017
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aget-object v1, v1, v4

    .line 1018
    .local v1, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1b

    .line 1019
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alloc plugin process: plugin processes busy, reuse process which components is empty: index="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1b
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ppr r & k i: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force empty st="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " i="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " orig.p="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget v2, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 1027
    iget v2, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->waitKilled(I)V

    .line 1029
    invoke-virtual {v1}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->setStoped()V

    .line 1031
    invoke-virtual {v1, p0}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->allocate(Ljava/lang/String;)V

    .line 1032
    iget v2, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    return v2

    .line 1038
    .end local v1    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    .end local v4    # "i":I
    .end local v7    # "mod":J
    :cond_1c
    const/4 v1, 0x0

    .line 1039
    .local v1, "i":I
    const-wide v4, 0x7fffffffffffffffL

    .line 1040
    .local v4, "mod":J
    sget-object v2, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v6, v2

    :goto_7
    if-ge v3, v6, :cond_1e

    aget-object v7, v2, v3

    .line 1041
    .local v7, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget-wide v8, v7, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    cmp-long v10, v8, v4

    if-gez v10, :cond_1d

    .line 1042
    iget v1, v7, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    .line 1043
    iget-wide v4, v7, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 1040
    .end local v7    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1047
    :cond_1e
    sget-object v2, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aget-object v2, v2, v1

    .line 1048
    .local v2, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1f

    .line 1049
    const-string v3, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alloc plugin process: plugin processes busy, reuse process which earliest allocated: index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_1f
    const-string v3, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ppr r & k i: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v3, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "force earliest st="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " orig.p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 1057
    iget v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    invoke-static {v3}, Lcom/qihoo360/loader2/PluginProcessMain;->waitKilled(I)V

    .line 1059
    invoke-virtual {v2}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->setStoped()V

    .line 1061
    invoke-virtual {v2, p0}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->allocate(Ljava/lang/String;)V

    .line 1062
    iget v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    return v3

    .line 881
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    .end local v4    # "mod":J
    :cond_20
    :goto_8
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_21

    .line 882
    const-string v1, "ws001"

    const-string v2, "alloc plugin process: get running processes is empty"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get list exception p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_21
    const/high16 v1, -0x80000000

    return v1
.end method

.method static final attachActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pid"    # I
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "container"    # Ljava/lang/String;

    .line 734
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 735
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/qihoo360/loader2/PluginProcessMain;->regActivityLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final attachBinder(ILandroid/os/IBinder;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 780
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 781
    :try_start_0
    invoke-static {p0, p1}, Lcom/qihoo360/loader2/PluginProcessMain;->regBinderLocked(ILandroid/os/IBinder;)Z

    .line 782
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final attachProcess(ILjava/lang/String;ILandroid/os/IBinder;Lcom/qihoo360/loader2/IPluginClient;Ljava/lang/String;Lcom/qihoo360/replugin/packages/PluginManagerServer;)Ljava/lang/String;
    .locals 7
    .param p0, "pid"    # I
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "client"    # Lcom/qihoo360/loader2/IPluginClient;
    .param p5, "def"    # Ljava/lang/String;
    .param p6, "pms"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 702
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 703
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/qihoo360/loader2/PluginProcessMain;->attachProcessLocked(ILjava/lang/String;ILandroid/os/IBinder;Lcom/qihoo360/loader2/IPluginClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "plugin":Ljava/lang/String;
    new-instance v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    invoke-direct {v2, p6}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;-><init>(Lcom/qihoo360/replugin/packages/PluginManagerServer;)V

    .line 706
    .local v2, "pr":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    iput-object p1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    .line 707
    iput-object v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->plugin:Ljava/lang/String;

    .line 708
    iput p0, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->pid:I

    .line 709
    iput p2, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->index:I

    .line 710
    iput-object p3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->binder:Landroid/os/IBinder;

    .line 711
    iput-object p4, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    .line 712
    sget-object v3, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :try_start_1
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    goto :goto_0

    .line 715
    :catch_0
    move-exception v3

    .line 717
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ap l2d: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    return-object v1

    .line 722
    .end local v1    # "plugin":Ljava/lang/String;
    .end local v2    # "pr":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static final attachProcessLocked(ILjava/lang/String;ILandroid/os/IBinder;Lcom/qihoo360/loader2/IPluginClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "client"    # Lcom/qihoo360/loader2/IPluginClient;
    .param p5, "def"    # Ljava/lang/String;

    .line 1067
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1068
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach process: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 1072
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 1073
    const-string v0, "ws001"

    const-string v1, "attach process: ui"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_1
    const-string v0, "ui"

    return-object v0

    .line 1079
    :cond_2
    invoke-static {p2}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->isCustomPluginProcess(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1080
    invoke-static {p2}, Lcom/qihoo360/loader2/PluginProcessMain;->getProcessStringByIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1083
    :cond_3
    invoke-static {p2}, Lcom/qihoo360/loader2/PluginManager;->isPluginProcess(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 1084
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_4

    .line 1085
    const-string v0, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach process: invalid index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_4
    return-object v1

    .line 1091
    :cond_5
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aget-object v0, v0, p2

    .line 1092
    .local v0, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1093
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_6

    .line 1094
    const-string v2, "ws001"

    const-string v3, "attach process: allocate now"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_6
    invoke-virtual {v0, p5}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->allocate(Ljava/lang/String;)V

    .line 1099
    :cond_7
    iget v2, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    .line 1100
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_8

    .line 1101
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attach process: state not allocated: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_8
    return-object v1

    .line 1106
    :cond_9
    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->setRunning(I)V

    .line 1107
    invoke-virtual {v0, p3, p4}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->setClient(Landroid/os/IBinder;Lcom/qihoo360/loader2/IPluginClient;)V

    .line 1109
    iget-object v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    return-object v1
.end method

.method static final attachService(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pid"    # I
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;

    .line 761
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 762
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->regServiceLocked(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 763
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final cancelPluginProcessLoop()V
    .locals 0

    .line 811
    return-void
.end method

.method static final connectToHostSvc()V
    .locals 7

    .line 362
    invoke-static {}, Lcom/qihoo360/loader2/PMF;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 365
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/qihoo360/loader2/PluginProviderStub;->proxyFetchHostBinder(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v1

    .line 366
    .local v1, "binder":Landroid/os/IBinder;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 367
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 372
    const-string v3, "ws001"

    const-string v4, "p.p fhb fail"

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 379
    :cond_1
    :try_start_0
    new-instance v3, Lcom/qihoo360/loader2/PluginProcessMain$2;

    invoke-direct {v3}, Lcom/qihoo360/loader2/PluginProcessMain$2;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 400
    :catch_0
    move-exception v3

    .line 403
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p.p p.h l2a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 409
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v1}, Lcom/qihoo360/loader2/IPluginHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v3

    sput-object v3, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostRemote:Lcom/qihoo360/loader2/IPluginHost;

    .line 410
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 411
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host binder.i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostRemote:Lcom/qihoo360/loader2/IPluginHost;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    :try_start_1
    sget-object v3, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostRemote:Lcom/qihoo360/loader2/IPluginHost;

    invoke-static {v3}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->connectToServer(Lcom/qihoo360/loader2/IPluginHost;)V

    .line 421
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->syncRunningPlugins()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    goto :goto_1

    .line 422
    :catch_1
    move-exception v3

    .line 425
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p.p p.h l3a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 431
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    sget-object v2, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v2}, Lcom/qihoo360/loader2/PmBase;->attach()V

    .line 432
    return-void
.end method

.method static final detachActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pid"    # I
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "container"    # Ljava/lang/String;

    .line 748
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 749
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/qihoo360/loader2/PluginProcessMain;->unregActivityLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final detachBinder(ILandroid/os/IBinder;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 786
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 787
    :try_start_0
    invoke-static {p0, p1}, Lcom/qihoo360/loader2/PluginProcessMain;->unregBinderLocked(ILandroid/os/IBinder;)Z

    .line 788
    monitor-exit v0

    .line 789
    return-void

    .line 788
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final detachService(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pid"    # I
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;

    .line 774
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 775
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->unregServiceLocked(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final doPluginProcessLoop()V
    .locals 0

    .line 1308
    return-void
.end method

.method static final dump()Ljava/lang/String;
    .locals 11

    .line 256
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 257
    .local v0, "activityArr":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 259
    .local v1, "serviceArr":Lorg/json/JSONArray;
    sget-object v2, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 261
    .local v3, "clientRecord":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    :try_start_0
    invoke-virtual {v3}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->getClient()Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v5

    .line 262
    .local v5, "pluginClient":Lcom/qihoo360/loader2/IPluginClient;
    if-nez v5, :cond_0

    .line 263
    goto :goto_0

    .line 266
    :cond_0
    invoke-interface {v5}, Lcom/qihoo360/loader2/IPluginClient;->dumpActivities()Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "activityDumpInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 268
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 269
    .local v7, "activityList":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 270
    .local v8, "activityCount":I
    if-lez v8, :cond_1

    .line 271
    const/4 v9, 0x0

    .line 271
    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 272
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 271
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 277
    .end local v7    # "activityList":Lorg/json/JSONArray;
    .end local v8    # "activityCount":I
    .end local v9    # "i":I
    :cond_1
    invoke-interface {v5}, Lcom/qihoo360/loader2/IPluginClient;->dumpServices()Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "serviceDumpInfo":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 279
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 280
    .local v8, "serviceList":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 281
    .local v9, "serviceCount":I
    if-lez v9, :cond_2

    .line 282
    nop

    .line 282
    .local v4, "i":I
    :goto_2
    if-ge v4, v9, :cond_2

    .line 283
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 289
    .end local v4    # "i":I
    .end local v5    # "pluginClient":Lcom/qihoo360/loader2/IPluginClient;
    .end local v6    # "activityDumpInfo":Ljava/lang/String;
    .end local v7    # "serviceDumpInfo":Ljava/lang/String;
    .end local v8    # "serviceList":Lorg/json/JSONArray;
    .end local v9    # "serviceCount":I
    :cond_2
    goto :goto_3

    .line 287
    :catch_0
    move-exception v4

    .line 288
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    .end local v3    # "clientRecord":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_3
    goto :goto_0

    .line 293
    :cond_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 294
    .local v2, "pluginArr":Lorg/json/JSONArray;
    invoke-static {v4}, Lcom/qihoo360/loader2/MP;->getPlugins(Z)Ljava/util/List;

    move-result-object v3

    .line 295
    .local v3, "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    if-eqz v3, :cond_4

    .line 297
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 299
    .local v5, "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 300
    .local v6, "pluginObj":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/qihoo360/replugin/model/PluginInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    goto :goto_5

    .line 302
    .end local v6    # "pluginObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 303
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    .end local v5    # "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_5
    goto :goto_4

    .line 308
    :cond_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v4, "detailObj":Lorg/json/JSONObject;
    :try_start_2
    const-string v5, "activity"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v5, "service"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v5, "plugin"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    goto :goto_6

    .line 313
    :catch_2
    move-exception v5

    .line 314
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 317
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 321
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->DUMP_ENABLED:Z

    if-eqz v0, :cond_2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- ALL.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 324
    .local v1, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 325
    .end local v1    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- PROCESSES.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 329
    .local v3, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 328
    .end local v3    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 336
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 337
    invoke-static {p0, p1, p2}, Lcom/qihoo360/loader2/PluginTable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 339
    :cond_2
    return-void
.end method

.method static final getPersistentCookie()J
    .locals 5

    .line 454
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->COOKIE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    sget-boolean v1, Lcom/qihoo360/loader2/PluginProcessMain;->sPersisistCookieInitialized:Z

    if-nez v1, :cond_0

    .line 456
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qihoo360/loader2/PluginProcessMain;->sPersisistCookieInitialized:Z

    .line 457
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/qihoo360/loader2/PluginProcessMain;->sPersisistCookie:J

    .line 459
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 460
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/qihoo360/loader2/PluginProcessMain;->sPersisistCookie:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    sget-wide v1, Lcom/qihoo360/loader2/PluginProcessMain;->sPersisistCookie:J

    monitor-exit v0

    return-wide v1

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final getPidByProcessName(Ljava/lang/String;)I
    .locals 4
    .param p0, "processName"    # Ljava/lang/String;

    .line 816
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessId()I

    move-result v0

    return v0

    .line 821
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 822
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 823
    .local v2, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 824
    goto :goto_0

    .line 826
    :cond_1
    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 827
    goto :goto_0

    .line 829
    :cond_2
    iget v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->pid:I

    monitor-exit v0

    return v1

    .line 831
    .end local v2    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    :cond_3
    monitor-exit v0

    .line 832
    const/4 v0, -0x1

    return v0

    .line 831
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final getPluginHost()Lcom/qihoo360/loader2/IPluginHost;
    .locals 2

    .line 436
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostLocal:Lcom/qihoo360/loader2/IPluginHost;

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostLocal:Lcom/qihoo360/loader2/IPluginHost;

    return-object v0

    .line 440
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostRemote:Lcom/qihoo360/loader2/IPluginHost;

    if-nez v0, :cond_2

    .line 441
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 442
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    const-string v0, "ws001"

    const-string v1, "\u63d2\u4ef6\u6846\u67b6\u672a\u6b63\u5e38\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u63d2\u4ef6\u6846\u67b6\u672a\u6b63\u5e38\u521d\u59cb\u5316"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->connectToHostSvc()V

    .line 450
    :cond_2
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostRemote:Lcom/qihoo360/loader2/IPluginHost;

    return-object v0
.end method

.method static final getProcessNameByPid(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .line 838
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 839
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 842
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 843
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 844
    .local v2, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    iget v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->pid:I

    if-eq v3, p0, :cond_1

    .line 845
    goto :goto_0

    .line 847
    :cond_1
    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 848
    goto :goto_0

    .line 850
    :cond_2
    iget-object v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 852
    .end local v2    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    :cond_3
    monitor-exit v0

    .line 853
    const/4 v0, 0x0

    return-object v0

    .line 852
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getProcessStringByIndex(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final handleBinderDied(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;Lcom/qihoo360/replugin/packages/PluginManagerServer;)V
    .locals 3
    .param p0, "p"    # Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    .param p1, "pms"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 857
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin process has died: plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 861
    :try_start_0
    invoke-static {p0, p1}, Lcom/qihoo360/loader2/PluginProcessMain;->handleBinderDiedLocked(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;Lcom/qihoo360/replugin/packages/PluginManagerServer;)V

    .line 862
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final handleBinderDiedLocked(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;Lcom/qihoo360/replugin/packages/PluginManagerServer;)V
    .locals 6
    .param p0, "p"    # Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    .param p1, "pms"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 1419
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 1420
    .local v1, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    if-ne v1, p0, :cond_0

    .line 1421
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    iget-object v2, v1, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    goto :goto_1

    .line 1424
    .end local v1    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    :cond_0
    goto :goto_0

    .line 1427
    :cond_1
    :goto_1
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1428
    .local v3, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget-object v4, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binder:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->binder:Landroid/os/IBinder;

    if-ne v4, v5, :cond_2

    .line 1429
    invoke-virtual {v3}, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->setStoped()V

    .line 1430
    goto :goto_3

    .line 1427
    .end local v3    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1435
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->onClientProcessKilled(Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method static final installHost(Lcom/qihoo360/loader2/IPluginHost;)V
    .locals 1
    .param p0, "host"    # Lcom/qihoo360/loader2/IPluginHost;

    .line 345
    sput-object p0, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostLocal:Lcom/qihoo360/loader2/IPluginHost;

    .line 349
    :try_start_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->sPluginHostLocal:Lcom/qihoo360/loader2/IPluginHost;

    invoke-static {v0}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->connectToServer(Lcom/qihoo360/loader2/IPluginHost;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 356
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 626
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 627
    return v0

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->binder:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    if-nez v1, :cond_1

    goto :goto_0

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 633
    return v0

    .line 635
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 630
    :cond_3
    :goto_0
    return v0
.end method

.method static final isProcessAlive(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 614
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 615
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

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

    check-cast v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 616
    .local v2, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 617
    goto :goto_0

    .line 619
    :cond_0
    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 621
    .end local v2    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    :cond_1
    monitor-exit v0

    .line 622
    const/4 v0, 0x0

    return v0

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final lookupPluginProcess(Ljava/util/List;I)I
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;I)I"
        }
    .end annotation

    .line 1405
    .local p0, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1406
    .local v1, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    sget v3, Lcom/qihoo360/loader2/PluginManager;->sUid:I

    if-eq v2, v3, :cond_0

    .line 1407
    goto :goto_0

    .line 1409
    :cond_0
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v2}, Lcom/qihoo360/loader2/PluginManager;->evalPluginProcess(Ljava/lang/String;)I

    move-result v2

    .line 1410
    .local v2, "i":I
    if-ne v2, p1, :cond_1

    .line 1411
    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v0

    .line 1413
    .end local v1    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "i":I
    :cond_1
    goto :goto_0

    .line 1414
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method static final probePluginClient(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;
    .locals 6
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "process"    # I
    .param p2, "info"    # Lcom/qihoo360/loader2/PluginBinderInfo;

    .line 475
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 476
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 477
    .local v2, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 478
    iget-object v4, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->plugin:Ljava/lang/String;

    const-string v5, "ui"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 479
    goto :goto_0

    .line 483
    :cond_0
    invoke-static {p1}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->isCustomPluginProcess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    iget-object v4, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->plugin:Ljava/lang/String;

    invoke-static {p1}, Lcom/qihoo360/loader2/PluginProcessMain;->getProcessStringByIndex(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 485
    goto :goto_0

    .line 488
    :cond_1
    iget-object v4, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->plugin:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 489
    goto :goto_0

    .line 492
    :cond_2
    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 493
    monitor-exit v0

    return-object v3

    .line 495
    :cond_3
    iget-object v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_4

    .line 496
    monitor-exit v0

    return-object v3

    .line 498
    :cond_4
    iget v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->pid:I

    iput v1, p2, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    .line 499
    iget v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->index:I

    iput v1, p2, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    .line 500
    iget-object v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    monitor-exit v0

    return-object v1

    .line 502
    .end local v2    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    :cond_5
    monitor-exit v0

    .line 503
    return-object v3

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final probePluginClientByPid(ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;
    .locals 5
    .param p0, "pid"    # I
    .param p1, "info"    # Lcom/qihoo360/loader2/PluginBinderInfo;

    .line 522
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 523
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 524
    .local v2, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    iget v4, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->pid:I

    if-eq v4, p0, :cond_0

    .line 525
    goto :goto_0

    .line 527
    :cond_0
    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    monitor-exit v0

    return-object v3

    .line 530
    :cond_1
    iget-object v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_2

    .line 531
    monitor-exit v0

    return-object v3

    .line 533
    :cond_2
    iget v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->pid:I

    iput v1, p1, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    .line 534
    iget v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->index:I

    iput v1, p1, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    .line 535
    iget-object v1, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    monitor-exit v0

    return-object v1

    .line 537
    .end local v2    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    :cond_3
    monitor-exit v0

    .line 538
    return-object v3

    .line 537
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final regActivityLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pid"    # I
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "container"    # Ljava/lang/String;

    .line 1113
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1114
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg activity: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_0
    if-ltz p1, :cond_3

    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1124
    :cond_1
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aget-object v0, v0, p1

    .line 1125
    .local v0, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 1127
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 1128
    const-string v1, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " services="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " binders="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_2
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->cancelPluginProcessLoop()V

    .line 1133
    return v2

    .line 1118
    .end local v0    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_4

    .line 1119
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg activity: invalid index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private static final regBinderLocked(ILandroid/os/IBinder;)Z
    .locals 6
    .param p0, "pid"    # I
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1209
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1210
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg binder: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 1222
    .local v4, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v5, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    if-ne v5, p0, :cond_1

    .line 1223
    iget v0, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    .line 1224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 1225
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 1226
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " services="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " binders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1221
    .end local v4    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1232
    :cond_2
    :goto_1
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->cancelPluginProcessLoop()V

    .line 1234
    return v3
.end method

.method private static final regServiceLocked(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pid"    # I
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;

    .line 1161
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1162
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg service: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    if-ltz p1, :cond_3

    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1172
    :cond_1
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aget-object v0, v0, p1

    .line 1173
    .local v0, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    .line 1174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 1175
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 1176
    const-string v1, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " services="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " binders="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_2
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->cancelPluginProcessLoop()V

    .line 1181
    return v2

    .line 1166
    .end local v0    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_4

    .line 1167
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg service: invalid index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method static final reportStatus()V
    .locals 7

    .line 243
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 244
    .local v3, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget-object v4, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binder:Landroid/os/IBinder;

    if-nez v4, :cond_0

    .line 245
    goto :goto_1

    .line 247
    :cond_0
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_1

    .line 248
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " p="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " b="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v3    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_2
    return-void
.end method

.method static final schedulePluginProcessLoop(J)V
    .locals 0
    .param p0, "delayMillis"    # J

    .line 805
    return-void
.end method

.method static final sendIntent2Plugin(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sync"    # Z

    .line 581
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    .line 584
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 585
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 586
    .local v2, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->plugin:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 592
    goto :goto_0

    .line 595
    :cond_2
    if-eqz p2, :cond_3

    .line 596
    :try_start_1
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    invoke-interface {v3, p1}, Lcom/qihoo360/loader2/IPluginClient;->sendIntentSync(Landroid/content/Intent;)V

    goto :goto_1

    .line 600
    :catch_0
    move-exception v3

    goto :goto_2

    .line 598
    :cond_3
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    invoke-interface {v3, p1}, Lcom/qihoo360/loader2/IPluginClient;->sendIntent(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :goto_1
    goto :goto_3

    .line 600
    :goto_2
    nop

    .line 602
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s.i2pl e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v2    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_3
    goto :goto_0

    .line 606
    :cond_4
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 582
    :cond_5
    :goto_4
    return-void
.end method

.method static final sendIntent2Process(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sync"    # Z

    .line 546
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 547
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 548
    .local v2, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_1

    .line 550
    :cond_1
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/qihoo360/loader2/PluginProcessMain;->isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 556
    goto :goto_0

    .line 558
    :cond_3
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_4

    .line 559
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendIntent2Process name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_4
    if-eqz p2, :cond_5

    .line 563
    :try_start_1
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    invoke-interface {v3, p1}, Lcom/qihoo360/loader2/IPluginClient;->sendIntentSync(Landroid/content/Intent;)V

    goto :goto_2

    .line 567
    :catch_0
    move-exception v3

    goto :goto_3

    .line 565
    :cond_5
    iget-object v3, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    invoke-interface {v3, p1}, Lcom/qihoo360/loader2/IPluginClient;->sendIntent(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    :goto_2
    goto :goto_4

    .line 567
    :goto_3
    nop

    .line 569
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s.i2pr e: n="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v2    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_4
    goto :goto_0

    .line 573
    :cond_6
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static final sumActivities()I
    .locals 9

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "sum":I
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v1

    .line 641
    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/PluginProcessMain;->ALL:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;

    .line 642
    .local v3, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    invoke-static {v3}, Lcom/qihoo360/loader2/PluginProcessMain;->isBinderAlive(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 643
    goto :goto_0

    .line 645
    :cond_0
    const/4 v4, 0x0

    .line 647
    .local v4, "rc":I
    :try_start_1
    iget-object v5, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    invoke-interface {v5}, Lcom/qihoo360/loader2/IPluginClient;->sumActivities()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 648
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 649
    :try_start_2
    monitor-exit v1

    return v5

    .line 651
    :cond_1
    add-int/2addr v0, v4

    .line 656
    goto :goto_1

    .line 652
    :catch_0
    move-exception v5

    .line 654
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ppm.sa e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    .end local v3    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
    .end local v4    # "rc":I
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 658
    :cond_2
    monitor-exit v1

    .line 659
    return v0

    .line 658
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static final sumBinders(I)I
    .locals 2
    .param p0, "index"    # I

    .line 792
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    monitor-enter v0

    .line 793
    :try_start_0
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginProcessMain;->sumBindersLocked(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final sumBindersLocked(I)I
    .locals 5
    .param p0, "index"    # I

    .line 1267
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1268
    .local v3, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v4, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    if-ne v4, p0, :cond_0

    .line 1269
    iget v0, v3, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    return v0

    .line 1267
    .end local v3    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1272
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static final unregActivityLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pid"    # I
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "container"    # Ljava/lang/String;

    .line 1137
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1138
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg activity: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    if-ltz p1, :cond_3

    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1148
    :cond_1
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aget-object v0, v0, p1

    .line 1149
    .local v0, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    .line 1150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 1151
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 1152
    const-string v1, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " services="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " binders="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_2
    const-wide/16 v3, 0x2af8

    invoke-static {v3, v4}, Lcom/qihoo360/loader2/PluginProcessMain;->schedulePluginProcessLoop(J)V

    .line 1157
    return v2

    .line 1142
    .end local v0    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_4

    .line 1143
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg activity: invalid index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private static final unregBinderLocked(ILandroid/os/IBinder;)Z
    .locals 6
    .param p0, "pid"    # I
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1238
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1239
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg binder: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 1251
    .local v4, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v5, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    if-ne v5, p0, :cond_1

    .line 1252
    iget v0, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    sub-int/2addr v0, v3

    iput v0, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    .line 1253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 1254
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 1255
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " services="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " binders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1250
    .end local v4    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1261
    :cond_2
    :goto_1
    const-wide/16 v0, 0x2af8

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/PluginProcessMain;->schedulePluginProcessLoop(J)V

    .line 1263
    return v3
.end method

.method private static final unregServiceLocked(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pid"    # I
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;

    .line 1185
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1186
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg service: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_0
    if-ltz p1, :cond_3

    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1196
    :cond_1
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->PROCESSES:[Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;

    aget-object v0, v0, p1

    .line 1197
    .local v0, "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    iget v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    .line 1198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 1199
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 1200
    const-string v1, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " services="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " binders="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_2
    const-wide/16 v3, 0x2af8

    invoke-static {v3, v4}, Lcom/qihoo360/loader2/PluginProcessMain;->schedulePluginProcessLoop(J)V

    .line 1205
    return v2

    .line 1190
    .end local v0    # "r":Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_4

    .line 1191
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg service: invalid index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private static final updateListLocked(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 1378
    .local p0, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    return-void
.end method

.method private static final waitKilled(I)V
    .locals 7
    .param p0, "pid"    # I

    .line 1381
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1381
    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    .line 1383
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3, v0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    goto :goto_1

    .line 1384
    :catch_0
    move-exception v2

    .line 1388
    :goto_1
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/replugin/base/AMSUtils;->getRunningAppProcessesNoThrows(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1389
    .local v2, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1390
    goto :goto_3

    .line 1392
    :cond_0
    const/4 v3, 0x0

    .line 1393
    .local v3, "found":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1394
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p0, :cond_1

    .line 1395
    const/4 v3, 0x1

    .line 1397
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_2

    .line 1398
    :cond_2
    if-nez v3, :cond_3

    .line 1399
    return-void

    .line 1381
    .end local v2    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "found":Z
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    .end local v1    # "i":I
    :cond_4
    return-void
.end method
