.class final Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$1;
.super Ljava/lang/Object;
.source "BxStartActivityImpl.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/sdk/ui/BxStartActivityImpl;->initIconViewAndEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;


# direct methods
.method constructor <init>(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .line 250
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    sget v1, Lco/bxvip/sdk/R$id;->help_ll:I

    invoke-virtual {v0, v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "help_ll"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->getHelpShow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->getHelpShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->setHelpShow(Z)V

    .line 252
    return-void
.end method
