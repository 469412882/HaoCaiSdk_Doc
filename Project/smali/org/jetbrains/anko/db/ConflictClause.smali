.class public final enum Lorg/jetbrains/anko/db/ConflictClause;
.super Ljava/lang/Enum;
.source "sqlTypes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jetbrains/anko/db/ConflictClause;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/jetbrains/anko/db/ConflictClause;",
        "",
        "(Ljava/lang/String;I)V",
        "ROLLBACK",
        "ABORT",
        "FAIL",
        "IGNORE",
        "REPLACE",
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
.field private static final synthetic $VALUES:[Lorg/jetbrains/anko/db/ConflictClause;

.field public static final enum ABORT:Lorg/jetbrains/anko/db/ConflictClause;

.field public static final enum FAIL:Lorg/jetbrains/anko/db/ConflictClause;

.field public static final enum IGNORE:Lorg/jetbrains/anko/db/ConflictClause;

.field public static final enum REPLACE:Lorg/jetbrains/anko/db/ConflictClause;

.field public static final enum ROLLBACK:Lorg/jetbrains/anko/db/ConflictClause;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jetbrains/anko/db/ConflictClause;

    new-instance v1, Lorg/jetbrains/anko/db/ConflictClause;

    const-string v2, "ROLLBACK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConflictClause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConflictClause;->ROLLBACK:Lorg/jetbrains/anko/db/ConflictClause;

    aput-object v1, v0, v3

    new-instance v1, Lorg/jetbrains/anko/db/ConflictClause;

    const-string v2, "ABORT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConflictClause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConflictClause;->ABORT:Lorg/jetbrains/anko/db/ConflictClause;

    aput-object v1, v0, v3

    new-instance v1, Lorg/jetbrains/anko/db/ConflictClause;

    const-string v2, "FAIL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConflictClause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConflictClause;->FAIL:Lorg/jetbrains/anko/db/ConflictClause;

    aput-object v1, v0, v3

    new-instance v1, Lorg/jetbrains/anko/db/ConflictClause;

    const-string v2, "IGNORE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConflictClause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConflictClause;->IGNORE:Lorg/jetbrains/anko/db/ConflictClause;

    aput-object v1, v0, v3

    new-instance v1, Lorg/jetbrains/anko/db/ConflictClause;

    const-string v2, "REPLACE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/jetbrains/anko/db/ConflictClause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jetbrains/anko/db/ConflictClause;->REPLACE:Lorg/jetbrains/anko/db/ConflictClause;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jetbrains/anko/db/ConflictClause;->$VALUES:[Lorg/jetbrains/anko/db/ConflictClause;

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

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jetbrains/anko/db/ConflictClause;
    .locals 1

    const-class v0, Lorg/jetbrains/anko/db/ConflictClause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jetbrains/anko/db/ConflictClause;

    return-object p0
.end method

.method public static values()[Lorg/jetbrains/anko/db/ConflictClause;
    .locals 1

    sget-object v0, Lorg/jetbrains/anko/db/ConflictClause;->$VALUES:[Lorg/jetbrains/anko/db/ConflictClause;

    invoke-virtual {v0}, [Lorg/jetbrains/anko/db/ConflictClause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jetbrains/anko/db/ConflictClause;

    return-object v0
.end method
