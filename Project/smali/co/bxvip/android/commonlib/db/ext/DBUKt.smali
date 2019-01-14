.class public final Lco/bxvip/android/commonlib/db/ext/DBUKt;
.super Ljava/lang/Object;
.source "DBU.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDBU.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBU.kt\nco/bxvip/android/commonlib/db/ext/DBUKt\n*L\n1#1,71:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "dc",
        "",
        "key",
        "",
        "ec",
        "android-support"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final dc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "key"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "(this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .local v0, "array":[C
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 49
    .local v2, "i":I
    aget-char v3, v0, v2

    sub-int/2addr v3, p1

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 48
    .end local v2    # "i":I
    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static bridge synthetic dc$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 46
    const/16 p1, 0x64

    :cond_0
    invoke-static {p0, p1}, Lco/bxvip/android/commonlib/db/ext/DBUKt;->dc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ec(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "key"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "(this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .local v0, "array":[C
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    .local v2, "i":I
    aget-char v3, v0, v2

    add-int/2addr v3, p1

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 36
    .end local v2    # "i":I
    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static bridge synthetic ec$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 34
    const/16 p1, 0x64

    :cond_0
    invoke-static {p0, p1}, Lco/bxvip/android/commonlib/db/ext/DBUKt;->ec(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
