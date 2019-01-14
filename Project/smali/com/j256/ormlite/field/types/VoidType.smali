.class public Lcom/j256/ormlite/field/types/VoidType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "VoidType.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 17
    return-void
.end method


# virtual methods
.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .param p3, "columnPos"    # I

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
