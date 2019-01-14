.class public Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;

    .line 21
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    iput-object p1, p0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->mConvertView:Landroid/view/View;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->mViews:Landroid/util/SparseArray;

    .line 25
    return-void
.end method

.method public static createViewHolder(Landroid/content/Context;Landroid/view/View;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemView"    # Landroid/view/View;

    .line 29
    new-instance v0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-direct {v0, p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    .local v0, "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    return-object v0
.end method

.method public static createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I

    .line 35
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-direct {v1, p0, v0}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 38
    .local v1, "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    return-object v1
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .locals 1

    .line 57
    iget-object v0, p0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 49
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 50
    iget-object v1, p0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    :cond_0
    return-object v0
.end method

.method public setBackgroundColor(II)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .line 95
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    return-object p0
.end method

.method public setBackgroundRes(II)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "backgroundRes"    # I

    .line 101
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    return-object p0
.end method

.method public setChecked(IZ)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .line 138
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 139
    .local v0, "view":Landroid/widget/Checkable;
    invoke-interface {v0, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 140
    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 83
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-object p0
.end method

.method public setImageResource(II)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "resId"    # I

    .line 77
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 148
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 162
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 164
    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnTouchListener;

    .line 155
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "key"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 134
    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-object p0
.end method

.method public setTextColor(II)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "textColor"    # I

    .line 107
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    return-object p0
.end method

.method public setTextColorRes(II)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "textColorRes"    # I

    .line 113
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, "view":Landroid/widget/TextView;
    iget-object v1, p0, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    return-object p0
.end method

.method public setVisible(IZ)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .line 120
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-object p0
.end method
