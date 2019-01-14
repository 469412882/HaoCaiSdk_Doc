.class Lkotlin/collections/ArraysKt__ArraysKt;
.super Lkotlin/collections/ArraysKt__ArraysJVMKt;
.source "Arrays.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arrays.kt\nkotlin/collections/ArraysKt__ArraysKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,52:1\n12415#2,5:53\n*E\n*S KotlinDebug\n*F\n+ 1 Arrays.kt\nkotlin/collections/ArraysKt__ArraysKt\n*L\n30#1,5:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a+\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0012\u0012\u000e\u0008\u0001\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u00030\u0003\u00a2\u0006\u0002\u0010\u0004\u001aG\u0010\u0005\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00070\u00010\u0006\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0007*\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00070\u00060\u0003\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "flatten",
        "",
        "T",
        "",
        "([[Ljava/lang/Object;)Ljava/util/List;",
        "unzip",
        "Lkotlin/Pair;",
        "R",
        "([Lkotlin/Pair;)Lkotlin/Pair;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0x9
    }
    xi = 0x1
    xs = "kotlin/collections/ArraysKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/ArraysKt__ArraysJVMKt;-><init>()V

    return-void
.end method

.method public static final flatten([[Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .param p0, "$receiver"    # [[Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$f$sumBy":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    .line 53
    .local v1, "$receiver$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 54
    .local v2, "sum$iv":I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 54
    .end local v2    # "sum$iv":I
    .local v5, "sum$iv":I
    .local v6, "$i$a$1$sumBy":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v1, v2

    .line 55
    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, [Ljava/lang/Object;

    .line 30
    .local v8, "it":[Ljava/lang/Object;
    array-length v8, v8

    .line 30
    .end local v6    # "$i$a$1$sumBy":I
    .end local v8    # "it":[Ljava/lang/Object;
    add-int/2addr v5, v8

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 54
    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 57
    :cond_0
    nop

    .line 30
    .end local v0    # "$i$f$sumBy":I
    .end local v1    # "$receiver$iv":[Ljava/lang/Object;
    .end local v5    # "sum$iv":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v0, "result":Ljava/util/ArrayList;
    array-length v1, p0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v2, p0, v4

    .line 32
    .local v2, "element":[Ljava/lang/Object;
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 31
    .end local v2    # "element":[Ljava/lang/Object;
    goto :goto_1

    .line 34
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final unzip([Lkotlin/Pair;)Lkotlin/Pair;
    .locals 6
    .param p0, "$receiver"    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lkotlin/Pair<",
            "+TT;+TR;>;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v0, "listT":Ljava/util/ArrayList;
    new-instance v1, Ljava/util/ArrayList;

    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v1, "listR":Ljava/util/ArrayList;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 47
    .local v4, "pair":Lkotlin/Pair;
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 46
    .end local v4    # "pair":Lkotlin/Pair;
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    return-object v2
.end method
