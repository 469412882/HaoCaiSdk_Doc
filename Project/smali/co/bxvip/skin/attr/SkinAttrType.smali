.class public abstract enum Lco/bxvip/skin/attr/SkinAttrType;
.super Ljava/lang/Enum;
.source "SkinAttrType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/bxvip/skin/attr/SkinAttrType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/bxvip/skin/attr/SkinAttrType;

.field public static final enum BACKGROUND:Lco/bxvip/skin/attr/SkinAttrType;

.field public static final enum COLOR:Lco/bxvip/skin/attr/SkinAttrType;

.field public static final enum DIVIDER:Lco/bxvip/skin/attr/SkinAttrType;

.field public static final enum SRC:Lco/bxvip/skin/attr/SkinAttrType;


# instance fields
.field attrType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lco/bxvip/skin/attr/SkinAttrType$1;

    const-string v1, "BACKGROUND"

    const-string v2, "background"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lco/bxvip/skin/attr/SkinAttrType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lco/bxvip/skin/attr/SkinAttrType;->BACKGROUND:Lco/bxvip/skin/attr/SkinAttrType;

    .line 34
    new-instance v0, Lco/bxvip/skin/attr/SkinAttrType$2;

    const-string v1, "COLOR"

    const-string v2, "textColor"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lco/bxvip/skin/attr/SkinAttrType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lco/bxvip/skin/attr/SkinAttrType;->COLOR:Lco/bxvip/skin/attr/SkinAttrType;

    .line 41
    new-instance v0, Lco/bxvip/skin/attr/SkinAttrType$3;

    const-string v1, "SRC"

    const-string v2, "src"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lco/bxvip/skin/attr/SkinAttrType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lco/bxvip/skin/attr/SkinAttrType;->SRC:Lco/bxvip/skin/attr/SkinAttrType;

    .line 51
    new-instance v0, Lco/bxvip/skin/attr/SkinAttrType$4;

    const-string v1, "DIVIDER"

    const-string v2, "divider"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lco/bxvip/skin/attr/SkinAttrType$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lco/bxvip/skin/attr/SkinAttrType;->DIVIDER:Lco/bxvip/skin/attr/SkinAttrType;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lco/bxvip/skin/attr/SkinAttrType;

    sget-object v1, Lco/bxvip/skin/attr/SkinAttrType;->BACKGROUND:Lco/bxvip/skin/attr/SkinAttrType;

    aput-object v1, v0, v3

    sget-object v1, Lco/bxvip/skin/attr/SkinAttrType;->COLOR:Lco/bxvip/skin/attr/SkinAttrType;

    aput-object v1, v0, v4

    sget-object v1, Lco/bxvip/skin/attr/SkinAttrType;->SRC:Lco/bxvip/skin/attr/SkinAttrType;

    aput-object v1, v0, v5

    sget-object v1, Lco/bxvip/skin/attr/SkinAttrType;->DIVIDER:Lco/bxvip/skin/attr/SkinAttrType;

    aput-object v1, v0, v6

    sput-object v0, Lco/bxvip/skin/attr/SkinAttrType;->$VALUES:[Lco/bxvip/skin/attr/SkinAttrType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "attrType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lco/bxvip/skin/attr/SkinAttrType;->attrType:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lco/bxvip/skin/attr/SkinAttrType$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lco/bxvip/skin/attr/SkinAttrType$1;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lco/bxvip/skin/attr/SkinAttrType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/bxvip/skin/attr/SkinAttrType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lco/bxvip/skin/attr/SkinAttrType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/bxvip/skin/attr/SkinAttrType;

    return-object v0
.end method

.method public static values()[Lco/bxvip/skin/attr/SkinAttrType;
    .locals 1

    .line 18
    sget-object v0, Lco/bxvip/skin/attr/SkinAttrType;->$VALUES:[Lco/bxvip/skin/attr/SkinAttrType;

    invoke-virtual {v0}, [Lco/bxvip/skin/attr/SkinAttrType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/bxvip/skin/attr/SkinAttrType;

    return-object v0
.end method


# virtual methods
.method public abstract apply(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public getAttrType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lco/bxvip/skin/attr/SkinAttrType;->attrType:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceManager()Lco/bxvip/skin/ResourceManager;
    .locals 1

    .line 76
    invoke-static {}, Lco/bxvip/skin/SkinManager;->getInstance()Lco/bxvip/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/skin/SkinManager;->getResourceManager()Lco/bxvip/skin/ResourceManager;

    move-result-object v0

    return-object v0
.end method
