.class public Lcom/j256/ormlite/field/types/TimeStampType;
.super Lcom/j256/ormlite/field/types/DateType;
.source "TimeStampType.java"


# static fields
.field private static final singleTon:Lcom/j256/ormlite/field/types/TimeStampType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/j256/ormlite/field/types/TimeStampType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/TimeStampType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/TimeStampType;->singleTon:Lcom/j256/ormlite/field/types/TimeStampType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 22
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->DATE:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/sql/Timestamp;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/DateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 23
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
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/DateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 30
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/TimeStampType;
    .locals 1

    .line 18
    sget-object v0, Lcom/j256/ormlite/field/types/TimeStampType;->singleTon:Lcom/j256/ormlite/field/types/TimeStampType;

    return-object v0
.end method


# virtual methods
.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 46
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;

    .line 41
    return-object p2
.end method

.method public moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "currentValue"    # Ljava/lang/Object;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    .local v0, "newVal":J
    if-nez p1, :cond_0

    .line 53
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v2

    .line 54
    :cond_0
    move-object v2, p1

    check-cast v2, Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 55
    new-instance v2, Ljava/sql/Timestamp;

    const-wide/16 v3, 0x1

    add-long v5, v0, v3

    invoke-direct {v2, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v2

    .line 57
    :cond_1
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v2
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I

    .line 35
    return-object p2
.end method
