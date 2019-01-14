.class public final Lcom/qihoo360/i/Factory2;
.super Ljava/lang/Object;
.source "Factory2.java"


# static fields
.field public static sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createActivityContext(Landroid/app/Activity;Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "newBase"    # Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->createActivityContext(Landroid/app/Activity;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final fetchPlugins(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->fetchPlugins(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static final getPluginByDynamicClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->getPluginByDynamicClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final handleActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->handleActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public static final handleActivityCreateBefore(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->handleActivityCreateBefore(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public static final handleActivityDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 79
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->handleActivityDestroy(Landroid/app/Activity;)V

    .line 80
    return-void
.end method

.method public static final handleRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 89
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->handleRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public static final handleServiceCreate(Landroid/app/Service;)V
    .locals 1
    .param p0, "service"    # Landroid/app/Service;

    .line 98
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->handleServiceCreate(Landroid/app/Service;)V

    .line 99
    return-void
.end method

.method public static final handleServiceDestroy(Landroid/app/Service;)V
    .locals 1
    .param p0, "service"    # Landroid/app/Service;

    .line 107
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->handleServiceDestroy(Landroid/app/Service;)V

    .line 108
    return-void
.end method

.method public static final isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 205
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final registerDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "defClass"    # Ljava/lang/Class;

    .line 194
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->registerDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static final registerDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->registerDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 131
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static final startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 119
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static final startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "process"    # I
    .param p5, "download"    # Z

    .line 146
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public static final startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 159
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static unregisterDynamicClass(Ljava/lang/String;)V
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 209
    sget-object v0, Lcom/qihoo360/i/Factory2;->sPLProxy:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->unregisterDynamicClass(Ljava/lang/String;)V

    .line 210
    return-void
.end method
