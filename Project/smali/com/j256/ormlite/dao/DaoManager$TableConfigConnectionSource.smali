.class Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
.super Ljava/lang/Object;
.source "DaoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/dao/DaoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TableConfigConnectionSource"
.end annotation


# instance fields
.field connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;)V"
        }
    .end annotation

    .line 429
    .local p2, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 431
    iput-object p2, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 432
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 442
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    .line 446
    .local v1, "other":Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    iget-object v3, v1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 447
    return v0

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, v1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 449
    return v0

    .line 451
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 443
    .end local v1    # "other":Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 435
    const/16 v0, 0x1f

    .line 436
    .local v0, "prime":I
    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    .line 437
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 438
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
