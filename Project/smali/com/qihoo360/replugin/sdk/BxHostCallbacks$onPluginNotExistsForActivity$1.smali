.class public final Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;
.super Ljava/lang/Object;
.source "BxHostCallbacks.kt"

# interfaces
.implements Lcom/qihoo360/replugin/sdk/net/IResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->onPluginNotExistsForActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qihoo360/replugin/sdk/net/IResponseListener<",
        "Lcom/qihoo360/replugin/sdk/model/PR;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBxHostCallbacks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BxHostCallbacks.kt\ncom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,136:1\n585#2,9:137\n49#3,2:146\n*E\n*S KotlinDebug\n*F\n+ 1 BxHostCallbacks.kt\ncom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1\n*L\n74#1,9:137\n74#1,2:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1",
        "Lcom/qihoo360/replugin/sdk/net/IResponseListener;",
        "Lcom/qihoo360/replugin/sdk/model/PR;",
        "(Lcom/qihoo360/replugin/sdk/BxHostCallbacks;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/app/ProgressDialog;)V",
        "onError",
        "",
        "i",
        "",
        "i1",
        "var3x",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "onSuccess",
        "var1x",
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
.field final synthetic $var1:Landroid/content/Context;

.field final synthetic $var2:Ljava/lang/String;

.field final synthetic $var3:Landroid/content/Intent;

.field final synthetic $var5:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/qihoo360/replugin/sdk/BxHostCallbacks;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/sdk/BxHostCallbacks;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "$outer"    # Lcom/qihoo360/replugin/sdk/BxHostCallbacks;
    .param p2, "$captured_local_variable$1"    # Ljava/lang/String;
    .param p3, "$captured_local_variable$2"    # Landroid/content/Context;
    .param p4, "$captured_local_variable$3"    # Landroid/content/Intent;
    .param p5, "$captured_local_variable$4"    # Landroid/app/ProgressDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->this$0:Lcom/qihoo360/replugin/sdk/BxHostCallbacks;

    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var2:Ljava/lang/String;

    iput-object p3, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var1:Landroid/content/Context;

    iput-object p4, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var3:Landroid/content/Intent;

    iput-object p5, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var5:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "var3x"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "bundle"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "var3x"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var5:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->Companion:Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;->access$getTAG$p(Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request uninstall plugin error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public onSuccess(Lcom/qihoo360/replugin/sdk/model/PR;)V
    .locals 11
    .param p1, "var1x"    # Lcom/qihoo360/replugin/sdk/model/PR;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 68
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/model/PR;->getMsg()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/model/PR;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/model/PR;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "hasVal":Z
    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/model/PR;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/sdk/model/P;

    .line 71
    .local v2, "p":Lcom/qihoo360/replugin/sdk/model/P;
    invoke-virtual {v2}, Lcom/qihoo360/replugin/sdk/model/P;->getPackagename()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var2:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-virtual {v2}, Lcom/qihoo360/replugin/sdk/model/P;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "var3x":Ljava/lang/String;
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "/"

    new-instance v5, Lkotlin/text/Regex;

    invoke-direct {v5, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    .line 74
    .local v3, "$receiver$iv":Ljava/util/List;
    move v5, v4

    .line 137
    .local v5, "$i$f$dropLastWhile":I
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 138
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    const/4 v8, 0x0

    .line 139
    .local v6, "iterator$iv":Ljava/util/ListIterator;
    .local v8, "$i$a$1$dropLastWhile":I
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 140
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 74
    .local v9, "it":Ljava/lang/String;
    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    .line 74
    .end local v8    # "$i$a$1$dropLastWhile":I
    .end local v9    # "it":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_1

    .line 141
    move-object v8, v3

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v8

    goto :goto_3

    .line 139
    .restart local v8    # "$i$a$1$dropLastWhile":I
    :cond_1
    goto :goto_1

    .line 145
    .end local v6    # "iterator$iv":Ljava/util/ListIterator;
    .end local v8    # "$i$a$1$dropLastWhile":I
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 145
    .end local v3    # "$receiver$iv":Ljava/util/List;
    .end local v5    # "$i$f$dropLastWhile":I
    :goto_3
    check-cast v8, Ljava/util/Collection;

    .line 74
    move-object v3, v8

    .line 74
    .local v3, "$receiver$iv":Ljava/util/Collection;
    move v5, v4

    .line 146
    .local v5, "$i$f$toTypedArray":I
    if-nez v3, :cond_3

    new-instance v4, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v4, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v6, v3

    .line 147
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    .end local v3    # "$receiver$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 75
    .local v3, "var4":[Ljava/lang/String;
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, v7

    aget-object v4, v3, v4

    .line 76
    .local v4, "var5x":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/sdk/b/a;->a()Lcom/qihoo360/replugin/sdk/b/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qihoo360/replugin/sdk/b/a;->c()Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->getDownloadPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "var6":Ljava/lang/String;
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v6

    invoke-virtual {v2}, Lcom/qihoo360/replugin/sdk/model/P;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/liulishuo/filedownloader/FileDownloader;->getStatus(Ljava/lang/String;Ljava/lang/String;)B

    move-result v6

    .line 78
    .local v6, "var7":B
    invoke-static {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isIng(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 79
    iget-object v7, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->this$0:Lcom/qihoo360/replugin/sdk/BxHostCallbacks;

    iget-object v8, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var1:Landroid/content/Context;

    iget-object v9, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var3:Landroid/content/Intent;

    iget-object v10, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var5:Landroid/app/ProgressDialog;

    check-cast v10, Landroid/app/Dialog;

    invoke-static {v7, v8, v9, v2, v10}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->access$downloadThenStartActivity(Lcom/qihoo360/replugin/sdk/BxHostCallbacks;Landroid/content/Context;Landroid/content/Intent;Lcom/qihoo360/replugin/sdk/model/P;Landroid/app/Dialog;)V

    goto :goto_5

    .line 80
    :cond_5
    invoke-static {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isOver(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 81
    iget-object v7, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var5:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 82
    iget-object v7, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var2:Ljava/lang/String;

    invoke-static {v7}, Lcom/qihoo360/replugin/RePlugin;->getPluginInfo(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v7

    .line 83
    .local v7, "var8":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v7, :cond_6

    .line 84
    iget-object v8, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var1:Landroid/content/Context;

    iget-object v9, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var3:Landroid/content/Intent;

    invoke-static {v8, v9}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_4

    .line 86
    :cond_6
    invoke-static {v5}, Lcom/qihoo360/replugin/RePlugin;->install(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v8

    .line 87
    .local v8, "var9":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v8, :cond_7

    .line 88
    iget-object v9, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var1:Landroid/content/Context;

    iget-object v10, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var3:Landroid/content/Intent;

    invoke-static {v9, v10}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 90
    .end local v7    # "var8":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v8    # "var9":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_7
    :goto_4
    goto :goto_5

    .line 92
    :cond_8
    iget-object v7, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->this$0:Lcom/qihoo360/replugin/sdk/BxHostCallbacks;

    iget-object v8, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var1:Landroid/content/Context;

    iget-object v9, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var3:Landroid/content/Intent;

    iget-object v10, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var5:Landroid/app/ProgressDialog;

    check-cast v10, Landroid/app/Dialog;

    invoke-static {v7, v8, v9, v2, v10}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->access$downloadThenStartActivity(Lcom/qihoo360/replugin/sdk/BxHostCallbacks;Landroid/content/Context;Landroid/content/Intent;Lcom/qihoo360/replugin/sdk/model/P;Landroid/app/Dialog;)V

    .line 93
    :goto_5
    nop

    .line 94
    goto :goto_6

    .line 70
    .end local v1    # "var3x":Ljava/lang/String;
    .end local v2    # "p":Lcom/qihoo360/replugin/sdk/model/P;
    .end local v3    # "var4":[Ljava/lang/String;
    .end local v4    # "var5x":Ljava/lang/String;
    .end local v5    # "var6":Ljava/lang/String;
    .end local v6    # "var7":B
    :cond_9
    goto/16 :goto_0

    .line 97
    :cond_a
    :goto_6
    if-nez v0, :cond_c

    .line 98
    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var5:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    sget-object v1, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->Companion:Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;->access$getTAG$p(Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0    # "hasVal":Z
    goto :goto_7

    .line 102
    :cond_b
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var5:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 103
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->Companion:Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;->access$getTAG$p(Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->$var2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_c
    :goto_7
    nop

    .line 105
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/qihoo360/replugin/sdk/model/PR;

    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;->onSuccess(Lcom/qihoo360/replugin/sdk/model/PR;)V

    return-void
.end method
