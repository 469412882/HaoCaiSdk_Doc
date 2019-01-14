.class public final Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;
.super La/b/c/d/e/B$Stub;
.source "BxStartActivityImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/sdk/ui/BxStartActivityImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBxStartActivityImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BxStartActivityImpl.kt\nco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,304:1\n57#2:305\n57#2:306\n57#2:307\n*E\n*S KotlinDebug\n*F\n+ 1 BxStartActivityImpl.kt\nco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1\n*L\n154#1:305\n155#1:306\n156#1:307\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0016J \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "co/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1",
        "La/b/c/d/e/B$Stub;",
        "(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V",
        "e",
        "",
        "",
        "finishActivity",
        "refreshView",
        "showText",
        "message",
        "toMain",
        "toWeb",
        "title",
        "url",
        "flag",
        "",
        "toYourActivity",
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
.field final synthetic this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;


# direct methods
.method constructor <init>(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V
    .locals 0
    .param p1, "$outer"    # Lco/bxvip/sdk/ui/BxStartActivityImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {p0}, La/b/c/d/e/B$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public finishActivity()V
    .locals 1

    .line 137
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->finish()V

    .line 138
    return-void
.end method

.method public refreshView()V
    .locals 1

    .line 133
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$iconVisRefresh(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V

    .line 134
    return-void
.end method

.method public showText(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 141
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    sget v1, Lco/bxvip/sdk/R$id;->mTvState:I

    invoke-virtual {v0, v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mTvState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public toMain()V
    .locals 4

    const/4 v0, 0x0

    .line 154
    .local v0, "$i$f$getCtx":I
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    .line 305
    .local v1, "$receiver$iv":Landroid/content/Context;
    nop

    .line 155
    iget-object v2, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    .line 306
    .local v2, "$receiver$iv":Landroid/content/Context;
    nop

    .line 155
    invoke-static {v2}, Lco/bxvip/tools/ACache;->get(Landroid/content/Context;)Lco/bxvip/tools/ACache;

    move-result-object v2

    .line 155
    .end local v2    # "$receiver$iv":Landroid/content/Context;
    const-string v3, "2be7be76daf5289a2ebb7a4fb65e9355"

    invoke-virtual {v2, v3}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    .line 307
    .local v3, "$receiver$iv":Landroid/content/Context;
    nop

    .line 156
    .end local v0    # "$i$f$getCtx":I
    invoke-static {v3}, Lco/bxvip/tools/ACache;->get(Landroid/content/Context;)Lco/bxvip/tools/ACache;

    move-result-object v0

    .line 156
    .end local v3    # "$receiver$iv":Landroid/content/Context;
    const-string v3, "fb71b8395e073f73d504e0ad3ad5d929"

    invoke-virtual {v0, v3}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Lcom/qihoo360/replugin/RePlugin;->createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 154
    invoke-static {v1, v0}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 157
    .end local v1    # "$receiver$iv":Landroid/content/Context;
    .local v0, "startActivity":Z
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->finish()V

    goto :goto_0

    .line 160
    :cond_0
    const-string v1, "\u8fdb\u5165app\u5931\u8d25\uff01"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 161
    :goto_0
    nop

    .line 162
    return-void
.end method

.method public toWeb(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "flag"    # Z

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v0, p1, p2, p3}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$toMainWeb(Lco/bxvip/sdk/ui/BxStartActivityImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    return-void
.end method

.method public toYourActivity()V
    .locals 1

    .line 165
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->toYourMainActivity()V

    .line 166
    return-void
.end method
