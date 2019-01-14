.class Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebuggerReceivers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/debugger/DebuggerReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DebugerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/replugin/debugger/DebuggerReceivers;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/debugger/DebuggerReceivers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/debugger/DebuggerReceivers;

    .line 114
    iput-object p1, p0, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->this$0:Lcom/qihoo360/replugin/debugger/DebuggerReceivers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doActionInstall(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 125
    const-string v0, "path"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "path":Ljava/lang/String;
    const-string v1, "immediately"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "immediatelyText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 128
    .local v2, "immediately":Z
    const-string v3, "true"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const/4 v2, 0x1

    .line 132
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->onInstallByApk(Ljava/lang/String;Z)Z

    .line 134
    const/4 v3, 0x1

    return v3
.end method

.method private doActionInstallWithPN(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 165
    const-string v0, "path"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "path":Ljava/lang/String;
    const-string v1, "immediately"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "immediatelyText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 168
    .local v2, "immediately":Z
    const-string v3, "true"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const/4 v2, 0x1

    .line 172
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->onInstallByPn(Ljava/lang/String;Z)Z

    .line 174
    const/4 v3, 0x1

    return v3
.end method

.method private doActionStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 184
    const-string v0, "plugin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "plugin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    return v1

    .line 190
    :cond_0
    const-string v1, "activity"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "activity":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->onStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private doActionUninstall(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 146
    const-string v0, "plugin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "plugin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x0

    return v1

    .line 152
    :cond_0
    invoke-static {v0}, Lcom/qihoo360/replugin/RePlugin;->uninstall(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private onInstall(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "immediately"    # Z

    .line 236
    invoke-static {p1}, Lcom/qihoo360/replugin/RePlugin;->install(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 239
    .local v0, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v0, :cond_3

    .line 240
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "DebugReceivers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstall: Install Success! cur="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qihoo360/replugin/RePlugin;->getPluginInfo(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    if-eqz p2, :cond_4

    .line 245
    invoke-static {v0}, Lcom/qihoo360/replugin/RePlugin;->preload(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 247
    const-string v1, "DebugReceivers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstall: Preload Success! pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 251
    :cond_2
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_4

    .line 252
    const-string v1, "DebugReceivers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstall: Preload Error! pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_3
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_4

    .line 258
    const-string v1, "DebugReceivers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstall: Install Error! path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_4
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private onInstallByApk(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "immediately"    # Z

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->onInstall(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onInstallByPn(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imeediately"    # Z

    .line 225
    invoke-static {p1}, Lcom/qihoo360/replugin/RePlugin;->convertToPnFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "DebugReceivers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallByPn: Error! path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->onInstall(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;

    .line 265
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "intent1":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 271
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_0
    invoke-static {p2, p3}, Lcom/qihoo360/replugin/RePlugin;->createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "act":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->isCurrentPersistentProcess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->this$0:Lcom/qihoo360/replugin/debugger/DebuggerReceivers;

    invoke-static {v1}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers;->access$000(Lcom/qihoo360/replugin/debugger/DebuggerReceivers;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->doActionInstall(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->this$0:Lcom/qihoo360/replugin/debugger/DebuggerReceivers;

    invoke-static {v1}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers;->access$100(Lcom/qihoo360/replugin/debugger/DebuggerReceivers;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->doActionUninstall(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->this$0:Lcom/qihoo360/replugin/debugger/DebuggerReceivers;

    invoke-static {v1}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers;->access$200(Lcom/qihoo360/replugin/debugger/DebuggerReceivers;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->doActionInstallWithPN(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->this$0:Lcom/qihoo360/replugin/debugger/DebuggerReceivers;

    invoke-static {v1}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers;->access$300(Lcom/qihoo360/replugin/debugger/DebuggerReceivers;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers$DebugerReceiver;->doActionStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 218
    :cond_5
    :goto_0
    return-void
.end method
