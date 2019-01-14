.class public Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maker;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Maker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customMake()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;
    .locals 1

    .line 236
    new-instance v0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;-><init>()V

    return-object v0
.end method
