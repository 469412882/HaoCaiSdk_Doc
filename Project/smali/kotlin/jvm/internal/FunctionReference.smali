.class public Lkotlin/jvm/internal/FunctionReference;
.super Lkotlin/jvm/internal/CallableReference;
.source "FunctionReference.java"

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;
.implements Lkotlin/reflect/KFunction;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "arity"    # I

    .line 26
    invoke-direct {p0}, Lkotlin/jvm/internal/CallableReference;-><init>()V

    .line 27
    iput p1, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "arity"    # I
    .param p2, "receiver"    # Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 32
    invoke-direct {p0, p2}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    .line 33
    iput p1, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 34
    return-void
.end method


# virtual methods
.method protected computeReflected()Lkotlin/reflect/KCallable;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lkotlin/jvm/internal/FunctionReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 87
    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/FunctionReference;

    .line 89
    .local v1, "other":Lkotlin/jvm/internal/FunctionReference;
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/jvm/internal/FunctionReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 94
    .end local v1    # "other":Lkotlin/jvm/internal/FunctionReference;
    :cond_3
    instance-of v0, p1, Lkotlin/reflect/KFunction;

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->compute()Lkotlin/reflect/KCallable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 97
    :cond_4
    return v2
.end method

.method public getArity()I
    .locals 1

    .line 38
    iget v0, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    return v0
.end method

.method protected bridge synthetic getReflected()Lkotlin/reflect/KCallable;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v0

    return-object v0
.end method

.method protected getReflected()Lkotlin/reflect/KFunction;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 44
    invoke-super {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KFunction;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_0
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isExternal()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 62
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KFunction;->isExternal()Z

    move-result v0

    return v0
.end method

.method public isInfix()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 74
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KFunction;->isInfix()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 56
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KFunction;->isInline()Z

    move-result v0

    return v0
.end method

.method public isOperator()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 68
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KFunction;->isOperator()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 80
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkotlin/reflect/KFunction;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KFunction;->isSuspend()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->compute()Lkotlin/reflect/KCallable;

    move-result-object v0

    .line 108
    .local v0, "reflected":Lkotlin/reflect/KCallable;
    if-eq v0, p0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    :cond_0
    const-string v1, "<init>"

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "constructor (Kotlin reflection is not available)"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Kotlin reflection is not available)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
