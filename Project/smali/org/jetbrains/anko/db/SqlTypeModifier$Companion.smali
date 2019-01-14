.class public final Lorg/jetbrains/anko/db/SqlTypeModifier$Companion;
.super Ljava/lang/Object;
.source "sqlTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jetbrains/anko/db/SqlTypeModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/SqlTypeModifier$Companion;",
        "",
        "()V",
        "create",
        "Lorg/jetbrains/anko/db/SqlTypeModifier;",
        "modifier",
        "",
        "sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 34
    invoke-direct {p0}, Lorg/jetbrains/anko/db/SqlTypeModifier$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lorg/jetbrains/anko/db/SqlTypeModifier;
    .locals 1
    .param p1, "modifier"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lorg/jetbrains/anko/db/SqlTypeModifierImpl;

    invoke-direct {v0, p1}, Lorg/jetbrains/anko/db/SqlTypeModifierImpl;-><init>(Ljava/lang/String;)V

    check-cast v0, Lorg/jetbrains/anko/db/SqlTypeModifier;

    return-object v0
.end method
