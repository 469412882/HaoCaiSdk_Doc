.class public final Lorg/jetbrains/anko/db/SqlParsersKt;
.super Ljava/lang/Object;
.source "SqlParsers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSqlParsers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SqlParsers.kt\norg/jetbrains/anko/db/SqlParsersKt\n+ 2 Internals.kt\norg/jetbrains/anko/internals/AnkoInternals\n*L\n1#1,188:1\n186#2,8:189\n186#2,8:197\n186#2,8:205\n186#2,8:213\n186#2,8:221\n186#2,8:229\n*E\n*S KotlinDebug\n*F\n+ 1 SqlParsers.kt\norg/jetbrains/anko/db/SqlParsersKt\n*L\n64#1,8:189\n71#1,8:197\n80#1,8:205\n90#1,8:213\n97#1,8:221\n106#1,8:229\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u001d\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0002\u00a2\u0006\u0002\u0010\u001c\u001a\u001e\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u001e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002\u001a\u001e\u0010\u001f\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u001e0 *\u00020\u001b\u001a\u0018\u0010!\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00180 *\u00020\u001b\u001a\u0016\u0010\"\u001a\u0004\u0018\u00010\u0019*\u00020\u001b2\u0006\u0010#\u001a\u00020\u000cH\u0002\u001a \u0010$\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u001e0 *\u00020\u001bH\u0007\u001a(\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\'0&\"\u0008\u0008\u0000\u0010\'*\u00020\u0019*\u00020\u001b2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0)\u001a(\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\'0&\"\u0008\u0008\u0000\u0010\'*\u00020\u0019*\u00020\u001b2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0\u0001\u001a)\u0010*\u001a\u0004\u0018\u0001H\'\"\u0008\u0008\u0000\u0010\'*\u00020\u0019*\u00020\u001b2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0)\u00a2\u0006\u0002\u0010+\u001a)\u0010*\u001a\u0004\u0018\u0001H\'\"\u0008\u0008\u0000\u0010\'*\u00020\u0019*\u00020\u001b2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0\u0001\u00a2\u0006\u0002\u0010,\u001a\'\u0010-\u001a\u0002H\'\"\u0008\u0008\u0000\u0010\'*\u00020\u0019*\u00020\u001b2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0)\u00a2\u0006\u0002\u0010+\u001a\'\u0010-\u001a\u0002H\'\"\u0008\u0008\u0000\u0010\'*\u00020\u0019*\u00020\u001b2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0\u0001\u00a2\u0006\u0002\u0010,\u001a\u001a\u0010.\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00180 *\u00020\u001bH\u0007\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0004\"\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0004\"\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0004\"\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0004\"\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0004\"\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0004\u00a8\u0006/"
    }
    d2 = {
        "BlobParser",
        "Lorg/jetbrains/anko/db/RowParser;",
        "",
        "getBlobParser",
        "()Lorg/jetbrains/anko/db/RowParser;",
        "DoubleParser",
        "",
        "getDoubleParser",
        "FloatParser",
        "",
        "getFloatParser",
        "IntParser",
        "",
        "getIntParser",
        "LongParser",
        "",
        "getLongParser",
        "ShortParser",
        "",
        "getShortParser",
        "StringParser",
        "",
        "getStringParser",
        "readColumnsArray",
        "",
        "",
        "cursor",
        "Landroid/database/Cursor;",
        "(Landroid/database/Cursor;)[Ljava/lang/Object;",
        "readColumnsMap",
        "",
        "asMapSequence",
        "Lkotlin/sequences/Sequence;",
        "asSequence",
        "getColumnValue",
        "index",
        "mapSequence",
        "parseList",
        "",
        "T",
        "parser",
        "Lorg/jetbrains/anko/db/MapRowParser;",
        "parseOpt",
        "(Landroid/database/Cursor;Lorg/jetbrains/anko/db/MapRowParser;)Ljava/lang/Object;",
        "(Landroid/database/Cursor;Lorg/jetbrains/anko/db/RowParser;)Ljava/lang/Object;",
        "parseSingle",
        "sequence",
        "sqlite_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field private static final BlobParser:Lorg/jetbrains/anko/db/RowParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jetbrains/anko/db/RowParser<",
            "[B>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DoubleParser:Lorg/jetbrains/anko/db/RowParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FloatParser:Lorg/jetbrains/anko/db/RowParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IntParser:Lorg/jetbrains/anko/db/RowParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LongParser:Lorg/jetbrains/anko/db/RowParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ShortParser:Lorg/jetbrains/anko/db/RowParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final StringParser:Lorg/jetbrains/anko/db/RowParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lorg/jetbrains/anko/db/ScalarColumnParser;

    sget-object v1, Lorg/jetbrains/anko/db/SqlParsersKt$ShortParser$1;->INSTANCE:Lorg/jetbrains/anko/db/SqlParsersKt$ShortParser$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/db/ScalarColumnParser;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lorg/jetbrains/anko/db/RowParser;

    sput-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->ShortParser:Lorg/jetbrains/anko/db/RowParser;

    .line 57
    new-instance v0, Lorg/jetbrains/anko/db/ScalarColumnParser;

    sget-object v1, Lorg/jetbrains/anko/db/SqlParsersKt$IntParser$1;->INSTANCE:Lorg/jetbrains/anko/db/SqlParsersKt$IntParser$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/db/ScalarColumnParser;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lorg/jetbrains/anko/db/RowParser;

    sput-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->IntParser:Lorg/jetbrains/anko/db/RowParser;

    .line 58
    new-instance v0, Lorg/jetbrains/anko/db/SingleColumnParser;

    invoke-direct {v0}, Lorg/jetbrains/anko/db/SingleColumnParser;-><init>()V

    check-cast v0, Lorg/jetbrains/anko/db/RowParser;

    sput-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->LongParser:Lorg/jetbrains/anko/db/RowParser;

    .line 59
    new-instance v0, Lorg/jetbrains/anko/db/ScalarColumnParser;

    sget-object v1, Lorg/jetbrains/anko/db/SqlParsersKt$FloatParser$1;->INSTANCE:Lorg/jetbrains/anko/db/SqlParsersKt$FloatParser$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/db/ScalarColumnParser;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lorg/jetbrains/anko/db/RowParser;

    sput-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->FloatParser:Lorg/jetbrains/anko/db/RowParser;

    .line 60
    new-instance v0, Lorg/jetbrains/anko/db/SingleColumnParser;

    invoke-direct {v0}, Lorg/jetbrains/anko/db/SingleColumnParser;-><init>()V

    check-cast v0, Lorg/jetbrains/anko/db/RowParser;

    sput-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->DoubleParser:Lorg/jetbrains/anko/db/RowParser;

    .line 61
    new-instance v0, Lorg/jetbrains/anko/db/SingleColumnParser;

    invoke-direct {v0}, Lorg/jetbrains/anko/db/SingleColumnParser;-><init>()V

    check-cast v0, Lorg/jetbrains/anko/db/RowParser;

    sput-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->StringParser:Lorg/jetbrains/anko/db/RowParser;

    .line 62
    new-instance v0, Lorg/jetbrains/anko/db/SingleColumnParser;

    invoke-direct {v0}, Lorg/jetbrains/anko/db/SingleColumnParser;-><init>()V

    check-cast v0, Lorg/jetbrains/anko/db/RowParser;

    sput-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->BlobParser:Lorg/jetbrains/anko/db/RowParser;

    return-void
.end method

.method public static final synthetic access$readColumnsArray(Landroid/database/Cursor;)[Ljava/lang/Object;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/jetbrains/anko/db/SqlParsersKt;->readColumnsArray(Landroid/database/Cursor;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readColumnsMap(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/jetbrains/anko/db/SqlParsersKt;->readColumnsMap(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final asMapSequence(Landroid/database/Cursor;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lorg/jetbrains/anko/db/CursorMapSequence;

    invoke-direct {v0, p0}, Lorg/jetbrains/anko/db/CursorMapSequence;-><init>(Landroid/database/Cursor;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final asSequence(Landroid/database/Cursor;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lorg/jetbrains/anko/db/CursorSequence;

    invoke-direct {v0, p0}, Lorg/jetbrains/anko/db/CursorSequence;-><init>(Landroid/database/Cursor;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final getBlobParser()Lorg/jetbrains/anko/db/RowParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jetbrains/anko/db/RowParser<",
            "[B>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    sget-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->BlobParser:Lorg/jetbrains/anko/db/RowParser;

    return-object v0
.end method

.method private static final getColumnValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 2
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "index"    # I

    .line 135
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 137
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    goto :goto_0

    .line 141
    :pswitch_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Serializable;

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Serializable;

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 138
    :pswitch_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDoubleParser()Lorg/jetbrains/anko/db/RowParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    sget-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->DoubleParser:Lorg/jetbrains/anko/db/RowParser;

    return-object v0
.end method

.method public static final getFloatParser()Lorg/jetbrains/anko/db/RowParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    sget-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->FloatParser:Lorg/jetbrains/anko/db/RowParser;

    return-object v0
.end method

.method public static final getIntParser()Lorg/jetbrains/anko/db/RowParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 57
    sget-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->IntParser:Lorg/jetbrains/anko/db/RowParser;

    return-object v0
.end method

.method public static final getLongParser()Lorg/jetbrains/anko/db/RowParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 58
    sget-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->LongParser:Lorg/jetbrains/anko/db/RowParser;

    return-object v0
.end method

.method public static final getShortParser()Lorg/jetbrains/anko/db/RowParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    sget-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->ShortParser:Lorg/jetbrains/anko/db/RowParser;

    return-object v0
.end method

.method public static final getStringParser()Lorg/jetbrains/anko/db/RowParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jetbrains/anko/db/RowParser<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    sget-object v0, Lorg/jetbrains/anko/db/SqlParsersKt;->StringParser:Lorg/jetbrains/anko/db/RowParser;

    return-object v0
.end method

.method public static final mapSequence(Landroid/database/Cursor;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use asMapSequence() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "asMapSequence()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lorg/jetbrains/anko/db/CursorMapSequence;

    invoke-direct {v0, p0}, Lorg/jetbrains/anko/db/CursorMapSequence;-><init>(Landroid/database/Cursor;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final parseList(Landroid/database/Cursor;Lorg/jetbrains/anko/db/MapRowParser;)Ljava/util/List;
    .locals 5
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/jetbrains/anko/db/MapRowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lorg/jetbrains/anko/db/MapRowParser<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    move v1, v0

    .line 229
    .local v1, "$i$f$useCursor":I
    nop

    .line 230
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    .line 107
    .local v0, "$i$a$2$useCursor":I
    .local v2, "it":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v3, "list":Ljava/util/ArrayList;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    invoke-static {p0}, Lorg/jetbrains/anko/db/SqlParsersKt;->readColumnsMap(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/jetbrains/anko/db/MapRowParser;->parseRow(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 109
    goto :goto_0

    .line 113
    :cond_0
    move-object v0, v3

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v0    # "$i$a$2$useCursor":I
    .end local v1    # "$i$f$useCursor":I
    .end local v2    # "it":Landroid/database/Cursor;
    .end local v3    # "list":Ljava/util/ArrayList;
    nop

    .line 233
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v1

    .line 236
    :goto_1
    return-object v0

    .line 232
    .restart local v1    # "$i$f$useCursor":I
    :catchall_0
    move-exception v0

    .line 236
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 236
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 236
    nop

    .line 232
    nop

    .line 233
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 234
    :catch_1
    move-exception v2

    .line 236
    :goto_2
    throw v0
.end method

.method public static final parseList(Landroid/database/Cursor;Lorg/jetbrains/anko/db/RowParser;)Ljava/util/List;
    .locals 5
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/jetbrains/anko/db/RowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lorg/jetbrains/anko/db/RowParser<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    move v1, v0

    .line 205
    .local v1, "$i$f$useCursor":I
    nop

    .line 206
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    .line 81
    .local v0, "$i$a$1$useCursor":I
    .local v2, "it":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v3, "list":Ljava/util/ArrayList;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-static {p0}, Lorg/jetbrains/anko/db/SqlParsersKt;->readColumnsArray(Landroid/database/Cursor;)[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/jetbrains/anko/db/RowParser;->parseRow([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 83
    goto :goto_0

    .line 87
    :cond_0
    move-object v0, v3

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v0    # "$i$a$1$useCursor":I
    .end local v1    # "$i$f$useCursor":I
    .end local v2    # "it":Landroid/database/Cursor;
    .end local v3    # "list":Ljava/util/ArrayList;
    nop

    .line 209
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v1

    .line 212
    :goto_1
    return-object v0

    .line 208
    .restart local v1    # "$i$f$useCursor":I
    :catchall_0
    move-exception v0

    .line 212
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 212
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 212
    nop

    .line 208
    nop

    .line 209
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 210
    :catch_1
    move-exception v2

    .line 212
    :goto_2
    throw v0
.end method

.method public static final parseOpt(Landroid/database/Cursor;Lorg/jetbrains/anko/db/MapRowParser;)Ljava/lang/Object;
    .locals 5
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/jetbrains/anko/db/MapRowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lorg/jetbrains/anko/db/MapRowParser<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    move v1, v0

    .line 221
    .local v1, "$i$f$useCursor":I
    nop

    .line 222
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    .line 98
    .local v0, "$i$a$2$useCursor":I
    .local v2, "it":Landroid/database/Cursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 99
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    const-string v4, "parseSingle accepts only cursors with getCount() == 1 or empty cursors"

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 100
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 224
    .end local v0    # "$i$a$2$useCursor":I
    .end local v1    # "$i$f$useCursor":I
    .end local v2    # "it":Landroid/database/Cursor;
    nop

    .line 225
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 228
    :goto_0
    return-object v0

    .line 102
    .restart local v0    # "$i$a$2$useCursor":I
    .restart local v1    # "$i$f$useCursor":I
    .restart local v2    # "it":Landroid/database/Cursor;
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    invoke-static {p0}, Lorg/jetbrains/anko/db/SqlParsersKt;->readColumnsMap(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/jetbrains/anko/db/MapRowParser;->parseRow(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .end local v0    # "$i$a$2$useCursor":I
    .end local v1    # "$i$f$useCursor":I
    .end local v2    # "it":Landroid/database/Cursor;
    nop

    .line 225
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 226
    :catch_1
    move-exception v1

    .line 228
    :goto_1
    return-object v0

    .line 224
    .restart local v1    # "$i$f$useCursor":I
    :catchall_0
    move-exception v0

    .line 228
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 228
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 228
    nop

    .line 224
    nop

    .line 225
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 226
    :catch_2
    move-exception v2

    .line 228
    :goto_2
    throw v0
.end method

.method public static final parseOpt(Landroid/database/Cursor;Lorg/jetbrains/anko/db/RowParser;)Ljava/lang/Object;
    .locals 5
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/jetbrains/anko/db/RowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lorg/jetbrains/anko/db/RowParser<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    move v1, v0

    .line 197
    .local v1, "$i$f$useCursor":I
    nop

    .line 198
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    .line 72
    .local v0, "$i$a$1$useCursor":I
    .local v2, "it":Landroid/database/Cursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 73
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    const-string v4, "parseSingle accepts only cursors with a single entry or empty cursors"

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 74
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 200
    .end local v0    # "$i$a$1$useCursor":I
    .end local v1    # "$i$f$useCursor":I
    .end local v2    # "it":Landroid/database/Cursor;
    nop

    .line 201
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 204
    :goto_0
    return-object v0

    .line 76
    .restart local v0    # "$i$a$1$useCursor":I
    .restart local v1    # "$i$f$useCursor":I
    .restart local v2    # "it":Landroid/database/Cursor;
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    invoke-static {p0}, Lorg/jetbrains/anko/db/SqlParsersKt;->readColumnsArray(Landroid/database/Cursor;)[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/jetbrains/anko/db/RowParser;->parseRow([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .end local v0    # "$i$a$1$useCursor":I
    .end local v1    # "$i$f$useCursor":I
    .end local v2    # "it":Landroid/database/Cursor;
    nop

    .line 201
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 202
    :catch_1
    move-exception v1

    .line 204
    :goto_1
    return-object v0

    .line 200
    .restart local v1    # "$i$f$useCursor":I
    :catchall_0
    move-exception v0

    .line 204
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 204
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 204
    nop

    .line 200
    nop

    .line 201
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 202
    :catch_2
    move-exception v2

    .line 204
    :goto_2
    throw v0
.end method

.method public static final parseSingle(Landroid/database/Cursor;Lorg/jetbrains/anko/db/MapRowParser;)Ljava/lang/Object;
    .locals 5
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/jetbrains/anko/db/MapRowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lorg/jetbrains/anko/db/MapRowParser<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    move v1, v0

    .line 213
    .local v1, "$i$f$useCursor":I
    nop

    .line 214
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    .line 91
    .local v0, "$i$a$2$useCursor":I
    .local v2, "it":Landroid/database/Cursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 92
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    const-string v4, "parseSingle accepts only cursors with getCount() == 1"

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 93
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    invoke-static {p0}, Lorg/jetbrains/anko/db/SqlParsersKt;->readColumnsMap(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/jetbrains/anko/db/MapRowParser;->parseRow(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v0    # "$i$a$2$useCursor":I
    .end local v1    # "$i$f$useCursor":I
    .end local v2    # "it":Landroid/database/Cursor;
    nop

    .line 217
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 220
    :goto_0
    return-object v0

    .line 216
    .restart local v1    # "$i$f$useCursor":I
    :catchall_0
    move-exception v0

    .line 220
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 220
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 220
    nop

    .line 216
    nop

    .line 217
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 218
    :catch_1
    move-exception v2

    .line 220
    :goto_1
    throw v0
.end method

.method public static final parseSingle(Landroid/database/Cursor;Lorg/jetbrains/anko/db/RowParser;)Ljava/lang/Object;
    .locals 5
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/jetbrains/anko/db/RowParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lorg/jetbrains/anko/db/RowParser<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    move v1, v0

    .line 189
    .local v1, "$i$f$useCursor":I
    nop

    .line 190
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/database/Cursor;

    .line 65
    .local v0, "$i$a$1$useCursor":I
    .local v2, "it":Landroid/database/Cursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 66
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    const-string v4, "parseSingle accepts only cursors with a single entry"

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 67
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    invoke-static {p0}, Lorg/jetbrains/anko/db/SqlParsersKt;->readColumnsArray(Landroid/database/Cursor;)[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/jetbrains/anko/db/RowParser;->parseRow([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .end local v0    # "$i$a$1$useCursor":I
    .end local v1    # "$i$f$useCursor":I
    .end local v2    # "it":Landroid/database/Cursor;
    nop

    .line 193
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 196
    :goto_0
    return-object v0

    .line 192
    .restart local v1    # "$i$f$useCursor":I
    :catchall_0
    move-exception v0

    .line 196
    nop

    .line 192
    nop

    .line 193
    nop

    .line 194
    nop

    .line 196
    nop

    .line 192
    nop

    .line 193
    nop

    .line 194
    nop

    .line 196
    nop

    .line 192
    nop

    .line 193
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 194
    :catch_1
    move-exception v2

    .line 196
    :goto_1
    throw v0
.end method

.method private static final readColumnsArray(Landroid/database/Cursor;)[Ljava/lang/Object;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 147
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 148
    .local v0, "count":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 149
    .local v1, "arr":[Ljava/lang/Object;
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 150
    .local v3, "i":I
    :goto_0
    invoke-static {p0, v3}, Lorg/jetbrains/anko/db/SqlParsersKt;->getColumnValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 149
    if-eq v3, v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 149
    .end local v3    # "i":I
    goto :goto_0

    .line 152
    :cond_0
    return-object v1
.end method

.method private static final readColumnsMap(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 157
    .local v0, "count":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v1, "map":Ljava/util/HashMap;
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 159
    .local v3, "i":I
    :goto_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3}, Lorg/jetbrains/anko/db/SqlParsersKt;->getColumnValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    if-eq v3, v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 158
    .end local v3    # "i":I
    goto :goto_0

    .line 161
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method public static final sequence(Landroid/database/Cursor;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0, "$receiver"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use asSequence() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "asSequence()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lorg/jetbrains/anko/db/CursorSequence;

    invoke-direct {v0, p0}, Lorg/jetbrains/anko/db/CursorSequence;-><init>(Landroid/database/Cursor;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method
