.class public Lco/bxvip/android/commonlib/db/callback/DBRun;
.super Lco/bxvip/android/commonlib/db/callback/DBRunAbs;
.source "DBRun.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lco/bxvip/android/commonlib/db/callback/DBRunAbs<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    .local p0, "this":Lco/bxvip/android/commonlib/db/callback/DBRun;, "Lco/bxvip/android/commonlib/db/callback/DBRun<TT;>;"
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/callback/DBRunAbs;-><init>()V

    return-void
.end method


# virtual methods
.method public onMainThread(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    .local p0, "this":Lco/bxvip/android/commonlib/db/callback/DBRun;, "Lco/bxvip/android/commonlib/db/callback/DBRun<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    .local p0, "this":Lco/bxvip/android/commonlib/db/callback/DBRun;, "Lco/bxvip/android/commonlib/db/callback/DBRun<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
