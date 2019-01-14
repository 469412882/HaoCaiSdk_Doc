.class public Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;
.super Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;
.source "SmallMessageSnapshot.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/IFlowDirectly;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarnFlowDirectlySnapshot"
.end annotation


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sofarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 341
    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;-><init>(III)V

    .line 342
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 345
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 346
    return-void
.end method
