.class public Lco/bxvip/android/commonlib/db/info/WhereInfo;
.super Ljava/lang/Object;
.source "WhereInfo.java"


# instance fields
.field public currentPage:I

.field private isOr:Z

.field public limit:I

.field public orders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public size:I

.field public wheres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/bxvip/android/commonlib/db/info/Where;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->orders:Ljava/util/Map;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->currentPage:I

    .line 32
    iput-boolean v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->isOr:Z

    .line 35
    return-void
.end method

.method private andOr()Ljava/lang/String;
    .locals 1

    .line 155
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->isOr:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->isOr:Z

    .line 157
    const-string v0, "or"

    return-object v0

    .line 159
    :cond_0
    const-string v0, "and"

    return-object v0
.end method

.method public static get()Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 1

    .line 38
    new-instance v0, Lco/bxvip/android/commonlib/db/info/WhereInfo;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "low"    # Ljava/lang/Object;
    .param p3, "high"    # Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "between"

    invoke-static {v1, v2, p1, p2, p3}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-object p0
.end method

.method public equal(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "equal"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object p0
.end method

.method public ge(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ge"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object p0
.end method

.method public gt(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-object p0
.end method

.method public varargs in(Ljava/lang/String;[Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public le(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "le"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object p0
.end method

.method public like(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "like"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-object p0
.end method

.method public limit(I)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 0
    .param p1, "limit"    # I

    .line 93
    iput p1, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->limit:I

    .line 94
    return-object p0
.end method

.method public lt(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lt"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-object p0
.end method

.method public ne(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ne"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-object p0
.end method

.method public varargs notIn(Ljava/lang/String;[Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notIn"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-object p0
.end method

.method public or()Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 1

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->isOr:Z

    .line 70
    return-object p0
.end method

.method public order(Ljava/lang/String;Z)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 85
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->orders:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/info/WhereInfo;->andOr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "update"

    invoke-static {v1, v2, p1, p2}, Lco/bxvip/android/commonlib/db/info/Where;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0
.end method
