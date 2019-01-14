.class Lco/bxvip/refresh/processor/AnimProcessor$4;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/processor/AnimProcessor;->animBottomBack(Z)V
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

    .line 225
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$4;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 228
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 230
    .local v0, "height":I
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$4;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor$4;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v2}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v2

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v2

    invoke-static {v1, v2}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToBottom(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$4;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$600(Lco/bxvip/refresh/processor/AnimProcessor;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 233
    .local v1, "dy":I
    if-lez v1, :cond_1

    .line 234
    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor$4;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v2}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v2

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor$4;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v2}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v2

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lco/bxvip/refresh/utils/ScrollingUtil;->scrollAViewBy(Landroid/view/View;I)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor$4;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v2}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v2

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v2

    div-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3}, Lco/bxvip/refresh/utils/ScrollingUtil;->scrollAViewBy(Landroid/view/View;I)V

    .line 241
    .end local v1    # "dy":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$4;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$700(Lco/bxvip/refresh/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 242
    return-void
.end method
