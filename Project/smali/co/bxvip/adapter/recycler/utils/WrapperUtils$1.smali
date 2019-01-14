.class final Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "WrapperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/adapter/recycler/utils/WrapperUtils;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;

.field final synthetic val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic val$spanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;->val$callback:Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;

    iput-object p2, p0, Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;->val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iput-object p3, p0, Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;->val$spanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3
    .param p1, "position"    # I

    .line 24
    iget-object v0, p0, Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;->val$callback:Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;

    iget-object v1, p0, Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;->val$gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;->val$spanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-interface {v0, v1, v2, p1}, Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;->getSpanSize(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;I)I

    move-result v0

    return v0
.end method
