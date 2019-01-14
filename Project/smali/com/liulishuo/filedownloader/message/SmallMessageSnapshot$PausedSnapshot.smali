.class public Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;
.super Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;
.source "SmallMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PausedSnapshot"
.end annotation


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sofarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;-><init>(III)V

    .line 375
    return-void
.end method


# virtual methods
.method public getStatus()B
    .locals 1

    .line 379
    const/4 v0, -0x2

    return v0
.end method
