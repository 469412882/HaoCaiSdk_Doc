.class public Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;
.super Ljava/lang/Object;
.source "FileDownloadNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final notificationArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->notificationArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public add(Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    .local p1, "notification":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;, "TT;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->notificationArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 69
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->notificationArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .line 113
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->remove(I)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    move-result-object v0

    .line 115
    .local v0, "notification":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
    if-nez v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->cancel()V

    .line 120
    return-void
.end method

.method public clear()V
    .locals 3

    .line 126
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->notificationArray:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 128
    .local v0, "cloneArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->notificationArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 130
    const/4 v1, 0x0

    .line 130
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 131
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    .line 132
    .local v2, "n":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->cancel()V

    .line 130
    .end local v2    # "n":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 45
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->get(I)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(I)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->notificationArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    return-object v0
.end method

.method public remove(I)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->get(I)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    move-result-object v0

    .line 56
    .local v0, "n":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;, "TT;"
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->notificationArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 58
    return-object v0

    .line 61
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public showIndeterminate(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "status"    # I

    .line 97
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->get(I)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    move-result-object v0

    .line 99
    .local v0, "notification":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
    if-nez v0, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    invoke-virtual {v0, p2}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->updateStatus(I)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->show(Z)V

    .line 105
    return-void
.end method

.method public showProgress(III)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "sofar"    # I
    .param p3, "total"    # I

    .line 80
    .local p0, "this":Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;, "Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper<TT;>;"
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->get(I)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    move-result-object v0

    .line 82
    .local v0, "notification":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;, "TT;"
    if-nez v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->updateStatus(I)V

    .line 87
    invoke-virtual {v0, p2, p3}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->update(II)V

    .line 88
    return-void
.end method
