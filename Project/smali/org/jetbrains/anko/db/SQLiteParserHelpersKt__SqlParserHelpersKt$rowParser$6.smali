.class public final Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$6;
.super Ljava/lang/Object;
.source "SqlParserHelpers.kt"

# interfaces
.implements Lorg/jetbrains/anko/db/RowParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt;->rowParser(Lkotlin/jvm/functions/Function6;)Lorg/jetbrains/anko/db/RowParser;
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
        "org/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$6",
        "Lorg/jetbrains/anko/db/RowParser;",
        "(Lkotlin/jvm/functions/Function6;)V",
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
.field final synthetic $parser:Lkotlin/jvm/functions/Function6;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function6;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lkotlin/jvm/functions/Function6;

    .line 73
    iput-object p1, p0, Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$6;->$parser:Lkotlin/jvm/functions/Function6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseRow([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    const-string v0, "columns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 76
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Invalid row: 6 columns required"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 79
    :cond_0
    nop

    .line 80
    iget-object v1, p0, Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$6;->$parser:Lkotlin/jvm/functions/Function6;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Object;

    const/4 v0, 0x4

    aget-object v0, p1, v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Object;

    const/4 v0, 0x5

    aget-object v0, p1, v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Object;

    invoke-interface/range {v1 .. v7}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
