.class Lcom/qihoo360/loader2/Plugin$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Lcom/qihoo360/i/IPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/loader2/Plugin;->loadEntryLocked(Lcom/qihoo360/loader2/PluginCommImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/loader2/Plugin;


# direct methods
.method constructor <init>(Lcom/qihoo360/loader2/Plugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/loader2/Plugin;

    .line 860
    iput-object p1, p0, Lcom/qihoo360/loader2/Plugin$1;->this$0:Lcom/qihoo360/loader2/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Ljava/lang/Class;)Lcom/qihoo360/i/IModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qihoo360/i/IModule;",
            ">;)",
            "Lcom/qihoo360/i/IModule;"
        }
    .end annotation

    .line 863
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qihoo360/i/IModule;>;"
    const/4 v0, 0x0

    return-object v0
.end method
