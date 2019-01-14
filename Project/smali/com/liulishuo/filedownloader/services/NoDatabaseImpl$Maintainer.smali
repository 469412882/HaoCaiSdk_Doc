.class Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maintainer;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Maintainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;

    .line 187
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeFileDownloadModelId(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0
    .param p1, "oldId"    # I
    .param p2, "modelWithNewId"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 208
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$MaintainerIterator;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$MaintainerIterator;-><init>(Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;)V

    return-object v0
.end method

.method public onFinishMaintain()V
    .locals 0

    .line 196
    return-void
.end method

.method public onRefreshedValidData(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 204
    return-void
.end method

.method public onRemovedInvalidData(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 200
    return-void
.end method
