.class public Lco/bxvip/android/commonlib/db/handler/HandlerHelper;
.super Landroid/os/Handler;
.source "HandlerHelper.java"


# static fields
.field public static final WHAT_CALLBACK:I = 0x1

.field private static helper:Lco/bxvip/android/commonlib/db/handler/HandlerHelper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    return-void
.end method

.method public static get()Lco/bxvip/android/commonlib/db/handler/HandlerHelper;
    .locals 2

    .line 20
    sget-object v0, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;->helper:Lco/bxvip/android/commonlib/db/handler/HandlerHelper;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;->helper:Lco/bxvip/android/commonlib/db/handler/HandlerHelper;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;

    invoke-direct {v1}, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;-><init>()V

    sput-object v1, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;->helper:Lco/bxvip/android/commonlib/db/handler/HandlerHelper;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lco/bxvip/android/commonlib/db/handler/HandlerHelper;->helper:Lco/bxvip/android/commonlib/db/handler/HandlerHelper;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lco/bxvip/android/commonlib/db/handler/MessageInfo;

    .line 40
    .local v0, "model_msg":Lco/bxvip/android/commonlib/db/handler/MessageInfo;
    iget-object v1, v0, Lco/bxvip/android/commonlib/db/handler/MessageInfo;->easyRun:Lco/bxvip/android/commonlib/db/callback/DBRun;

    .line 42
    .local v1, "run_model":Lco/bxvip/android/commonlib/db/callback/DBRun;
    if-eqz v1, :cond_1

    .line 43
    :try_start_0
    iget-object v2, v0, Lco/bxvip/android/commonlib/db/handler/MessageInfo;->model:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lco/bxvip/android/commonlib/db/callback/DBRun;->onMainThread(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .end local v0    # "model_msg":Lco/bxvip/android/commonlib/db/handler/MessageInfo;
    .end local v1    # "run_model":Lco/bxvip/android/commonlib/db/callback/DBRun;
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 46
    .restart local v0    # "model_msg":Lco/bxvip/android/commonlib/db/handler/MessageInfo;
    .restart local v1    # "run_model":Lco/bxvip/android/commonlib/db/callback/DBRun;
    :cond_1
    :goto_0
    nop

    .line 49
    .end local v0    # "model_msg":Lco/bxvip/android/commonlib/db/handler/MessageInfo;
    .end local v1    # "run_model":Lco/bxvip/android/commonlib/db/callback/DBRun;
    :goto_1
    return-void
.end method
