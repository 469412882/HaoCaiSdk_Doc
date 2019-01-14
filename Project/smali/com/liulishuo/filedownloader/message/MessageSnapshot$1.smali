.class final Lcom/liulishuo/filedownloader/message/MessageSnapshot$1;
.super Ljava/lang/Object;
.source "MessageSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 123
    .local v0, "largeFile":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 125
    .local v1, "status":B
    packed-switch v1, :pswitch_data_0

    .line 179
    :pswitch_0
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 134
    :pswitch_1
    new-instance v2, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 135
    .local v2, "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto/16 :goto_2

    .line 151
    .end local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_2
    if-eqz v0, :cond_1

    .line 152
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 154
    :cond_1
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 156
    .restart local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_2

    .line 144
    .end local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_3
    if-eqz v0, :cond_2

    .line 145
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 147
    :cond_2
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 149
    .restart local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_2

    .line 137
    .end local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_4
    if-eqz v0, :cond_3

    .line 138
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 140
    :cond_3
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 142
    .restart local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_2

    .line 127
    .end local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_5
    if-eqz v0, :cond_4

    .line 128
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 130
    :cond_4
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 132
    .restart local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_2

    .line 158
    .end local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_6
    if-eqz v0, :cond_5

    .line 159
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 161
    :cond_5
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 163
    .restart local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_2

    .line 165
    .end local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_7
    if-eqz v0, :cond_6

    .line 166
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 168
    :cond_6
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 170
    .restart local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_2

    .line 172
    .end local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_8
    if-eqz v0, :cond_7

    .line 173
    new-instance v2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 173
    .restart local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :goto_1
    goto :goto_2

    .line 175
    .end local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :cond_7
    new-instance v2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;

    invoke-direct {v2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 177
    .restart local v2    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    nop

    .line 179
    :goto_2
    nop

    .line 182
    if-eqz v2, :cond_8

    .line 183
    iput-boolean v0, v2, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->isLargeFile:Z

    .line 189
    return-object v2

    .line 185
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t restore the snapshot because unknown status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$1;->createFromParcel(Landroid/os/Parcel;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 1
    .param p1, "size"    # I

    .line 194
    new-array v0, p1, [Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$1;->newArray(I)[Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p1

    return-object p1
.end method
