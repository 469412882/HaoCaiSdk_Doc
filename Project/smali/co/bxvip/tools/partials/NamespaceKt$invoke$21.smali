.class final Lco/bxvip/tools/partials/NamespaceKt$invoke$21;
.super Lkotlin/jvm/internal/Lambda;
.source "namespace.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/tools/partials/NamespaceKt;->invoke(Lkotlin/jvm/functions/Function7;Ljava/lang/Object;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;)Lkotlin/jvm/functions/Function6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function6<",
        "TP2;TP3;TP4;TP5;TP6;TP7;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0011\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\u0007\u0010\u00012\u0006\u0010\t\u001a\u0002H\u00032\u0006\u0010\n\u001a\u0002H\u00042\u0006\u0010\u000b\u001a\u0002H\u00052\u0006\u0010\u000c\u001a\u0002H\u00062\u0006\u0010\r\u001a\u0002H\u00072\u0006\u0010\u000e\u001a\u0002H\u0008H\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P1",
        "P2",
        "P3",
        "P4",
        "P5",
        "P6",
        "P7",
        "p2",
        "p3",
        "p4",
        "p5",
        "p6",
        "p7",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $p1:Ljava/lang/Object;

.field final synthetic receiver$0:Lkotlin/jvm/functions/Function7;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function7;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$21;->receiver$0:Lkotlin/jvm/functions/Function7;

    iput-object p2, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$21;->$p1:Ljava/lang/Object;

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "p2"    # Ljava/lang/Object;
    .param p2, "p3"    # Ljava/lang/Object;
    .param p3, "p4"    # Ljava/lang/Object;
    .param p4, "p5"    # Ljava/lang/Object;
    .param p5, "p6"    # Ljava/lang/Object;
    .param p6, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP2;TP3;TP4;TP5;TP6;TP7;)TR;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$21;->receiver$0:Lkotlin/jvm/functions/Function7;

    iget-object v1, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$21;->$p1:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lkotlin/jvm/functions/Function7;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
