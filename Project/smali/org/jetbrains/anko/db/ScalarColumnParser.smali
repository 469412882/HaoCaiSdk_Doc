.class final Lorg/jetbrains/anko/db/ScalarColumnParser;
.super Ljava/lang/Object;
.source "SqlParsers.kt"

# interfaces
.implements Lorg/jetbrains/anko/db/RowParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/db/RowParser<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0000*\u0006\u0008\u0001\u0010\u0002 \u00012\u0008\u0012\u0004\u0012\u0002H\u00020\u0003B\u001d\u0012\u0016\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001d\u0010\t\u001a\u00028\u00012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0016\u00a2\u0006\u0002\u0010\rR\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/ScalarColumnParser;",
        "R",
        "T",
        "Lorg/jetbrains/anko/db/RowParser;",
        "modifier",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getModifier",
        "()Lkotlin/jvm/functions/Function1;",
        "parseRow",
        "columns",
        "",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final modifier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TR;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/jetbrains/anko/db/ScalarColumnParser;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "modifier"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;+TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/db/ScalarColumnParser;->modifier:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 44
    const/4 p1, 0x0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-direct {p0, p1}, Lorg/jetbrains/anko/db/ScalarColumnParser;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getModifier()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TR;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/jetbrains/anko/db/ScalarColumnParser;->modifier:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public parseRow([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "columns"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "columns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 47
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Invalid row: row for SingleColumnParser must contain exactly one column"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 48
    :cond_0
    nop

    .line 49
    iget-object v0, p0, Lorg/jetbrains/anko/db/ScalarColumnParser;->modifier:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lorg/jetbrains/anko/db/ScalarColumnParser;->modifier:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_2
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Object;

    .line 49
    :goto_0
    return-object v0
.end method
