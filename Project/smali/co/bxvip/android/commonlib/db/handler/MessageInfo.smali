.class public Lco/bxvip/android/commonlib/db/handler/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public easyRun:Lco/bxvip/android/commonlib/db/callback/DBRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/bxvip/android/commonlib/db/callback/DBRun<",
            "TT;>;"
        }
    .end annotation
.end field

.field public model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public what:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/MessageInfo;, "Lco/bxvip/android/commonlib/db/handler/MessageInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public build()Landroid/os/Message;
    .locals 2

    .line 23
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/MessageInfo;, "Lco/bxvip/android/commonlib/db/handler/MessageInfo<TT;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 24
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lco/bxvip/android/commonlib/db/handler/MessageInfo;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 25
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    return-object v0
.end method
