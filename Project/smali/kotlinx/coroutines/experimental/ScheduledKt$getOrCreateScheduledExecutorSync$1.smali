.class final Lkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1;
.super Ljava/lang/Object;
.source "Scheduled.kt"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/ScheduledKt;->getOrCreateScheduledExecutorSync()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScheduled.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scheduled.kt\nkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1\n*L\n1#1,171:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Thread;",
        "r",
        "Ljava/lang/Runnable;",
        "kotlin.jvm.PlatformType",
        "newThread"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1;->INSTANCE:Lkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 41
    .local v0, "$i$a$1$apply":I
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "kotlinx.coroutines.ScheduledExecutor"

    invoke-direct {v1, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v2, v1

    .line 41
    .local v2, "$receiver":Ljava/lang/Thread;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 41
    .end local v0    # "$i$a$1$apply":I
    .end local v2    # "$receiver":Ljava/lang/Thread;
    return-object v1
.end method
