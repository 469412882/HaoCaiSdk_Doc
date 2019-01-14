.class final Lkotlinx/coroutines/experimental/CoroutineId;
.super Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/CoroutineId$Key;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/CoroutineId;",
        "Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;",
        "id",
        "",
        "(J)V",
        "getId",
        "()J",
        "toString",
        "",
        "Key",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final Key:Lkotlinx/coroutines/experimental/CoroutineId$Key;


# instance fields
.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/experimental/CoroutineId$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/CoroutineId$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/CoroutineId;->Key:Lkotlinx/coroutines/experimental/CoroutineId$Key;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .line 121
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineId;->Key:Lkotlinx/coroutines/experimental/CoroutineId$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/experimental/CoroutineContext$Key;)V

    iput-wide p1, p0, Lkotlinx/coroutines/experimental/CoroutineId;->id:J

    return-void
.end method


# virtual methods
.method public final getId()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lkotlinx/coroutines/experimental/CoroutineId;->id:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/experimental/CoroutineId;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
