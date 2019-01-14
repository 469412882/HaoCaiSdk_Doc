.class public Lcom/j256/ormlite/stmt/QueryBuilder;
.super Lcom/j256/ormlite/stmt/StatementBuilder;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;,
        Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;,
        Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;,
        Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/StatementBuilder<",
        "TT;TID;>;"
    }
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private countOfQuery:Ljava/lang/String;

.field private distinct:Z

.field private groupByList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;",
            ">;"
        }
    .end annotation
.end field

.field private having:Ljava/lang/String;

.field private final idField:Lcom/j256/ormlite/field/FieldType;

.field private isInnerQuery:Z

.field private joinList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;",
            ">;"
        }
    .end annotation
.end field

.field private limit:Ljava/lang/Long;

.field private offset:Ljava/lang/Long;

.field private orderByList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/query/OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private selectIdColumn:Z

.field private selectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V

    .line 54
    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    .line 55
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    .line 56
    return-void
.end method

.method private addGroupBy(Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;)V
    .locals 1
    .param p1, "groupBy"    # Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    .line 559
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    .line 564
    return-void
.end method

.method private addJoinInfo(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V
    .locals 2
    .param p1, "type"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;
    .param p2, "localColumnName"    # Ljava/lang/String;
    .param p3, "joinedColumnName"    # Ljava/lang/String;
    .param p5, "operation"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 580
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p4, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    invoke-direct {v0, p1, p4, p5}, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;-><init>(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V

    .line 581
    .local v0, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    if-nez p2, :cond_0

    .line 582
    invoke-direct {p0, v0, p4}, Lcom/j256/ormlite/stmt/QueryBuilder;->matchJoinedFields(Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;Lcom/j256/ormlite/stmt/QueryBuilder;)V

    goto :goto_0

    .line 584
    :cond_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/j256/ormlite/stmt/QueryBuilder;->matchJoinedFieldsByName(Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)V

    .line 586
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method private addOrderBy(Lcom/j256/ormlite/stmt/query/OrderBy;)V
    .locals 1
    .param p1, "orderBy"    # Lcom/j256/ormlite/stmt/query/OrderBy;

    .line 552
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    return-void
.end method

.method private addSelectColumnToList(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .line 636
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    .line 637
    invoke-static {p1}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->withColumnName(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->addSelectToList(Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;)V

    .line 638
    return-void
.end method

.method private addSelectToList(Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;)V
    .locals 1
    .param p1, "select"    # Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    .line 641
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method

.method private appendAlias(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 857
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const-string v0, " AS "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->alias:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method private appendColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "columnName"    # Ljava/lang/String;

    .line 843
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->addTableName:Z

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendTableQualifier(Ljava/lang/StringBuilder;)V

    .line 845
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0, p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method private appendFieldColumnName(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;)V"
        }
    .end annotation

    .line 740
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p3, "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 741
    if-eqz p3, :cond_0

    .line 742
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_0
    return-void
.end method

.method private appendGroupBys(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z

    .line 780
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    if-eqz p2, :cond_0

    .line 781
    const-string v0, "GROUP BY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    .line 784
    .local v1, "groupBy":Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
    if-eqz p2, :cond_1

    .line 785
    const/4 p2, 0x0

    goto :goto_1

    .line 787
    :cond_1
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    :goto_1
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->getRawSql()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 790
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 792
    :cond_2
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->getRawSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .end local v1    # "groupBy":Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
    :goto_2
    goto :goto_0

    .line 795
    :cond_3
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    return-void
.end method

.method private appendJoinSql(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 648
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 649
    .local v1, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->type:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    iget-object v2, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->sql:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " JOIN "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v3, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v3, v3, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 651
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v2, v2, Lcom/j256/ormlite/stmt/QueryBuilder;->alias:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v2, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendAlias(Ljava/lang/StringBuilder;)V

    .line 654
    :cond_0
    const-string v2, " ON "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendTableQualifier(Ljava/lang/StringBuilder;)V

    .line 656
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v4, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->localField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 658
    const-string v3, " = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget-object v3, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v3, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendTableQualifier(Ljava/lang/StringBuilder;)V

    .line 660
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v3, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->remoteField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 662
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v2, v2, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 665
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v2, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendJoinSql(Ljava/lang/StringBuilder;)V

    .line 667
    .end local v1    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    :cond_1
    goto :goto_0

    .line 668
    :cond_2
    return-void
.end method

.method private appendLimit(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 747
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isLimitSqlSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendLimitValue(Ljava/lang/StringBuilder;JLjava/lang/Long;)V

    .line 750
    :cond_0
    return-void
.end method

.method private appendOffset(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 753
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 754
    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isOffsetLimitArgument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 758
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "If the offset is specified, limit must also be specified with this database"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/j256/ormlite/db/DatabaseType;->appendOffsetValue(Ljava/lang/StringBuilder;J)V

    .line 763
    :cond_2
    return-void
.end method

.method private appendOrderBys(Ljava/lang/StringBuilder;ZLjava/util/List;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Z",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .line 813
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p3, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    if-eqz p2, :cond_0

    .line 814
    const-string v0, "ORDER BY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/query/OrderBy;

    .line 817
    .local v1, "orderBy":Lcom/j256/ormlite/stmt/query/OrderBy;
    if-eqz p2, :cond_1

    .line 818
    const/4 p2, 0x0

    goto :goto_1

    .line 820
    :cond_1
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 822
    :goto_1
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/OrderBy;->getRawSql()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 823
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/OrderBy;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 824
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/OrderBy;->isAscending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 824
    .end local v1    # "orderBy":Lcom/j256/ormlite/stmt/query/OrderBy;
    goto :goto_3

    .line 828
    .restart local v1    # "orderBy":Lcom/j256/ormlite/stmt/query/OrderBy;
    :cond_2
    const-string v2, " DESC"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 831
    :cond_3
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/OrderBy;->getRawSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/OrderBy;->getOrderByArgs()[Lcom/j256/ormlite/stmt/ArgumentHolder;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 833
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/query/OrderBy;->getOrderByArgs()[Lcom/j256/ormlite/stmt/ArgumentHolder;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 834
    .local v5, "arg":Lcom/j256/ormlite/stmt/ArgumentHolder;
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    .end local v5    # "arg":Lcom/j256/ormlite/stmt/ArgumentHolder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 838
    .end local v1    # "orderBy":Lcom/j256/ormlite/stmt/query/OrderBy;
    :cond_4
    :goto_3
    goto :goto_0

    .line 839
    :cond_5
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    return-void
.end method

.method private appendSelects(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 672
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 675
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 676
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->addTableName:Z

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendTableQualifier(Ljava/lang/StringBuilder;)V

    .line 678
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    :cond_0
    const-string v0, "* "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 682
    return-void

    .line 685
    :cond_1
    const/4 v0, 0x1

    .line 687
    .local v0, "first":Z
    iget-boolean v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isInnerQuery:Z

    if-eqz v1, :cond_2

    .line 688
    const/4 v1, 0x1

    .line 688
    .local v1, "hasId":Z
    goto :goto_0

    .line 690
    .end local v1    # "hasId":Z
    :cond_2
    const/4 v1, 0x0

    .line 692
    .restart local v1    # "hasId":Z
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 693
    .local v2, "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    .line 694
    .local v4, "select":Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->getRawSql()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 696
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_RAW:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 697
    if-eqz v0, :cond_3

    .line 698
    const/4 v0, 0x0

    goto :goto_2

    .line 700
    :cond_3
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :goto_2
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->getRawSql()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    goto :goto_1

    .line 705
    :cond_4
    iget-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    .line 710
    .local v5, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 711
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    goto :goto_1

    .line 714
    :cond_5
    if-eqz v0, :cond_6

    .line 715
    const/4 v0, 0x0

    goto :goto_3

    .line 717
    :cond_6
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :goto_3
    invoke-direct {p0, p1, v5, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendFieldColumnName(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 720
    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    if-ne v5, v6, :cond_7

    .line 721
    const/4 v1, 0x1

    .line 723
    .end local v4    # "select":Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
    .end local v5    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_7
    goto :goto_1

    .line 725
    :cond_8
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_RAW:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    if-eq v3, v4, :cond_b

    .line 727
    if-nez v1, :cond_a

    iget-boolean v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    if-eqz v3, :cond_a

    .line 728
    if-nez v0, :cond_9

    .line 729
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    :cond_9
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-direct {p0, p1, v3, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendFieldColumnName(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 734
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/j256/ormlite/field/FieldType;

    iput-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 736
    :cond_b
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    return-void
.end method

.method private matchJoinedFields(Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;Lcom/j256/ormlite/stmt/QueryBuilder;)V
    .locals 7
    .param p1, "joinInfo"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 613
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 615
    .local v4, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getForeignRefField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    .line 616
    .local v5, "foreignRefField":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->isForeign()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p2, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v6}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/field/FieldType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 617
    iput-object v4, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->localField:Lcom/j256/ormlite/field/FieldType;

    .line 618
    iput-object v5, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->remoteField:Lcom/j256/ormlite/field/FieldType;

    .line 619
    return-void

    .line 613
    .end local v4    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v5    # "foreignRefField":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p2, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 624
    .local v3, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isForeign()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getForeignIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    iget-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/field/FieldType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    iput-object v0, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->localField:Lcom/j256/ormlite/field/FieldType;

    .line 626
    iput-object v3, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->remoteField:Lcom/j256/ormlite/field/FieldType;

    .line 627
    return-void

    .line 623
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 631
    :cond_3
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a foreign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " field in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 632
    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " or vice versa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private matchJoinedFieldsByName(Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)V
    .locals 3
    .param p1, "joinInfo"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    .param p2, "localColumnName"    # Ljava/lang/String;
    .param p3, "joinedColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 597
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p4, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p2}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->localField:Lcom/j256/ormlite/field/FieldType;

    .line 598
    iget-object v0, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->localField:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find field in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that has column-name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_0
    iget-object v0, p4, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p3}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->remoteField:Lcom/j256/ormlite/field/FieldType;

    .line 603
    iget-object v0, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->remoteField:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find field in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p4, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that has column-name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_1
    return-void
.end method

.method private maybeAppendGroupBys(Ljava/lang/StringBuilder;Z)Z
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z

    .line 766
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendGroupBys(Ljava/lang/StringBuilder;Z)V

    .line 768
    const/4 p2, 0x0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 773
    .local v1, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v2, p1, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->maybeAppendGroupBys(Ljava/lang/StringBuilder;Z)Z

    move-result p2

    .line 774
    .end local v1    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    goto :goto_0

    .line 776
    :cond_1
    return p2
.end method

.method private maybeAppendHaving(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 851
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->having:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 852
    const-string v0, "HAVING "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->having:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    :cond_0
    return-void
.end method

.method private maybeAppendOrderBys(Ljava/lang/StringBuilder;Ljava/util/List;Z)Z
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;Z)Z"
        }
    .end annotation

    .line 799
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    invoke-direct {p0, p1, p3, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendOrderBys(Ljava/lang/StringBuilder;ZLjava/util/List;)V

    .line 801
    const/4 p3, 0x0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 806
    .local v1, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v2, p1, p2, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->maybeAppendOrderBys(Ljava/lang/StringBuilder;Ljava/util/List;Z)Z

    move-result p3

    .line 807
    .end local v1    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    goto :goto_0

    .line 809
    :cond_1
    return p3
.end method

.method private setAddTableName(Z)V
    .locals 3
    .param p1, "addTableName"    # Z

    .line 567
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-boolean p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->addTableName:Z

    .line 568
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 570
    .local v1, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v2, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->setAddTableName(Z)V

    .line 571
    .end local v1    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method


# virtual methods
.method protected appendStatementEnd(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 526
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->maybeAppendGroupBys(Ljava/lang/StringBuilder;Z)Z

    .line 527
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->maybeAppendHaving(Ljava/lang/StringBuilder;)V

    .line 528
    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->maybeAppendOrderBys(Ljava/lang/StringBuilder;Ljava/util/List;Z)Z

    .line 529
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isLimitAfterSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendLimit(Ljava/lang/StringBuilder;)V

    .line 532
    :cond_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendOffset(Ljava/lang/StringBuilder;)V

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setAddTableName(Z)V

    .line 535
    return-void
.end method

.method protected appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .line 468
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setAddTableName(Z)V

    goto :goto_0

    .line 471
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setAddTableName(Z)V

    .line 473
    :goto_0
    const-string v0, "SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isLimitAfterSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendLimit(Ljava/lang/StringBuilder;)V

    .line 477
    :cond_1
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->distinct:Z

    if-eqz v0, :cond_2

    .line 478
    const-string v0, "DISTINCT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 482
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendSelects(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 484
    :cond_3
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 485
    const-string v0, "COUNT("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :goto_1
    const-string v0, "FROM "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->alias:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 490
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendAlias(Ljava/lang/StringBuilder;)V

    .line 492
    :cond_4
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 494
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendJoinSql(Ljava/lang/StringBuilder;)V

    .line 496
    :cond_5
    return-void
.end method

.method protected appendTableQualifier(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 543
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method protected appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "operation"    # Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 506
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 507
    .local v0, "first":Z
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    if-eqz v1, :cond_1

    .line 508
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z

    move-result v0

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 511
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 512
    .local v2, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    if-eqz v0, :cond_2

    .line 513
    sget-object p3, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    goto :goto_2

    .line 515
    :cond_2
    iget-object v3, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->operation:Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;

    iget-object p3, v3, Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;->whereOperation:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    .line 517
    :goto_2
    iget-object v3, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v3, p1, p2, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z

    move-result v0

    .line 518
    .end local v2    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    goto :goto_1

    .line 520
    :cond_3
    return v0
.end method

.method public countOf()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 402
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    .line 404
    .local v0, "countOfQuerySave":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 405
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 405
    return-wide v1

    .line 407
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    throw v1
.end method

.method public countOf(Ljava/lang/String;)J
    .locals 3
    .param p1, "countOfQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 417
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    .line 419
    .local v0, "countOfQuerySave":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 420
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 420
    return-wide v1

    .line 422
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    throw v1
.end method

.method public distinct()Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->distinct:Z

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    .line 220
    return-object p0
.end method

.method enableInnerQuery()V
    .locals 1

    .line 65
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isInnerQuery:Z

    .line 66
    return-void
.end method

.method protected getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .line 500
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method getSelectColumnCount()I
    .locals 1

    .line 72
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getSelectColumnsAsString()Ljava/lang/String;
    .locals 2

    .line 85
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COUNT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 88
    const-string v0, ""

    return-object v0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 548
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->alias:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->alias:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 156
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t groupBy foreign collection field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->withColumnName(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->addGroupBy(Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;)V

    .line 160
    return-object p0
.end method

.method public groupByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .param p1, "rawSql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-static {p1}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->withRawSql(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->addGroupBy(Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;)V

    .line 168
    return-object p0
.end method

.method public having(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->having:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 394
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public join(Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    sget-object v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->INNER:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    sget-object v5, Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;->AND:Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V

    .line 291
    return-object p0
.end method

.method public join(Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 6
    .param p2, "type"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;
    .param p3, "operation"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V

    .line 301
    return-object p0
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 6
    .param p1, "localColumnName"    # Ljava/lang/String;
    .param p2, "joinedColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 348
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p3, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    sget-object v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->INNER:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    sget-object v5, Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;->AND:Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V

    .line 349
    return-object p0
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 6
    .param p1, "localColumnName"    # Ljava/lang/String;
    .param p2, "joinedColumnName"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;
    .param p5, "operation"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 358
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p3, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V

    .line 359
    return-object p0
.end method

.method public joinOr(Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 308
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    sget-object v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->INNER:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    sget-object v5, Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;->OR:Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V

    .line 309
    return-object p0
.end method

.method public leftJoin(Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 328
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    sget-object v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->LEFT:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    sget-object v5, Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;->AND:Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V

    .line 329
    return-object p0
.end method

.method public leftJoinOr(Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    sget-object v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;->LEFT:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    sget-object v5, Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;->OR:Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V

    .line 338
    return-object p0
.end method

.method public limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "maxRows"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    .line 228
    return-object p0
.end method

.method public offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 2
    .param p1, "startRow"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 242
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isOffsetSqlSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    .line 244
    return-object p0

    .line 246
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Offset is not supported by this database"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 177
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t orderBy foreign collection field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    new-instance v1, Lcom/j256/ormlite/stmt/query/OrderBy;

    invoke-direct {v1, p1, p2}, Lcom/j256/ormlite/stmt/query/OrderBy;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->addOrderBy(Lcom/j256/ormlite/stmt/query/OrderBy;)V

    .line 181
    return-object p0
.end method

.method public orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 2
    .param p1, "rawSql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/OrderBy;

    const/4 v1, 0x0

    check-cast v1, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    invoke-direct {v0, p1, v1}, Lcom/j256/ormlite/stmt/query/OrderBy;-><init>(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->addOrderBy(Lcom/j256/ormlite/stmt/query/OrderBy;)V

    .line 192
    return-object p0
.end method

.method public varargs orderByRaw(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .param p1, "rawSql"    # Ljava/lang/String;
    .param p2, "args"    # [Lcom/j256/ormlite/stmt/ArgumentHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/OrderBy;

    invoke-direct {v0, p1, p2}, Lcom/j256/ormlite/stmt/query/OrderBy;-><init>(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->addOrderBy(Lcom/j256/ormlite/stmt/query/OrderBy;)V

    .line 206
    return-object p0
.end method

.method public prepare()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "cacheStore":Z
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    invoke-super {p0, v1, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->prepareStatement(Ljava/lang/Long;Z)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    move-result-object v1

    return-object v1
.end method

.method public query()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 366
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public queryRaw()Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    return-object v0
.end method

.method public queryRawFirst()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .line 437
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-super {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->reset()V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->distinct:Z

    .line 439
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    .line 440
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 442
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectList:Ljava/util/List;

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 446
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 450
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    .line 452
    :cond_3
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isInnerQuery:Z

    .line 453
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    .line 454
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->having:Ljava/lang/String;

    .line 455
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    .line 456
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    .line 457
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 459
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 460
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    .line 462
    :cond_4
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->addTableName:Z

    .line 463
    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->alias:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public selectColumns(Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "columns":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "column":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->addSelectColumnToList(Ljava/lang/String;)V

    .line 129
    .end local v1    # "column":Ljava/lang/String;
    goto :goto_0

    .line 130
    :cond_0
    return-object p0
.end method

.method public varargs selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 3
    .param p1, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 117
    .local v2, "column":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->addSelectColumnToList(Ljava/lang/String;)V

    .line 116
    .end local v2    # "column":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-object p0
.end method

.method public varargs selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 4
    .param p1, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 140
    .local v2, "column":Ljava/lang/String;
    invoke-static {v2}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->withRawSql(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->addSelectToList(Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;)V

    .line 139
    .end local v2    # "column":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 431
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->alias:Ljava/lang/String;

    .line 432
    return-object p0
.end method

.method public setCountOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "countOfQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->countOfQuery:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public setCountOf(Z)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .param p1, "countOf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected shouldPrependTableNameToColumns()Z
    .locals 1

    .line 539
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
