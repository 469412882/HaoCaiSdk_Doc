.class public Lco/bxvip/skin/callback/ISkinChangingCallback$DefaultSkinChangingCallback;
.super Ljava/lang/Object;
.source "ISkinChangingCallback.java"

# interfaces
.implements Lco/bxvip/skin/callback/ISkinChangingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/skin/callback/ISkinChangingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultSkinChangingCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 29
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .line 24
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 19
    return-void
.end method
