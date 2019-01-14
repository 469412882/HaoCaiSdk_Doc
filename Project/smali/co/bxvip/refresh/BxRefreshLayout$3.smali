.class Lco/bxvip/refresh/BxRefreshLayout$3;
.super Ljava/lang/Object;
.source "BxRefreshLayout.java"

# interfaces
.implements Lco/bxvip/refresh/OnAnimEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/BxRefreshLayout;->onFinishRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/BxRefreshLayout;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/BxRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 830
    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout$3;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 1

    .line 833
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$3;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$300(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->finishRefreshAfterAnim()V

    .line 834
    return-void
.end method
