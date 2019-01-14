.class public Lco/bxvip/adapter/abslist/base/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field protected mLayoutId:I

.field protected mPosition:I

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
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "position"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mConvertView:Landroid/view/View;

    .line 31
    iput p4, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mPosition:I

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    .line 33
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "position"    # I

    .line 39
    if-nez p1, :cond_0

    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lco/bxvip/adapter/abslist/base/ViewHolder;

    invoke-direct {v1, p0, v0, p2, p4}, Lco/bxvip/adapter/abslist/base/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)V

    .line 43
    .local v1, "holder":Lco/bxvip/adapter/abslist/base/ViewHolder;
    iput p3, v1, Lco/bxvip/adapter/abslist/base/ViewHolder;->mLayoutId:I

    .line 44
    return-object v1

    .line 46
    .end local v0    # "itemView":Landroid/view/View;
    .end local v1    # "holder":Lco/bxvip/adapter/abslist/base/ViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/bxvip/adapter/abslist/base/ViewHolder;

    .line 47
    .local v0, "holder":Lco/bxvip/adapter/abslist/base/ViewHolder;
    iput p4, v0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mPosition:I

    .line 48
    return-object v0
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .locals 1

    .line 69
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 81
    iget v0, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mPosition:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 73
    iget v0, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mLayoutId:I

    return v0
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

    .line 60
    iget-object v0, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 61
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 62
    iget-object v1, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public setBackgroundColor(II)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .line 119
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    return-object p0
.end method

.method public setBackgroundRes(II)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "backgroundRes"    # I

    .line 125
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 107
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-object p0
.end method

.method public setImageResource(II)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "resId"    # I

    .line 101
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    return-object p0
.end method

.method public setLayoutId(I)V
    .locals 0
    .param p1, "mLayoutId"    # I

    .line 25
    iput p1, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mLayoutId:I

    .line 26
    return-void
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 165
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 179
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnTouchListener;

    .line 172
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "mPosition"    # I

    .line 21
    iput p1, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mPosition:I

    .line 22
    return-void
.end method

.method public setTag(IILjava/lang/Object;)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "key"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .line 155
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 157
    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-object p0
.end method

.method public setTextColor(II)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "textColor"    # I

    .line 131
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    return-object p0
.end method

.method public setTextColorRes(II)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "textColorRes"    # I

    .line 137
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    .local v0, "view":Landroid/widget/TextView;
    iget-object v1, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    return-object p0
.end method

.method public setVisible(IZ)Lco/bxvip/adapter/abslist/base/ViewHolder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .line 143
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-object p0
.end method

.method public updatePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 77
    iput p1, p0, Lco/bxvip/adapter/abslist/base/ViewHolder;->mPosition:I

    .line 78
    return-void
.end method
