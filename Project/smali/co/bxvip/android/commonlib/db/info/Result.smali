.class public Lco/bxvip/android/commonlib/db/info/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final COUNT:I = 0x4

.field public static final IS_EXIST:I = 0x5

.field public static final LINE:I = 0x3

.field public static final LIST:I = 0x1

.field public static final MODEL:I = 0x2


# instance fields
.field private count:J

.field private exception:Ljava/lang/Exception;

.field private isExist:Z

.field private line:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 25
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Result;->list:Ljava/util/List;

    .line 26
    iput p1, p0, Lco/bxvip/android/commonlib/db/info/Result;->type:I

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .line 66
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iget-wide v0, p0, Lco/bxvip/android/commonlib/db/info/Result;->count:J

    return-wide v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 34
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/Result;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 58
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iget v0, p0, Lco/bxvip/android/commonlib/db/info/Result;->line:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/Result;->list:Ljava/util/List;

    return-object v0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/Result;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 30
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iget v0, p0, Lco/bxvip/android/commonlib/db/info/Result;->type:I

    return v0
.end method

.method public isExist()Z
    .locals 1

    .line 74
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/db/info/Result;->isExist:Z

    return v0
.end method

.method public setCount(J)V
    .locals 0
    .param p1, "count"    # J

    .line 70
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iput-wide p1, p0, Lco/bxvip/android/commonlib/db/info/Result;->count:J

    .line 71
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 38
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/info/Result;->exception:Ljava/lang/Exception;

    .line 39
    return-void
.end method

.method public setExist(Z)V
    .locals 0
    .param p1, "exist"    # Z

    .line 78
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/db/info/Result;->isExist:Z

    .line 79
    return-void
.end method

.method public setLine(I)V
    .locals 0
    .param p1, "line"    # I

    .line 62
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    iput p1, p0, Lco/bxvip/android/commonlib/db/info/Result;->line:I

    .line 63
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/info/Result;->list:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setModel(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/info/Result;->model:Ljava/lang/Object;

    .line 55
    return-void
.end method
