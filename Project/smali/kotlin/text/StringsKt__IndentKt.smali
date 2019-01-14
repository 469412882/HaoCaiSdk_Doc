.class Lkotlin/text/StringsKt__IndentKt;
.super Ljava/lang/Object;
.source "Indent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,112:1\n102#1,9:113\n109#1:122\n104#1,4:136\n102#1,9:155\n109#1:164\n104#1,4:178\n1250#2,11:123\n1506#2,2:134\n1508#2:146\n1261#2:147\n616#2:148\n705#2,2:149\n1230#2:151\n1299#2,3:152\n1250#2,11:165\n1506#2,2:176\n1508#2:182\n1261#2:183\n1250#2,11:190\n1506#2,3:201\n1261#2:204\n107#3,6:140\n107#3,6:184\n*E\n*S KotlinDebug\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n*L\n32#1,9:113\n32#1:122\n32#1,4:136\n71#1,9:155\n71#1:164\n71#1,4:178\n32#1,11:123\n32#1,2:134\n32#1:146\n32#1:147\n67#1:148\n67#1,2:149\n68#1:151\n68#1,3:152\n71#1,11:165\n71#1,2:176\n71#1:182\n71#1:183\n103#1,11:190\n103#1,3:201\n103#1:204\n32#1,6:140\n94#1,6:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0008\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getIndentFunction",
        "Lkotlin/Function1;",
        "",
        "indent",
        "getIndentFunction$StringsKt__IndentKt",
        "indentWidth",
        "",
        "indentWidth$StringsKt__IndentKt",
        "prependIndent",
        "reindent",
        "",
        "resultSizeEstimate",
        "indentAddFunction",
        "indentCutFunction",
        "reindent$StringsKt__IndentKt",
        "replaceIndent",
        "newIndent",
        "replaceIndentByMargin",
        "marginPrefix",
        "trimIndent",
        "trimMargin",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0x9
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    nop

    .line 97
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    .line 98
    :cond_1
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 96
    :goto_1
    nop

    .line 99
    return-object v0
.end method

.method private static final indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I
    .locals 8
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 94
    .local v0, "$i$f$indexOfFirst":I
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    .line 184
    .local v1, "$receiver$iv":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 184
    .local v4, "$i$a$1$indexOfFirst":I
    :goto_0
    const/4 v5, -0x1

    if-ge v3, v2, :cond_1

    .line 185
    .local v3, "index$iv":I
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 94
    .local v6, "it":C
    invoke-static {v6}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v7

    .line 94
    .end local v4    # "$i$a$1$indexOfFirst":I
    .end local v6    # "it":C
    xor-int/lit8 v6, v7, 0x1

    if-eqz v6, :cond_0

    .line 186
    goto :goto_1

    .line 184
    .restart local v4    # "$i$a$1$indexOfFirst":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 184
    .end local v3    # "index$iv":I
    goto :goto_0

    .line 189
    .end local v4    # "$i$a$1$indexOfFirst":I
    :cond_1
    nop

    .line 94
    .end local v0    # "$i$f$indexOfFirst":I
    .end local v1    # "$receiver$iv":Ljava/lang/CharSequence;
    const/4 v3, -0x1

    :goto_1
    move v0, v3

    .line 94
    .local v0, "it":I
    move v1, v2

    .line 94
    .local v1, "$i$a$2$let":I
    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v2

    nop

    .line 94
    .end local v0    # "it":I
    .end local v1    # "$i$a$2$let":I
    :cond_2
    return v0
.end method

.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "indent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    nop

    .line 92
    nop

    .line 80
    nop

    .line 81
    nop

    .line 80
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 81
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;

    invoke-direct {v1, p1}, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 92
    const-string v0, "\n"

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 79
    const-string p1, "    "

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final reindent$StringsKt__IndentKt(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 23
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "resultSizeEstimate"    # I
    .param p2, "indentAddFunction"    # Lkotlin/jvm/functions/Function1;
    .param p3, "indentCutFunction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    .local v0, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    .line 103
    .local v1, "lastIndex":I
    nop

    .line 110
    nop

    .line 103
    nop

    .line 109
    nop

    .line 103
    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/Iterable;

    .line 103
    .local v3, "$receiver$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    move v5, v4

    .line 190
    .local v5, "$i$f$mapIndexedNotNull":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 190
    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .line 190
    .local v7, "$receiver$iv$iv":Ljava/lang/Iterable;
    move v8, v4

    .line 200
    .local v8, "$i$f$mapIndexedNotNullTo":I
    move-object v9, v7

    .line 200
    .local v9, "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    move v10, v4

    .line 201
    .local v10, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .line 202
    .local v11, "index$iv$iv$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 202
    .local v4, "$i$a$1$forEachIndexed":I
    .local v13, "$i$a$1$mapIndexedNotNull":I
    .local v14, "$i$a$1$let":I
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 202
    .local v15, "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v16, v11, 0x1

    .line 202
    .local v11, "index$iv$iv":I
    .local v16, "index$iv$iv$iv":I
    move-object/from16 v17, v15

    .line 200
    .local v17, "element$iv$iv":Ljava/lang/Object;
    move/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "value":Ljava/lang/String;
    .local v18, "$i$f$reindent$StringsKt__IndentKt":I
    move/from16 v19, v11

    .line 104
    .local v19, "index":I
    move/from16 v2, v19

    if-eqz v2, :cond_1

    .line 104
    .end local v19    # "index":I
    .local v2, "index":I
    if-ne v2, v1, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    move/from16 v20, v1

    goto :goto_2

    .line 104
    :cond_1
    :goto_1
    move/from16 v20, v1

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 104
    .end local v1    # "lastIndex":I
    .local v20, "lastIndex":I
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const/4 v1, 0x0

    .line 104
    move-object v0, v1

    move-object/from16 v1, p2

    goto :goto_3

    .line 107
    :cond_2
    :goto_2
    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    .line 107
    .end local v0    # "value":Ljava/lang/String;
    .local v21, "value":Ljava/lang/String;
    if-eqz v0, :cond_3

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 107
    .end local v2    # "index":I
    .end local v21    # "value":Ljava/lang/String;
    goto :goto_3

    .line 107
    .restart local v2    # "index":I
    .restart local v21    # "value":Ljava/lang/String;
    :cond_3
    move-object/from16 v1, p2

    .line 104
    .end local v2    # "index":I
    .end local v13    # "$i$a$1$mapIndexedNotNull":I
    :cond_4
    move-object/from16 v0, v21

    .line 107
    .end local v21    # "value":Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_5

    .line 107
    .local v0, "it$iv$iv":Ljava/lang/Object;
    move v2, v14

    .line 200
    .end local v14    # "$i$a$1$let":I
    .local v2, "$i$a$1$let":I
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$1$let":I
    nop

    .line 202
    .end local v4    # "$i$a$1$forEachIndexed":I
    .end local v11    # "index$iv$iv":I
    .end local v15    # "item$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "element$iv$iv":Ljava/lang/Object;
    .restart local v14    # "$i$a$1$let":I
    :cond_5
    move/from16 v11, v16

    move/from16 v0, v18

    move/from16 v1, v20

    goto :goto_0

    .line 203
    .end local v14    # "$i$a$1$let":I
    .end local v16    # "index$iv$iv$iv":I
    .end local v18    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v20    # "lastIndex":I
    .local v0, "$i$f$reindent$StringsKt__IndentKt":I
    .restart local v1    # "lastIndex":I
    .local v11, "index$iv$iv$iv":I
    :cond_6
    move/from16 v18, v0

    move/from16 v20, v1

    move-object/from16 v1, p2

    .line 204
    .end local v0    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v1    # "lastIndex":I
    .end local v9    # "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "index$iv$iv$iv":I
    .restart local v18    # "$i$f$reindent$StringsKt__IndentKt":I
    .restart local v20    # "lastIndex":I
    nop

    .line 204
    .end local v7    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    .line 204
    .end local v3    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapIndexedNotNull":I
    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v12, p1

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "newIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "lines":Ljava/util/List;
    nop

    .line 69
    nop

    .line 66
    nop

    .line 68
    nop

    .line 66
    nop

    .line 67
    nop

    .line 66
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 67
    nop

    .line 67
    .local v3, "$receiver$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    move v5, v4

    .line 148
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 148
    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .line 148
    .local v7, "$receiver$iv$iv":Ljava/lang/Iterable;
    move v8, v4

    .line 149
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    .line 149
    .local v10, "$i$a$1$unknown":I
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 149
    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 149
    .local v12, "p1":Ljava/lang/String;
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    .line 67
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 67
    .end local v10    # "$i$a$1$unknown":I
    .end local v12    # "p1":Ljava/lang/String;
    xor-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_0

    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 150
    .restart local v10    # "$i$a$1$unknown":I
    :cond_1
    nop

    .line 150
    .end local v7    # "$receiver$iv$iv":Ljava/lang/Iterable;
    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 150
    .end local v3    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v3, Ljava/lang/Iterable;

    .line 68
    nop

    .line 68
    .restart local v3    # "$receiver$iv":Ljava/lang/Iterable;
    move v5, v8

    .line 151
    .end local v8    # "$i$f$filterTo":I
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 151
    .restart local v6    # "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .line 151
    .restart local v7    # "$receiver$iv$iv":Ljava/lang/Iterable;
    move v8, v10

    .line 152
    .end local v10    # "$i$a$1$unknown":I
    .local v8, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    .line 152
    .local v10, "$i$a$2$unknown":I
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 153
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 68
    .restart local v12    # "p1":Ljava/lang/String;
    invoke-static {v12}, Lkotlin/text/StringsKt__IndentKt;->indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I

    move-result v12

    .line 68
    .end local v10    # "$i$a$2$unknown":I
    .end local v12    # "p1":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 154
    :cond_2
    nop

    .line 154
    .end local v7    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 154
    .end local v3    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v3, Ljava/lang/Iterable;

    .line 69
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->min(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 66
    :cond_3
    const/4 v3, 0x0

    .line 71
    .local v3, "minCommonIndent":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    .line 71
    .local v5, "resultSizeEstimate$iv":I
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 71
    .local v6, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    move-object v7, v1

    .line 71
    .local v7, "$receiver$iv":Ljava/util/List;
    move v8, v4

    .line 155
    .local v8, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    .line 156
    .local v9, "lastIndex$iv":I
    nop

    .line 163
    nop

    .line 156
    nop

    .line 164
    nop

    .line 156
    move-object v10, v7

    check-cast v10, Ljava/lang/Iterable;

    .line 156
    .local v10, "$receiver$iv$iv":Ljava/lang/Iterable;
    move v11, v4

    .line 165
    .local v11, "$i$f$mapIndexedNotNull":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .line 165
    .local v12, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v13, v10

    .line 165
    .local v13, "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    move v14, v4

    .line 175
    .local v14, "$i$f$mapIndexedNotNullTo":I
    move-object v15, v13

    .line 175
    .local v15, "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    move/from16 v16, v4

    .line 176
    .local v16, "$i$f$forEachIndexed":I
    const/16 v17, 0x0

    .line 177
    .local v17, "index$iv$iv$iv$iv":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 177
    .local v18, "$i$a$1$forEachIndexed":I
    .local v19, "$i$a$1$mapIndexedNotNull":I
    .local v20, "$i$a$1$reindent":I
    .local v21, "$i$a$1$let":I
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .line 177
    .local v22, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v23, v17, 0x1

    .line 177
    .local v17, "index$iv$iv$iv":I
    .local v23, "index$iv$iv$iv$iv":I
    move-object/from16 v24, v22

    .line 175
    .local v24, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v24

    check-cast v25, Ljava/lang/String;

    .line 175
    .local v25, "value$iv":Ljava/lang/String;
    move/from16 v26, v17

    .line 178
    .local v26, "index$iv":I
    move/from16 v0, v26

    if-eqz v0, :cond_5

    .line 178
    .end local v26    # "index$iv":I
    .local v0, "index$iv":I
    if-ne v0, v9, :cond_4

    goto :goto_4

    .line 181
    :cond_4
    move/from16 v27, v0

    goto :goto_5

    .line 178
    :cond_5
    :goto_4
    move/from16 v27, v0

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/CharSequence;

    .line 178
    .end local v0    # "index$iv":I
    .local v27, "index$iv":I
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    const/4 v0, 0x0

    goto :goto_6

    .line 181
    :cond_6
    :goto_5
    move-object/from16 v0, v25

    .line 71
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .end local v0    # "line":Ljava/lang/String;
    .end local v20    # "$i$a$1$reindent":I
    if-eqz v0, :cond_7

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 71
    .end local v25    # "value$iv":Ljava/lang/String;
    .end local v27    # "index$iv":I
    goto :goto_6

    .line 181
    .restart local v25    # "value$iv":Ljava/lang/String;
    .restart local v27    # "index$iv":I
    :cond_7
    nop

    .line 178
    .end local v19    # "$i$a$1$mapIndexedNotNull":I
    .end local v27    # "index$iv":I
    move-object/from16 v0, v25

    .line 181
    .end local v25    # "value$iv":Ljava/lang/String;
    .restart local v20    # "$i$a$1$reindent":I
    :goto_6
    if-eqz v0, :cond_8

    .line 175
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$1$let":I
    nop

    .line 177
    .end local v17    # "index$iv$iv$iv":I
    .end local v18    # "$i$a$1$forEachIndexed":I
    .end local v22    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v24    # "element$iv$iv$iv":Ljava/lang/Object;
    .restart local v21    # "$i$a$1$let":I
    :cond_8
    move/from16 v17, v23

    move-object/from16 v0, p0

    goto :goto_3

    .line 182
    .end local v20    # "$i$a$1$reindent":I
    .end local v21    # "$i$a$1$let":I
    .end local v23    # "index$iv$iv$iv$iv":I
    .local v17, "index$iv$iv$iv$iv":I
    :cond_9
    nop

    .line 183
    .end local v15    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$forEachIndexed":I
    .end local v17    # "index$iv$iv$iv$iv":I
    nop

    .line 183
    .end local v13    # "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v12

    check-cast v0, Ljava/util/List;

    .line 183
    .end local v10    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapIndexedNotNull":I
    .end local v12    # "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v0

    check-cast v11, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7c

    const/16 v19, 0x0

    invoke-static/range {v10 .. v19}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .end local v5    # "resultSizeEstimate$iv":I
    .end local v6    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v7    # "$receiver$iv":Ljava/util/List;
    .end local v8    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v9    # "lastIndex$iv":I
    return-object v0
.end method

.method public static bridge synthetic replaceIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 63
    const-string p1, ""

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 39
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "newIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "marginPrefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "marginPrefix"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    move v1, v9

    .line 29
    .local v1, "$i$a$1$require":I
    const-string v1, "marginPrefix must be non-blank string."

    .line 29
    .end local v1    # "$i$a$1$require":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 30
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v10

    .line 32
    .local v10, "lines":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    mul-int v2, v2, v3

    add-int v11, v1, v2

    .line 32
    .local v11, "resultSizeEstimate$iv":I
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v12

    .line 32
    .local v12, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v10

    .line 32
    .local v13, "$receiver$iv":Ljava/util/List;
    move v14, v9

    .line 113
    .local v14, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v15

    .line 114
    .local v15, "lastIndex$iv":I
    nop

    .line 121
    nop

    .line 114
    nop

    .line 122
    nop

    .line 114
    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/Iterable;

    .line 114
    .local v16, "$receiver$iv$iv":Ljava/lang/Iterable;
    move/from16 v17, v9

    .line 123
    .local v17, "$i$f$mapIndexedNotNull":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    .line 123
    .local v6, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v18, v16

    .line 123
    .local v18, "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    move/from16 v19, v9

    .line 133
    .local v19, "$i$f$mapIndexedNotNullTo":I
    move-object/from16 v5, v18

    .line 133
    .local v5, "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    move/from16 v20, v9

    .line 134
    .local v20, "$i$f$forEachIndexed":I
    const/4 v1, 0x0

    .line 135
    .local v1, "index$iv$iv$iv$iv":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 135
    .local v2, "$i$a$1$forEachIndexed":I
    .local v3, "$i$a$1$mapIndexedNotNull":I
    .local v21, "$i$a$2$reindent":I
    .local v22, "$i$f$indexOfFirst":I
    .local v23, "$i$a$1$indexOfFirst":I
    .local v24, "$i$a$1$let":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .line 135
    .local v25, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v26, v1, 0x1

    .line 135
    .local v26, "index$iv$iv$iv$iv":I
    move/from16 v27, v1

    .line 135
    .end local v1    # "index$iv$iv$iv$iv":I
    .local v27, "index$iv$iv$iv":I
    move-object/from16 v28, v25

    .line 135
    .local v28, "element$iv$iv$iv":Ljava/lang/Object;
    move/from16 v29, v2

    .line 133
    .end local v2    # "$i$a$1$forEachIndexed":I
    .local v29, "$i$a$1$forEachIndexed":I
    move-object/from16 v30, v28

    check-cast v30, Ljava/lang/String;

    .line 133
    .local v30, "value$iv":Ljava/lang/String;
    move/from16 v2, v27

    .line 133
    .local v2, "index$iv":I
    move/from16 v31, v3

    .line 136
    .end local v3    # "$i$a$1$mapIndexedNotNull":I
    .local v31, "$i$a$1$mapIndexedNotNull":I
    const/16 v32, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v15, :cond_2

    :cond_1
    move-object/from16 v1, v30

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    nop

    .line 136
    move-object/from16 v37, v4

    move-object v9, v5

    move-object v8, v6

    move-object/from16 v30, v32

    goto/16 :goto_5

    .line 139
    :cond_2
    move-object/from16 v3, v30

    .line 33
    .local v3, "line":Ljava/lang/String;
    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    .line 140
    .local v1, "$receiver$iv":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v0, 0x0

    :goto_1
    move/from16 v33, v2

    .line 140
    .end local v2    # "index$iv":I
    .local v33, "index$iv":I
    if-ge v0, v9, :cond_4

    .line 141
    .local v0, "index$iv":I
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 33
    .local v2, "it":C
    invoke-static {v2}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v35

    .line 33
    .end local v2    # "it":C
    .end local v23    # "$i$a$1$indexOfFirst":I
    xor-int/lit8 v2, v35, 0x1

    if-eqz v2, :cond_3

    .line 142
    goto :goto_2

    .line 140
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 140
    .end local v0    # "index$iv":I
    move/from16 v2, v33

    goto :goto_1

    .line 145
    .restart local v23    # "$i$a$1$indexOfFirst":I
    :cond_4
    nop

    .line 33
    .end local v1    # "$receiver$iv":Ljava/lang/CharSequence;
    const/4 v0, -0x1

    .line 35
    .local v0, "firstNonWhitespaceIndex":I
    :goto_2
    nop

    .line 36
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 35
    move-object v2, v3

    move-object/from16 v37, v4

    move-object v9, v5

    move-object v8, v6

    .line 35
    .end local v0    # "firstNonWhitespaceIndex":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    .local v2, "line":Ljava/lang/String;
    .local v8, "destination$iv$iv$iv":Ljava/util/Collection;
    .local v9, "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    :goto_3
    move-object/from16 v1, v32

    goto :goto_4

    .line 37
    .end local v2    # "line":Ljava/lang/String;
    .end local v8    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v9    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .restart local v0    # "firstNonWhitespaceIndex":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .restart local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    :cond_5
    const/4 v9, 0x0

    const/16 v34, 0x4

    const/16 v35, 0x0

    move-object v1, v3

    move-object v2, v7

    move-object/from16 v36, v3

    move v3, v0

    .line 37
    .end local v3    # "line":Ljava/lang/String;
    .local v36, "line":Ljava/lang/String;
    move-object/from16 v37, v4

    move v4, v9

    move-object v9, v5

    move/from16 v5, v34

    .line 37
    .end local v5    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .restart local v9    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    move-object v8, v6

    move-object/from16 v6, v35

    .line 37
    .end local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    .restart local v8    # "destination$iv$iv$iv":Ljava/util/Collection;
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    move-object/from16 v2, v36

    if-nez v2, :cond_6

    .line 37
    .end local v22    # "$i$f$indexOfFirst":I
    .end local v23    # "$i$a$1$indexOfFirst":I
    .end local v24    # "$i$a$1$let":I
    .end local v36    # "line":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    new-instance v1, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    .restart local v22    # "$i$f$indexOfFirst":I
    .restart local v23    # "$i$a$1$indexOfFirst":I
    .restart local v24    # "$i$a$1$let":I
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 38
    .end local v2    # "line":Ljava/lang/String;
    .restart local v36    # "line":Ljava/lang/String;
    :cond_7
    move-object/from16 v2, v36

    .line 38
    .end local v0    # "firstNonWhitespaceIndex":I
    .end local v36    # "line":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    goto :goto_3

    .line 35
    :goto_4
    nop

    .line 39
    nop

    .line 39
    .end local v2    # "line":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-interface {v12, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 136
    .end local v30    # "value$iv":Ljava/lang/String;
    .end local v33    # "index$iv":I
    move-object/from16 v30, v0

    goto :goto_5

    .line 139
    .restart local v30    # "value$iv":Ljava/lang/String;
    .restart local v33    # "index$iv":I
    :cond_8
    nop

    .line 136
    .end local v30    # "value$iv":Ljava/lang/String;
    .end local v33    # "index$iv":I
    :goto_5
    nop

    .line 139
    if-eqz v30, :cond_9

    move-object/from16 v0, v30

    .line 139
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    move/from16 v1, v24

    .line 133
    .end local v24    # "$i$a$1$let":I
    .local v1, "$i$a$1$let":I
    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$1$let":I
    nop

    .line 135
    .end local v25    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v27    # "index$iv$iv$iv":I
    .end local v28    # "element$iv$iv$iv":Ljava/lang/Object;
    .restart local v24    # "$i$a$1$let":I
    :cond_9
    move-object v6, v8

    move-object v5, v9

    move/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v31

    move-object/from16 v4, v37

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 146
    .end local v8    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v9    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v21    # "$i$a$2$reindent":I
    .end local v22    # "$i$f$indexOfFirst":I
    .end local v23    # "$i$a$1$indexOfFirst":I
    .end local v24    # "$i$a$1$let":I
    .end local v26    # "index$iv$iv$iv$iv":I
    .end local v29    # "$i$a$1$forEachIndexed":I
    .end local v31    # "$i$a$1$mapIndexedNotNull":I
    .local v1, "index$iv$iv$iv$iv":I
    .restart local v5    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .restart local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    :cond_a
    move-object v9, v5

    move-object v8, v6

    .line 147
    .end local v1    # "index$iv$iv$iv$iv":I
    .end local v5    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v20    # "$i$f$forEachIndexed":I
    .restart local v8    # "destination$iv$iv$iv":Ljava/util/Collection;
    nop

    .line 147
    .end local v18    # "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 147
    .end local v8    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v16    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapIndexedNotNull":I
    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Iterable;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x7c

    const/16 v25, 0x0

    invoke-static/range {v16 .. v25}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .end local v11    # "resultSizeEstimate$iv":I
    .end local v12    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "$receiver$iv":Ljava/util/List;
    .end local v14    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v15    # "lastIndex$iv":I
    return-object v0
.end method

.method public static bridge synthetic replaceIndentByMargin$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 28
    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, "|"

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "marginPrefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 20
    const-string p1, "|"

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
