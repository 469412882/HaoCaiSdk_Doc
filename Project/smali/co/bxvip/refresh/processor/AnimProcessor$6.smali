.class Lco/bxvip/refresh/processor/AnimProcessor$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/processor/AnimProcessor;->animHeadHideByVy(I)V
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

    .line 275
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$6;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 278
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$6;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$902(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    .line 279
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$6;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setRefreshVisible(Z)V

    .line 280
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$6;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$6;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setRefreshing(Z)V

    .line 282
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$6;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onRefreshCanceled()V

    .line 283
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$6;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->resetHeaderView()V

    .line 285
    :cond_0
    return-void
.end method
