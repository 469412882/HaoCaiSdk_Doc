.class final Lco/bxvip/tools/partials/NamespaceKt$invoke$31;
.super Lkotlin/jvm/internal/Lambda;
.source "namespace.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/tools/partials/NamespaceKt;->invoke(Lkotlin/jvm/functions/Function8;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Ljava/lang/Object;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;)Lkotlin/jvm/functions/Function7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function7<",
        "TP1;TP2;TP3;TP5;TP6;TP7;TP8;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0013\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\u0007\u0010\t\"\u0004\u0008\u0008\u0010\u00012\u0006\u0010\n\u001a\u0002H\u00022\u0006\u0010\u000b\u001a\u0002H\u00032\u0006\u0010\u000c\u001a\u0002H\u00042\u0006\u0010\r\u001a\u0002H\u00062\u0006\u0010\u000e\u001a\u0002H\u00072\u0006\u0010\u000f\u001a\u0002H\u00082\u0006\u0010\u0010\u001a\u0002H\tH\n\u00a2\u0006\u0004\u0008\u0011\u0010\u0012"
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
        "P8",
        "p1",
        "p2",
        "p3",
        "p5",
        "p6",
        "p7",
        "p8",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $p4:Ljava/lang/Object;

.field final synthetic receiver$0:Lkotlin/jvm/functions/Function8;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function8;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$31;->receiver$0:Lkotlin/jvm/functions/Function8;

    iput-object p2, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$31;->$p4:Ljava/lang/Object;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p5"    # Ljava/lang/Object;
    .param p5, "p6"    # Ljava/lang/Object;
    .param p6, "p7"    # Ljava/lang/Object;
    .param p7, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;TP2;TP3;TP5;TP6;TP7;TP8;)TR;"
        }
    .end annotation

    move-object v0, p0

    .line 179
    iget-object v1, v0, Lco/bxvip/tools/partials/NamespaceKt$invoke$31;->receiver$0:Lkotlin/jvm/functions/Function8;

    iget-object v5, v0, Lco/bxvip/tools/partials/NamespaceKt$invoke$31;->$p4:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lkotlin/jvm/functions/Function8;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
