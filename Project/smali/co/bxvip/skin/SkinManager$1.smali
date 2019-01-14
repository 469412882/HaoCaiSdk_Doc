.class Lco/bxvip/skin/SkinManager$1;
.super Landroid/os/AsyncTask;
.source "SkinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/skin/SkinManager;->changeSkin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/bxvip/skin/callback/ISkinChangingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/skin/SkinManager;

.field final synthetic val$skinChangingCallback:Lco/bxvip/skin/callback/ISkinChangingCallback;

.field final synthetic val$skinPluginPath:Ljava/lang/String;

.field final synthetic val$skinPluginPkg:Ljava/lang/String;

.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lco/bxvip/skin/SkinManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/bxvip/skin/callback/ISkinChangingCallback;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/skin/SkinManager;

    .line 193
    iput-object p1, p0, Lco/bxvip/skin/SkinManager$1;->this$0:Lco/bxvip/skin/SkinManager;

    iput-object p2, p0, Lco/bxvip/skin/SkinManager$1;->val$skinPluginPath:Ljava/lang/String;

    iput-object p3, p0, Lco/bxvip/skin/SkinManager$1;->val$skinPluginPkg:Ljava/lang/String;

    iput-object p4, p0, Lco/bxvip/skin/SkinManager$1;->val$suffix:Ljava/lang/String;

    iput-object p5, p0, Lco/bxvip/skin/SkinManager$1;->val$skinChangingCallback:Lco/bxvip/skin/callback/ISkinChangingCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 197
    :try_start_0
    iget-object v0, p0, Lco/bxvip/skin/SkinManager$1;->this$0:Lco/bxvip/skin/SkinManager;

    iget-object v1, p0, Lco/bxvip/skin/SkinManager$1;->val$skinPluginPath:Ljava/lang/String;

    iget-object v2, p0, Lco/bxvip/skin/SkinManager$1;->val$skinPluginPkg:Ljava/lang/String;

    iget-object v3, p0, Lco/bxvip/skin/SkinManager$1;->val$suffix:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lco/bxvip/skin/SkinManager;->access$100(Lco/bxvip/skin/SkinManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/bxvip/skin/SkinManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "res"    # Ljava/lang/Integer;

    .line 208
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lco/bxvip/skin/SkinManager$1;->val$skinChangingCallback:Lco/bxvip/skin/callback/ISkinChangingCallback;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "loadPlugin occur error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lco/bxvip/skin/callback/ISkinChangingCallback;->onError(Ljava/lang/Exception;)V

    .line 210
    return-void

    .line 213
    :cond_0
    :try_start_0
    iget-object v0, p0, Lco/bxvip/skin/SkinManager$1;->this$0:Lco/bxvip/skin/SkinManager;

    iget-object v1, p0, Lco/bxvip/skin/SkinManager$1;->val$skinPluginPath:Ljava/lang/String;

    iget-object v2, p0, Lco/bxvip/skin/SkinManager$1;->val$skinPluginPkg:Ljava/lang/String;

    iget-object v3, p0, Lco/bxvip/skin/SkinManager$1;->val$suffix:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lco/bxvip/skin/SkinManager;->access$200(Lco/bxvip/skin/SkinManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lco/bxvip/skin/SkinManager$1;->this$0:Lco/bxvip/skin/SkinManager;

    invoke-virtual {v0}, Lco/bxvip/skin/SkinManager;->notifyChangedListeners()V

    .line 215
    iget-object v0, p0, Lco/bxvip/skin/SkinManager$1;->val$skinChangingCallback:Lco/bxvip/skin/callback/ISkinChangingCallback;

    invoke-interface {v0}, Lco/bxvip/skin/callback/ISkinChangingCallback;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    iget-object v1, p0, Lco/bxvip/skin/SkinManager$1;->val$skinChangingCallback:Lco/bxvip/skin/callback/ISkinChangingCallback;

    invoke-interface {v1, v0}, Lco/bxvip/skin/callback/ISkinChangingCallback;->onError(Ljava/lang/Exception;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 193
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lco/bxvip/skin/SkinManager$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
