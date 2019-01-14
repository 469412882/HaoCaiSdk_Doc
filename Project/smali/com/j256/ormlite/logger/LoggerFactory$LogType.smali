.class public enum Lcom/j256/ormlite/logger/LoggerFactory$LogType;
.super Ljava/lang/Enum;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/j256/ormlite/logger/LoggerFactory$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum JAVA_UTIL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;


# instance fields
.field private final detectClassName:Ljava/lang/String;

.field private final logClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 88
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "SLF4J"

    const-string v2, "org.slf4j.LoggerFactory"

    const-string v3, "com.j256.ormlite.logger.Slf4jLoggingLog"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 93
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "ANDROID"

    const-string v2, "android.util.Log"

    const-string v3, "com.j256.ormlite.android.AndroidLog"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 94
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "COMMONS_LOGGING"

    const-string v2, "org.apache.commons.logging.LogFactory"

    const-string v3, "com.j256.ormlite.logger.CommonsLoggingLog"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 95
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "LOG4J2"

    const-string v2, "org.apache.logging.log4j.LogManager"

    const-string v3, "com.j256.ormlite.logger.Log4j2Log"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 96
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "LOG4J"

    const-string v2, "org.apache.log4j.Logger"

    const-string v3, "com.j256.ormlite.logger.Log4jLog"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 98
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType$1;

    const-string v1, "LOCAL"

    const-class v2, Lcom/j256/ormlite/logger/LocalLog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/j256/ormlite/logger/LocalLog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 111
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "JAVA_UTIL"

    const-string v2, "java.util.logging.Logger"

    const-string v3, "com.j256.ormlite.logger.JavaUtilLog"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->JAVA_UTIL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->JAVA_UTIL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->$VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "detectClassName"    # Ljava/lang/String;
    .param p4, "logClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-object p3, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->detectClassName:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/logger/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/j256/ormlite/logger/LoggerFactory$1;

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    .locals 5
    .param p1, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 162
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/j256/ormlite/logger/Log;>;"
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/logger/Log;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 87
    const-class v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 1

    .line 87
    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->$VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-virtual {v0}, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-object v0
.end method


# virtual methods
.method public createLog(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    .locals 5
    .param p1, "classLabel"    # Ljava/lang/String;

    .line 128
    :try_start_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/j256/ormlite/logger/LocalLog;

    invoke-direct {v1, p1}, Lcom/j256/ormlite/logger/LocalLog;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "log":Lcom/j256/ormlite/logger/Log;
    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call constructor with single String argument for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", so had to use local log: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    .line 134
    return-object v1
.end method

.method public isAvailable()Z
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->isAvailableTestClass()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 143
    return v1

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;

    move-result-object v0

    .line 148
    .local v0, "log":Lcom/j256/ormlite/logger/Log;
    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v1, 0x1

    return v1

    .line 150
    .end local v0    # "log":Lcom/j256/ormlite/logger/Log;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method isAvailableTestClass()Z
    .locals 2

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->detectClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
