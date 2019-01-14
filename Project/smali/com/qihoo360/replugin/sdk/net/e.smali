.class public interface abstract Lcom/qihoo360/replugin/sdk/net/e;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/qihoo360/replugin/sdk/net/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qihoo360/replugin/sdk/net/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Lcom/qihoo360/replugin/sdk/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qihoo360/replugin/sdk/net/e<",
            "TT;>;"
        }
    .end annotation
.end method
