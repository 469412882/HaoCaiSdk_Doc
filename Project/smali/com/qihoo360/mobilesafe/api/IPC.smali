.class public final Lcom/qihoo360/mobilesafe/api/IPC;
.super Ljava/lang/Object;
.source "IPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCurrentProcessName()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getRunningProcessPID(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lcom/qihoo360/replugin/base/AMSUtils;->getRunningAppProcessesNoThrows(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 45
    .local v2, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    iget v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v1

    .line 48
    .end local v2    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static final getUIProcessPID(Landroid/content/Context;)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 38
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/qihoo360/mobilesafe/api/IPC;->getRunningProcessPID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static final isPersistentProcess()Z
    .locals 1

    .line 79
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    return v0
.end method

.method public static final isRunningProcess(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/base/AMSUtils;->getRunningAppProcessesNoThrows(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 62
    .local v2, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const/4 v1, 0x1

    return v1

    .line 65
    .end local v2    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static final isUIProcess()Z
    .locals 1

    .line 87
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isUIProcess()Z

    move-result v0

    return v0
.end method

.method public static final sendLocalBroadcast2All(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 122
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2All(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 123
    return-void
.end method

.method public static final sendLocalBroadcast2Plugin(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 111
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2Plugin(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    .line 112
    return-void
.end method

.method public static final sendLocalBroadcast2Process(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 99
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2Process(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    .line 100
    return-void
.end method
