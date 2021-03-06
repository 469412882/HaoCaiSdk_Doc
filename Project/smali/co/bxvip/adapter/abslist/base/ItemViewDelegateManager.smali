.class public Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;
.super Ljava/lang/Object;
.source "ItemViewDelegateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field delegates:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public addDelegate(ILco/bxvip/adapter/abslist/base/ItemViewDelegate;)Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;
    .locals 3
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<",
            "TT;>;)",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 22
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    .local p2, "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An RecyclerItemViewDelegate is already registered for the viewType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Already registered RecyclerItemViewDelegate is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    .line 27
    invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 30
    return-object p0
.end method

.method public addDelegate(Lco/bxvip/adapter/abslist/base/ItemViewDelegate;)Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<",
            "TT;>;)",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 13
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    .local p1, "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 14
    .local v0, "viewType":I
    if-eqz p1, :cond_0

    .line 15
    iget-object v1, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 18
    :cond_0
    return-object p0
.end method

.method public convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "holder"    # Lco/bxvip/adapter/abslist/base/ViewHolder;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/abslist/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 68
    .local v0, "delegatesCount":I
    const/4 v1, 0x0

    .line 68
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 69
    iget-object v2, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;

    .line 71
    .local v2, "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    invoke-interface {v2, p2, p3}, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-interface {v2, p1, p2, p3}, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;->convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V

    .line 73
    return-void

    .line 68
    .end local v2    # "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No RecyclerItemViewDelegateManager added that matches position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in data source"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemViewDelegate(Ljava/lang/Object;I)Lco/bxvip/adapter/abslist/base/ItemViewDelegate;
    .locals 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegate;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 91
    .local v0, "delegatesCount":I
    add-int/lit8 v1, v0, -0x1

    .line 91
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 92
    iget-object v2, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;

    .line 93
    .local v2, "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    invoke-interface {v2, p1, p2}, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    return-object v2

    .line 91
    .end local v2    # "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No RecyclerItemViewDelegate added that matches position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in data source"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemViewDelegateCount()I
    .locals 1

    .line 9
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewLayoutId(I)I
    .locals 1
    .param p1, "viewType"    # I

    .line 82
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;

    invoke-interface {v0}, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v0

    return v0
.end method

.method public getItemViewLayoutId(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 102
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->getItemViewDelegate(Ljava/lang/Object;I)Lco/bxvip/adapter/abslist/base/ItemViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v0

    return v0
.end method

.method public getItemViewType(Lco/bxvip/adapter/abslist/base/ItemViewDelegate;)I
    .locals 1
    .param p1, "itemViewDelegate"    # Lco/bxvip/adapter/abslist/base/ItemViewDelegate;

    .line 86
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(Ljava/lang/Object;I)I
    .locals 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 55
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 56
    .local v0, "delegatesCount":I
    add-int/lit8 v1, v0, -0x1

    .line 56
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 57
    iget-object v2, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;

    .line 58
    .local v2, "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    invoke-interface {v2, p1, p2}, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v3

    return v3

    .line 56
    .end local v2    # "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No RecyclerItemViewDelegate added that matches position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in data source"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeDelegate(I)Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;
    .locals 2
    .param p1, "itemType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 48
    .local v0, "indexToRemove":I
    if-ltz v0, :cond_0

    .line 49
    iget-object v1, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 51
    :cond_0
    return-object p0
.end method

.method public removeDelegate(Lco/bxvip/adapter/abslist/base/ItemViewDelegate;)Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<",
            "TT;>;)",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager<TT;>;"
    .local p1, "delegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RecyclerItemViewDelegate is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 39
    .local v0, "indexToRemove":I
    if-ltz v0, :cond_1

    .line 40
    iget-object v1, p0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 42
    :cond_1
    return-object p0
.end method
