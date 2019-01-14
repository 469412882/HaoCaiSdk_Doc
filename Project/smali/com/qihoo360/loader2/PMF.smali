.class public Lcom/qihoo360/loader2/PMF;
.super Ljava/lang/Object;
.source "PMF.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field static sPluginMgr:Lcom/qihoo360/loader2/PmBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addBuiltinModule(Ljava/lang/String;Ljava/lang/Class;Lcom/qihoo360/i/IModule;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "module"    # Lcom/qihoo360/i/IModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qihoo360/i/IModule;",
            ">;",
            "Lcom/qihoo360/i/IModule;",
            ")V"
        }
    .end annotation

    .line 100
    .local p1, "modc":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qihoo360/i/IModule;>;"
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qihoo360/loader2/PmBase;->addBuiltinModule(Ljava/lang/String;Ljava/lang/Class;Lcom/qihoo360/i/IModule;)V

    .line 101
    return-void
.end method

.method public static final callAppCreate()V
    .locals 1

    .line 84
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PmBase;->callAppCreate()V

    .line 85
    return-void
.end method

.method public static final callAttach()V
    .locals 1

    .line 91
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PmBase;->callAttach()V

    .line 92
    return-void
.end method

.method public static final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qihoo360/loader2/PmBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static final forward(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 17
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 132
    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 136
    :try_start_0
    new-instance v1, Lcom/qihoo360/loader2/PluginIntent;

    invoke-direct {v1, v9}, Lcom/qihoo360/loader2/PluginIntent;-><init>(Landroid/content/Intent;)V

    move-object v10, v1

    .line 138
    .local v10, "ii":Lcom/qihoo360/loader2/PluginIntent;
    invoke-virtual {v10}, Lcom/qihoo360/loader2/PluginIntent;->getOriginal()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 139
    .local v11, "original":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f.a f: orig=nul i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 146
    :cond_0
    invoke-virtual {v10}, Lcom/qihoo360/loader2/PluginIntent;->getContainer()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 147
    .local v12, "container":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f.a f: c=nul i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_1
    invoke-virtual {v10}, Lcom/qihoo360/loader2/PluginIntent;->getPlugin()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 155
    .local v13, "plugin":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f.a f: n=nul i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_2
    invoke-virtual {v10}, Lcom/qihoo360/loader2/PluginIntent;->getActivity()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 163
    .local v14, "target":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f.a f: t=nul i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_3
    invoke-virtual {v10}, Lcom/qihoo360/loader2/PluginIntent;->getProcess()I

    move-result v1

    move v15, v1

    .line 171
    .local v15, "process":I
    invoke-static {v15}, Lcom/qihoo360/loader2/PluginManager;->isValidActivityProcess(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 173
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f.a f: p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 178
    :cond_4
    invoke-virtual {v10}, Lcom/qihoo360/loader2/PluginIntent;->getCounter()I

    move-result v1

    .line 179
    .local v1, "counter":I
    if-ltz v1, :cond_6

    const/16 v2, 0xa

    if-lt v1, v2, :cond_5

    goto :goto_0

    .line 186
    :cond_5
    add-int/lit8 v8, v1, 0x1

    .line 187
    .end local v1    # "counter":I
    .local v8, "counter":I
    invoke-virtual {v10, v8}, Lcom/qihoo360/loader2/PluginIntent;->setCounter(I)V

    .line 189
    sget-object v1, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v1, v1, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    iget-object v1, v1, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move/from16 v16, v8

    move v8, v15

    .line 189
    .end local v8    # "counter":I
    .local v16, "counter":I
    invoke-virtual/range {v1 .. v8}, Lcom/qihoo360/loader2/PluginContainers;->forwardIntent(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    .end local v10    # "ii":Lcom/qihoo360/loader2/PluginIntent;
    .end local v11    # "original":Ljava/lang/String;
    .end local v12    # "container":Ljava/lang/String;
    .end local v13    # "plugin":Ljava/lang/String;
    .end local v14    # "target":Ljava/lang/String;
    .end local v15    # "process":I
    .end local v16    # "counter":I
    goto :goto_1

    .line 181
    .restart local v1    # "counter":I
    .restart local v10    # "ii":Lcom/qihoo360/loader2/PluginIntent;
    .restart local v11    # "original":Ljava/lang/String;
    .restart local v12    # "container":Ljava/lang/String;
    .restart local v13    # "plugin":Ljava/lang/String;
    .restart local v14    # "target":Ljava/lang/String;
    .restart local v15    # "process":I
    :cond_6
    :goto_0
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a f: ooc c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return-void

    .line 190
    .end local v1    # "counter":I
    .end local v10    # "ii":Lcom/qihoo360/loader2/PluginIntent;
    .end local v11    # "original":Ljava/lang/String;
    .end local v12    # "container":Ljava/lang/String;
    .end local v13    # "plugin":Ljava/lang/String;
    .end local v14    # "target":Ljava/lang/String;
    .end local v15    # "process":I
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 192
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f.a f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 60
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getInternal()Lcom/qihoo360/loader2/PluginLibraryInternalProxy;
    .locals 1

    .line 114
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v0, v0, Lcom/qihoo360/loader2/PmBase;->mInternal:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    return-object v0
.end method

.method public static final getLocal()Lcom/qihoo360/loader2/PluginCommImpl;
    .locals 1

    .line 107
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v0, v0, Lcom/qihoo360/loader2/PmBase;->mLocal:Lcom/qihoo360/loader2/PluginCommImpl;

    return-object v0
.end method

.method public static final init(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 67
    invoke-static {p0}, Lcom/qihoo360/loader2/PMF;->setApplicationContext(Landroid/content/Context;)V

    .line 69
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginManager;->init(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/qihoo360/loader2/PmBase;

    invoke-direct {v0, p0}, Lcom/qihoo360/loader2/PmBase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    .line 72
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PmBase;->init()V

    .line 74
    invoke-static {}, Lcom/qihoo360/loader2/PMF;->getLocal()Lcom/qihoo360/loader2/PluginCommImpl;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    .line 75
    invoke-static {}, Lcom/qihoo360/loader2/PMF;->getInternal()Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    .line 77
    invoke-static {p0}, Lcom/qihoo360/loader/utils/PatchClassLoaderUtils;->patch(Landroid/app/Application;)Z

    .line 78
    return-void
.end method

.method public static final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PmBase;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static final setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    sput-object p0, Lcom/qihoo360/loader2/PMF;->sContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static stopService(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v0, v0, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PluginProcessPer;->fetchServiceServer()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->stopService(Landroid/content/Intent;Landroid/os/Messenger;)I

    .line 205
    return-void
.end method
