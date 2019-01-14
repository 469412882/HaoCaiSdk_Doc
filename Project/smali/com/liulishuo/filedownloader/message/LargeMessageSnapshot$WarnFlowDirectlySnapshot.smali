.class public Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;
.super Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;
.source "LargeMessageSnapshot.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/IFlowDirectly;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarnFlowDirectlySnapshot"
.end annotation


# direct methods
.method constructor <init>(IJJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sofarBytes"    # J
    .param p4, "totalBytes"    # J

    .line 353
    invoke-direct/range {p0 .. p5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;-><init>(IJJ)V

    .line 354
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 357
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 358
    return-void
.end method
