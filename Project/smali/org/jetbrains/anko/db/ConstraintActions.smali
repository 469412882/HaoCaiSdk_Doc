.class public final enum Lorg/jetbrains/anko/db/ConstraintActions;
.super Ljava/lang/Enum;
.source "sqlTypes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jetbrains/anko/db/ConstraintActions;",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/ConstraintActions;",
        "",
        "(Ljava/lang/String;I)V",
        "toString",
        "",
        "SET_NULL",
        "SET_DEFAULT",
        "SET_RESTRICT",
        "CASCADE",
        "NO_ACTION",
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
.field private static final synthetic $VALUES:[Lorg/jetbrains/anko/db/ConstraintActions;

.field public static final enum CASCADE:Lorg/jetbrains/anko/db/ConstraintActions;

.field public static final enum NO_ACTION:Lorg/jetbrains/anko/db/ConstraintActions;

.field public static final enum SET_DEFAULT:Lorg/jetbrains/anko/db/ConstraintActions;

.field public static final enum SET_NULL:Lorg/jetbrains/anko/db/ConstraintActions;

.field public static final enum SET_RESTRICT:Lorg/jetbrains/anko/db/ConstraintActions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jetbrains/anko/db/ConstraintActions;

    new-instance v1, Lorg/jetbrains/anko/db/ConstraintActions;

    const-string v2, "SET_NULL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConstraintActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConstraintActions;->SET_NULL:Lorg/jetbrains/anko/db/ConstraintActions;

    aput-object v1, v0, v3

    new-instance v1, Lorg/jetbrains/anko/db/ConstraintActions;

    const-string v2, "SET_DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConstraintActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConstraintActions;->SET_DEFAULT:Lorg/jetbrains/anko/db/ConstraintActions;

    aput-object v1, v0, v3

    new-instance v1, Lorg/jetbrains/anko/db/ConstraintActions;

    const-string v2, "SET_RESTRICT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConstraintActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConstraintActions;->SET_RESTRICT:Lorg/jetbrains/anko/db/ConstraintActions;

    aput-object v1, v0, v3

    new-instance v1, Lorg/jetbrains/anko/db/ConstraintActions;

    const-string v2, "CASCADE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConstraintActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConstraintActions;->CASCADE:Lorg/jetbrains/anko/db/ConstraintActions;

    aput-object v1, v0, v3

    new-instance v1, Lorg/jetbrains/anko/db/ConstraintActions;

    const-string v2, "NO_ACTION"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConstraintActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConstraintActions;->NO_ACTION:Lorg/jetbrains/anko/db/ConstraintActions;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jetbrains/anko/db/ConstraintActions;->$VALUES:[Lorg/jetbrains/anko/db/ConstraintActions;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jetbrains/anko/db/ConstraintActions;
    .locals 1

    const-class v0, Lorg/jetbrains/anko/db/ConstraintActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jetbrains/anko/db/ConstraintActions;

    return-object p0
.end method

.method public static values()[Lorg/jetbrains/anko/db/ConstraintActions;
    .locals 1

    sget-object v0, Lorg/jetbrains/anko/db/ConstraintActions;->$VALUES:[Lorg/jetbrains/anko/db/ConstraintActions;

    invoke-virtual {v0}, [Lorg/jetbrains/anko/db/ConstraintActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jetbrains/anko/db/ConstraintActions;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
