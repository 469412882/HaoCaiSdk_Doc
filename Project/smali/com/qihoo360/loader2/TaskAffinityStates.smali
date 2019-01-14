.class Lcom/qihoo360/loader2/TaskAffinityStates;
.super Ljava/lang/Object;
.source "TaskAffinityStates.java"


# static fields
.field private static final GROUP_COUNT:I

.field public static final TAG:Ljava/lang/String; = "task-affinity"


# instance fields
.field private mLaunchModeStates:[Lcom/qihoo360/loader2/LaunchModeStates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TASK:I

    sput v0, Lcom/qihoo360/loader2/TaskAffinityStates;->GROUP_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget v0, Lcom/qihoo360/loader2/TaskAffinityStates;->GROUP_COUNT:I

    new-array v0, v0, [Lcom/qihoo360/loader2/LaunchModeStates;

    iput-object v0, p0, Lcom/qihoo360/loader2/TaskAffinityStates;->mLaunchModeStates:[Lcom/qihoo360/loader2/LaunchModeStates;

    return-void
.end method


# virtual methods
.method getStates(Landroid/content/pm/ActivityInfo;)Ljava/util/HashMap;
    .locals 4
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PluginContainers$ActivityState;",
            ">;"
        }
    .end annotation

    .line 89
    if-eqz p1, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "index":I
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v1}, Lcom/qihoo360/loader2/MP;->getTaskAffinityGroupIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/qihoo360/loader2/TaskAffinityStates;->mLaunchModeStates:[Lcom/qihoo360/loader2/LaunchModeStates;

    aget-object v1, v1, v0

    .line 100
    .local v1, "states":Lcom/qihoo360/loader2/LaunchModeStates;
    if-eqz v1, :cond_0

    .line 101
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v3, p1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v1, v2, v3}, Lcom/qihoo360/loader2/LaunchModeStates;->getStates(II)Ljava/util/HashMap;

    move-result-object v2

    return-object v2

    .line 105
    .end local v0    # "index":I
    .end local v1    # "states":Lcom/qihoo360/loader2/LaunchModeStates;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PluginContainers$ActivityState;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p3, "allStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    .local p4, "containers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 61
    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qihoo360/loader2/TaskAffinityStates;->GROUP_COUNT:I

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/qihoo360/loader2/TaskAffinityStates;->mLaunchModeStates:[Lcom/qihoo360/loader2/LaunchModeStates;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/qihoo360/loader2/TaskAffinityStates;->mLaunchModeStates:[Lcom/qihoo360/loader2/LaunchModeStates;

    new-instance v2, Lcom/qihoo360/loader2/LaunchModeStates;

    invoke-direct {v2}, Lcom/qihoo360/loader2/LaunchModeStates;-><init>()V

    aput-object v2, v1, v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/TaskAffinityStates;->mLaunchModeStates:[Lcom/qihoo360/loader2/LaunchModeStates;

    aget-object v1, v1, v0

    .line 68
    .local v1, "states":Lcom/qihoo360/loader2/LaunchModeStates;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget v8, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_STANDARD:I

    move-object v2, v1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    sget v8, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_STANDARD:I

    move-object v2, v1

    move-object v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget v8, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TOP:I

    move-object v2, v1

    move-object v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    sget v8, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP:I

    move-object v2, v1

    move-object v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget v8, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TASK:I

    move-object v2, v1

    move-object v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    sget v8, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK:I

    move-object v2, v1

    move-object v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    sget v8, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE:I

    move-object v2, v1

    move-object v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    sget v8, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE:I

    move-object v2, v1

    move-object v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 61
    .end local v1    # "states":Lcom/qihoo360/loader2/LaunchModeStates;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
