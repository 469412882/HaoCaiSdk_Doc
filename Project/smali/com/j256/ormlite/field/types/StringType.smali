.class public Lcom/j256/ormlite/field/types/StringType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "StringType.java"


# static fields
.field public static DEFAULT_WIDTH:I

.field private static final singleTon:Lcom/j256/ormlite/field/types/StringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0xff

    sput v0, Lcom/j256/ormlite/field/types/StringType;->DEFAULT_WIDTH:I

    .line 18
    new-instance v0, Lcom/j256/ormlite/field/types/StringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/StringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/StringType;->singleTon:Lcom/j256/ormlite/field/types/StringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 25
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;

    .line 33
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 34
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

    .line 29
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 30
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/StringType;
    .locals 1

    .line 21
    sget-object v0, Lcom/j256/ormlite/field/types/StringType;->singleTon:Lcom/j256/ormlite/field/types/StringType;

    return-object v0
.end method


# virtual methods
.method public getDefaultWidth()I
    .locals 1

    .line 48
    sget v0, Lcom/j256/ormlite/field/types/StringType;->DEFAULT_WIDTH:I

    return v0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .line 38
    return-object p2
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
