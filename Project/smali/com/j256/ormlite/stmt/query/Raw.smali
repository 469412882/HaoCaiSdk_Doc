.class public Lcom/j256/ormlite/stmt/query/Raw;
.super Ljava/lang/Object;
.source "Raw.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;


# instance fields
.field private final args:[Lcom/j256/ormlite/stmt/ArgumentHolder;

.field private final statement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)V
    .locals 0
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Raw;->statement:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/Raw;->args:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 21
    return-void
.end method


# virtual methods
.method public appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p4, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Raw;->statement:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Raw;->args:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 28
    .local v3, "arg":Lcom/j256/ormlite/stmt/ArgumentHolder;
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .end local v3    # "arg":Lcom/j256/ormlite/stmt/ArgumentHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
