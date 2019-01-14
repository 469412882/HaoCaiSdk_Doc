.class Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;
.super Ljava/lang/Object;
.source "EmptyWrapper.java"

# interfaces
.implements Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;


# direct methods
.method constructor <init>(Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;

    .line 46
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;"
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;->this$0:Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;I)I
    .locals 1
    .param p1, "gridLayoutManager"    # Landroid/support/v7/widget/GridLayoutManager;
    .param p2, "oldLookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .param p3, "position"    # I

    .line 49
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;->this$0:Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;

    invoke-static {v0}, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->access$000(Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0

    .line 52
    :cond_0
    if-eqz p2, :cond_1

    .line 53
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    .line 55
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
