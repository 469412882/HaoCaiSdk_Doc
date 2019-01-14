.class public abstract Lorg/jetbrains/anko/db/SelectQueryBuilder;
.super Ljava/lang/Object;
.source "SelectQueryBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectQueryBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectQueryBuilder.kt\norg/jetbrains/anko/db/SelectQueryBuilder\n+ 2 Internals.kt\norg/jetbrains/anko/internals/AnkoInternals\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,222:1\n186#2,8:223\n186#2,8:231\n186#2,8:239\n186#2,8:247\n186#2,8:255\n186#2,8:263\n186#2,8:271\n44#3,2:279\n*E\n*S KotlinDebug\n*F\n+ 1 SelectQueryBuilder.kt\norg/jetbrains/anko/db/SelectQueryBuilder\n*L\n43#1,8:223\n48#1,8:231\n52#1,8:239\n56#1,8:247\n60#1,8:255\n64#1,8:263\n68#1,8:271\n76#1,2:279\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0003J\u001f\u0010\u0005\u001a\u00020\u00002\u0012\u0010\u0019\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\"\u00020\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0006\u0010\u0008\u001a\u00020\u0000J\u0008\u0010\u001b\u001a\u00020\u001cH\u0001J*\u0010\u001d\u001a\u0002H\u001e\"\u0004\u0008\u0000\u0010\u001e2\u0017\u0010\u001f\u001a\u0013\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u0002H\u001e0 \u00a2\u0006\u0002\u0008!\u00a2\u0006\u0002\u0010\"Jk\u0010#\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0010\u0010$\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0011\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003H$\u00a2\u0006\u0002\u0010%J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0003J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0003J?\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00032*\u0010\'\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010(0\u000f\"\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010(\u00a2\u0006\u0002\u0010)J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010*\u001a\u00020+J\u0016\u0010\r\u001a\u00020\u00002\u0006\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020+J\u0018\u0010\u0011\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u00032\u0008\u0008\u0002\u0010-\u001a\u00020.J\'\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H\u001e00\"\u0008\u0008\u0000\u0010\u001e*\u00020\u00012\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u001e02H\u0086\u0008J\'\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H\u001e00\"\u0008\u0008\u0000\u0010\u001e*\u00020\u00012\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u001e03H\u0086\u0008J(\u00104\u001a\u0004\u0018\u0001H\u001e\"\u0008\u0008\u0000\u0010\u001e*\u00020\u00012\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u001e02H\u0086\u0008\u00a2\u0006\u0002\u00105J(\u00104\u001a\u0004\u0018\u0001H\u001e\"\u0008\u0008\u0000\u0010\u001e*\u00020\u00012\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u001e03H\u0086\u0008\u00a2\u0006\u0002\u00106J&\u00107\u001a\u0002H\u001e\"\u0008\u0008\u0000\u0010\u001e*\u00020\u00012\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u001e02H\u0086\u0008\u00a2\u0006\u0002\u00105J&\u00107\u001a\u0002H\u001e\"\u0008\u0008\u0000\u0010\u001e*\u00020\u00012\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u001e03H\u0086\u0008\u00a2\u0006\u0002\u00106J\u0010\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0003H\u0007JA\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u00032*\u0010\'\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010(0\u000f\"\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010(H\u0007\u00a2\u0006\u0002\u0010)J\u000e\u0010:\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0003J?\u0010:\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u00032*\u0010\'\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010(0\u000f\"\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010(\u00a2\u0006\u0002\u0010)J\'\u0010;\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u00032\u0012\u0010\'\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\"\u00020\u0003\u00a2\u0006\u0002\u0010<J)\u0010=\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u00032\u0012\u0010\'\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u000f\"\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010<R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0006j\u0008\u0012\u0004\u0012\u00020\u0003`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0006j\u0008\u0012\u0004\u0012\u00020\u0003`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0006j\u0008\u0012\u0004\u0012\u00020\u0003`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/SelectQueryBuilder;",
        "",
        "tableName",
        "",
        "(Ljava/lang/String;)V",
        "columns",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "distinct",
        "",
        "groupBy",
        "having",
        "havingApplied",
        "limit",
        "nativeSelectionArgs",
        "",
        "[Ljava/lang/String;",
        "orderBy",
        "selection",
        "selectionApplied",
        "getTableName",
        "()Ljava/lang/String;",
        "useNativeSelection",
        "column",
        "name",
        "names",
        "([Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;",
        "doExec",
        "Landroid/database/Cursor;",
        "exec",
        "T",
        "f",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "execQuery",
        "selectionArgs",
        "(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "value",
        "args",
        "Lkotlin/Pair;",
        "(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/SelectQueryBuilder;",
        "count",
        "",
        "offset",
        "direction",
        "Lorg/jetbrains/anko/db/SqlOrderDirection;",
        "parseList",
        "",
        "parser",
        "Lorg/jetbrains/anko/db/MapRowParser;",
        "Lorg/jetbrains/anko/db/RowParser;",
        "parseOpt",
        "(Lorg/jetbrains/anko/db/MapRowParser;)Ljava/lang/Object;",
        "(Lorg/jetbrains/anko/db/RowParser;)Ljava/lang/Object;",
        "parseSingle",
        "where",
        "select",
        "whereArgs",
        "whereSimple",
        "(Ljava/lang/String;[Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;",
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
.field private final columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private distinct:Z

.field private final groupBy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private having:Ljava/lang/String;

.field private havingApplied:Z

.field private limit:Ljava/lang/String;

.field private nativeSelectionArgs:[Ljava/lang/String;

.field private final orderBy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selection:Ljava/lang/String;

.field private selectionApplied:Z

.field private final tableName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useNativeSelection:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tableName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->tableName:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->columns:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->groupBy:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->orderBy:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic orderBy$default(Lorg/jetbrains/anko/db/SelectQueryBuilder;Ljava/lang/String;Lorg/jetbrains/anko/db/SqlOrderDirection;ILjava/lang/Object;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: orderBy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 108
    sget-object p2, Lorg/jetbrains/anko/db/SqlOrderDirection;->ASC:Lorg/jetbrains/anko/db/SqlOrderDirection;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->orderBy(Ljava/lang/String;Lorg/jetbrains/anko/db/SqlOrderDirection;)Lorg/jetbrains/anko/db/SelectQueryBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final column(Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    return-object p0
.end method

.method public final varargs columns([Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 2
    .param p1, "names"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "names"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->columns:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 129
    return-object p0
.end method

.method public final distinct()Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->distinct:Z

    .line 95
    return-object p0
.end method

.method public final doExec()Landroid/database/Cursor;
    .locals 20
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 74
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selection:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 75
    .local v4, "finalSelection":Ljava/lang/String;
    :goto_0
    iget-boolean v0, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->useNativeSelection:Z

    if-eqz v0, :cond_1

    iget-object v0, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->nativeSelectionArgs:[Ljava/lang/String;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 76
    .local v5, "finalSelectionArgs":[Ljava/lang/String;
    :goto_1
    iget-boolean v1, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->distinct:Z

    iget-object v2, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->tableName:Ljava/lang/String;

    iget-object v0, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->columns:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    .line 76
    .local v0, "$receiver$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 279
    .local v3, "$i$f$toTypedArray":I
    if-nez v0, :cond_2

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    .line 280
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    check-cast v7, [Ljava/lang/Object;

    .line 76
    .end local v0    # "$receiver$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    move-object v3, v7

    check-cast v3, [Ljava/lang/String;

    iget-object v0, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->groupBy:Ljava/util/ArrayList;

    move-object v11, v0

    check-cast v11, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->having:Ljava/lang/String;

    iget-object v0, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->orderBy:Ljava/util/ArrayList;

    move-object v11, v0

    check-cast v11, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v10, Lorg/jetbrains/anko/db/SelectQueryBuilder;->limit:Ljava/lang/String;

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->execQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final exec(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/database/Cursor;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->doExec()Landroid/database/Cursor;

    move-result-object v0

    .line 43
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    move v2, v1

    .line 223
    .local v2, "$i$f$useCursor":I
    nop

    .line 224
    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/database/Cursor;

    .line 44
    .local v1, "$i$a$1$useCursor":I
    .local v3, "it":Landroid/database/Cursor;
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v1    # "$i$a$1$useCursor":I
    .end local v3    # "it":Landroid/database/Cursor;
    nop

    .line 227
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v3

    .line 230
    :goto_0
    nop

    .line 230
    .end local v2    # "$i$f$useCursor":I
    return-object v1

    .line 226
    .restart local v2    # "$i$f$useCursor":I
    :catchall_0
    move-exception v1

    .line 227
    nop

    .line 228
    nop

    .line 230
    nop

    .line 226
    nop

    .line 227
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 228
    :catch_1
    move-exception v3

    .line 230
    :goto_1
    throw v1
.end method

.method protected abstract execQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public final groupBy(Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->groupBy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-object p0
.end method

.method public final having(Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 2
    .param p1, "having"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "having"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->havingApplied:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    const-string v1, "Query having was already applied."

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 137
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->havingApplied:Z

    .line 138
    iput-object p1, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->having:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public final varargs having(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 2
    .param p1, "having"    # Ljava/lang/String;
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
            "Lorg/jetbrains/anko/db/SelectQueryBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "having"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    const-string v1, "Query having was already applied."

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->havingApplied:Z

    .line 148
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {p1, v0}, Lorg/jetbrains/anko/db/DatabaseKt;->applyArguments(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->having:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public final limit(I)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 1
    .param p1, "count"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->limit:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public final limit(II)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->limit:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final orderBy(Ljava/lang/String;Lorg/jetbrains/anko/db/SqlOrderDirection;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "direction"    # Lorg/jetbrains/anko/db/SqlOrderDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lorg/jetbrains/anko/db/SqlOrderDirection;->DESC:Lorg/jetbrains/anko/db/SqlOrderDirection;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->orderBy:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->orderBy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_0
    nop

    .line 114
    return-object p0
.end method

.method public final parseList(Lorg/jetbrains/anko/db/MapRowParser;)Ljava/util/List;
    .locals 6
    .param p1, "parser"    # Lorg/jetbrains/anko/db/MapRowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jetbrains/anko/db/MapRowParser<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$f$parseList":I
    const-string v1, "parser"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->doExec()Landroid/database/Cursor;

    move-result-object v1

    .line 68
    .local v1, "cursor$iv":Landroid/database/Cursor;
    const/4 v2, 0x0

    move v3, v2

    .line 271
    .local v3, "$i$f$useCursor":I
    nop

    .line 272
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v1

    check-cast v5, Landroid/database/Cursor;

    .line 69
    .local v2, "$i$a$2$useCursor":I
    .local v5, "it":Landroid/database/Cursor;
    invoke-static {v5, p1}, Lorg/jetbrains/anko/db/SqlParsersKt;->parseList(Landroid/database/Cursor;Lorg/jetbrains/anko/db/MapRowParser;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v2    # "$i$a$2$useCursor":I
    .end local v5    # "it":Landroid/database/Cursor;
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 274
    nop

    .line 275
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v5

    .line 278
    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 278
    .end local v1    # "cursor$iv":Landroid/database/Cursor;
    .end local v3    # "$i$f$useCursor":I
    check-cast v2, Ljava/util/List;

    .line 70
    return-object v2

    .line 274
    .restart local v1    # "cursor$iv":Landroid/database/Cursor;
    .restart local v3    # "$i$f$useCursor":I
    :catchall_0
    move-exception v2

    .line 275
    nop

    .line 276
    nop

    .line 278
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 274
    nop

    .line 275
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 276
    :catch_1
    move-exception v5

    .line 278
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method public final parseList(Lorg/jetbrains/anko/db/RowParser;)Ljava/util/List;
    .locals 6
    .param p1, "parser"    # Lorg/jetbrains/anko/db/RowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jetbrains/anko/db/RowParser<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 56
    .local v0, "$i$f$parseList":I
    const-string v1, "parser"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->doExec()Landroid/database/Cursor;

    move-result-object v1

    .line 56
    .local v1, "cursor$iv":Landroid/database/Cursor;
    const/4 v2, 0x0

    move v3, v2

    .line 247
    .local v3, "$i$f$useCursor":I
    nop

    .line 248
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v1

    check-cast v5, Landroid/database/Cursor;

    .line 57
    .local v2, "$i$a$1$useCursor":I
    .local v5, "it":Landroid/database/Cursor;
    invoke-static {v5, p1}, Lorg/jetbrains/anko/db/SqlParsersKt;->parseList(Landroid/database/Cursor;Lorg/jetbrains/anko/db/RowParser;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v2    # "$i$a$1$useCursor":I
    .end local v5    # "it":Landroid/database/Cursor;
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 250
    nop

    .line 251
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v5

    .line 254
    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 254
    .end local v1    # "cursor$iv":Landroid/database/Cursor;
    .end local v3    # "$i$f$useCursor":I
    check-cast v2, Ljava/util/List;

    .line 58
    return-object v2

    .line 250
    .restart local v1    # "cursor$iv":Landroid/database/Cursor;
    .restart local v3    # "$i$f$useCursor":I
    :catchall_0
    move-exception v2

    .line 251
    nop

    .line 252
    nop

    .line 254
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 250
    nop

    .line 251
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 252
    :catch_1
    move-exception v5

    .line 254
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method public final parseOpt(Lorg/jetbrains/anko/db/MapRowParser;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lorg/jetbrains/anko/db/MapRowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jetbrains/anko/db/MapRowParser<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 64
    .local v0, "$i$f$parseOpt":I
    const-string v1, "parser"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->doExec()Landroid/database/Cursor;

    move-result-object v1

    .line 64
    .local v1, "cursor$iv":Landroid/database/Cursor;
    const/4 v2, 0x0

    move v3, v2

    .line 263
    .local v3, "$i$f$useCursor":I
    nop

    .line 264
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v1

    check-cast v5, Landroid/database/Cursor;

    .line 65
    .local v2, "$i$a$2$useCursor":I
    .local v5, "it":Landroid/database/Cursor;
    invoke-static {v5, p1}, Lorg/jetbrains/anko/db/SqlParsersKt;->parseOpt(Landroid/database/Cursor;Lorg/jetbrains/anko/db/MapRowParser;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v2    # "$i$a$2$useCursor":I
    .end local v5    # "it":Landroid/database/Cursor;
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 266
    nop

    .line 267
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v5

    .line 270
    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 66
    .end local v1    # "cursor$iv":Landroid/database/Cursor;
    .end local v3    # "$i$f$useCursor":I
    return-object v2

    .line 266
    .restart local v1    # "cursor$iv":Landroid/database/Cursor;
    .restart local v3    # "$i$f$useCursor":I
    :catchall_0
    move-exception v2

    .line 267
    nop

    .line 268
    nop

    .line 270
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 266
    nop

    .line 267
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 268
    :catch_1
    move-exception v5

    .line 270
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method public final parseOpt(Lorg/jetbrains/anko/db/RowParser;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lorg/jetbrains/anko/db/RowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jetbrains/anko/db/RowParser<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$parseOpt":I
    const-string v1, "parser"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->doExec()Landroid/database/Cursor;

    move-result-object v1

    .line 52
    .local v1, "cursor$iv":Landroid/database/Cursor;
    const/4 v2, 0x0

    move v3, v2

    .line 239
    .local v3, "$i$f$useCursor":I
    nop

    .line 240
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v1

    check-cast v5, Landroid/database/Cursor;

    .line 53
    .local v2, "$i$a$1$useCursor":I
    .local v5, "it":Landroid/database/Cursor;
    invoke-static {v5, p1}, Lorg/jetbrains/anko/db/SqlParsersKt;->parseOpt(Landroid/database/Cursor;Lorg/jetbrains/anko/db/RowParser;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v2    # "$i$a$1$useCursor":I
    .end local v5    # "it":Landroid/database/Cursor;
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 242
    nop

    .line 243
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v5

    .line 246
    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 54
    .end local v1    # "cursor$iv":Landroid/database/Cursor;
    .end local v3    # "$i$f$useCursor":I
    return-object v2

    .line 242
    .restart local v1    # "cursor$iv":Landroid/database/Cursor;
    .restart local v3    # "$i$f$useCursor":I
    :catchall_0
    move-exception v2

    .line 243
    nop

    .line 244
    nop

    .line 246
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 242
    nop

    .line 243
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 244
    :catch_1
    move-exception v5

    .line 246
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method public final parseSingle(Lorg/jetbrains/anko/db/MapRowParser;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lorg/jetbrains/anko/db/MapRowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jetbrains/anko/db/MapRowParser<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 60
    .local v0, "$i$f$parseSingle":I
    const-string v1, "parser"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->doExec()Landroid/database/Cursor;

    move-result-object v1

    .line 60
    .local v1, "cursor$iv":Landroid/database/Cursor;
    const/4 v2, 0x0

    move v3, v2

    .line 255
    .local v3, "$i$f$useCursor":I
    nop

    .line 256
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v1

    check-cast v5, Landroid/database/Cursor;

    .line 61
    .local v2, "$i$a$2$useCursor":I
    .local v5, "it":Landroid/database/Cursor;
    invoke-static {v5, p1}, Lorg/jetbrains/anko/db/SqlParsersKt;->parseSingle(Landroid/database/Cursor;Lorg/jetbrains/anko/db/MapRowParser;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v2    # "$i$a$2$useCursor":I
    .end local v5    # "it":Landroid/database/Cursor;
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 258
    nop

    .line 259
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v5

    .line 262
    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 62
    .end local v1    # "cursor$iv":Landroid/database/Cursor;
    .end local v3    # "$i$f$useCursor":I
    return-object v2

    .line 258
    .restart local v1    # "cursor$iv":Landroid/database/Cursor;
    .restart local v3    # "$i$f$useCursor":I
    :catchall_0
    move-exception v2

    .line 259
    nop

    .line 260
    nop

    .line 262
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 258
    nop

    .line 259
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 260
    :catch_1
    move-exception v5

    .line 262
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method public final parseSingle(Lorg/jetbrains/anko/db/RowParser;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lorg/jetbrains/anko/db/RowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jetbrains/anko/db/RowParser<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$parseSingle":I
    const-string v1, "parser"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->doExec()Landroid/database/Cursor;

    move-result-object v1

    .line 48
    .local v1, "cursor$iv":Landroid/database/Cursor;
    const/4 v2, 0x0

    move v3, v2

    .line 231
    .local v3, "$i$f$useCursor":I
    nop

    .line 232
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v1

    check-cast v5, Landroid/database/Cursor;

    .line 49
    .local v2, "$i$a$1$useCursor":I
    .local v5, "it":Landroid/database/Cursor;
    invoke-static {v5, p1}, Lorg/jetbrains/anko/db/SqlParsersKt;->parseSingle(Landroid/database/Cursor;Lorg/jetbrains/anko/db/RowParser;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v2    # "$i$a$1$useCursor":I
    .end local v5    # "it":Landroid/database/Cursor;
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 234
    nop

    .line 235
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v5

    .line 238
    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 50
    .end local v1    # "cursor$iv":Landroid/database/Cursor;
    .end local v3    # "$i$f$useCursor":I
    return-object v2

    .line 234
    .restart local v1    # "cursor$iv":Landroid/database/Cursor;
    .restart local v3    # "$i$f$useCursor":I
    :catchall_0
    move-exception v2

    .line 235
    nop

    .line 236
    nop

    .line 238
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 234
    nop

    .line 235
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 236
    :catch_1
    move-exception v5

    .line 238
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v2
.end method

.method public final where(Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use whereArgs(select) instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "whereArgs(select)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->whereArgs(Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final varargs where(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
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
            "Lorg/jetbrains/anko/db/SelectQueryBuilder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use whereArgs(select, args) instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "whereArgs(select, args)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-virtual {p0, p1, v0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->whereArgs(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/SelectQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final whereArgs(Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 2
    .param p1, "select"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    const-string v1, "Query selection was already applied."

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 178
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->useNativeSelection:Z

    .line 180
    iput-object p1, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selection:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public final varargs whereArgs(Ljava/lang/String;[Lkotlin/Pair;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
    .locals 2
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
            "Lorg/jetbrains/anko/db/SelectQueryBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    const-string v1, "Query selection was already applied."

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->useNativeSelection:Z

    .line 164
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {p1, v0}, Lorg/jetbrains/anko/db/DatabaseKt;->applyArguments(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selection:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public final varargs whereSimple(Ljava/lang/String;[Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
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

    .line 185
    iget-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lorg/jetbrains/anko/AnkoException;

    const-string v1, "Query selection was already applied."

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 189
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selectionApplied:Z

    .line 190
    iput-boolean v0, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->useNativeSelection:Z

    .line 191
    iput-object p1, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->selection:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lorg/jetbrains/anko/db/SelectQueryBuilder;->nativeSelectionArgs:[Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public final varargs whereSupport(Ljava/lang/String;[Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;
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

    .line 198
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jetbrains/anko/db/SelectQueryBuilder;->whereSimple(Ljava/lang/String;[Ljava/lang/String;)Lorg/jetbrains/anko/db/SelectQueryBuilder;

    move-result-object v0

    return-object v0
.end method
