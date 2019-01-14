.class public Lcom/j256/ormlite/db/BaseDatabaseType$BooleanNumberFieldConverter;
.super Lcom/j256/ormlite/field/BaseFieldConverter;
.source "BaseDatabaseType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/db/BaseDatabaseType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BooleanNumberFieldConverter"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 619
    invoke-direct {p0}, Lcom/j256/ormlite/field/BaseFieldConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getSqlType()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .line 622
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->BOOLEAN:Lcom/j256/ormlite/field/SqlType;

    return-object v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 633
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 634
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .line 627
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 628
    .local v0, "bool":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "stringValue"    # Ljava/lang/String;
    .param p3, "columnPos"    # I

    .line 650
    invoke-static {p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/j256/ormlite/db/BaseDatabaseType$BooleanNumberFieldConverter;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 639
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getByte(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I

    .line 644
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 645
    .local v0, "arg":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-object v1
.end method
