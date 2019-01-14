.class Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;
.super Ljava/lang/Object;
.source "StatementExecutor.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/stmt/StatementExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectArrayRowMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final columnTypes:[Lcom/j256/ormlite/field/DataType;


# direct methods
.method public constructor <init>([Lcom/j256/ormlite/field/DataType;)V
    .locals 0
    .param p1, "columnTypes"    # [Lcom/j256/ormlite/field/DataType;

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    .line 784
    return-void
.end method


# virtual methods
.method public bridge synthetic mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 778
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/Object;
    .locals 6
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 788
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnCount()I

    move-result v0

    .line 789
    .local v0, "columnN":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 790
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 790
    .local v2, "colC":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 792
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 793
    sget-object v3, Lcom/j256/ormlite/field/DataType;->STRING:Lcom/j256/ormlite/field/DataType;

    .line 793
    .local v3, "dataType":Lcom/j256/ormlite/field/DataType;
    goto :goto_1

    .line 795
    .end local v3    # "dataType":Lcom/j256/ormlite/field/DataType;
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    aget-object v3, v3, v2

    .line 797
    .restart local v3    # "dataType":Lcom/j256/ormlite/field/DataType;
    :goto_1
    invoke-virtual {v3}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1, v2}, Lcom/j256/ormlite/field/DataPersister;->resultToJava(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    .line 790
    .end local v3    # "dataType":Lcom/j256/ormlite/field/DataType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 799
    .end local v2    # "colC":I
    :cond_1
    return-object v1
.end method
