.class Lco/bxvip/refresh/BxRefreshLayout$2;
.super Ljava/lang/Object;
.source "BxRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/BxRefreshLayout;->setFloatRefresh(Z)V
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

    .line 639
    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout$2;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 642
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$2;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$2;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    iget-object v0, v0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 643
    :cond_0
    return-void
.end method
