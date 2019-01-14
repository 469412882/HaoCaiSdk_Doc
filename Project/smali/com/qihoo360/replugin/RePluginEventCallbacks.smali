.class public Lcom/qihoo360/replugin/RePluginEventCallbacks;
.super Ljava/lang/Object;
.source "RePluginEventCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/qihoo360/replugin/RePluginEventCallbacks;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 97
    return-void
.end method

.method public onBinderReleased()V
    .locals 0

    .line 104
    return-void
.end method

.method public onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 48
    return-void
.end method

.method public onInstallPluginSucceed(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 57
    return-void
.end method

.method public onPrepareAllocPitActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public onPrepareStartPitActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pittedIntent"    # Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public onStartActivityCompleted(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "result"    # Z

    .line 68
    return-void
.end method
