.class Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;
.super Ljava/lang/Object;
.source "RecyclerMultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

.field final synthetic val$viewHolder:Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;


# direct methods
.method constructor <init>(Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

    .line 82
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;"
    iput-object p1, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;->this$0:Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

    iput-object p2, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;->val$viewHolder:Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 85
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;->this$0:Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

    iget-object v0, v0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mOnItemClickListener:Lco/bxvip/adapter/recycler/base/OnItemClick;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;->val$viewHolder:Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-virtual {v0}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getAdapterPosition()I

    move-result v0

    .line 87
    .local v0, "position":I
    iget-object v1, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;->this$0:Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

    iget-object v1, v1, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mOnItemClickListener:Lco/bxvip/adapter/recycler/base/OnItemClick;

    iget-object v2, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;->val$viewHolder:Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-interface {v1, p1, v2, v0}, Lco/bxvip/adapter/recycler/base/OnItemClick;->onItemLongClick(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z

    move-result v1

    return v1

    .line 89
    .end local v0    # "position":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
