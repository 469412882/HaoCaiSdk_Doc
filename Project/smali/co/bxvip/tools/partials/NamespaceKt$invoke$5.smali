.class final Lco/bxvip/tools/partials/NamespaceKt$invoke$5;
.super Lkotlin/jvm/internal/Lambda;
.source "namespace.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/tools/partials/NamespaceKt;->invoke(Lkotlin/jvm/functions/Function3;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Ljava/lang/Object;)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TP1;TP2;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\t\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0003\u0010\u00012\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u0006\u001a\u0002H\u0003H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P1",
        "P2",
        "P3",
        "p1",
        "p2",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $p3:Ljava/lang/Object;

.field final synthetic receiver$0:Lkotlin/jvm/functions/Function3;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$5;->receiver$0:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$5;->$p3:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;TP2;)TR;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$5;->receiver$0:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$5;->$p3:Ljava/lang/Object;

    invoke-interface {v0, p1, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
