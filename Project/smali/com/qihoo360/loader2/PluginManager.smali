.class public Lcom/qihoo360/loader2/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field public static final COUNTER_MAX:I = 0xa

.field public static final PROCESS_AUTO:I = -0x80000000

.field private static final PROCESS_NAME_PATTERN:Ljava/util/regex/Pattern;

.field static sPluginProcessIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static sUid:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "^(.*):loader([0-1])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/loader2/PluginManager;->PROCESS_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final evalPluginProcess(Ljava/lang/String;)I
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    const/high16 v0, -0x80000000

    move v1, v0

    .line 101
    .local v1, "index":I
    :try_start_0
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "ws001"

    const-string v2, "plugin process checker: default, index=0"

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 108
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    const-string v2, ":p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-static {p0}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->processTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "tail":Ljava/lang/String;
    sget-object v2, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->PROCESS_INT_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 115
    .end local v0    # "tail":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/qihoo360/loader2/PluginManager;->PROCESS_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 116
    .local v2, "m":Ljava/util/regex/Matcher;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    .line 123
    :cond_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v3

    .line 124
    .local v3, "r":Ljava/util/regex/MatchResult;
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    goto :goto_0

    .line 131
    :cond_4
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "pr":Ljava/lang/String;
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 133
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_5

    .line 134
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin process checker: package name not match in="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    return v0

    .line 139
    :cond_6
    invoke-interface {v3, v5}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 141
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_7

    .line 142
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin process checker: index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "r":Ljava/util/regex/MatchResult;
    .end local v4    # "pr":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 125
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "r":Ljava/util/regex/MatchResult;
    :cond_8
    :goto_0
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_9

    .line 126
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin process checker: no group in="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_9
    return v0

    .line 117
    .end local v3    # "r":Ljava/util/regex/MatchResult;
    :cond_a
    :goto_1
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_b

    .line 118
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugin process checker: non plugin process in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_b
    return v0

    .line 144
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_c

    .line 146
    const-string v2, "ws001"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_c
    :goto_2
    return v1
.end method

.method static final getPluginProcessIndex()I
    .locals 1

    .line 80
    sget v0, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    return v0
.end method

.method static final init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-static {}, Lcom/qihoo360/mobilesafe/api/Tasks;->init()V

    .line 91
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/qihoo360/loader2/PluginManager;->sUid:I

    .line 94
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/PluginManager;->evalPluginProcess(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    .line 95
    return-void
.end method

.method public static final isPluginProcess()Z
    .locals 2

    .line 62
    sget v0, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    if-ltz v0, :cond_0

    sget v0, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static final isPluginProcess(I)Z
    .locals 1
    .param p0, "index"    # I

    .line 76
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isValidActivityProcess(I)Z
    .locals 1
    .param p0, "process"    # I

    .line 66
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Lcom/qihoo360/loader2/PluginManager;->isPluginProcess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
