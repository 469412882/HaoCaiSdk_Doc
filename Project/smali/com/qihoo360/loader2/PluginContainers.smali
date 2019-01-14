.class public Lcom/qihoo360/loader2/PluginContainers;
.super Ljava/lang/Object;
.source "PluginContainers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    }
.end annotation


# static fields
.field private static final CONTAINER_ACTIVITY_PART:Ljava/lang/String; = ".loader.a.Activity"

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_OCCUPIED:I = 0x1

.field private static final STATE_RESTORED:I = 0x2


# instance fields
.field private mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

.field private final mLock:Ljava/lang/Object;

.field private final mProcessStatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/ProcessStates;",
            ">;"
        }
    .end annotation
.end field

.field private mStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PluginContainers$ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskAffinityStates:Lcom/qihoo360/loader2/TaskAffinityStates;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    .line 117
    new-instance v0, Lcom/qihoo360/loader2/TaskAffinityStates;

    invoke-direct {v0}, Lcom/qihoo360/loader2/TaskAffinityStates;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mTaskAffinityStates:Lcom/qihoo360/loader2/TaskAffinityStates;

    .line 122
    new-instance v0, Lcom/qihoo360/loader2/LaunchModeStates;

    invoke-direct {v0}, Lcom/qihoo360/loader2/LaunchModeStates;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mProcessStatesMap:Ljava/util/Map;

    .line 135
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 59
    invoke-static {p0, p1, p2}, Lcom/qihoo360/loader2/PluginContainers;->save2Pref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final allocLocked(Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .locals 9
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p3, "plugin"    # Ljava/lang/String;
    .param p4, "activity"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PluginContainers$ActivityState;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/qihoo360/loader2/PluginContainers$ActivityState;"
        }
    .end annotation

    .line 598
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 599
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 600
    const-string v1, "ws001"

    const-string v2, "PACM: alloc fail, map is null"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    return-object v0

    .line 606
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 607
    .local v2, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    invoke-static {v2, p3, p4}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$300(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 608
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 609
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: alloc registered container="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2
    return-object v2

    .line 613
    .end local v2    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_3
    goto :goto_0

    .line 616
    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 617
    .restart local v2    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    iget v3, v2, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    if-nez v3, :cond_6

    .line 618
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_5

    .line 619
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: alloc empty container="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_5
    invoke-static {v2, p3, p4}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$200(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-object v2

    .line 624
    .end local v2    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_6
    goto :goto_1

    .line 629
    :cond_7
    const/4 v1, 0x0

    .line 630
    .local v1, "found":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 631
    .local v3, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    invoke-static {v3}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$400(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 632
    if-nez v1, :cond_8

    .line 633
    move-object v1, v3

    goto :goto_3

    .line 634
    :cond_8
    iget-wide v4, v3, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    iget-wide v6, v1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_9

    .line 635
    move-object v1, v3

    .line 638
    .end local v3    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_9
    :goto_3
    goto :goto_2

    .line 639
    :cond_a
    if-eqz v1, :cond_c

    .line 640
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_b

    .line 641
    const-string v0, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: alloc recycled container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_b
    invoke-static {v1, p3, p4}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$200(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    return-object v1

    .line 648
    :cond_c
    const/4 v1, 0x0

    .line 649
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 650
    .restart local v3    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    if-nez v1, :cond_d

    .line 651
    move-object v1, v3

    goto :goto_5

    .line 652
    :cond_d
    iget-wide v4, v3, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    iget-wide v6, v1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_e

    .line 653
    move-object v1, v3

    .line 655
    .end local v3    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_e
    :goto_5
    goto :goto_4

    .line 656
    :cond_f
    if-eqz v1, :cond_11

    .line 657
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_10

    .line 658
    const-string v0, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: force alloc container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_10
    invoke-static {v1}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$600(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)V

    .line 661
    invoke-static {v1, p3, p4}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$200(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-object v1

    .line 665
    :cond_11
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_12

    .line 666
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACM: alloc failed: plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_12
    return-object v0
.end method

.method private init2(Ljava/lang/String;Ljava/util/HashSet;Lcom/qihoo360/loader2/ProcessStates;Ljava/lang/String;)V
    .locals 18
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "states"    # Lcom/qihoo360/loader2/ProcessStates;
    .param p4, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qihoo360/loader2/ProcessStates;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 399
    .local p2, "containers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 399
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 402
    .end local p4    # "suffix":Ljava/lang/String;
    .local v3, "suffix":Ljava/lang/String;
    iget-object v4, v2, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v5, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v10, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_STANDARD:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 403
    iget-object v11, v2, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v12, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v17, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_STANDARD:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p2

    invoke-virtual/range {v11 .. v17}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 406
    iget-object v4, v2, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v5, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v10, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TOP:I

    const/4 v8, 0x1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 407
    iget-object v11, v2, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v12, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v17, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP:I

    const/4 v15, 0x1

    invoke-virtual/range {v11 .. v17}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 410
    iget-object v4, v2, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v5, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v10, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TASK:I

    const/4 v8, 0x2

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 411
    iget-object v11, v2, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v12, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v17, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK:I

    const/4 v15, 0x2

    invoke-virtual/range {v11 .. v17}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 414
    iget-object v4, v2, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v5, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v10, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE:I

    const/4 v8, 0x3

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 415
    iget-object v11, v2, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v12, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v17, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE:I

    const/4 v15, 0x3

    invoke-virtual/range {v11 .. v17}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 418
    iget-object v4, v2, Lcom/qihoo360/loader2/ProcessStates;->mTaskAffinityStates:Lcom/qihoo360/loader2/TaskAffinityStates;

    iget-object v5, v0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/qihoo360/loader2/TaskAffinityStates;->init(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 419
    return-void
.end method

.method private final loadFromPref()V
    .locals 14

    .line 423
    :try_start_0
    invoke-static {}, Lcom/qihoo360/mobilesafe/api/Pref;->ipcGetAll()Ljava/util/Map;

    move-result-object v0

    .line 424
    .local v0, "a":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 425
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: restore table: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 428
    .local v2, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 429
    .local v3, "k":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 430
    .local v4, "v":Ljava/lang/Object;
    iget-object v5, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 431
    .local v5, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, "item":[Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    array-length v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 433
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 434
    .local v7, "plugin":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v6, v8

    .line 435
    .local v8, "activity":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 436
    .local v9, "timestamp":J
    sget-boolean v11, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v11, :cond_1

    .line 437
    const-string v11, "ws001"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PACM: restore table:  container="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " plugin="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " activity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 440
    invoke-static {v5, v7, v8, v9, v10}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$100(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;J)V

    .line 442
    .end local v7    # "plugin":Ljava/lang/String;
    .end local v8    # "activity":Ljava/lang/String;
    .end local v9    # "timestamp":J
    :cond_2
    goto :goto_1

    .line 443
    :cond_3
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_4

    .line 444
    const-string v7, "ws001"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PACM: invalid table: k="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " v="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v2    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    .end local v5    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .end local v6    # "item":[Ljava/lang/String;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 452
    .end local v0    # "a":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_5
    goto :goto_2

    .line 448
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: init e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method static final resolvePluginActivity(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "container"    # Ljava/lang/String;

    .line 464
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/qihoo360/mobilesafe/api/Pref;->ipcGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "v":Ljava/lang/String;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: load special pref: k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    const/4 v1, 0x0

    return-object v1

    .line 473
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final save2Pref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "container"    # Ljava/lang/String;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "v":Ljava/lang/String;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: save 2 pref: k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    invoke-static {p2, v0}, Lcom/qihoo360/mobilesafe/api/Pref;->ipcSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void
.end method


# virtual methods
.method final alloc(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Ljava/lang/String;
    .locals 12
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "process"    # I
    .param p5, "intent"    # Landroid/content/Intent;

    move-object v7, p0

    move-object v8, p1

    .line 555
    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 557
    .local v9, "defaultPluginTaskAffinity":Ljava/lang/String;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 558
    const-string v1, "task-affinity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originTaskAffinity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    iget v1, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v2, 0x3

    const/4 v10, 0x0

    if-ne v1, v2, :cond_1

    .line 563
    iget-object v11, v7, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 564
    :try_start_0
    iget-object v1, v7, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget v2, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v3, v8, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v1, v2, v3}, Lcom/qihoo360/loader2/LaunchModeStates;->getStates(II)Ljava/util/HashMap;

    move-result-object v3

    move-object v1, v7

    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/loader2/PluginContainers;->allocLocked(Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 565
    .local v1, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v10, v1

    goto :goto_0

    .line 565
    .end local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :catchall_1
    move-exception v0

    .line 565
    .local v10, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :goto_0
    move-object v1, v0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 568
    .end local v10    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_1
    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 569
    iget-object v11, v7, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 570
    :try_start_3
    iget-object v1, v7, Lcom/qihoo360/loader2/PluginContainers;->mTaskAffinityStates:Lcom/qihoo360/loader2/TaskAffinityStates;

    invoke-virtual {v1, v8}, Lcom/qihoo360/loader2/TaskAffinityStates;->getStates(Landroid/content/pm/ActivityInfo;)Ljava/util/HashMap;

    move-result-object v3

    move-object v1, v7

    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/loader2/PluginContainers;->allocLocked(Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 571
    .restart local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_1

    .line 571
    .end local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :catchall_3
    move-exception v0

    .line 571
    .restart local v10    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :goto_1
    move-object v1, v0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    .line 575
    .end local v10    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_2
    iget-object v11, v7, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 576
    :try_start_6
    iget-object v1, v7, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget v2, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v3, v8, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v1, v2, v3}, Lcom/qihoo360/loader2/LaunchModeStates;->getStates(II)Ljava/util/HashMap;

    move-result-object v3

    move-object v1, v7

    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/loader2/PluginContainers;->allocLocked(Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 577
    .restart local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 580
    :goto_2
    if-eqz v1, :cond_3

    .line 581
    iget-object v2, v1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    return-object v2

    .line 584
    :cond_3
    return-object v10

    .line 577
    :catchall_4
    move-exception v0

    move-object v10, v1

    goto :goto_3

    .line 577
    .end local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :catchall_5
    move-exception v0

    .line 577
    .restart local v10    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :goto_3
    move-object v1, v0

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v1
.end method

.method alloc2(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "process"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "processTail"    # Ljava/lang/String;

    move-object v7, p0

    move-object v8, p1

    .line 675
    iget-object v1, v7, Lcom/qihoo360/loader2/PluginContainers;->mProcessStatesMap:Ljava/util/Map;

    move-object/from16 v9, p6

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/qihoo360/loader2/ProcessStates;

    .line 679
    .local v10, "states":Lcom/qihoo360/loader2/ProcessStates;
    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 680
    .local v11, "defaultPluginTaskAffinity":Ljava/lang/String;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 681
    const-string v1, "task-affinity"

    const-string v2, "\u63d2\u4ef6 %s \u9ed8\u8ba4 TaskAffinity \u4e3a %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v6, 0x1

    aput-object v11, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v1, "task-affinity"

    const-string v2, "%s \u7684 TaskAffinity \u4e3a %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v5

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget v1, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v2, 0x3

    const/4 v12, 0x0

    if-ne v1, v2, :cond_1

    .line 687
    iget-object v13, v7, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 688
    :try_start_0
    iget-object v1, v10, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget v2, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v3, v8, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v1, v2, v3}, Lcom/qihoo360/loader2/LaunchModeStates;->getStates(II)Ljava/util/HashMap;

    move-result-object v3

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/loader2/PluginContainers;->allocLocked(Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 689
    .local v1, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v1

    goto :goto_0

    .line 689
    .end local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :catchall_1
    move-exception v0

    .line 689
    .local v12, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :goto_0
    move-object v1, v0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 692
    .end local v12    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_1
    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 693
    iget-object v13, v7, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 694
    :try_start_3
    iget-object v1, v10, Lcom/qihoo360/loader2/ProcessStates;->mTaskAffinityStates:Lcom/qihoo360/loader2/TaskAffinityStates;

    invoke-virtual {v1, v8}, Lcom/qihoo360/loader2/TaskAffinityStates;->getStates(Landroid/content/pm/ActivityInfo;)Ljava/util/HashMap;

    move-result-object v3

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/loader2/PluginContainers;->allocLocked(Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 695
    .restart local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v12, v1

    goto :goto_1

    .line 695
    .end local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :catchall_3
    move-exception v0

    .line 695
    .restart local v12    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :goto_1
    move-object v1, v0

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    .line 699
    .end local v12    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_2
    iget-object v13, v7, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 700
    :try_start_6
    iget-object v1, v10, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget v2, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v3, v8, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v1, v2, v3}, Lcom/qihoo360/loader2/LaunchModeStates;->getStates(II)Ljava/util/HashMap;

    move-result-object v3

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/loader2/PluginContainers;->allocLocked(Landroid/content/pm/ActivityInfo;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 701
    .restart local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 704
    :goto_2
    if-eqz v1, :cond_3

    .line 705
    iget-object v2, v1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    return-object v2

    .line 707
    :cond_3
    return-object v12

    .line 701
    :catchall_4
    move-exception v0

    move-object v12, v1

    goto :goto_3

    .line 701
    .end local v1    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :catchall_5
    move-exception v0

    .line 701
    .restart local v12    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :goto_3
    move-object v1, v0

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v1
.end method

.method final dump()Ljava/lang/String;
    .locals 8

    .line 782
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 785
    .local v0, "activityArr":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 786
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 787
    .local v3, "container":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 789
    .local v4, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    iget-object v5, v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 790
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 791
    .local v5, "activityObj":Lorg/json/JSONObject;
    const-string v6, "process"

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    const-string v6, "className"

    invoke-static {v5, v6, v3}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 793
    const-string v6, "plugin"

    iget-object v7, v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 794
    const-string v6, "realClassName"

    iget-object v7, v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 795
    const-string v6, "state"

    iget v7, v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    invoke-static {v7}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->toName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 796
    const-string v6, "refs"

    iget-object v7, v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 799
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    .end local v3    # "container":Ljava/lang/String;
    .end local v4    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .end local v5    # "activityObj":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 801
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final forwardIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "original"    # Ljava/lang/String;
    .param p4, "container"    # Ljava/lang/String;
    .param p5, "plugin"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;
    .param p7, "process"    # I

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "so":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    const/4 v1, 0x0

    .line 480
    .local v1, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 481
    :try_start_0
    iget-object v3, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    .line 482
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-object v0, v4

    .line 483
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-object v1, v4

    .line 484
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    if-nez v0, :cond_0

    .line 487
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a fi: cc: inv c.c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 491
    :cond_0
    if-nez v1, :cond_1

    .line 493
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a fi: cc: inv t.c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void

    .line 498
    :cond_1
    iget v2, v1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    if-nez v2, :cond_2

    .line 500
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a fi: cc: ok, t.c empty, t.c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {v1, p5, p6}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$200(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_2
    invoke-static {v1, p5, p6}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$300(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 506
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a fi: cc: fly, force, t.c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-static {v1}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$400(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    const-string v2, "ws001"

    const-string v3, "f.a fi: cc: exists instances"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_3
    invoke-static {v1, p5, p6}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$200(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_4
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a fi: cc: same, t.c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_0
    if-eq v0, v1, :cond_6

    .line 523
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a fi: t t.c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_5

    .line 526
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forward fly: container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_5
    invoke-static {v0}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$500(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)V

    goto :goto_1

    .line 531
    :cond_6
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a fi: same t.c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_7

    .line 534
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forward registered: container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_7
    :goto_1
    invoke-virtual {v1, p1, p2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->forwardSelf(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 539
    return-void

    .line 484
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method final handleCreate(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "container"    # Ljava/lang/String;

    .line 711
    invoke-virtual {p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 712
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    .line 715
    :cond_0
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 716
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: activity created h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    :try_start_0
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    .line 720
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 721
    .local v3, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    if-eqz v3, :cond_2

    .line 722
    invoke-static {v3, p1, p2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$700(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Landroid/app/Activity;)V

    .line 724
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    .end local v3    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_2
    monitor-exit v1

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method final handleDestroy(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 728
    const/4 v0, 0x0

    .line 730
    .local v0, "container":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 731
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_0
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 735
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACM: activity destroy h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_1
    if-nez v0, :cond_2

    .line 738
    return-void

    .line 740
    :cond_2
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 741
    :try_start_0
    iget-object v3, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    .line 742
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 743
    .local v4, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    if-eqz v4, :cond_3

    .line 744
    invoke-static {v4, p1}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->access$800(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Landroid/app/Activity;)V

    .line 746
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    .end local v4    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_3
    monitor-exit v2

    .line 747
    return-void

    .line 746
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method final init(ILjava/util/HashSet;)V
    .locals 9
    .param p1, "process"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p2, "containers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 343
    invoke-static {p1}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->isCustomPluginProcess(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-static {}, Lcom/qihoo360/loader2/PluginManager;->isPluginProcess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    return-void

    .line 348
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".loader.a.Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, "prefix":Ljava/lang/String;
    if-eq p1, v0, :cond_1

    invoke-static {p1}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->isCustomPluginProcess(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    :cond_1
    const-string v8, "N1"

    .line 357
    .local v8, "suffix":Ljava/lang/String;
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget v6, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_STANDARD:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 358
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_STANDARD:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 361
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    sget v6, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TOP:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 362
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 365
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget v6, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TASK:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 366
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 369
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    sget v6, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 370
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/LaunchModeStates;->addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V

    .line 373
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers;->mTaskAffinityStates:Lcom/qihoo360/loader2/TaskAffinityStates;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v8, v1, p2}, Lcom/qihoo360/loader2/TaskAffinityStates;->init(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 376
    const/4 v0, 0x0

    .line 376
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 377
    new-instance v1, Lcom/qihoo360/loader2/ProcessStates;

    invoke-direct {v1}, Lcom/qihoo360/loader2/ProcessStates;-><init>()V

    .line 379
    .local v1, "processStates":Lcom/qihoo360/loader2/ProcessStates;
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers;->mProcessStatesMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, p2, v1, v2}, Lcom/qihoo360/loader2/PluginContainers;->init2(Ljava/lang/String;Ljava/util/HashSet;Lcom/qihoo360/loader2/ProcessStates;Ljava/lang/String;)V

    .line 376
    .end local v1    # "processStates":Lcom/qihoo360/loader2/ProcessStates;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContainers;->loadFromPref()V

    .line 388
    .end local v8    # "suffix":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method final lookupByContainer(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .locals 6
    .param p1, "container"    # Ljava/lang/String;

    .line 756
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 757
    return-object v0

    .line 760
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 761
    :try_start_0
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    .line 762
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 763
    .local v3, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    if-eqz v4, :cond_2

    .line 764
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 765
    const-string v0, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_1
    new-instance v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    invoke-direct {v0, v3}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;-><init>(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)V

    monitor-exit v1

    return-object v0

    .line 769
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    .end local v3    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers;->mStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    int-to-long v1, v1

    .line 774
    .local v1, "s":J
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not found: c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pool="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v1    # "s":J
    return-object v0

    .line 769
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
