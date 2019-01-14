.class public abstract Lco/bxvip/refresh/RefreshListenerAdapter;
.super Ljava/lang/Object;
.source "RefreshListenerAdapter.java"

# interfaces
.implements Lco/bxvip/refresh/PullListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishLoadMore()V
    .locals 0

    .line 37
    return-void
.end method

.method public onFinishRefresh()V
    .locals 0

    .line 32
    return-void
.end method

.method public onLoadMore(Lco/bxvip/refresh/BxRefreshLayout;)V
    .locals 0
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 11
    return-void
.end method

.method public onLoadMoreCanceled()V
    .locals 0

    .line 47
    return-void
.end method

.method public onPullDownReleasing(Lco/bxvip/refresh/BxRefreshLayout;F)V
    .locals 0
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p2, "fraction"    # F

    .line 23
    return-void
.end method

.method public onPullUpReleasing(Lco/bxvip/refresh/BxRefreshLayout;F)V
    .locals 0
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p2, "fraction"    # F

    .line 27
    return-void
.end method

.method public onPullingDown(Lco/bxvip/refresh/BxRefreshLayout;F)V
    .locals 0
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p2, "fraction"    # F

    .line 15
    return-void
.end method

.method public onPullingUp(Lco/bxvip/refresh/BxRefreshLayout;F)V
    .locals 0
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p2, "fraction"    # F

    .line 19
    return-void
.end method

.method public onRefresh(Lco/bxvip/refresh/BxRefreshLayout;)V
    .locals 0
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 7
    return-void
.end method

.method public onRefreshCanceled()V
    .locals 0

    .line 42
    return-void
.end method
