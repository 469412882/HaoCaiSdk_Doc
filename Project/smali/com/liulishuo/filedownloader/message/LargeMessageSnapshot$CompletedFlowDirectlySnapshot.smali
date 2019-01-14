.class public Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;
.super Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;
.source "LargeMessageSnapshot.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/IFlowDirectly;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletedFlowDirectlySnapshot"
.end annotation


# direct methods
.method constructor <init>(IZJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "reusedDownloadedFile"    # Z
    .param p3, "totalBytes"    # J

    .line 213
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    .line 214
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 217
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 218
    return-void
.end method
