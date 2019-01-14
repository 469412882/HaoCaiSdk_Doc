.class final Lco/bxvip/sdk/ui/BxStartActivityImpl$sillyPermissionCall$1;
.super Ljava/lang/Object;
.source "BxStartActivityImpl.kt"

# interfaces
.implements Lco/bxvip/tools/permission/SillyPermissionCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/sdk/ui/BxStartActivityImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "call"
    }
    k = 0x3
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

    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$sillyPermissionCall$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Z)V
    .locals 3
    .param p1, "it"    # Z

    .line 66
    if-eqz p1, :cond_0

    .line 67
    nop

    .line 68
    :try_start_0
    const-string v0, "a.b.c.d.e.cache"

    invoke-static {v0}, Lcom/qihoo360/replugin/RePlugin;->preload(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    :goto_0
    nop

    .line 73
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$sillyPermissionCall$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$bindMyService(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V

    .line 75
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$sillyPermissionCall$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$initIconViewAndEvent(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V

    goto :goto_1

    .line 77
    :cond_0
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$sillyPermissionCall$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u6743\u9650\u88ab\u62d2\u7edd"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 79
    :goto_1
    nop

    .line 80
    return-void
.end method
