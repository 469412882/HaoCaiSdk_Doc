.class Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/stmt/QueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JoinInfo"
.end annotation


# instance fields
.field localField:Lcom/j256/ormlite/field/FieldType;

.field operation:Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;

.field final queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;"
        }
    .end annotation
.end field

.field remoteField:Lcom/j256/ormlite/field/FieldType;

.field final type:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;)V
    .locals 0
    .param p1, "type"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;
    .param p3, "operation"    # Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "**>;",
            "Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;",
            ")V"
        }
    .end annotation

    .line 871
    .local p2, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->type:Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;

    .line 873
    iput-object p2, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 874
    iput-object p3, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->operation:Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;

    .line 875
    return-void
.end method
