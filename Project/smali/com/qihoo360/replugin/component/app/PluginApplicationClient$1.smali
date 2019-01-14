.class final Lcom/qihoo360/replugin/component/app/PluginApplicationClient$1;
.super Ljava/lang/Object;
.source "PluginApplicationClient.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->getOrCreate(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/qihoo360/replugin/component/ComponentList;Lcom/qihoo360/replugin/model/PluginInfo;)Lcom/qihoo360/replugin/component/app/PluginApplicationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pacNew:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/app/PluginApplicationClient;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient$1;->val$pacNew:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 115
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient$1;->val$pacNew:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->callOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient$1;->val$pacNew:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->callOnLowMemory()V

    .line 121
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 110
    iget-object v0, p0, Lcom/qihoo360/replugin/component/app/PluginApplicationClient$1;->val$pacNew:Lcom/qihoo360/replugin/component/app/PluginApplicationClient;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->callOnTrimMemory(I)V

    .line 111
    return-void
.end method
