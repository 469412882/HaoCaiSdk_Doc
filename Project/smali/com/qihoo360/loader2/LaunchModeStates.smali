.class Lcom/qihoo360/loader2/LaunchModeStates;
.super Ljava/lang/Object;
.source "LaunchModeStates.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "launchMode"


# instance fields
.field private mStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PluginContainers$ActivityState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/LaunchModeStates;->mStates:Ljava/util/Map;

    return-void
.end method

.method private static getInfix(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "launchMode"    # I
    .param p1, "translucent"    # Z

    .line 103
    invoke-static {p0}, Lcom/qihoo360/loader2/LaunchModeStates;->getLaunchModeInfix(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "launchModeInfix":Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TS"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NTS"

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method private static getLaunchModeInfix(I)Ljava/lang/String;
    .locals 1
    .param p0, "launchMode"    # I

    .line 122
    packed-switch p0, :pswitch_data_0

    .line 130
    const-string v0, "NR"

    return-object v0

    .line 128
    :pswitch_0
    const-string v0, "SI"

    return-object v0

    .line 126
    :pswitch_1
    const-string v0, "ST"

    return-object v0

    .line 124
    :pswitch_2
    const-string v0, "STP"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isTranslucentTheme(I)Z
    .locals 1
    .param p0, "theme"    # I

    .line 112
    const v0, 0x103000f

    if-eq p0, v0, :cond_1

    const v0, 0x103000b

    if-eq p0, v0, :cond_1

    const v0, 0x1030010

    if-eq p0, v0, :cond_1

    const v0, 0x1030011

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method addStates(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;IZI)V
    .locals 7
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "launchMode"    # I
    .param p5, "translucent"    # Z
    .param p6, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PluginContainers$ActivityState;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZI)V"
        }
    .end annotation

    .line 67
    .local p1, "allStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    .local p2, "containers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p4, p5}, Lcom/qihoo360/loader2/LaunchModeStates;->getInfix(IZ)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "infix":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/loader2/LaunchModeStates;->mStates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 69
    .local v1, "states":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/loader2/PluginContainers$ActivityState;>;"
    if-nez v1, :cond_0

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 71
    iget-object v2, p0, Lcom/qihoo360/loader2/LaunchModeStates;->mStates:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    const/4 v2, 0x0

    .line 74
    .local v2, "i":I
    :goto_0
    if-ge v2, p6, :cond_2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    const-string v4, "launchMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LaunchModeStates.add("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    new-instance v4, Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    invoke-direct {v4, v3}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;-><init>(Ljava/lang/String;)V

    .line 83
    .local v4, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method getStates(II)Ljava/util/HashMap;
    .locals 2
    .param p1, "launchMode"    # I
    .param p2, "theme"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PluginContainers$ActivityState;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {p2}, Lcom/qihoo360/loader2/LaunchModeStates;->isTranslucentTheme(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/qihoo360/loader2/LaunchModeStates;->getInfix(IZ)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "infix":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/loader2/LaunchModeStates;->mStates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    return-object v1
.end method
