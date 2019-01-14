.class Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$MaintainerIterator;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaintainerIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;

    .line 214
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$MaintainerIterator;->this$0:Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$MaintainerIterator;->next()Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .line 229
    return-void
.end method
