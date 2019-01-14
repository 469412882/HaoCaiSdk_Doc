.class public final Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;
.super Lco/bxvip/android/commonlib/db/BaseDao;
.source "KeyValueBean.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/bxvip/android/commonlib/db/BaseDao<",
        "Lco/bxvip/android/commonlib/db/ext/KeyValueCache;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyValueBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyValueBean.kt\nco/bxvip/android/commonlib/db/ext/KeyValueCacheDao\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,107:1\n8815#2:108\n9132#2,3:109\n10807#2,3:116\n8815#2:123\n9132#2,3:124\n1230#3:112\n1299#3,3:113\n57#4:119\n82#4,3:120\n*E\n*S KotlinDebug\n*F\n+ 1 KeyValueBean.kt\nco/bxvip/android/commonlib/db/ext/KeyValueCacheDao\n*L\n53#1:108\n53#1,3:109\n81#1,3:116\n103#1:123\n103#1,3:124\n66#1:112\n66#1,3:113\n90#1:119\n90#1,3:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001f\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\"\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0008J5\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\"\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\"\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ$\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ=\u0010\u0014\u001a\u00020\u00052\u0012\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\"\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0018J*\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ8\u0010\u0014\u001a\u00020\u00052\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001b2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;",
        "Lco/bxvip/android/commonlib/db/BaseDao;",
        "Lco/bxvip/android/commonlib/db/ext/KeyValueCache;",
        "()V",
        "deleteByKeys",
        "",
        "keys",
        "",
        "",
        "([Ljava/lang/String;)V",
        "deleteByPrefix",
        "prefix",
        "getValue",
        "",
        "k",
        "",
        "([Ljava/lang/String;I)Ljava/util/Map;",
        "key",
        "defaultValue",
        "getValueBuPreFix",
        "setValue",
        "args",
        "encode",
        "",
        "([Ljava/lang/String;Ljava/lang/String;ZI)V",
        "value",
        "map",
        "",
        "android-support"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/BaseDao;-><init>()V

    return-void
.end method

.method public static bridge synthetic getValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 39
    const-string p2, ""

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x64

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->getValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;[Ljava/lang/String;IILjava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 51
    const/16 p2, 0x64

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->getValue([Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getValueBuPreFix$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 64
    const/16 p2, 0x64

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->getValueBuPreFix(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic setValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 72
    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/16 p4, 0x64

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->setValue(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static bridge synthetic setValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;Ljava/util/Map;Ljava/lang/String;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 89
    const-string p2, ""

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/16 p4, 0x64

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->setValue(Ljava/util/Map;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static bridge synthetic setValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;[Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 79
    const-string p2, ""

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/16 p4, 0x64

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->setValue([Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public final varargs deleteByKeys([Ljava/lang/String;)V
    .locals 12
    .param p1, "keys"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 103
    .local v0, "$i$f$map":I
    const-string v1, "keys"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 123
    .local v1, "$receiver$iv":[Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 123
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v1

    .line 123
    .local v3, "$receiver$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v5, v4

    .line 124
    .local v5, "$i$f$mapTo":I
    array-length v6, v3

    const/4 v7, 0x0

    .line 124
    .local v7, "$i$a$1$map":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v8, v3, v4

    .line 125
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 104
    .local v9, "it":Ljava/lang/String;
    invoke-static {}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->get()Lco/bxvip/android/commonlib/db/info/WhereInfo;

    move-result-object v10

    const-string v11, "key"

    invoke-virtual {v10, v11, v9}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->equal(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;

    move-result-object v10

    const-string v11, "WhereInfo.get().equal(\"key\", it)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->delete(Lco/bxvip/android/commonlib/db/info/WhereInfo;)I

    move-result v9

    .line 104
    .end local v7    # "$i$a$1$map":I
    .end local v9    # "it":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 124
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 126
    :cond_0
    nop

    .line 126
    .end local v3    # "$receiver$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$mapTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 106
    .end local v0    # "$i$f$map":I
    .end local v1    # "$receiver$iv":[Ljava/lang/Object;
    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    return-void
.end method

.method public final deleteByPrefix(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->get()Lco/bxvip/android/commonlib/db/info/WhereInfo;

    move-result-object v0

    const-string v1, "key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->like(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;

    move-result-object v0

    const-string v1, "WhereInfo.get().like(\"key\", \"$prefix%\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->delete(Lco/bxvip/android/commonlib/db/info/WhereInfo;)I

    .line 100
    return-void
.end method

.method public final getValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "k"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->findByKeyValues([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;

    .line 41
    .local v0, "valueBean":Lco/bxvip/android/commonlib/db/ext/KeyValueCache;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getEncode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lco/bxvip/android/commonlib/db/ext/DBUKt;->dc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 44
    :cond_1
    return-object p2
.end method

.method public final getValue([Ljava/lang/String;I)Ljava/util/Map;
    .locals 18
    .param p1, "keys"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 53
    .local v1, "map":Ljava/util/Map;
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    .line 53
    .local v2, "$receiver$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    move v4, v3

    .line 108
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 108
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .line 108
    .local v6, "$receiver$iv$iv":[Ljava/lang/Object;
    move v7, v3

    .line 109
    .local v7, "$i$f$mapTo":I
    array-length v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 109
    .local v10, "$i$a$1$map":I
    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v11, v6, v9

    .line 110
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 54
    .local v12, "it":Ljava/lang/String;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "key"

    aput-object v14, v13, v3

    const/4 v14, 0x1

    aput-object v12, v13, v14

    move-object/from16 v14, p0

    invoke-virtual {v14, v13}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->findByKeyValues([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;

    .line 55
    .local v13, "values":Lco/bxvip/android/commonlib/db/ext/KeyValueCache;
    if-eqz v13, :cond_1

    .line 56
    invoke-virtual {v13}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getEncode()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v13}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getValue()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p2

    invoke-static {v3, v0}, Lco/bxvip/android/commonlib/db/ext/DBUKt;->dc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move/from16 v0, p2

    invoke-virtual {v13}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v13    # "values":Lco/bxvip/android/commonlib/db/ext/KeyValueCache;
    goto :goto_2

    .line 57
    :cond_1
    move/from16 v0, p2

    .line 57
    .end local v12    # "it":Ljava/lang/String;
    :goto_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v9, v9, 0x1

    .line 109
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, p1

    const/4 v3, 0x0

    goto :goto_0

    .line 111
    .end local v10    # "$i$a$1$map":I
    :cond_2
    move-object/from16 v14, p0

    move/from16 v0, p2

    .line 111
    .end local v6    # "$receiver$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$mapTo":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 58
    .end local v2    # "$receiver$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$map":I
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    return-object v1
.end method

.method public final getValueBuPreFix(Ljava/lang/String;I)Ljava/util/Map;
    .locals 12
    .param p1, "prefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 66
    .local v0, "map":Ljava/util/Map;
    invoke-static {}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->get()Lco/bxvip/android/commonlib/db/info/WhereInfo;

    move-result-object v1

    const-string v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->like(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;

    move-result-object v1

    const-string v2, "WhereInfo.get().like(\"key\", \"$prefix%\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->query(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 66
    .local v1, "$receiver$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    move v3, v2

    .line 112
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 112
    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .line 112
    .local v5, "$receiver$iv$iv":Ljava/lang/Iterable;
    move v6, v2

    .line 113
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 113
    .local v2, "$i$a$1$map":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 114
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;

    .line 67
    .local v9, "it":Lco/bxvip/android/commonlib/db/ext/KeyValueCache;
    invoke-virtual {v9}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getEncode()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p2}, Lco/bxvip/android/commonlib/db/ext/DBUKt;->dc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;->getValue()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 67
    .end local v2    # "$i$a$1$map":I
    .end local v9    # "it":Lco/bxvip/android/commonlib/db/ext/KeyValueCache;
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 115
    :cond_1
    nop

    .line 115
    .end local v5    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 69
    .end local v1    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    return-object v0
.end method

.method public final setValue(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "encode"    # Z
    .param p4, "k"    # I

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;

    if-eqz p3, :cond_0

    invoke-static {p2, p4}, Lco/bxvip/android/commonlib/db/ext/DBUKt;->ec(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-direct {v0, p1, v1, p3}, Lco/bxvip/android/commonlib/db/ext/KeyValueCache;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->addOrUpdate(Ljava/lang/Object;)I

    .line 74
    return-void
.end method

.method public final setValue(Ljava/util/Map;Ljava/lang/String;ZI)V
    .locals 11
    .param p1, "map"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "encode"    # Z
    .param p4, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    .local v0, "$i$f$map":I
    const-string v1, "map"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "prefix"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    move-object v1, p1

    .line 119
    .local v1, "$receiver$iv":Ljava/util/Map;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 119
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v1

    .line 119
    .local v3, "$receiver$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    move v5, v4

    .line 120
    .local v5, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 120
    .local v4, "$i$a$2$map":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 121
    .local v7, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v8, v7

    .line 91
    .local v8, "it":Ljava/util/Map$Entry;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v9, v10, p3, p4}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->setValue(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 92
    .end local v4    # "$i$a$2$map":I
    .end local v8    # "it":Ljava/util/Map$Entry;
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v7    # "item$iv$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 122
    :cond_0
    nop

    .line 122
    .end local v3    # "$receiver$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$mapTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 93
    .end local v0    # "$i$f$map":I
    .end local v1    # "$receiver$iv":Ljava/util/Map;
    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    return-void
.end method

.method public final setValue([Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "encode"    # Z
    .param p4, "k"    # I

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 81
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 81
    .local v0, "$receiver$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    move v2, v1

    .line 116
    .local v2, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 117
    .local v3, "index$iv":I
    array-length v4, v0

    const/4 v5, 0x0

    .line 117
    .local v5, "$i$a$1$forEachIndexed":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    .line 117
    .local v6, "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v3, 0x1

    .line 117
    .local v7, "index$iv":I
    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 82
    .local v3, "index":I
    .local v8, "value":Ljava/lang/String;
    rem-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_0

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    aget-object v10, p1, v10

    invoke-virtual {p0, v9, v10, p3, p4}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->setValue(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 85
    .end local v3    # "index":I
    .end local v5    # "$i$a$1$forEachIndexed":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 117
    .end local v6    # "item$iv":Ljava/lang/Object;
    move v3, v7

    goto :goto_0

    .line 118
    .end local v7    # "index$iv":I
    .local v3, "index$iv":I
    :cond_1
    nop

    .line 87
    .end local v0    # "$receiver$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v3    # "index$iv":I
    :cond_2
    return-void
.end method
