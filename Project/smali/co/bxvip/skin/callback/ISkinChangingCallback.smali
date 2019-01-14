.class public interface abstract Lco/bxvip/skin/callback/ISkinChangingCallback;
.super Ljava/lang/Object;
.source "ISkinChangingCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/skin/callback/ISkinChangingCallback$DefaultSkinChangingCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_SKIN_CHANGING_CALLBACK:Lco/bxvip/skin/callback/ISkinChangingCallback$DefaultSkinChangingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lco/bxvip/skin/callback/ISkinChangingCallback$DefaultSkinChangingCallback;

    invoke-direct {v0}, Lco/bxvip/skin/callback/ISkinChangingCallback$DefaultSkinChangingCallback;-><init>()V

    sput-object v0, Lco/bxvip/skin/callback/ISkinChangingCallback;->DEFAULT_SKIN_CHANGING_CALLBACK:Lco/bxvip/skin/callback/ISkinChangingCallback$DefaultSkinChangingCallback;

    return-void
.end method


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onStart()V
.end method
