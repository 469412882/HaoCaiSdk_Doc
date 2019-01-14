.class Lco/bxvip/refresh/processor/AnimProcessor$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/processor/AnimProcessor$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/bxvip/refresh/processor/AnimProcessor$9;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/processor/AnimProcessor$9;)V
    .locals 0
    .param p1, "this$1"    # Lco/bxvip/refresh/processor/AnimProcessor$9;

    .line 382
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$9$1;->this$1:Lco/bxvip/refresh/processor/AnimProcessor$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 385
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9$1;->this$1:Lco/bxvip/refresh/processor/AnimProcessor$9;

    iget-object v0, v0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1402(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    .line 386
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9$1;->this$1:Lco/bxvip/refresh/processor/AnimProcessor$9;

    iget-object v0, v0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1502(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    .line 387
    return-void
.end method
