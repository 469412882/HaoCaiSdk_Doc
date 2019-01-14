.class public final Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;
.super Ljava/lang/Object;
.source "ClassParser.kt"

# interfaces
.implements Lorg/jetbrains/anko/db/RowParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/db/ClassParserKt;->classParser(Ljava/lang/Class;)Lorg/jetbrains/anko/db/RowParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0008\u001a\u00028\u00002\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0004H\u0016\u00a2\u0006\u0002\u0010\u000bRF\u0010\u0003\u001a8\u0012\u0014\u0012\u0012\u0012\u0002\u0008\u0003 \u0006*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00050\u0005 \u0006*\u001c\u0012\u0016\u0008\u0001\u0012\u0012\u0012\u0002\u0008\u0003 \u0006*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "org/jetbrains/anko/db/ClassParserKt$classParser$1",
        "Lorg/jetbrains/anko/db/RowParser;",
        "(Ljava/lang/reflect/Constructor;)V",
        "parameterTypes",
        "",
        "Ljava/lang/Class;",
        "kotlin.jvm.PlatformType",
        "[Ljava/lang/Class;",
        "parseRow",
        "columns",
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
.field final synthetic $preferredConstructor:Ljava/lang/reflect/Constructor;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1
    .param p1, "$captured_local_variable$0"    # Ljava/lang/reflect/Constructor;

    .line 51
    iput-object p1, p0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->$preferredConstructor:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->parameterTypes:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public parseRow([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    .line 55
    iget-object v0, p0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->parameterTypes:[Ljava/lang/Class;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 56
    const/4 v3, 0x0

    const-string v0, "["

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "]"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x39

    const/4 v10, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "columnsRendered":Ljava/lang/String;
    iget-object v1, p0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->parameterTypes:[Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    const-string v1, "["

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const-string v1, "]"

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v1, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;->INSTANCE:Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/16 v9, 0x19

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "parameterTypesRendered":Ljava/lang/String;
    new-instance v2, Lorg/jetbrains/anko/AnkoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class parser for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->$preferredConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to parse the row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (constructor parameter types: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jetbrains/anko/AnkoException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 62
    .end local v0    # "columnsRendered":Ljava/lang/String;
    .end local v1    # "parameterTypesRendered":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->parameterTypes:[Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 63
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    .line 64
    .local v2, "type":Ljava/lang/Class;
    aget-object v3, p1, v0

    .line 65
    .local v3, "columnValue":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    const-string v4, "type"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lorg/jetbrains/anko/db/ClassParserKt;->access$castValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v0

    .line 62
    .end local v2    # "type":Ljava/lang/Class;
    .end local v3    # "columnValue":Ljava/lang/Object;
    :cond_1
    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 62
    .end local v0    # "index":I
    goto :goto_0

    .line 71
    :cond_2
    nop

    .line 72
    iget-object v0, p0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->$preferredConstructor:Ljava/lang/reflect/Constructor;

    invoke-static {v0, p1}, Lorg/jetbrains/anko/db/JavaSqliteUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
