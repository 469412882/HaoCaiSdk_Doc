.class Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;
.super Ljava/lang/Object;
.source "RecyclerMultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 72
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;"
    iput-object p1, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;->this$0:Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

    iput-object p2, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;->val$viewHolder:Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 75
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;->this$0:Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

    iget-object v0, v0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mOnItemClickListener:Lco/bxvip/adapter/recycler/base/OnItemClick;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;->val$viewHolder:Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-virtual {v0}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getAdapterPosition()I

    move-result v0

    .line 77
    .local v0, "position":I
    iget-object v1, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;->this$0:Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

    iget-object v1, v1, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mOnItemClickListener:Lco/bxvip/adapter/recycler/base/OnItemClick;

    iget-object v2, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;->val$viewHolder:Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-interface {v1, p1, v2, v0}, Lco/bxvip/adapter/recycler/base/OnItemClick;->onItemClick(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 79
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
