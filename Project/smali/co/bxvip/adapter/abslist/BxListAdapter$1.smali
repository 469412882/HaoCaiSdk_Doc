.class Lco/bxvip/adapter/abslist/BxListAdapter$1;
.super Ljava/lang/Object;
.source "BxListAdapter.java"

# interfaces
.implements Lco/bxvip/adapter/abslist/base/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/adapter/abslist/BxListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/adapter/abslist/BxListAdapter;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Lco/bxvip/adapter/abslist/BxListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/adapter/abslist/BxListAdapter;

    .line 21
    .local p0, "this":Lco/bxvip/adapter/abslist/BxListAdapter$1;, "Lco/bxvip/adapter/abslist/BxListAdapter$1;"
    iput-object p1, p0, Lco/bxvip/adapter/abslist/BxListAdapter$1;->this$0:Lco/bxvip/adapter/abslist/BxListAdapter;

    iput p2, p0, Lco/bxvip/adapter/abslist/BxListAdapter$1;->val$layoutId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "holder"    # Lco/bxvip/adapter/abslist/base/ViewHolder;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/abslist/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lco/bxvip/adapter/abslist/BxListAdapter$1;, "Lco/bxvip/adapter/abslist/BxListAdapter$1;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/BxListAdapter$1;->this$0:Lco/bxvip/adapter/abslist/BxListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lco/bxvip/adapter/abslist/BxListAdapter;->convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V

    .line 35
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    .line 24
    .local p0, "this":Lco/bxvip/adapter/abslist/BxListAdapter$1;, "Lco/bxvip/adapter/abslist/BxListAdapter$1;"
    iget v0, p0, Lco/bxvip/adapter/abslist/BxListAdapter$1;->val$layoutId:I

    return v0
.end method

.method public isForViewType(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 29
    .local p0, "this":Lco/bxvip/adapter/abslist/BxListAdapter$1;, "Lco/bxvip/adapter/abslist/BxListAdapter$1;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method
