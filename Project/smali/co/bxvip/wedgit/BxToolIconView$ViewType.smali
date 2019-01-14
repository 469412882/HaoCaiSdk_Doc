.class public final enum Lco/bxvip/wedgit/BxToolIconView$ViewType;
.super Ljava/lang/Enum;
.source "BxToolIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/wedgit/BxToolIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/bxvip/wedgit/BxToolIconView$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/bxvip/wedgit/BxToolIconView$ViewType;

.field public static final enum ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

.field public static final enum CIRCLE_PLUS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

.field public static final enum FLOWER_PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

.field public static final enum FORK:Lco/bxvip/wedgit/BxToolIconView$ViewType;

.field public static final enum HOOK:Lco/bxvip/wedgit/BxToolIconView$ViewType;

.field public static final enum PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

.field public static final enum TITLE_ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 107
    new-instance v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    const-string v1, "FORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lco/bxvip/wedgit/BxToolIconView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->FORK:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    new-instance v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    const-string v1, "HOOK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lco/bxvip/wedgit/BxToolIconView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->HOOK:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    new-instance v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    const-string v1, "ARROW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lco/bxvip/wedgit/BxToolIconView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    new-instance v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    const-string v1, "PROGRESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lco/bxvip/wedgit/BxToolIconView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    new-instance v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    const-string v1, "FLOWER_PROGRESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lco/bxvip/wedgit/BxToolIconView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->FLOWER_PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    new-instance v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    const-string v1, "TITLE_ARROW"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lco/bxvip/wedgit/BxToolIconView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->TITLE_ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    new-instance v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    const-string v1, "CIRCLE_PLUS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lco/bxvip/wedgit/BxToolIconView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->CIRCLE_PLUS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 106
    const/4 v0, 0x7

    new-array v0, v0, [Lco/bxvip/wedgit/BxToolIconView$ViewType;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->FORK:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->HOOK:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->FLOWER_PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    aput-object v1, v0, v6

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->TITLE_ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    aput-object v1, v0, v7

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->CIRCLE_PLUS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    aput-object v1, v0, v8

    sput-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->$VALUES:[Lco/bxvip/wedgit/BxToolIconView$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/bxvip/wedgit/BxToolIconView$ViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;

    return-object v0
.end method

.method public static values()[Lco/bxvip/wedgit/BxToolIconView$ViewType;
    .locals 1

    .line 106
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->$VALUES:[Lco/bxvip/wedgit/BxToolIconView$ViewType;

    invoke-virtual {v0}, [Lco/bxvip/wedgit/BxToolIconView$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/bxvip/wedgit/BxToolIconView$ViewType;

    return-object v0
.end method
