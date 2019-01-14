.class Lco/bxvip/skin/SkinManager$2;
.super Ljava/lang/Object;
.source "SkinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/skin/SkinManager;->register(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/skin/SkinManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lco/bxvip/skin/SkinManager;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/skin/SkinManager;

    .line 237
    iput-object p1, p0, Lco/bxvip/skin/SkinManager$2;->this$0:Lco/bxvip/skin/SkinManager;

    iput-object p2, p0, Lco/bxvip/skin/SkinManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 240
    iget-object v0, p0, Lco/bxvip/skin/SkinManager$2;->this$0:Lco/bxvip/skin/SkinManager;

    iget-object v1, p0, Lco/bxvip/skin/SkinManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lco/bxvip/skin/SkinManager;->apply(Landroid/app/Activity;)V

    .line 241
    return-void
.end method
