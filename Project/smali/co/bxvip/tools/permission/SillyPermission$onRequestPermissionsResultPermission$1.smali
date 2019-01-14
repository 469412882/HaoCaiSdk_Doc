.class public final Lco/bxvip/tools/permission/SillyPermission$onRequestPermissionsResultPermission$1;
.super Ljava/lang/Object;
.source "SillyPermission.kt"

# interfaces
.implements Lco/bxvip/tools/permission/SillyPermissionClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/tools/permission/SillyPermission;->onRequestPermissionsResultPermission(Landroid/app/Activity;I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "co/bxvip/tools/permission/SillyPermission$onRequestPermissionsResultPermission$1",
        "Lco/bxvip/tools/permission/SillyPermissionClick;",
        "(Landroid/app/Activity;)V",
        "onClickNO",
        "",
        "onClickYES",
        "android-support"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Landroid/app/Activity;

    .line 208
    iput-object p1, p0, Lco/bxvip/tools/permission/SillyPermission$onRequestPermissionsResultPermission$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickNO()V
    .locals 2

    .line 216
    sget-object v0, Lco/bxvip/tools/permission/SillyPermission;->INSTANCE:Lco/bxvip/tools/permission/SillyPermission;

    invoke-virtual {v0}, Lco/bxvip/tools/permission/SillyPermission;->getMSillyPermissionCall()Lco/bxvip/tools/permission/SillyPermissionCall;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lco/bxvip/tools/permission/SillyPermissionCall;->call(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public onClickYES()V
    .locals 3

    .line 211
    sget-object v0, Lco/bxvip/tools/permission/SillyPermission;->INSTANCE:Lco/bxvip/tools/permission/SillyPermission;

    iget-object v1, p0, Lco/bxvip/tools/permission/SillyPermission$onRequestPermissionsResultPermission$1;->$activity:Landroid/app/Activity;

    const/16 v2, 0x33e

    invoke-virtual {v0, v1, v2}, Lco/bxvip/tools/permission/SillyPermission;->startAppSettings(Landroid/app/Activity;I)V

    .line 212
    return-void
.end method
