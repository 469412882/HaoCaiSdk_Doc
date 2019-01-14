.class public Lcom/qihoo360/loader2/BinderCursor;
.super Landroid/database/MatrixCursor;
.source "BinderCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;
    }
.end annotation


# static fields
.field static final BINDER_KEY:Ljava/lang/String; = "binder"


# instance fields
.field mBinderExtra:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 81
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/BinderCursor;->mBinderExtra:Landroid/os/Bundle;

    .line 83
    if-eqz p2, :cond_0

    .line 84
    new-instance v0, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;

    invoke-direct {v0, p2}, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;-><init>(Landroid/os/IBinder;)V

    .line 85
    .local v0, "value":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/qihoo360/loader2/BinderCursor;->mBinderExtra:Landroid/os/Bundle;

    const-string v2, "binder"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    .end local v0    # "value":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method public static final getBinder(Landroid/database/Cursor;)Landroid/os/IBinder;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 102
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "extras":Landroid/os/Bundle;
    const-class v1, Lcom/qihoo360/loader2/BinderCursor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 104
    const-string v1, "binder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;

    .line 105
    .local v1, "w":Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 106
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v2, v1, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;->mBinder:Landroid/os/IBinder;

    return-object v2
.end method

.method public static final queryBinder(Landroid/os/IBinder;)Landroid/database/Cursor;
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 95
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    new-instance v0, Lcom/qihoo360/loader2/BinderCursor;

    sget-object v1, Lcom/qihoo360/replugin/model/PluginInfo;->QUERY_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/qihoo360/loader2/BinderCursor;-><init>([Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/qihoo360/loader2/BinderCursor;->mBinderExtra:Landroid/os/Bundle;

    return-object v0
.end method
