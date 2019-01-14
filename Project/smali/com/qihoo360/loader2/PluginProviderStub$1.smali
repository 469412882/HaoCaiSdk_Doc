.class final Lcom/qihoo360/loader2/PluginProviderStub$1;
.super Ljava/lang/Object;
.source "PluginProviderStub.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/loader2/PluginProviderStub;->getPref(Landroid/content/Context;)Lcom/qihoo360/loader2/sp/IPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 226
    const/4 v0, 0x0

    sput-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->sPref:Lcom/qihoo360/loader2/sp/IPref;

    .line 227
    return-void
.end method
