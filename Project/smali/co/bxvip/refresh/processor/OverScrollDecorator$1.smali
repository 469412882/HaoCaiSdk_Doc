.class Lco/bxvip/refresh/processor/OverScrollDecorator$1;
.super Landroid/os/Handler;
.source "OverScrollDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/refresh/processor/OverScrollDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/processor/OverScrollDecorator;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/processor/OverScrollDecorator;

    .line 97
    iput-object p1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    iget-object v0, v0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v0

    .line 102
    .local v0, "mTouchSlop":I
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3c

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 131
    :pswitch_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v1, v2}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$002(Lco/bxvip/refresh/processor/OverScrollDecorator;I)I

    goto/16 :goto_1

    .line 104
    :pswitch_1
    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$002(Lco/bxvip/refresh/processor/OverScrollDecorator;I)I

    .line 106
    :pswitch_2
    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v1}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$008(Lco/bxvip/refresh/processor/OverScrollDecorator;)I

    .line 108
    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    iget-object v1, v1, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "mChildView":Landroid/view/View;
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    iget-object v3, v3, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->allowOverScroll()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v3}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$100(Lco/bxvip/refresh/processor/OverScrollDecorator;)F

    move-result v3

    const v4, 0x453b8000    # 3000.0f

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 112
    invoke-static {v1, v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToTop(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    iget-object v3, v3, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v3

    iget-object v5, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v5}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$100(Lco/bxvip/refresh/processor/OverScrollDecorator;)F

    move-result v5

    iget-object v6, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v6}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$000(Lco/bxvip/refresh/processor/OverScrollDecorator;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lco/bxvip/refresh/processor/AnimProcessor;->animOverScrollTop(FI)V

    .line 114
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v3, v4}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$102(Lco/bxvip/refresh/processor/OverScrollDecorator;F)F

    .line 115
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v3, v2}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$002(Lco/bxvip/refresh/processor/OverScrollDecorator;I)I

    goto :goto_0

    .line 117
    :cond_0
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v3}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$100(Lco/bxvip/refresh/processor/OverScrollDecorator;)F

    move-result v3

    const v5, -0x3ac48000    # -3000.0f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    .line 118
    invoke-static {v1, v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToBottom(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    iget-object v3, v3, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v3

    iget-object v5, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v5}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$100(Lco/bxvip/refresh/processor/OverScrollDecorator;)F

    move-result v5

    iget-object v6, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v6}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$000(Lco/bxvip/refresh/processor/OverScrollDecorator;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lco/bxvip/refresh/processor/AnimProcessor;->animOverScrollBottom(FI)V

    .line 120
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v3, v4}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$102(Lco/bxvip/refresh/processor/OverScrollDecorator;F)F

    .line 121
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v3, v2}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$002(Lco/bxvip/refresh/processor/OverScrollDecorator;I)I

    .line 127
    :cond_1
    :goto_0
    iget-object v3, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v3}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$000(Lco/bxvip/refresh/processor/OverScrollDecorator;)I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 128
    iget-object v2, p0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;->this$0:Lco/bxvip/refresh/processor/OverScrollDecorator;

    invoke-static {v2}, Lco/bxvip/refresh/processor/OverScrollDecorator;->access$200(Lco/bxvip/refresh/processor/OverScrollDecorator;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 134
    .end local v1    # "mChildView":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
