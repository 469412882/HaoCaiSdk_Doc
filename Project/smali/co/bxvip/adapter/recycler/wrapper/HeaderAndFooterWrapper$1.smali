.class Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;
.super Ljava/lang/Object;
.source "HeaderAndFooterWrapper.java"

# interfaces
.implements Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;


# direct methods
.method constructor <init>(Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;

    .line 71
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;"
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;->this$0:Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;I)I
    .locals 2
    .param p1, "layoutManager"    # Landroid/support/v7/widget/GridLayoutManager;
    .param p2, "oldLookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .param p3, "position"    # I

    .line 74
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;->this$0:Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;

    invoke-virtual {v0, p3}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getItemViewType(I)I

    move-result v0

    .line 75
    .local v0, "viewType":I
    iget-object v1, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;->this$0:Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;

    invoke-static {v1}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->access$000(Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    return v1

    .line 77
    :cond_0
    iget-object v1, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;->this$0:Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;

    invoke-static {v1}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->access$100(Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    return v1

    .line 80
    :cond_1
    if-eqz p2, :cond_2

    .line 81
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1

    .line 82
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
