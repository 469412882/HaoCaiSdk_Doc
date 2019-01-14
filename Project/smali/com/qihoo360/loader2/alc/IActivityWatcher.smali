.class public interface abstract Lcom/qihoo360/loader2/alc/IActivityWatcher;
.super Ljava/lang/Object;
.source "IActivityWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/alc/IActivityWatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract activityResuming(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract closingSystemDialogs(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
