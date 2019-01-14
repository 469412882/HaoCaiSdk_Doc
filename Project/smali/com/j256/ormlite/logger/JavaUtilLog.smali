.class public Lcom/j256/ormlite/logger/JavaUtilLog;
.super Ljava/lang/Object;
.source "JavaUtilLog.java"

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# instance fields
.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/logger/JavaUtilLog;->logger:Ljava/util/logging/Logger;

    .line 15
    return-void
.end method

.method private levelToJavaLevel(Lcom/j256/ormlite/logger/Log$Level;)Ljava/util/logging/Level;
    .locals 2
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;

    .line 33
    sget-object v0, Lcom/j256/ormlite/logger/JavaUtilLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object v0

    .line 45
    :pswitch_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    return-object v0

    .line 43
    :pswitch_1
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    return-object v0

    .line 41
    :pswitch_2
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    return-object v0

    .line 39
    :pswitch_3
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object v0

    .line 37
    :pswitch_4
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object v0

    .line 35
    :pswitch_5
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 2
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;

    .line 19
    iget-object v0, p0, Lcom/j256/ormlite/logger/JavaUtilLog;->logger:Ljava/util/logging/Logger;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/JavaUtilLog;->levelToJavaLevel(Lcom/j256/ormlite/logger/Log$Level;)Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/j256/ormlite/logger/JavaUtilLog;->logger:Ljava/util/logging/Logger;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/JavaUtilLog;->levelToJavaLevel(Lcom/j256/ormlite/logger/Log$Level;)Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 29
    iget-object v0, p0, Lcom/j256/ormlite/logger/JavaUtilLog;->logger:Ljava/util/logging/Logger;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/JavaUtilLog;->levelToJavaLevel(Lcom/j256/ormlite/logger/Log$Level;)Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
