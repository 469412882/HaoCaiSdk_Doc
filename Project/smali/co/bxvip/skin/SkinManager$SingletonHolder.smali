.class Lco/bxvip/skin/SkinManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SkinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/skin/SkinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static sInstance:Lco/bxvip/skin/SkinManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lco/bxvip/skin/SkinManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/skin/SkinManager;-><init>(Lco/bxvip/skin/SkinManager$1;)V

    sput-object v0, Lco/bxvip/skin/SkinManager$SingletonHolder;->sInstance:Lco/bxvip/skin/SkinManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
