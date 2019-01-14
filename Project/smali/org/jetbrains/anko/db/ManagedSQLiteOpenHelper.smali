.class public abstract Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0003J\u0008\u0010\u0011\u001a\u00020\u000eH\u0003J*\u0010\u0012\u001a\u0002H\u0013\"\u0004\u0008\u0000\u0010\u00132\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u0002H\u00130\u0015\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "ctx",
        "Landroid/content/Context;",
        "name",
        "",
        "factory",
        "Landroid/database/sqlite/SQLiteDatabase$CursorFactory;",
        "version",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V",
        "counter",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "db",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "closeDatabase",
        "",
        "openDatabase",
        "use",
        "T",
        "f",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "version"    # I

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    nop

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 168
    const/4 p3, 0x0

    check-cast p3, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 169
    const/4 p4, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private final declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final use(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
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
            "Landroid/database/sqlite/SQLiteDatabase;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    nop

    .line 177
    :try_start_0
    invoke-direct {p0}, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-direct {p0}, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->closeDatabase()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/jetbrains/anko/db/ManagedSQLiteOpenHelper;->closeDatabase()V

    throw v0
.end method
