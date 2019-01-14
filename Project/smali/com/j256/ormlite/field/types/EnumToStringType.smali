.class public Lcom/j256/ormlite/field/types/EnumToStringType;
.super Lcom/j256/ormlite/field/types/EnumStringType;
.source "EnumToStringType.java"


# static fields
.field private static final singleTon:Lcom/j256/ormlite/field/types/EnumToStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/j256/ormlite/field/types/EnumToStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/EnumToStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/EnumToStringType;->singleTon:Lcom/j256/ormlite/field/types/EnumToStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 20
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Enum;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/EnumStringType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 27
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/EnumStringType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 28
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/EnumToStringType;
    .locals 1

    .line 16
    sget-object v0, Lcom/j256/ormlite/field/types/EnumToStringType;->singleTon:Lcom/j256/ormlite/field/types/EnumToStringType;

    return-object v0
.end method


# virtual methods
.method protected getEnumName(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 32
    .local p1, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
