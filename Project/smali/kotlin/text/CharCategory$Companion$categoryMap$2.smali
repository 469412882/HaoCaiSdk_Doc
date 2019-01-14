.class final Lkotlin/text/CharCategory$Companion$categoryMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CharCategory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/text/CharCategory;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharCategory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharCategory.kt\nkotlin/text/CharCategory$Companion$categoryMap$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,169:1\n6989#2,2:170\n7213#2,4:172\n*E\n*S KotlinDebug\n*F\n+ 1 CharCategory.kt\nkotlin/text/CharCategory$Companion$categoryMap$2\n*L\n165#1,2:170\n165#1,4:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lkotlin/text/CharCategory;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;

    invoke-direct {v0}, Lkotlin/text/CharCategory$Companion$categoryMap$2;-><init>()V

    sput-object v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;->INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lkotlin/text/CharCategory$Companion$categoryMap$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 165
    .local v0, "$i$f$associateBy":I
    invoke-static {}, Lkotlin/text/CharCategory;->values()[Lkotlin/text/CharCategory;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 170
    .local v1, "$receiver$iv":[Ljava/lang/Object;
    array-length v2, v1

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 171
    .local v2, "capacity$iv":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .line 171
    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v1

    .line 171
    .local v4, "$receiver$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    move v6, v5

    .line 172
    .local v6, "$i$f$associateByTo":I
    array-length v7, v4

    const/4 v8, 0x0

    .line 172
    .local v8, "$i$a$1$associateBy":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v9, v4, v5

    .line 173
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlin/text/CharCategory;

    .line 165
    .local v10, "it":Lkotlin/text/CharCategory;
    invoke-virtual {v10}, Lkotlin/text/CharCategory;->getValue()I

    move-result v10

    .line 165
    .end local v8    # "$i$a$1$associateBy":I
    .end local v10    # "it":Lkotlin/text/CharCategory;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 172
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 175
    :cond_0
    nop

    .line 165
    .end local v0    # "$i$f$associateBy":I
    .end local v1    # "$receiver$iv":[Ljava/lang/Object;
    .end local v2    # "capacity$iv":I
    .end local v4    # "$receiver$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$associateByTo":I
    return-object v3
.end method
