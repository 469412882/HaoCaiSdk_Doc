.class public final Lcom/qihoo360/replugin/sdk/net/i;
.super Ljava/lang/Object;
.source "i.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/sdk/net/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "var0"    # Ljava/lang/Runnable;

    .line 8
    if-eqz p0, :cond_0

    .line 9
    sget-object v0, Lcom/qihoo360/replugin/sdk/net/i$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_0
    return-void
.end method
