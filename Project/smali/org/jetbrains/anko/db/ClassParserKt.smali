.class public final Lorg/jetbrains/anko/db/ClassParserKt;
.super Ljava/lang/Object;
.source "ClassParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassParser.kt\norg/jetbrains/anko/db/ClassParserKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n2914#2:152\n3331#2:153\n8850#2,2:154\n3332#2:156\n612#3:157\n685#3,2:158\n*E\n*S KotlinDebug\n*F\n+ 1 ClassParser.kt\norg/jetbrains/anko/db/ClassParserKt\n*L\n32#1:152\n32#1:153\n32#1,2:154\n32#1:156\n44#1:157\n44#1,2:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a \u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0002\u001a\u001b\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\n\u0008\u0000\u0010\u0007\u0018\u0001*\u00020\u0001H\u0087\u0008\u001a\"\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\u0008\u0000\u0010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0004H\u0001\u001a\u0014\u0010\t\u001a\u00020\n2\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "castValue",
        "",
        "value",
        "type",
        "Ljava/lang/Class;",
        "classParser",
        "Lorg/jetbrains/anko/db/RowParser;",
        "T",
        "clazz",
        "hasApplicableType",
        "",
        "sqlite_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# direct methods
.method public static final synthetic access$castValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/jetbrains/anko/db/ClassParserKt;->castValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final castValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 93
    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null can\'t be converted to the value of primitive type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 97
    :cond_0
    if-eqz p0, :cond_1e

    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/jetbrains/anko/db/JavaSqliteUtils;->PRIMITIVES_TO_WRAPPERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    return-object p0

    .line 105
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/lang/Float;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 109
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Ljava/lang/Double;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    :cond_5
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 113
    :cond_6
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_7

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_7
    instance-of v0, p0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 118
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_3

    .line 120
    :cond_8
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-class v0, Ljava/lang/Short;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 122
    :cond_9
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-class v0, Ljava/lang/Byte;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 124
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 126
    :cond_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-class v0, Ljava/lang/Character;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 127
    :cond_c
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 125
    :cond_d
    :goto_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 123
    :cond_e
    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 121
    :cond_f
    :goto_2
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 119
    :cond_10
    :goto_3
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 128
    :cond_11
    nop

    .line 131
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 132
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-class v0, Ljava/lang/Long;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_7

    .line 134
    :cond_12
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-class v0, Ljava/lang/Short;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6

    .line 136
    :cond_13
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-class v0, Ljava/lang/Byte;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_5

    .line 138
    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4

    .line 140
    :cond_15
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-class v0, Ljava/lang/Character;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 141
    :cond_16
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 139
    :cond_17
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 137
    :cond_18
    :goto_5
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 135
    :cond_19
    :goto_6
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 133
    :cond_1a
    :goto_7
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 142
    :cond_1b
    nop

    .line 145
    nop

    .line 146
    nop

    .line 145
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1d

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1d

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-class v0, Ljava/lang/Character;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 147
    :cond_1c
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1d
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be cast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 98
    :cond_1e
    :goto_8
    return-object p0
.end method

.method private static final classParser()Lorg/jetbrains/anko/db/RowParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/jetbrains/anko/db/RowParser<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    .local v0, "$i$f$classParser":I
    const-string v1, "T"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lorg/jetbrains/anko/db/ClassParserKt;->classParser(Ljava/lang/Class;)Lorg/jetbrains/anko/db/RowParser;

    move-result-object v1

    return-object v1
.end method

.method public static final classParser(Ljava/lang/Class;)Lorg/jetbrains/anko/db/RowParser;
    .locals 19
    .param p0, "clazz"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/jetbrains/anko/db/RowParser<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 32
    .local v0, "$i$f$filter":I
    const-string v1, "clazz"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 152
    .local v1, "$receiver$iv":[Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 152
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .line 152
    .local v4, "$receiver$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    move v6, v5

    .line 153
    .local v6, "$i$f$filterTo":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 153
    .local v8, "$i$a$1$filter":I
    .local v9, "$i$f$filterTo":I
    .local v10, "$i$f$all":I
    .local v11, "$i$a$1$unknown":I
    :goto_0
    array-length v12, v4

    const/4 v13, 0x1

    if-ge v7, v12, :cond_8

    aget-object v12, v4, v7

    .line 153
    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v12

    check-cast v14, Ljava/lang/reflect/Constructor;

    .line 33
    .local v14, "ctr":Ljava/lang/reflect/Constructor;
    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-nez v15, :cond_0

    move/from16 v18, v0

    goto :goto_4

    .line 34
    :cond_0
    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    .line 35
    .local v15, "types":[Ljava/lang/Class;
    if-eqz v15, :cond_4

    move-object v5, v15

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    xor-int/2addr v5, v13

    if-eqz v5, :cond_4

    .line 35
    .end local v9    # "$i$f$filterTo":I
    move-object v5, v15

    check-cast v5, [Ljava/lang/Object;

    .line 154
    .local v5, "$receiver$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    :goto_2
    array-length v13, v5

    if-ge v9, v13, :cond_3

    aget-object v13, v5, v9

    .line 154
    .local v13, "element$iv":Ljava/lang/Object;
    move/from16 v18, v0

    move-object v0, v13

    check-cast v0, Ljava/lang/Class;

    .line 35
    .local v0, "p1":Ljava/lang/Class;
    .local v18, "$i$f$filter":I
    invoke-static {v0}, Lorg/jetbrains/anko/db/ClassParserKt;->hasApplicableType(Ljava/lang/Class;)Z

    move-result v0

    .line 35
    .end local v0    # "p1":Ljava/lang/Class;
    .end local v11    # "$i$a$1$unknown":I
    if-nez v0, :cond_2

    .line 155
    .end local v5    # "$receiver$iv":[Ljava/lang/Object;
    const/4 v0, 0x0

    goto :goto_3

    .line 35
    .restart local v5    # "$receiver$iv":[Ljava/lang/Object;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 154
    .end local v13    # "element$iv":Ljava/lang/Object;
    move/from16 v0, v18

    const/4 v13, 0x1

    goto :goto_2

    .line 155
    .end local v18    # "$i$f$filter":I
    .local v0, "$i$f$filter":I
    .restart local v11    # "$i$a$1$unknown":I
    :cond_3
    move/from16 v18, v0

    .line 155
    .end local v0    # "$i$f$filter":I
    .end local v5    # "$receiver$iv":[Ljava/lang/Object;
    .restart local v18    # "$i$f$filter":I
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    .line 155
    .end local v18    # "$i$f$filter":I
    .restart local v0    # "$i$f$filter":I
    .restart local v9    # "$i$f$filterTo":I
    :cond_4
    move/from16 v18, v0

    .line 155
    .end local v0    # "$i$f$filter":I
    .end local v14    # "ctr":Ljava/lang/reflect/Constructor;
    .end local v15    # "types":[Ljava/lang/Class;
    .restart local v18    # "$i$f$filter":I
    :cond_5
    goto :goto_4

    .line 33
    .end local v18    # "$i$f$filter":I
    .restart local v0    # "$i$f$filter":I
    .restart local v14    # "ctr":Ljava/lang/reflect/Constructor;
    :cond_6
    move/from16 v18, v0

    .line 155
    .end local v0    # "$i$f$filter":I
    .end local v14    # "ctr":Ljava/lang/reflect/Constructor;
    .restart local v18    # "$i$f$filter":I
    :goto_4
    const/16 v17, 0x0

    :goto_5
    if-eqz v17, :cond_7

    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 153
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    move/from16 v0, v18

    const/4 v5, 0x0

    goto :goto_0

    .line 156
    .end local v8    # "$i$a$1$filter":I
    .end local v10    # "$i$f$all":I
    .end local v11    # "$i$a$1$unknown":I
    .end local v18    # "$i$f$filter":I
    .restart local v0    # "$i$f$filter":I
    :cond_8
    move/from16 v18, v0

    .line 156
    .end local v0    # "$i$f$filter":I
    .end local v4    # "$receiver$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$filterTo":I
    .restart local v18    # "$i$f$filter":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 32
    .end local v1    # "$receiver$iv":[Ljava/lang/Object;
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v18    # "$i$f$filter":I
    nop

    .line 38
    .local v0, "applicableConstructors":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    .end local v9    # "$i$f$filterTo":I
    new-instance v1, Lorg/jetbrains/anko/AnkoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize object parser for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", no acceptable constructors found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 42
    .restart local v9    # "$i$f$filterTo":I
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_d

    .line 43
    nop

    .line 45
    nop

    .line 43
    nop

    .line 44
    nop

    .line 43
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 44
    nop

    .line 44
    .local v1, "$receiver$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    move v4, v3

    .line 157
    .local v4, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 157
    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .line 157
    .local v5, "$receiver$iv$iv":Ljava/lang/Iterable;
    move v6, v9

    .line 158
    .end local v9    # "$i$f$filterTo":I
    .restart local v6    # "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v16, 0x0

    .line 158
    .local v16, "$i$a$1$filter":I
    :cond_a
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 158
    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/reflect/Constructor;

    .line 44
    .local v9, "it":Ljava/lang/reflect/Constructor;
    const-class v10, Lorg/jetbrains/anko/db/ClassParserConstructor;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    .line 44
    .end local v9    # "it":Ljava/lang/reflect/Constructor;
    .end local v16    # "$i$a$1$filter":I
    if-eqz v9, :cond_a

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 159
    :cond_b
    nop

    .line 159
    .end local v5    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 45
    .end local v1    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$filter":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_c

    goto :goto_7

    .line 46
    :cond_c
    new-instance v1, Lorg/jetbrains/anko/AnkoException;

    const-string v3, "Several constructors are annotated with ClassParserConstructor"

    invoke-direct {v1, v3}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 48
    :cond_d
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 42
    :goto_7
    nop

    .line 51
    .local v1, "preferredConstructor":Ljava/lang/reflect/Constructor;
    new-instance v3, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;

    invoke-direct {v3, v1}, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast v3, Lorg/jetbrains/anko/db/RowParser;

    return-object v3
.end method

.method private static final hasApplicableType(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 79
    return v1

    .line 82
    :cond_0
    nop

    .line 83
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 85
    :cond_4
    const-class v0, Ljava/lang/Byte;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-class v0, Ljava/lang/Character;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 86
    :cond_6
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-class v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 87
    :cond_8
    const-class v0, Ljava/lang/Double;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    const-class v0, Ljava/lang/Short;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_0
    goto :goto_1

    .line 88
    :cond_a
    const/4 v1, 0x0

    .line 82
    :goto_1
    return v1
.end method
