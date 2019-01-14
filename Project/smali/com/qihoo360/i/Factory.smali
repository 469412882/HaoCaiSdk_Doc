.class public final Lcom/qihoo360/i/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# static fields
.field public static final PLUGIN_ENTRY_CLASS_NAME:Ljava/lang/String; = "Entry"

.field public static final PLUGIN_ENTRY_EXPORT_METHOD2_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final PLUGIN_ENTRY_EXPORT_METHOD_NAME:Ljava/lang/String; = "create"

.field public static final PLUGIN_ENTRY_EXPORT_METHOD_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final PLUGIN_ENTRY_PACKAGE_PREFIX:Ljava/lang/String; = "com.qihoo360.plugin"

.field public static final REPLUGIN_LIBRARY_ENTRY_PACKAGE_PREFIX:Ljava/lang/String; = "com.qihoo360.replugin"

.field public static sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 115
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/qihoo360/i/IPluginManager;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/qihoo360/i/Factory;->PLUGIN_ENTRY_EXPORT_METHOD_PARAMS:[Ljava/lang/Class;

    .line 126
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/ClassLoader;

    aput-object v2, v1, v4

    const-class v2, Landroid/os/IBinder;

    aput-object v2, v1, v0

    sput-object v1, Lcom/qihoo360/i/Factory;->PLUGIN_ENTRY_EXPORT_METHOD2_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fetchPluginName(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .line 390
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->fetchPluginName(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 278
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qihoo360/loader2/PluginCommImpl;->getActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final isPluginLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->isPluginLoaded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final loadPluginActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "process"    # I

    .line 342
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginCommImpl;->loadPluginActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static final loadPluginProvider(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "process"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qihoo360/loader2/PluginCommImpl;->loadPluginProvider(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final loadPluginService(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 1
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "process"    # I

    .line 353
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qihoo360/loader2/PluginCommImpl;->loadPluginService(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static final makePluginProviderUri(Ljava/lang/String;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "process"    # I

    .line 376
    sget-boolean v0, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 379
    :cond_0
    return-object p1
.end method

.method public static final query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "binder"    # Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginCommImpl;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "binder"    # Ljava/lang/String;
    .param p2, "process"    # I

    .line 173
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qihoo360/loader2/PluginCommImpl;->query(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Ljava/lang/String;Ljava/lang/Class;)Lcom/qihoo360/i/IModule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qihoo360/i/IModule;",
            ">;)",
            "Lcom/qihoo360/i/IModule;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qihoo360/i/IModule;>;"
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginCommImpl;->query(Ljava/lang/String;Ljava/lang/Class;)Lcom/qihoo360/i/IModule;

    move-result-object v0

    return-object v0
.end method

.method public static final queryActivityInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v0

    .line 248
    .local v0, "componentList":Lcom/qihoo360/replugin/component/ComponentList;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/ComponentList;->getActivity(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1

    .line 251
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final queryPluginClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 236
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static final queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v0

    return-object v0
.end method

.method public static final queryPluginContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final queryPluginPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 204
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final queryPluginPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 216
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final queryPluginResouces(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginResouces(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static queryPluginsReceiverList(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginsReceiverList(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final queryServiceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v0

    .line 264
    .local v0, "componentList":Lcom/qihoo360/replugin/component/ComponentList;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/ComponentList;->getService(Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    return-object v1

    .line 267
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "process"    # I

    .line 309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-static {p2, p3}, Lcom/qihoo360/replugin/RePlugin;->createComponentName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 312
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/qihoo360/i/Factory;->startActivityWithNoInjectCN(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 403
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginCommImpl;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static final startActivityWithNoInjectCN(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "process"    # I

    .line 327
    sget-object v0, Lcom/qihoo360/i/Factory;->sPluginManager:Lcom/qihoo360/loader2/PluginCommImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qihoo360/loader2/PluginCommImpl;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 329
    .local v0, "result":Z
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onStartActivityCompleted(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    return v0
.end method
