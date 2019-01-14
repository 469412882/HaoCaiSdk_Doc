.class final Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$asyncTask$1;
.super Ljava/lang/Object;
.source "RealBaseDaoImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->asyncTask(Lco/bxvip/android/commonlib/db/callback/DBRun;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $easyRun:Lco/bxvip/android/commonlib/db/callback/DBRun;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/db/callback/DBRun;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$asyncTask$1;->$easyRun:Lco/bxvip/android/commonlib/db/callback/DBRun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 339
    nop

    .line 340
    :try_start_0
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$asyncTask$1;->$easyRun:Lco/bxvip/android/commonlib/db/callback/DBRun;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/callback/DBRun;->run()Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "data":Ljava/lang/Object;
    new-instance v1, Lco/bxvip/android/commonlib/db/handler/MessageInfo;

    invoke-direct {v1}, Lco/bxvip/android/commonlib/db/handler/MessageInfo;-><init>()V

    .line 342
    .local v1, "info":Lco/bxvip/android/commonlib/db/handler/MessageInfo;
    const/4 v2, 0x1

    iput v2, v1, Lco/bxvip/android/commonlib/db/handler/MessageInfo;->what:I

    .line 343
    iput-object v0, v1, Lco/bxvip/android/commonlib/db/handler/MessageInfo;->model:Ljava/lang/Object;

    .line 344
    iget-object v2, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$asyncTask$1;->$easyRun:Lco/bxvip/android/commonlib/db/callback/DBRun;

    iput-object v2, v1, Lco/bxvip/android/commonlib/db/handler/MessageInfo;->easyRun:Lco/bxvip/android/commonlib/db/callback/DBRun;

    .line 345
    invoke-static {}, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;->get()Lco/bxvip/android/commonlib/db/handler/HandlerHelper;

    move-result-object v2

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/db/handler/MessageInfo;->build()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "info":Lco/bxvip/android/commonlib/db/handler/MessageInfo;
    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 349
    return-void
.end method
