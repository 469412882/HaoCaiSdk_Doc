.class public final Lcom/qihoo360/replugin/sdk/log/GrayLogService;
.super Landroid/app/Service;
.source "GrayLogService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGrayLogService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GrayLogService.kt\ncom/qihoo360/replugin/sdk/log/GrayLogService\n*L\n1#1,94:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\"\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/log/GrayLogService;",
        "Landroid/app/Service;",
        "()V",
        "a",
        "",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "j",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "flags",
        "startId",
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
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    const-string v0, "XXXLog"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->j:Ljava/lang/String;

    .line 34
    const-string v0, "plugin.log.error"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->a:Ljava/lang/String;

    .line 35
    const-string v0, "plugin.log.warning"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->b:Ljava/lang/String;

    .line 36
    const-string v0, "plugin.log.info"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->c:Ljava/lang/String;

    .line 37
    const-string v0, "plugin.log.debug"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->d:Ljava/lang/String;

    .line 38
    const-string v0, "plugin.log.other"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->e:Ljava/lang/String;

    .line 39
    const-string v0, "title"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->f:Ljava/lang/String;

    .line 40
    const-string v0, "message"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->g:Ljava/lang/String;

    .line 41
    const-string v0, "controller"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->h:Ljava/lang/String;

    .line 42
    const-string v0, "extra"

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->j:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 54
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->j:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    nop

    .line 56
    const/4 v0, 0x1

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "action":Ljava/lang/String;
    const/4 v2, -0x1

    .line 58
    .local v2, "level":I
    const-string v3, "action"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_9

    .line 59
    nop

    .line 60
    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    const/4 v2, 0x1

    goto :goto_2

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    const/4 v2, 0x2

    goto :goto_2

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    const/4 v2, 0x3

    goto :goto_2

    .line 69
    :cond_4
    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    const/4 v2, 0x4

    goto :goto_2

    .line 72
    :cond_5
    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 73
    const/4 v2, 0x0

    .line 75
    :cond_6
    :goto_2
    nop

    .line 76
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 77
    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->f:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "var0":Ljava/lang/String;
    iget-object v5, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->g:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "var1":Ljava/lang/String;
    iget-object v6, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->h:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "var2":Ljava/lang/String;
    iget-object v7, p0, Lcom/qihoo360/replugin/sdk/log/GrayLogService;->i:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "var3":Ljava/lang/String;
    const-string v8, "var0"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_9

    const-string v8, "var1"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v4, 0x1

    nop

    :cond_8
    if-eqz v4, :cond_9

    .line 83
    invoke-static {v2, v3, v5, v6, v7}, Lcom/qihoo360/replugin/sdk/l/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "level":I
    .end local v3    # "var0":Ljava/lang/String;
    .end local v5    # "var1":Ljava/lang/String;
    .end local v6    # "var2":Ljava/lang/String;
    .end local v7    # "var3":Ljava/lang/String;
    goto :goto_5

    .line 88
    :goto_4
    nop

    .line 90
    :cond_9
    :goto_5
    nop

    .line 91
    return v0
.end method
