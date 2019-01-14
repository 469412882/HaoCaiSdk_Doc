.class final Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$3;
.super Ljava/lang/Object;
.source "BxStartActivityImpl.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/sdk/ui/BxStartActivityImpl;->initIconViewAndEvent()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
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

    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$3;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "it"    # Landroid/view/View;

    .line 267
    nop

    .line 268
    :try_start_0
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$3;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    const-string v1, "\u5ba2\u670d"

    sget-object v2, Lco/bxvip/android/commonlib/db/ext/DBU;->Companion:Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->daoKeyValue()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "check-sysInfo-service_url"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->getValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$toMainWeb(Lco/bxvip/sdk/ui/BxStartActivityImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 269
    :catch_0
    move-exception v0

    .line 271
    :goto_1
    nop

    .line 272
    return-void
.end method
