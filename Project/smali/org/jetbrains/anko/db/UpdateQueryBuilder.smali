.class public abstract Lorg/jetbrains/anko/db/UpdateQueryBuilder;
.super Ljava/lang/Object;
.source "UpdateQueryBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateQueryBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateQueryBuilder.kt\norg/jetbrains/anko/db/UpdateQueryBuilder\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,110:1\n9219#2,3:111\n*E\n*S KotlinDebug\n*F\n+ 1 UpdateQueryBuilder.kt\norg/jetbrains/anko/db/UpdateQueryBuilder\n*L\n44#1,3:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001c\u0010\u0004\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0014J9\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00032\u0010\u0010\u0019\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005H&\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0003H\u0007JA\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00032*\u0010\u001d\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00060\u0005\"\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u001eJ\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0003J?\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00032*\u0010\u001d\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00060\u0005\"\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0010\u001eJ\'\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00032\u0012\u0010\u001d\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005\"\u00020\u0003\u00a2\u0006\u0002\u0010 J)\u0010!\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00032\u0012\u0010\u001d\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005\"\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010 R\u001a\u0010\u0008\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R)\u0010\u0004\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00060\u0005\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lorg/jetbrains/anko/db/UpdateQueryBuilder;",
        "",
        "tableName",
        "",
        "values",
        "",
        "Lkotlin/Pair;",
        "(Ljava/lang/String;[Lkotlin/Pair;)V",
        "nativeSelectionArgs",
        "[Ljava/lang/String;",
        "selection",
        "selectionApplied",
        "",
        "getTableName",
        "()Ljava/lang/String;",
        "useNativeSelection",
        "getValues",
        "()[Lkotlin/Pair;",
        "[Lkotlin/Pair;",
        "exec",
        "",
        "execUpdate",
        "table",
        "Landroid/content/ContentValues;",
        "whereClause",
        "whereArgs",
        "(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I",
        "where",
        "select",
        "args",
        "(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;",
        "whereSimple",
        "(Ljava/lang/String;[Ljava/lang/String;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;",
        "whereSupport",
        "sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field private nativeSelectionArgs:[Ljava/lang/String;

.field private selection:Ljava/lang/String;

.field private selectionApplied:Z

.field private final tableName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useNativeSelection:Z

.field private final values:[Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "values"    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tableName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->tableName:Ljava/lang/String;

    iput-object p2, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->values:[Lkotlin/Pair;

    return-void
.end method


# virtual methods
.method public final exec()I
    .locals 4

    .line 82
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selectionApplied:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selection:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 83
    .local v0, "finalSelection":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selectionApplied:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->useNativeSelection:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->nativeSelectionArgs:[Ljava/lang/String;

    nop

    .line 84
    .local v1, "finalSelectionArgs":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->tableName:Ljava/lang/String;

    iget-object v3, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->values:[Lkotlin/Pair;

    invoke-static {v3}, Lorg/jetbrains/anko/db/DatabaseKt;->toContentValues([Lkotlin/Pair;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->execUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public abstract execUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public final getValues()[Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->values:[Lkotlin/Pair;

    return-object v0
.end method

.method public final where(Ljava/lang/String;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use whereArgs() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "whereArgs(select)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->whereArgs(Ljava/lang/String;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final varargs where(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "args"    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jetbrains/anko/db/UpdateQueryBuilder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use whereArgs() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "whereArgs(select, *args)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-virtual {p0, p1, v0}, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->whereArgs(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final whereArgs(Ljava/lang/String;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;
    .locals 2
    .param p1, "select"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selectionApplied:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    const-string v1, "Query selection was already applied."

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selectionApplied:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->useNativeSelection:Z

    .line 61
    iput-object p1, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selection:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public final varargs whereArgs(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;
    .locals 11
    .param p1, "select"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "args"    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jetbrains/anko/db/UpdateQueryBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selectionApplied:Z

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    const-string v1, "Query selection was already applied."

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selectionApplied:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->useNativeSelection:Z

    .line 44
    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    .line 44
    .local v1, "$receiver$iv":[Ljava/lang/Object;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v2, "initial$iv":Ljava/lang/Object;
    move v3, v0

    .line 111
    .local v3, "$i$f$fold":I
    move-object v4, v2

    .line 112
    .local v4, "accumulator$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 112
    .local v5, "$i$a$1$fold":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_1

    aget-object v6, v1, v0

    .line 112
    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    .line 112
    .local v7, "arg":Lkotlin/Pair;
    move-object v8, v4

    check-cast v8, Ljava/util/HashMap;

    .line 45
    .local v8, "map":Ljava/util/HashMap;
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    nop

    .line 46
    .end local v5    # "$i$a$1$fold":I
    .end local v7    # "arg":Lkotlin/Pair;
    move-object v4, v8

    .line 46
    .end local v8    # "map":Ljava/util/HashMap;
    add-int/lit8 v0, v0, 0x1

    .line 46
    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 113
    :cond_1
    nop

    .line 44
    .end local v1    # "$receiver$iv":[Ljava/lang/Object;
    .end local v2    # "initial$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$fold":I
    .end local v4    # "accumulator$iv":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Ljava/util/HashMap;

    .line 48
    .local v0, "argsMap":Ljava/util/HashMap;
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-static {p1, v1}, Lorg/jetbrains/anko/db/DatabaseKt;->applyArguments(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selection:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public final varargs whereSimple(Ljava/lang/String;[Ljava/lang/String;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;
    .locals 2
    .param p1, "select"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selectionApplied:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    const-string v1, "Query selection was already applied."

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selectionApplied:Z

    .line 70
    iput-boolean v0, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->useNativeSelection:Z

    .line 71
    iput-object p1, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->selection:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->nativeSelectionArgs:[Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public final varargs whereSupport(Ljava/lang/String;[Ljava/lang/String;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use whereSimple() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "whereSimple(select, *args)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jetbrains/anko/db/UpdateQueryBuilder;->whereSimple(Ljava/lang/String;[Ljava/lang/String;)Lorg/jetbrains/anko/db/UpdateQueryBuilder;

    move-result-object v0

    return-object v0
.end method
