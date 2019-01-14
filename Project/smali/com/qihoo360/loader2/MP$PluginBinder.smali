.class public final Lcom/qihoo360/loader2/MP$PluginBinder;
.super Ljava/lang/Object;
.source "MP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/MP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginBinder"
.end annotation


# instance fields
.field public final binder:Landroid/os/IBinder;

.field public final name:Ljava/lang/String;

.field public final pid:I

.field public final plugin:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/qihoo360/loader2/MP$PluginBinder;->plugin:Ljava/lang/String;

    .line 450
    iput-object p2, p0, Lcom/qihoo360/loader2/MP$PluginBinder;->name:Ljava/lang/String;

    .line 451
    iput-object p4, p0, Lcom/qihoo360/loader2/MP$PluginBinder;->binder:Landroid/os/IBinder;

    .line 452
    iput p3, p0, Lcom/qihoo360/loader2/MP$PluginBinder;->pid:I

    .line 453
    return-void
.end method
