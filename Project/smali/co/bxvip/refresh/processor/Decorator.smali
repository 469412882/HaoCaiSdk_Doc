.class public abstract Lco/bxvip/refresh/processor/Decorator;
.super Ljava/lang/Object;
.source "Decorator.java"

# interfaces
.implements Lco/bxvip/refresh/processor/IDecorator;


# instance fields
.field protected cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

.field protected decorator:Lco/bxvip/refresh/processor/IDecorator;


# direct methods
.method public constructor <init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;Lco/bxvip/refresh/processor/IDecorator;)V
    .locals 0
    .param p1, "processor"    # Lco/bxvip/refresh/BxRefreshLayout$CoContext;
    .param p2, "decorator1"    # Lco/bxvip/refresh/processor/IDecorator;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lco/bxvip/refresh/processor/Decorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    .line 16
    iput-object p2, p0, Lco/bxvip/refresh/processor/Decorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    .line 17
    return-void
.end method
