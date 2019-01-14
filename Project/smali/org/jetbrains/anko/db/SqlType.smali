.class public interface abstract Lorg/jetbrains/anko/db/SqlType;
.super Ljava/lang/Object;
.source "sqlTypes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jetbrains/anko/db/SqlType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0011\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008H\u00a6\u0002J\u0008\u0010\t\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/SqlType;",
        "",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "plus",
        "m",
        "Lorg/jetbrains/anko/db/SqlTypeModifier;",
        "render",
        "Companion",
        "sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field public static final Companion:Lorg/jetbrains/anko/db/SqlType$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jetbrains/anko/db/SqlType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jetbrains/anko/db/SqlType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/jetbrains/anko/db/SqlType;->Companion:Lorg/jetbrains/anko/db/SqlType$Companion;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract plus(Lorg/jetbrains/anko/db/SqlTypeModifier;)Lorg/jetbrains/anko/db/SqlType;
    .param p1    # Lorg/jetbrains/anko/db/SqlTypeModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract render()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
