.class public Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;
.super Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;
.source "SmallMessageSnapshot.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/IFlowDirectly;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletedFlowDirectlySnapshot"
.end annotation


# direct methods
.method constructor <init>(IZI)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "reusedDownloadedFile"    # Z
    .param p3, "totalBytes"    # I

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(IZI)V

    .line 202
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 205
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 206
    return-void
.end method
