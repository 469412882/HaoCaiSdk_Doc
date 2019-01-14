.class Lco/bxvip/refresh/processor/AnimProcessor$13;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/refresh/processor/AnimProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/processor/AnimProcessor;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/processor/AnimProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 456
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 459
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 460
    .local v0, "height":I
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isOverScrollBottomShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 466
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :cond_1
    :goto_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$500(Lco/bxvip/refresh/processor/AnimProcessor;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1900(Lco/bxvip/refresh/processor/AnimProcessor;F)V

    goto :goto_1

    .line 472
    :cond_2
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 473
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 474
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 475
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onPullUpReleasing(F)V

    .line 478
    :goto_1
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$13;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 479
    return-void
.end method
