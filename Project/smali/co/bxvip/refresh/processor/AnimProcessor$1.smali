.class Lco/bxvip/refresh/processor/AnimProcessor$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/processor/AnimProcessor;->animHeadToRefresh()V
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

    .line 132
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 136
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$002(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    .line 138
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setRefreshVisible(Z)V

    .line 143
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$200(Lco/bxvip/refresh/processor/AnimProcessor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setRefreshing(Z)V

    .line 146
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onRefresh()V

    .line 147
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$202(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setRefreshing(Z)V

    .line 151
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$1;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onRefresh()V

    .line 153
    :cond_2
    :goto_0
    return-void
.end method
