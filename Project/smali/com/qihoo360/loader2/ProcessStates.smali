.class Lcom/qihoo360/loader2/ProcessStates;
.super Ljava/lang/Object;
.source "ProcessStates.java"


# instance fields
.field mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

.field mTaskAffinityStates:Lcom/qihoo360/loader2/TaskAffinityStates;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/qihoo360/loader2/TaskAffinityStates;

    invoke-direct {v0}, Lcom/qihoo360/loader2/TaskAffinityStates;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/ProcessStates;->mTaskAffinityStates:Lcom/qihoo360/loader2/TaskAffinityStates;

    .line 35
    new-instance v0, Lcom/qihoo360/loader2/LaunchModeStates;

    invoke-direct {v0}, Lcom/qihoo360/loader2/LaunchModeStates;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/ProcessStates;->mLaunchModeStates:Lcom/qihoo360/loader2/LaunchModeStates;

    return-void
.end method
