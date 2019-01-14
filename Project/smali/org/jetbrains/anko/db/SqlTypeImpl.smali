.class Lorg/jetbrains/anko/db/SqlTypeImpl;
.super Ljava/lang/Object;
.source "sqlTypes.kt"

# interfaces
.implements Lorg/jetbrains/anko/db/SqlType;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/SqlTypeImpl;",
        "Lorg/jetbrains/anko/db/SqlType;",
        "name",
        "",
        "modifiers",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getModifiers",
        "()Ljava/lang/String;",
        "getName",
        "plus",
        "m",
        "Lorg/jetbrains/anko/db/SqlTypeModifier;",
        "render",
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
.field private final modifiers:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "modifiers"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/db/SqlTypeImpl;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/jetbrains/anko/db/SqlTypeImpl;->modifiers:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 88
    const/4 p2, 0x0

    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jetbrains/anko/db/SqlTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getModifiers()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/jetbrains/anko/db/SqlTypeImpl;->modifiers:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/jetbrains/anko/db/SqlTypeImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public plus(Lorg/jetbrains/anko/db/SqlTypeModifier;)Lorg/jetbrains/anko/db/SqlType;
    .locals 4
    .param p1, "m"    # Lorg/jetbrains/anko/db/SqlTypeModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lorg/jetbrains/anko/db/SqlTypeImpl;

    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SqlTypeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jetbrains/anko/db/SqlTypeImpl;->modifiers:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/jetbrains/anko/db/SqlTypeModifier;->getModifier()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jetbrains/anko/db/SqlTypeImpl;->modifiers:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jetbrains/anko/db/SqlTypeModifier;->getModifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/jetbrains/anko/db/SqlTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lorg/jetbrains/anko/db/SqlType;

    return-object v0
.end method

.method public render()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/jetbrains/anko/db/SqlTypeImpl;->modifiers:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SqlTypeImpl;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jetbrains/anko/db/SqlTypeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jetbrains/anko/db/SqlTypeImpl;->modifiers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
