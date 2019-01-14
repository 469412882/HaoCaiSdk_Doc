.class final Lorg/jetbrains/anko/db/CursorSequence;
.super Ljava/lang/Object;
.source "SqlParsers.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\nH\u0096\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/CursorSequence;",
        "Lkotlin/sequences/Sequence;",
        "",
        "",
        "cursor",
        "Landroid/database/Cursor;",
        "(Landroid/database/Cursor;)V",
        "getCursor",
        "()Landroid/database/Cursor;",
        "iterator",
        "Lorg/jetbrains/anko/db/CursorIterator;",
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
.field private final cursor:Landroid/database/Cursor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/db/CursorSequence;->cursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final getCursor()Landroid/database/Cursor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/jetbrains/anko/db/CursorSequence;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/CursorSequence;->iterator()Lorg/jetbrains/anko/db/CursorIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public iterator()Lorg/jetbrains/anko/db/CursorIterator;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 169
    new-instance v0, Lorg/jetbrains/anko/db/CursorIterator;

    iget-object v1, p0, Lorg/jetbrains/anko/db/CursorSequence;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/db/CursorIterator;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
