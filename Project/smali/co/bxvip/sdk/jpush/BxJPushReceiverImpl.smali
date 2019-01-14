.class public abstract Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;
.super Landroid/content/BroadcastReceiver;
.source "BxJPushReceiverImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "isGoToReleaseMain",
        "",
        "notify",
        "",
        "context",
        "Landroid/content/Context;",
        "bundle",
        "Landroid/os/Bundle;",
        "onReceive",
        "intent",
        "Landroid/content/Intent;",
        "toGoYouMain",
        "Companion",
        "host-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "JPushReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;->Companion:Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;

    .line 97
    const-string v0, "JPushReceiver"

    sput-object v0, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    sget-object v0, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final notify(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 86
    invoke-virtual {p0}, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;->isGoToReleaseMain()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2}, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;->toGoYouMain(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract isGoToReleaseMain()Z
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "cn.jpush.android.intent.REGISTRATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 45
    if-eqz v0, :cond_0

    const-string v1, "cn.jpush.android.REGISTRATION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    :cond_0
    move-object v1, v2

    .line 46
    .local v1, "regId":Ljava/lang/String;
    nop

    .line 47
    .end local v1    # "regId":Ljava/lang/String;
    goto/16 :goto_0

    .line 48
    :cond_1
    const-string v1, "cn.jpush.android.intent.MESSAGE_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    nop

    .line 52
    new-instance v1, Lcn/jpush/android/data/JPushLocalNotification;

    invoke-direct {v1}, Lcn/jpush/android/data/JPushLocalNotification;-><init>()V

    .line 53
    .local v1, "notify":Lcn/jpush/android/data/JPushLocalNotification;
    if-eqz v0, :cond_2

    const-string v2, "cn.jpush.android.MESSAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    :cond_2
    invoke-virtual {v1, v2}, Lcn/jpush/android/data/JPushLocalNotification;->setContent(Ljava/lang/String;)V

    .line 54
    const-string v2, "cn.jpush.android.EXTRA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/jpush/android/data/JPushLocalNotification;->setExtras(Ljava/lang/String;)V

    .line 55
    invoke-static {p1, v1}, Lcn/jpush/android/api/JPushInterface;->addLocalNotification(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)V

    .line 55
    .end local v1    # "notify":Lcn/jpush/android/data/JPushLocalNotification;
    goto :goto_0

    .line 56
    :cond_3
    const-string v1, "cn.jpush.android.intent.NOTIFICATION_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    if-eqz v0, :cond_4

    const-string v1, "cn.jpush.android.NOTIFICATION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    :cond_4
    move-object v1, v2

    .line 58
    .local v1, "notifactionId":Ljava/lang/Integer;
    nop

    .line 59
    .end local v1    # "notifactionId":Ljava/lang/Integer;
    goto :goto_0

    .line 60
    :cond_5
    const-string v1, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    nop

    .line 63
    invoke-direct {p0, p1, v0}, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;->notify(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 64
    :cond_6
    const-string v1, "cn.jpush.android.intent.ACTION_RICHPUSH_CALLBACK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    nop

    .line 66
    goto :goto_0

    .line 68
    :cond_7
    const-string v1, "cn.jpush.android.intent.CONNECTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 69
    const-string v1, "cn.jpush.android.CONNECTION_CHANGE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 70
    .local v1, "connected":Z
    nop

    .line 71
    .end local v1    # "connected":Z
    goto :goto_0

    .line 73
    :cond_8
    nop

    .line 75
    :goto_0
    nop

    .line 76
    return-void
.end method

.method public abstract toGoYouMain(Landroid/content/Context;Landroid/os/Bundle;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
