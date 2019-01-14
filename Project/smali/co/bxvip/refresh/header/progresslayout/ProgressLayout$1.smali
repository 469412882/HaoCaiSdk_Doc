.class Lco/bxvip/refresh/header/progresslayout/ProgressLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProgressLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->onFinish(Lco/bxvip/refresh/OnAnimEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/header/progresslayout/ProgressLayout;

.field final synthetic val$animEndListener:Lco/bxvip/refresh/OnAnimEndListener;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/header/progresslayout/ProgressLayout;Lco/bxvip/refresh/OnAnimEndListener;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/header/progresslayout/ProgressLayout;

    .line 219
    iput-object p1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout$1;->this$0:Lco/bxvip/refresh/header/progresslayout/ProgressLayout;

    iput-object p2, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout$1;->val$animEndListener:Lco/bxvip/refresh/OnAnimEndListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 222
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout$1;->this$0:Lco/bxvip/refresh/header/progresslayout/ProgressLayout;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->reset()V

    .line 223
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout$1;->val$animEndListener:Lco/bxvip/refresh/OnAnimEndListener;

    invoke-interface {v0}, Lco/bxvip/refresh/OnAnimEndListener;->onAnimEnd()V

    .line 224
    return-void
.end method
