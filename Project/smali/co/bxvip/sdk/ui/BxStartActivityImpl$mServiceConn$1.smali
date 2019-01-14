.class public final Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceConn$1;
.super Ljava/lang/Object;
.source "BxStartActivityImpl.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/sdk/ui/BxStartActivityImpl;-><init>()V
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "co/bxvip/sdk/ui/BxStartActivityImpl$mServiceConn$1",
        "Landroid/content/ServiceConnection;",
        "(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "host-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;


# direct methods
.method constructor <init>(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V
    .locals 0
    .param p1, "$outer"    # Lco/bxvip/sdk/ui/BxStartActivityImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceConn$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "service"    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceConn$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {p2}, La/b/c/d/e/A$Stub;->asInterface(Landroid/os/IBinder;)La/b/c/d/e/A;

    move-result-object v1

    invoke-static {v0, v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$setMRemoteService$p(Lco/bxvip/sdk/ui/BxStartActivityImpl;La/b/c/d/e/A;)V

    .line 117
    nop

    .line 118
    :try_start_0
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceConn$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$getMRemoteService$p(Lco/bxvip/sdk/ui/BxStartActivityImpl;)La/b/c/d/e/A;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceConn$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$getMServiceCallbackBinder$p(Lco/bxvip/sdk/ui/BxStartActivityImpl;)Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;

    move-result-object v1

    check-cast v1, La/b/c/d/e/B;

    invoke-interface {v0, v1}, La/b/c/d/e/A;->a(La/b/c/d/e/B;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 122
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceConn$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    const/4 v1, 0x0

    check-cast v1, La/b/c/d/e/A;

    invoke-static {v0, v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$setMRemoteService$p(Lco/bxvip/sdk/ui/BxStartActivityImpl;La/b/c/d/e/A;)V

    .line 126
    return-void
.end method
