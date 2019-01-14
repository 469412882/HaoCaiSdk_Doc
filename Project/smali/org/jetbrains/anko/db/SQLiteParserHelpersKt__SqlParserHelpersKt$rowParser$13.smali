.class public final Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$13;
.super Ljava/lang/Object;
.source "SqlParserHelpers.kt"

# interfaces
.implements Lorg/jetbrains/anko/db/RowParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt;->rowParser(Lkotlin/jvm/functions/Function13;)Lorg/jetbrains/anko/db/RowParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/db/RowParser<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00028\u00002\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0016\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "org/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$13",
        "Lorg/jetbrains/anko/db/RowParser;",
        "(Lkotlin/jvm/functions/Function13;)V",
        "parseRow",
        "columns",
        "",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "anko-sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic $parser:Lkotlin/jvm/functions/Function13;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function13;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lkotlin/jvm/functions/Function13;

    .line 164
    iput-object p1, p0, Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$13;->$parser:Lkotlin/jvm/functions/Function13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseRow([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "columns"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "columns"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    array-length v1, v0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 167
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Invalid row: 13 columns required"

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 170
    :cond_0
    nop

    .line 171
    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$13;->$parser:Lkotlin/jvm/functions/Function13;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/Object;

    const/4 v5, 0x2

    aget-object v5, v0, v5

    check-cast v5, Ljava/lang/Object;

    const/4 v6, 0x3

    aget-object v6, v0, v6

    check-cast v6, Ljava/lang/Object;

    const/4 v7, 0x4

    aget-object v7, v0, v7

    check-cast v7, Ljava/lang/Object;

    const/4 v8, 0x5

    aget-object v8, v0, v8

    check-cast v8, Ljava/lang/Object;

    const/4 v9, 0x6

    aget-object v9, v0, v9

    check-cast v9, Ljava/lang/Object;

    const/4 v10, 0x7

    aget-object v10, v0, v10

    check-cast v10, Ljava/lang/Object;

    const/16 v11, 0x8

    aget-object v11, v0, v11

    check-cast v11, Ljava/lang/Object;

    const/16 v12, 0x9

    aget-object v12, v0, v12

    check-cast v12, Ljava/lang/Object;

    const/16 v13, 0xa

    aget-object v13, v0, v13

    check-cast v13, Ljava/lang/Object;

    const/16 v14, 0xb

    aget-object v14, v0, v14

    check-cast v14, Ljava/lang/Object;

    const/16 v15, 0xc

    aget-object v15, v0, v15

    check-cast v15, Ljava/lang/Object;

    invoke-interface/range {v2 .. v15}, Lkotlin/jvm/functions/Function13;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
