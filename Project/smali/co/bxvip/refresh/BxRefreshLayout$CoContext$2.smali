.class Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;
.super Ljava/lang/Object;
.source "BxRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/BxRefreshLayout$CoContext;->startLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/bxvip/refresh/BxRefreshLayout$CoContext;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)V
    .locals 0
    .param p1, "this$1"    # Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    .line 1002
    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;->this$1:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1005
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;->this$1:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setStatePBU()V

    .line 1006
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;->this$1:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    iget-object v0, v0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-boolean v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->isPureScrollModeOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;->this$1:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    iget-object v0, v0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$700(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;->this$1:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setLoadingMore(Z)V

    .line 1008
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$CoContext$2;->this$1:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->access$1100(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomToLoad()V

    .line 1010
    :cond_0
    return-void
.end method
