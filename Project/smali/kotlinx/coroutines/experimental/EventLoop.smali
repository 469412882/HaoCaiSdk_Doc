.class public interface abstract Lkotlinx/coroutines/experimental/EventLoop;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/EventLoop$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004J\u0008\u0010\u0002\u001a\u00020\u0003H&\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/EventLoop;",
        "",
        "processNextEvent",
        "",
        "Factory",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final Factory:Lkotlinx/coroutines/experimental/EventLoop$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/experimental/EventLoop$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/EventLoop$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/EventLoop;->Factory:Lkotlinx/coroutines/experimental/EventLoop$Factory;

    return-void
.end method


# virtual methods
.method public abstract processNextEvent()J
.end method
