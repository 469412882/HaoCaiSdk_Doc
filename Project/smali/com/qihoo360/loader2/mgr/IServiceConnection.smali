.class public interface abstract Lcom/qihoo360/loader2/mgr/IServiceConnection;
.super Ljava/lang/Object;
.source "IServiceConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/mgr/IServiceConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
