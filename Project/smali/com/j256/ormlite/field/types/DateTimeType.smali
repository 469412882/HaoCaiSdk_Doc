.class public Lcom/j256/ormlite/field/types/DateTimeType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "DateTimeType.java"


# static fields
.field private static final associatedClassNames:[Ljava/lang/String;

.field private static dateTimeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getMillisMethod:Ljava/lang/reflect/Method;

.field private static millisConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final singleTon:Lcom/j256/ormlite/field/types/DateTimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/j256/ormlite/field/types/DateTimeType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/DateTimeType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->singleTon:Lcom/j256/ormlite/field/types/DateTimeType;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    .line 28
    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    .line 29
    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.joda.time.DateTime"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->associatedClassNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

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

    .line 37
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method private createInstance(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 5
    .param p1, "sqlArg"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    :try_start_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getDateTimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    .line 119
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not use reflection to construct a Joda DateTime"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method private extractMillis(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    :try_start_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getDateTimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getMillis"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    .line 131
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-nez p1, :cond_1

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_1
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not use reflection to get millis from Joda DateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method private getDateTimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "org.joda.time.DateTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    .line 145
    :cond_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/DateTimeType;
    .locals 1

    .line 41
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->singleTon:Lcom/j256/ormlite/field/types/DateTimeType;

    return-object v0
.end method


# virtual methods
.method public getAssociatedClassNames()[Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->associatedClassNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getDateTimeClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAppropriateId()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isEscapedValue()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public isValidForVersion()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p2}, Lcom/j256/ormlite/field/types/DateTimeType;->extractMillis(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "currentValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, "newVal":J
    if-nez p1, :cond_0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/j256/ormlite/field/types/DateTimeType;->createInstance(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/DateTimeType;->extractMillis(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    .line 106
    .local v2, "currentVal":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    .line 107
    const-wide/16 v3, 0x1

    add-long v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/j256/ormlite/field/types/DateTimeType;->createInstance(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 109
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/j256/ormlite/field/types/DateTimeType;->createInstance(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problems with field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " parsing default DateTime value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/DateTimeType;->createInstance(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method