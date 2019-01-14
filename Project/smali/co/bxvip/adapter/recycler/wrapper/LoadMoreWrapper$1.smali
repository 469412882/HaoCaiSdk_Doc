.class Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;
.super Ljava/lang/Object;
.source "LoadMoreWrapper.java"

# interfaces
.implements Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;


# direct methods
.method constructor <init>(Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;

    .line 70
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;"
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;->this$0:Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;I)I
    .locals 1
    .param p1, "layoutManager"    # Landroid/support/v7/widget/GridLayoutManager;
    .param p2, "oldLookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .param p3, "position"    # I

    .line 73
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;->this$0:Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;

    invoke-static {v0, p3}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->access$000(Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0

    .line 76
    :cond_0
    if-eqz p2, :cond_1

    .line 77
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    .line 79
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
