.class Lcom/qihoo360/loader2/PluginContext$1;
.super Ljava/lang/Object;
.source "PluginContext.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/PluginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/loader2/PluginContext;


# direct methods
.method constructor <init>(Lcom/qihoo360/loader2/PluginContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/loader2/PluginContext;

    .line 79
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginContext$1;->this$0:Lcom/qihoo360/loader2/PluginContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContext$1;->this$0:Lcom/qihoo360/loader2/PluginContext;

    invoke-static {v0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginContext;->access$000(Lcom/qihoo360/loader2/PluginContext;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
