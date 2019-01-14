.class public Lco/bxvip/refresh/BxRefreshLayout$CoContext;
.super Ljava/lang/Object;
.source "BxRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/refresh/BxRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoContext"
.end annotation


# static fields
.field private static final EX_MODE_FIXED:I = 0x1

.field private static final EX_MODE_NORMAL:I = 0x0

.field private static final PULLING_BOTTOM_UP:I = 0x1

.field private static final PULLING_TOP_DOWN:I


# instance fields
.field private animProcessor:Lco/bxvip/refresh/processor/AnimProcessor;

.field private exHeadMode:I

.field private isExHeadLocked:Z

.field private prepareFinishLoadMore:Z

.field private prepareFinishRefresh:Z

.field private state:I

.field final synthetic this$0:Lco/bxvip/refresh/BxRefreshLayout;


# direct methods
.method public constructor <init>(Lco/bxvip/refresh/BxRefreshLayout;)V
    .locals 2
    .param p1, "this$0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 869
    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->state:I

    .line 867
    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->exHeadMode:I

    .line 969
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isExHeadLocked:Z

    .line 1167
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->prepareFinishRefresh:Z

    .line 1168
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->prepareFinishLoadMore:Z

    .line 870
    new-instance v0, Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/processor/AnimProcessor;-><init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)V

    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->animProcessor:Lco/bxvip/refresh/processor/AnimProcessor;

    .line 871
    return-void
.end method

.method static synthetic access$1100(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)Lco/bxvip/refresh/processor/AnimProcessor;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    .line 858
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->animProcessor:Lco/bxvip/refresh/processor/AnimProcessor;

    return-object v0
.end method


# virtual methods
.method public allowOverScroll()Z
    .locals 1

    .line 1052
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isRefreshVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isLoadingVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowPullDown()Z
    .locals 1

    .line 1036
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->enableRefresh:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->enableOverScroll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public allowPullUp()Z
    .locals 1

    .line 1040
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->enableLoadMore:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->enableOverScroll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public autoLoadMore()Z
    .locals 1

    .line 1092
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->autoLoadMore:Z

    return v0
.end method

.method public dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1140
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0, p1}, Lco/bxvip/refresh/BxRefreshLayout;->access$1301(Lco/bxvip/refresh/BxRefreshLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableLoadmore()Z
    .locals 1

    .line 1048
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->enableLoadMore:Z

    return v0
.end method

.method public enableOverScroll()Z
    .locals 1

    .line 1032
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->enableOverScroll:Z

    return v0
.end method

.method public enableRefresh()Z
    .locals 1

    .line 1044
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->enableRefresh:Z

    return v0
.end method

.method public finishLoadMore()V
    .locals 2

    .line 1025
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onFinishLoadMore()V

    .line 1026
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$700(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->animProcessor:Lco/bxvip/refresh/processor/AnimProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomBack(Z)V

    .line 1029
    :cond_0
    return-void
.end method

.method public finishRefreshAfterAnim()V
    .locals 2

    .line 1019
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$700(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->animProcessor:Lco/bxvip/refresh/processor/AnimProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->animHeadBack(Z)V

    .line 1022
    :cond_0
    return-void
.end method

.method public finishRefreshing()V
    .locals 0

    .line 1015
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onFinishRefresh()V

    .line 1016
    return-void
.end method

.method public getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;
    .locals 1

    .line 883
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->animProcessor:Lco/bxvip/refresh/processor/AnimProcessor;

    return-object v0
.end method

.method public getBottomHeight()I
    .locals 1

    .line 915
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$600(Lco/bxvip/refresh/BxRefreshLayout;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getExHead()Landroid/view/View;
    .locals 1

    .line 947
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$500(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getExtraHeadHeight()I
    .locals 1

    .line 907
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$500(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFooter()Landroid/view/View;
    .locals 1

    .line 931
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$400(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getHeadHeight()I
    .locals 1

    .line 903
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .line 927
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getMaxBottomHeight()I
    .locals 1

    .line 911
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxBottomHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getMaxHeadHeight()F
    .locals 1

    .line 899
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxHeadHeight:F

    return v0
.end method

.method public getOsHeight()I
    .locals 1

    .line 919
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mOverScrollHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .line 923
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$700(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 935
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$800(Lco/bxvip/refresh/BxRefreshLayout;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 874
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isPureScrollModeOn:Z

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout;->setOverScrollTopShow(Z)V

    .line 876
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout;->setOverScrollBottomShow(Z)V

    .line 877
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 878
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$400(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$400(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 880
    :cond_1
    return-void
.end method

.method public isEnableKeepIView()Z
    .locals 1

    .line 887
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->enableKeepIView:Z

    return v0
.end method

.method public isExHeadFixed()Z
    .locals 2

    .line 963
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->exHeadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExHeadLocked()Z
    .locals 1

    .line 972
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isExHeadLocked:Z

    return v0
.end method

.method public isExHeadNormal()Z
    .locals 1

    .line 959
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->exHeadMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoadingMore()Z
    .locals 1

    .line 1080
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isLoadingMore:Z

    return v0
.end method

.method public isLoadingVisible()Z
    .locals 1

    .line 1060
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isLoadingVisible:Z

    return v0
.end method

.method public isOpenFloatRefresh()Z
    .locals 1

    .line 1088
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->floatRefresh:Z

    return v0
.end method

.method public isOverScrollBottomShow()Z
    .locals 1

    .line 1104
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollBottomShow:Z

    return v0
.end method

.method public isOverScrollTopShow()Z
    .locals 1

    .line 1100
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollTopShow:Z

    return v0
.end method

.method public isPrepareFinishLoadMore()Z
    .locals 1

    .line 1175
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->prepareFinishLoadMore:Z

    return v0
.end method

.method public isPrepareFinishRefresh()Z
    .locals 1

    .line 1171
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->prepareFinishRefresh:Z

    return v0
.end method

.method public isPureScrollModeOn()Z
    .locals 1

    .line 1096
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isPureScrollModeOn:Z

    return v0
.end method

.method public isRefreshVisible()Z
    .locals 1

    .line 1056
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isRefreshVisible:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 1076
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isRefreshing:Z

    return v0
.end method

.method public isStatePBU()Z
    .locals 2

    .line 1164
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->state:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStatePTD()Z
    .locals 1

    .line 1160
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAddExHead()V
    .locals 3

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isExHeadLocked:Z

    .line 978
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$700(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 979
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v1}, Lco/bxvip/refresh/BxRefreshLayout;->access$500(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 980
    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v1}, Lco/bxvip/refresh/BxRefreshLayout;->access$700(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout;->requestLayout()V

    .line 982
    return-void
.end method

.method public onFinishLoadMore()V
    .locals 1

    .line 1128
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    invoke-interface {v0}, Lco/bxvip/refresh/PullListener;->onFinishLoadMore()V

    .line 1129
    return-void
.end method

.method public onFinishRefresh()V
    .locals 1

    .line 1124
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    invoke-interface {v0}, Lco/bxvip/refresh/PullListener;->onFinishRefresh()V

    .line 1125
    return-void
.end method

.method public onLoadMore()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-interface {v0, v1}, Lco/bxvip/refresh/PullListener;->onLoadMore(Lco/bxvip/refresh/BxRefreshLayout;)V

    .line 1121
    return-void
.end method

.method public onLoadMoreCanceled()V
    .locals 1

    .line 1148
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    invoke-interface {v0}, Lco/bxvip/refresh/PullListener;->onLoadMoreCanceled()V

    .line 1149
    return-void
.end method

.method public onPullDownReleasing(F)V
    .locals 3
    .param p1, "offsetY"    # F

    .line 1132
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v2, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget v2, v2, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lco/bxvip/refresh/PullListener;->onPullDownReleasing(Lco/bxvip/refresh/BxRefreshLayout;F)V

    .line 1133
    return-void
.end method

.method public onPullUpReleasing(F)V
    .locals 3
    .param p1, "offsetY"    # F

    .line 1136
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v2, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v2}, Lco/bxvip/refresh/BxRefreshLayout;->access$600(Lco/bxvip/refresh/BxRefreshLayout;)F

    move-result v2

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lco/bxvip/refresh/PullListener;->onPullUpReleasing(Lco/bxvip/refresh/BxRefreshLayout;F)V

    .line 1137
    return-void
.end method

.method public onPullingDown(F)V
    .locals 3
    .param p1, "offsetY"    # F

    .line 1108
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v2, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget v2, v2, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lco/bxvip/refresh/PullListener;->onPullingDown(Lco/bxvip/refresh/BxRefreshLayout;F)V

    .line 1109
    return-void
.end method

.method public onPullingUp(F)V
    .locals 3
    .param p1, "offsetY"    # F

    .line 1112
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v2, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v2}, Lco/bxvip/refresh/BxRefreshLayout;->access$600(Lco/bxvip/refresh/BxRefreshLayout;)F

    move-result v2

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lco/bxvip/refresh/PullListener;->onPullingUp(Lco/bxvip/refresh/BxRefreshLayout;F)V

    .line 1113
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1116
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-interface {v0, v1}, Lco/bxvip/refresh/PullListener;->onRefresh(Lco/bxvip/refresh/BxRefreshLayout;)V

    .line 1117
    return-void
.end method

.method public onRefreshCanceled()V
    .locals 1

    .line 1144
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;

    move-result-object v0

    invoke-interface {v0}, Lco/bxvip/refresh/PullListener;->onRefreshCanceled()V

    .line 1145
    return-void
.end method

.method public resetBottomView()V
    .locals 1

    .line 943
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1000(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/footer/IBottomView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$1000(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/footer/IBottomView;

    move-result-object v0

    invoke-interface {v0}, Lco/bxvip/refresh/footer/IBottomView;->reset()V

    .line 944
    :cond_0
    return-void
.end method

.method public resetHeaderView()V
    .locals 1

    .line 939
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$900(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/header/IHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$900(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/header/IHeaderView;

    move-result-object v0

    invoke-interface {v0}, Lco/bxvip/refresh/header/IHeaderView;->reset()V

    .line 940
    :cond_0
    return-void
.end method

.method public setExHeadFixed()V
    .locals 1

    .line 955
    const/4 v0, 0x1

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->exHeadMode:I

    .line 956
    return-void
.end method

.method public setExHeadNormal()V
    .locals 1

    .line 951
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->exHeadMode:I

    .line 952
    return-void
.end method

.method public setLoadVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1068
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iput-boolean p1, v0, Lco/bxvip/refresh/BxRefreshLayout;->isLoadingVisible:Z

    .line 1069
    return-void
.end method

.method public setLoadingMore(Z)V
    .locals 1
    .param p1, "loadingMore"    # Z

    .line 1084
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iput-boolean p1, v0, Lco/bxvip/refresh/BxRefreshLayout;->isLoadingMore:Z

    .line 1085
    return-void
.end method

.method public setPrepareFinishLoadMore(Z)V
    .locals 0
    .param p1, "prepareFinishLoadMore"    # Z

    .line 1183
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->prepareFinishLoadMore:Z

    .line 1184
    return-void
.end method

.method public setPrepareFinishRefresh(Z)V
    .locals 0
    .param p1, "prepareFinishRefresh"    # Z

    .line 1179
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->prepareFinishRefresh:Z

    .line 1180
    return-void
.end method

.method public setRefreshVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1064
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iput-boolean p1, v0, Lco/bxvip/refresh/BxRefreshLayout;->isRefreshVisible:Z

    .line 1065
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1
    .param p1, "refreshing"    # Z

    .line 1072
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iput-boolean p1, v0, Lco/bxvip/refresh/BxRefreshLayout;->isRefreshing:Z

    .line 1073
    return-void
.end method

.method public setStatePBU()V
    .locals 1

    .line 1156
    const/4 v0, 0x1

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->state:I

    .line 1157
    return-void
.end method

.method public setStatePTD()V
    .locals 1

    .line 1152
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->state:I

    .line 1153
    return-void
.end method

.method public showLoadingWhenOverScroll()Z
    .locals 1

    .line 895
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->showLoadingWhenOverScroll:Z

    return v0
.end method

.method public showRefreshingWhenOverScroll()Z
    .locals 1

    .line 891
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->showRefreshingWhenOverScroll:Z

    return v0
.end method

.method public startLoadMore()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    new-instance v1, Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;

    invoke-direct {v1, p0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;-><init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)V

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 1012
    return-void
.end method

.method public startRefresh()V
    .locals 2

    .line 989
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    new-instance v1, Lco/bxvip/refresh/BxRefreshLayout$CoContext$1;

    invoke-direct {v1, p0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext$1;-><init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)V

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 999
    return-void
.end method
