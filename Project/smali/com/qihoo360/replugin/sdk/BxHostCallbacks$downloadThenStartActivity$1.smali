.class public final Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;
.super Ljava/lang/Object;
.source "BxHostCallbacks.kt"

# interfaces
.implements Lcom/qihoo360/replugin/sdk/b/Dback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->downloadThenStartActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/qihoo360/replugin/sdk/model/P;Landroid/app/Dialog;)V
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
        "com/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1",
        "Lcom/qihoo360/replugin/sdk/b/Dback;",
        "(Landroid/app/Dialog;Landroid/content/Context;Landroid/content/Intent;)V",
        "a",
        "",
        "b",
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
.field final synthetic $var1:Landroid/content/Context;

.field final synthetic $var2:Landroid/content/Intent;

.field final synthetic $var4:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Landroid/app/Dialog;
    .param p2, "$captured_local_variable$1"    # Landroid/content/Context;
    .param p3, "$captured_local_variable$2"    # Landroid/content/Intent;

    .line 120
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;->$var4:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;->$var1:Landroid/content/Context;

    iput-object p3, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;->$var2:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;->$var4:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 123
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;->$var1:Landroid/content/Context;

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;->$var2:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 124
    return-void
.end method

.method public b()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;->$var4:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 128
    return-void
.end method
