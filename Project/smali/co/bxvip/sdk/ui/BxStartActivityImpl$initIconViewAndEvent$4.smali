.class final Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBxStartActivityImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BxStartActivityImpl.kt\nco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,304:1\n57#2:305\n*E\n*S KotlinDebug\n*F\n+ 1 BxStartActivityImpl.kt\nco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4\n*L\n275#1:305\n*E\n"
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

    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "it"    # Landroid/view/View;

    const/4 v0, 0x0

    .line 275
    .local v0, "$i$f$getCtx":I
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    .line 305
    .local v1, "$receiver$iv":Landroid/content/Context;
    nop

    .line 277
    .end local v0    # "$i$f$getCtx":I
    sget-object v0, Lco/bxvip/android/commonlib/db/ext/DBU;->Companion:Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->daoKeyValue()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const-string v3, "99aa4cba632625cb"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->getValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 279
    :cond_0
    move-object v2, v0

    :goto_0
    sget-object v3, Lco/bxvip/android/commonlib/db/ext/DBU;->Companion:Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->daoKeyValue()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "61d375ab8b33c74c"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->getValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    .line 277
    :cond_1
    invoke-static {v2, v0}, Lcom/qihoo360/replugin/RePlugin;->createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 275
    invoke-static {v1, v0}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 280
    .end local v1    # "$receiver$iv":Landroid/content/Context;
    .local v0, "startActivity":Z
    if-eqz v0, :cond_2

    .line 281
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->finish()V

    goto :goto_1

    .line 283
    :cond_2
    const-string v1, "\u8fdb\u5165\u6d4b\u901f\u754c\u9762\u5931\u8d25\uff01"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 284
    .end local v0    # "startActivity":Z
    :goto_1
    nop

    .line 285
    return-void
.end method
