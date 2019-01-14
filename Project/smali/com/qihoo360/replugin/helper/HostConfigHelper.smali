.class public Lcom/qihoo360/replugin/helper/HostConfigHelper;
.super Ljava/lang/Object;
.source "HostConfigHelper.java"


# static fields
.field public static ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE:I = 0x0

.field public static ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK:I = 0x0

.field public static ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP:I = 0x0

.field public static ACTIVITY_PIT_COUNT_NTS_STANDARD:I = 0x0

.field public static ACTIVITY_PIT_COUNT_TASK:I = 0x0

.field public static ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE:I = 0x0

.field public static ACTIVITY_PIT_COUNT_TS_SINGLE_TASK:I = 0x0

.field public static ACTIVITY_PIT_COUNT_TS_SINGLE_TOP:I = 0x0

.field public static ACTIVITY_PIT_COUNT_TS_STANDARD:I = 0x0

.field public static ACTIVITY_PIT_USE_APPCOMPAT:Z = false

.field public static ADAPTER_COMPATIBLE_VERSION:I = 0x0

.field public static ADAPTER_CURRENT_VERSION:I = 0x0

.field private static HOST_CONFIG_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final HOST_CONFIG_FILE_NAME:Ljava/lang/String; = "RePluginHostConfig"

.field private static final HOST_CONFIG_FILE_PATH:Ljava/lang/String; = "com.qihoo360.replugin.gen."

.field public static PERSISTENT_ENABLE:Z

.field public static PERSISTENT_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->PERSISTENT_ENABLE:Z

    .line 44
    const-string v0, ":GuardService"

    sput-object v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->PERSISTENT_NAME:Ljava/lang/String;

    .line 47
    const/4 v0, 0x2

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_STANDARD:I

    .line 48
    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TOP:I

    .line 49
    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TASK:I

    .line 50
    const/4 v1, 0x3

    sput v1, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE:I

    .line 53
    const/4 v2, 0x6

    sput v2, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_STANDARD:I

    .line 54
    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP:I

    .line 55
    sput v1, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK:I

    .line 56
    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE:I

    .line 59
    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TASK:I

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_USE_APPCOMPAT:Z

    .line 69
    const/16 v0, 0xa

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ADAPTER_COMPATIBLE_VERSION:I

    .line 72
    const/16 v0, 0xc

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ADAPTER_CURRENT_VERSION:I

    .line 77
    :try_start_0
    const-string v0, "com.qihoo360.replugin.gen.RePluginHostConfig"

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->HOST_CONFIG_CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 83
    :goto_0
    :try_start_1
    const-string v0, "PERSISTENT_ENABLE"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->PERSISTENT_ENABLE:Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 89
    :goto_1
    :try_start_2
    const-string v0, "PERSISTENT_NAME"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->PERSISTENT_NAME:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    goto :goto_2

    .line 90
    :catch_2
    move-exception v0

    .line 95
    :goto_2
    :try_start_3
    const-string v0, "ACTIVITY_PIT_USE_APPCOMPAT"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_USE_APPCOMPAT:Z
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 98
    goto :goto_3

    .line 96
    :catch_3
    move-exception v0

    .line 101
    :goto_3
    :try_start_4
    const-string v0, "ACTIVITY_PIT_COUNT_TS_STANDARD"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_STANDARD:I
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    .line 104
    goto :goto_4

    .line 102
    :catch_4
    move-exception v0

    .line 107
    :goto_4
    :try_start_5
    const-string v0, "ACTIVITY_PIT_COUNT_TS_SINGLE_TOP"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TOP:I
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    .line 110
    goto :goto_5

    .line 108
    :catch_5
    move-exception v0

    .line 113
    :goto_5
    :try_start_6
    const-string v0, "ACTIVITY_PIT_COUNT_TS_SINGLE_TASK"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_TASK:I
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_6

    .line 116
    goto :goto_6

    .line 114
    :catch_6
    move-exception v0

    .line 119
    :goto_6
    :try_start_7
    const-string v0, "ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE:I
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    .line 122
    goto :goto_7

    .line 120
    :catch_7
    move-exception v0

    .line 125
    :goto_7
    :try_start_8
    const-string v0, "ACTIVITY_PIT_COUNT_NTS_STANDARD"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_STANDARD:I
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_8

    .line 128
    goto :goto_8

    .line 126
    :catch_8
    move-exception v0

    .line 131
    :goto_8
    :try_start_9
    const-string v0, "ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP:I
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_9} :catch_9

    .line 134
    goto :goto_9

    .line 132
    :catch_9
    move-exception v0

    .line 137
    :goto_9
    :try_start_a
    const-string v0, "ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK:I
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_a} :catch_a

    .line 140
    goto :goto_a

    .line 138
    :catch_a
    move-exception v0

    .line 143
    :goto_a
    :try_start_b
    const-string v0, "ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE:I
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_b} :catch_b

    .line 146
    goto :goto_b

    .line 144
    :catch_b
    move-exception v0

    .line 149
    :goto_b
    :try_start_c
    const-string v0, "ACTIVITY_PIT_COUNT_TASK"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TASK:I
    :try_end_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_c} :catch_c

    .line 152
    goto :goto_c

    .line 150
    :catch_c
    move-exception v0

    .line 155
    :goto_c
    :try_start_d
    const-string v0, "ADAPTER_COMPATIBLE_VERSION"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ADAPTER_COMPATIBLE_VERSION:I
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_d} :catch_d

    .line 158
    goto :goto_d

    .line 156
    :catch_d
    move-exception v0

    .line 161
    :goto_d
    :try_start_e
    const-string v0, "ADAPTER_CURRENT_VERSION"

    invoke-static {v0}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ADAPTER_CURRENT_VERSION:I
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_e

    .line 164
    goto :goto_e

    .line 162
    :catch_e
    move-exception v0

    .line 165
    :goto_e
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 0

    .line 184
    return-void
.end method

.method private static readField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 171
    :try_start_0
    sget-object v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->HOST_CONFIG_CLASS:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
