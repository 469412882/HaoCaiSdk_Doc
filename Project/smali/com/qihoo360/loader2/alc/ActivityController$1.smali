.class final Lcom/qihoo360/loader2/alc/ActivityController$1;
.super Lcom/qihoo360/loader2/alc/IActivityWatcher$Stub;
.source "ActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/loader2/alc/ActivityController;->install2x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/qihoo360/loader2/alc/IActivityWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityResuming(I)V
    .locals 5
    .param p1, "activityId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, -0x1

    .line 111
    .local v0, "activityCount":I
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$000()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 114
    :cond_0
    const/4 v1, -0x1

    .line 115
    .local v1, "serviceCount":I
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$100()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    .line 118
    :cond_1
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 119
    const-string v2, "ws000"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activityResuming: activities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " services="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$200()Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 122
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$200()Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;

    move-result-object v2

    invoke-interface {v2}, Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;->handleActivityUpdate()V

    .line 124
    :cond_3
    return-void
.end method

.method public closingSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method
