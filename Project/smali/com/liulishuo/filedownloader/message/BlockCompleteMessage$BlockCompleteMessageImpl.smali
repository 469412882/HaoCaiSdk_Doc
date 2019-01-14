.class public Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "BlockCompleteMessage.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockCompleteMessageImpl"
.end annotation


# instance fields
.field private final mCompletedSnapshot:Lcom/liulishuo/filedownloader/message/MessageSnapshot;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 5
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 39
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    .line 40
    const-string v0, "can\'t create the block complete message for id[%d], status[%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 41
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 40
    const/4 v3, 0x1

    goto :goto_0

    .line 44
    :cond_0
    nop

    .line 40
    :goto_0
    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 45
    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;->mCompletedSnapshot:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 46
    return-void
.end method


# virtual methods
.method public getStatus()B
    .locals 1

    .line 55
    const/4 v0, 0x4

    return v0
.end method

.method public transmitToCompleted()Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;->mCompletedSnapshot:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    return-object v0
.end method
