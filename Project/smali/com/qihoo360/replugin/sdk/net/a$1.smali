.class Lcom/qihoo360/replugin/sdk/net/a$1;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/sdk/net/a;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/replugin/sdk/net/a;

.field final synthetic val$var2:Ljava/lang/reflect/Method;

.field final synthetic val$var3:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/sdk/net/a;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/sdk/net/a;

    .line 37
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/a$1;, "Lcom/qihoo360/replugin/sdk/net/a$1;"
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/a$1;->this$0:Lcom/qihoo360/replugin/sdk/net/a;

    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/a$1;->val$var2:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/qihoo360/replugin/sdk/net/a$1;->val$var3:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/a$1;, "Lcom/qihoo360/replugin/sdk/net/a$1;"
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/a$1;->val$var2:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/net/a$1;->this$0:Lcom/qihoo360/replugin/sdk/net/a;

    iget-object v2, p0, Lcom/qihoo360/replugin/sdk/net/a$1;->val$var3:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "var4":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 46
    .end local v0    # "var4":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    .local v0, "var3x":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 44
    .end local v0    # "var3x":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 41
    :catch_2
    move-exception v0

    .line 42
    .local v0, "var2x":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 47
    .end local v0    # "var2x":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 49
    :goto_1
    return-void
.end method
