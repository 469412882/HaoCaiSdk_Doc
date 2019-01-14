.class public Lcom/qihoo360/replugin/model/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRAMEWORK_VERSION_UNKNOWN:I = 0x0

.field public static final QUERY_COLUMNS:[Ljava/lang/String;

.field private static final REGEX:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "PluginInfo"

.field public static final TYPE_BUILTIN:I = 0x2

.field public static final TYPE_EXTRACTED:I = 0xb

.field public static final TYPE_NOT_INSTALL:I = 0xa

.field public static final TYPE_PN_INSTALLED:I = 0x1

.field public static final TYPE_PN_JAR:I = 0x3

.field public static final VERSION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5aa475eda9cb7c34L


# instance fields
.field private mIsPendingCover:Z

.field private transient mJson:Lorg/json/JSONObject;

.field private mJsonText:Ljava/lang/String;

.field private mParentInfo:Lcom/qihoo360/replugin/model/PluginInfo;

.field private mPendingCover:Lcom/qihoo360/replugin/model/PluginInfo;

.field private mPendingDelete:Lcom/qihoo360/replugin/model/PluginInfo;

.field private mPendingUpdate:Lcom/qihoo360/replugin/model/PluginInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 789
    new-instance v0, Lcom/qihoo360/replugin/model/PluginInfo$1;

    invoke-direct {v0}, Lcom/qihoo360/replugin/model/PluginInfo$1;-><init>()V

    sput-object v0, Lcom/qihoo360/replugin/model/PluginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 972
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "low"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "high"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ver"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "v5type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "path"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "v5index"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "v5offset"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "v5length"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "v5md5"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/qihoo360/replugin/model/PluginInfo;->QUERY_COLUMNS:[Ljava/lang/String;

    .line 979
    const-string v0, "^([^-]+)-([0-9]+)-([0-9]+)-([0-9]+).jar$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/model/PluginInfo;->REGEX:Ljava/util/regex/Pattern;

    .line 985
    new-instance v0, Lcom/qihoo360/replugin/model/PluginInfo$2;

    invoke-direct {v0}, Lcom/qihoo360/replugin/model/PluginInfo$2;-><init>()V

    sput-object v0, Lcom/qihoo360/replugin/model/PluginInfo;->VERSION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, "jo":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 806
    .local v1, "txt":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 807
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 813
    goto :goto_0

    .line 808
    :catch_0
    move-exception v2

    .line 809
    .local v2, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    .line 810
    const-string v3, "PluginInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PluginInfo: mJson error! s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v3

    .line 814
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/model/PluginInfo;->initPluginInfo(Lorg/json/JSONObject;)V

    .line 815
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qihoo360/replugin/model/PluginInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qihoo360/replugin/model/PluginInfo$1;

    .line 68
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "ver"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    .line 136
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-static {v0, v1, p1}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "low"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "high"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "ver"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;IIILjava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "ver"    # I
    .param p5, "type"    # I
    .param p6, "v5Type"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "v5index"    # I
    .param p9, "v5offset"    # I
    .param p10, "v5length"    # I
    .param p11, "v5md5"    # Ljava/lang/String;

    move-object v8, p0

    .line 1082
    move-object v0, v8

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p7

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 1084
    iget-object v0, v8, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5type"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    iget-object v0, v8, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5index"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    iget-object v0, v8, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5offset"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1087
    iget-object v0, v8, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5length"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1088
    iget-object v0, v8, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5md5"

    move-object/from16 v2, p11

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1089
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "low"    # I
    .param p4, "high"    # I
    .param p5, "version"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "type"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-gtz p3, :cond_0

    .line 145
    sget p3, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    .line 147
    :cond_0
    if-gtz p4, :cond_1

    .line 148
    sget p4, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    .line 151
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    .line 152
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "pkgname"

    invoke-static {v0, v1, p1}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "ali"

    invoke-static {v0, v1, p2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/model/PluginInfo;->makeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "low"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "high"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0, p5}, Lcom/qihoo360/replugin/model/PluginInfo;->setVersion(I)V

    .line 159
    invoke-virtual {p0, p6}, Lcom/qihoo360/replugin/model/PluginInfo;->setPath(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p7}, Lcom/qihoo360/replugin/model/PluginInfo;->setType(I)V

    .line 161
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jo"    # Lorg/json/JSONObject;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/model/PluginInfo;->initPluginInfo(Lorg/json/JSONObject;)V

    .line 132
    return-void
.end method

.method public static final build(Landroid/database/Cursor;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 25
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 1062
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1064
    .local v14, "v1":I
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1065
    .local v15, "v2":I
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1066
    .local v16, "v3":I
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1067
    .local v17, "type":I
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1068
    .local v18, "v5Type":I
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1069
    .local v19, "path":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1070
    .local v20, "v5index":I
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1071
    .local v21, "v5offset":I
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1072
    .local v22, "v5length":I
    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1073
    .local v23, "v5md5":Ljava/lang/String;
    new-instance v24, Lcom/qihoo360/replugin/model/PluginInfo;

    move-object/from16 v2, v24

    move-object v3, v1

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v13, v23

    invoke-direct/range {v2 .. v13}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Ljava/lang/String;IIIIILjava/lang/String;IIILjava/lang/String;)V

    return-object v24
.end method

.method public static final build(Ljava/io/File;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 20
    .param p0, "f"    # Ljava/io/File;

    .line 1004
    sget-object v0, Lcom/qihoo360/replugin/model/PluginInfo;->REGEX:Ljava/util/regex/Pattern;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1005
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 1011
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    .line 1012
    .local v2, "r":Ljava/util/regex/MatchResult;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto/16 :goto_0

    .line 1018
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1020
    .local v3, "low":I
    const/4 v5, 0x3

    invoke-interface {v2, v5}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1021
    .local v17, "high":I
    invoke-interface {v2, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1022
    .local v4, "ver":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 1023
    .local v18, "path":Ljava/lang/String;
    new-instance v19, Lcom/qihoo360/replugin/model/PluginInfo;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v5, v19

    move-object v6, v1

    move v7, v3

    move/from16 v8, v17

    move v9, v4

    move-object/from16 v12, v18

    invoke-direct/range {v5 .. v16}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Ljava/lang/String;IIIIILjava/lang/String;IIILjava/lang/String;)V

    .line 1024
    .local v5, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_2

    .line 1025
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PluginInfo.build: found plugin, name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " low="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v5}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " high="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v5}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1025
    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_2
    return-object v5

    .line 1013
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "low":I
    .end local v4    # "ver":I
    .end local v5    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v17    # "high":I
    .end local v18    # "path":Ljava/lang/String;
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_4

    .line 1014
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PluginInfo.build: skip, no match2, file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_4
    return-object v1

    .line 1006
    .end local v2    # "r":Ljava/util/regex/MatchResult;
    :cond_5
    :goto_1
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_6

    .line 1007
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginInfo.build: skip, no match1, file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_6
    return-object v1
.end method

.method public static final build(Ljava/lang/String;III)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "ver"    # I

    .line 1077
    new-instance v0, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method private final buildCompareValue()J
    .locals 12

    .line 1166
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v0

    and-int/lit16 v0, v0, 0x7fff

    int-to-long v0, v0

    .line 1167
    .local v0, "x":J
    const/16 v2, 0x30

    shl-long v2, v0, v2

    .line 1168
    .local v2, "v1":J
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-long v0, v4

    .line 1169
    const/16 v4, 0x20

    shl-long v4, v0, v4

    .line 1170
    .local v4, "v2":J
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v6

    int-to-long v6, v6

    .line 1171
    .local v6, "v3":J
    or-long v8, v2, v4

    or-long v10, v8, v6

    return-wide v10
.end method

.method public static final buildFromBuiltInJson(Lorg/json/JSONObject;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 15
    .param p0, "jo"    # Lorg/json/JSONObject;

    .line 1033
    const-string v0, "pkg"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1035
    .local v9, "name":Ljava/lang/String;
    const-string v1, "path"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1036
    .local v10, "assetName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1042
    :cond_0
    const-string v1, "low"

    sget v2, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 1043
    .local v11, "low":I
    const-string v1, "high"

    sget v2, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 1044
    .local v12, "high":I
    const-string v1, "ver"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 1045
    .local v13, "ver":I
    new-instance v14, Lcom/qihoo360/replugin/model/PluginInfo;

    const/4 v8, 0x2

    move-object v1, v14

    move-object v2, v0

    move-object v3, v9

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 1048
    .local v1, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    const-string v2, "frm"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1049
    .local v2, "frameVer":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 1050
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo360/replugin/RePluginConfig;->getDefaultFrameworkVersion()I

    move-result v2

    .line 1052
    :cond_1
    invoke-virtual {v1, v2}, Lcom/qihoo360/replugin/model/PluginInfo;->setFrameworkVersion(I)V

    .line 1054
    return-object v1

    .line 1037
    .end local v1    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v2    # "frameVer":I
    .end local v11    # "low":I
    .end local v12    # "high":I
    .end local v13    # "ver":I
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_3

    .line 1038
    const-string v1, "PluginInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildFromBuiltInJson: Invalid json. j="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final buildV5(Ljava/lang/String;IIIILjava/lang/String;IIILjava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "ver"    # I
    .param p4, "v5Type"    # I
    .param p5, "v5Path"    # Ljava/lang/String;
    .param p6, "v5index"    # I
    .param p7, "v5offset"    # I
    .param p8, "v5length"    # I
    .param p9, "v5md5"    # Ljava/lang/String;

    .line 1058
    new-instance v12, Lcom/qihoo360/replugin/model/PluginInfo;

    const/4 v5, 0x3

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Ljava/lang/String;IIIIILjava/lang/String;IIILjava/lang/String;)V

    return-object v12
.end method

.method static createByJO(Lorg/json/JSONObject;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 2
    .param p0, "jo"    # Lorg/json/JSONObject;

    .line 759
    new-instance v0, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v0, p0}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Lorg/json/JSONObject;)V

    .line 761
    .local v0, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    const/4 v1, 0x0

    return-object v1

    .line 765
    :cond_0
    return-object v0
.end method

.method public static final format(Ljava/lang/String;III)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "ver"    # I

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatName()Ljava/lang/String;
    .locals 4

    .line 1092
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v1

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v2

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/qihoo360/replugin/model/PluginInfo;->format(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDexDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "dexDir"    # Ljava/io/File;
    .param p2, "dirSuffix"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 401
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->makeInstalledFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 406
    :cond_0
    return-object v0
.end method

.method private initPluginInfo(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .line 164
    iput-object p1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    .line 167
    const-string v0, "upinfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    .local v0, "ujo":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v1, v0}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingUpdate:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 173
    :cond_0
    const-string v1, "delinfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 174
    .local v1, "djo":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 175
    new-instance v2, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v2, v1}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingDelete:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 179
    :cond_1
    const-string v2, "coverinfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 180
    .local v2, "cjo":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 181
    new-instance v3, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v3, v2}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingCover:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 185
    :cond_2
    const-string v3, "cover"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mIsPendingCover:Z

    .line 186
    return-void
.end method

.method private makeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    return-object p2

    .line 194
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    return-object p1

    .line 197
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static parseFromJsonText(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 3
    .param p0, "joText"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v1, "jo":Lorg/json/JSONObject;
    nop

    .line 258
    nop

    .line 262
    const-string v2, "pkgname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    new-instance v0, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v0, v1}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 265
    :cond_0
    return-object v0

    .line 254
    .end local v1    # "jo":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 258
    :cond_1
    return-object v0
.end method

.method public static parseFromPackageInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 17
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;
    .param p1, "path"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 205
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 206
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 207
    .local v10, "pn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 208
    .local v2, "alias":Ljava/lang/String;
    const/4 v3, 0x0

    .line 209
    .local v3, "low":I
    const/4 v4, 0x0

    .line 210
    .local v4, "high":I
    const/4 v5, 0x0

    .line 212
    .local v5, "ver":I
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 215
    .local v11, "metaData":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 217
    const-string v6, "com.qihoo360.plugin.name"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v6, "com.qihoo360.plugin.version.low"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 221
    const-string v6, "com.qihoo360.plugin.version.high"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 224
    const-string v6, "com.qihoo360.plugin.version.ver"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 228
    .end local v2    # "alias":Ljava/lang/String;
    .local v12, "alias":Ljava/lang/String;
    :cond_0
    move-object v12, v2

    if-gtz v3, :cond_1

    .line 229
    sget v2, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    .line 231
    .end local v3    # "low":I
    .local v2, "low":I
    move v13, v2

    goto :goto_0

    .line 231
    .end local v2    # "low":I
    .restart local v3    # "low":I
    :cond_1
    move v13, v3

    .line 231
    .end local v3    # "low":I
    .local v13, "low":I
    :goto_0
    if-gtz v4, :cond_2

    .line 232
    sget v2, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    .line 234
    .end local v4    # "high":I
    .local v2, "high":I
    move v14, v2

    goto :goto_1

    .line 234
    .end local v2    # "high":I
    .restart local v4    # "high":I
    :cond_2
    move v14, v4

    .line 234
    .end local v4    # "high":I
    .local v14, "high":I
    :goto_1
    if-gtz v5, :cond_3

    .line 235
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 238
    .end local v5    # "ver":I
    .local v2, "ver":I
    move v15, v2

    goto :goto_2

    .line 238
    .end local v2    # "ver":I
    .restart local v5    # "ver":I
    :cond_3
    move v15, v5

    .line 238
    .end local v5    # "ver":I
    .local v15, "ver":I
    :goto_2
    new-instance v16, Lcom/qihoo360/replugin/model/PluginInfo;

    const/16 v9, 0xa

    move-object/from16 v2, v16

    move-object v3, v10

    move-object v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 241
    .local v2, "pli":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v2, v11}, Lcom/qihoo360/replugin/model/PluginInfo;->setFrameworkVersionByMeta(Landroid/os/Bundle;)V

    .line 243
    return-object v2
.end method

.method private setAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 775
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "ali"

    invoke-static {v0, v1, p1}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    :cond_0
    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 769
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "pkgname"

    invoke-static {v0, v1, p1}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 772
    :cond_0
    return-void
.end method

.method private setVersion(I)V
    .locals 4
    .param p1, "version"    # I

    .line 781
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "ver"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "verv"

    invoke-direct {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->buildCompareValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    return-void
.end method

.method private toContentString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .line 889
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 891
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    const-string v0, "> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mParentInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    if-eqz v0, :cond_0

    .line 897
    const-string v0, "[HAS_PARENT] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 903
    const-string v0, "[BUILTIN] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isPnPlugin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    const-string v0, "[P-N] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 907
    :cond_2
    const-string v0, "[APK] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :goto_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isDexExtracted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 913
    const-string v0, "[DEX_EXTRACTED] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_3
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/RePlugin;->isPluginRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 918
    const-string v0, "[RUNNING] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_4
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/RePlugin;->getRunningProcessesByPlugin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "processes":[Ljava/lang/String;
    const/16 v1, 0x20

    if-eqz v0, :cond_5

    .line 924
    const-string v2, "processes="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 928
    :cond_5
    iget-object v2, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    if-eqz v2, :cond_6

    .line 929
    const-string v2, "js="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    :cond_6
    const-string v2, "dex="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 935
    const-string v1, "nlib="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 937
    return-void
.end method


# virtual methods
.method public final canReplaceForPn(Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 1140
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1141
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1145
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1146
    return v1

    .line 1148
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    .line 819
    const/4 v0, 0x0

    .line 822
    .local v0, "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    iget-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJsonText:Ljava/lang/String;

    .line 826
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 827
    .local v1, "byteArrOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 829
    .local v2, "objOut":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 831
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 832
    .local v3, "byteArrIn":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 834
    .local v4, "objIn":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qihoo360/replugin/model/PluginInfo;

    move-object v0, v5

    .line 836
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJsonText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 837
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJsonText:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    .line 839
    iget-object v5, v0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v6, "upinfo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 840
    .local v5, "ujo":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 841
    new-instance v6, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v6, v5}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v6, v0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingUpdate:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 844
    :cond_1
    iget-object v6, v0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v7, "delinfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 845
    .local v6, "djo":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 846
    new-instance v7, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v7, v6}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v7, v0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingDelete:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 849
    :cond_2
    iget-object v7, v0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v8, "coverinfo"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 850
    .local v7, "cjo":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    .line 851
    new-instance v8, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v8, v7}, Lcom/qihoo360/replugin/model/PluginInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v8, v0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingCover:Lcom/qihoo360/replugin/model/PluginInfo;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v1    # "byteArrOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "objOut":Ljava/io/ObjectOutputStream;
    .end local v3    # "byteArrIn":Ljava/io/ByteArrayInputStream;
    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    .end local v5    # "ujo":Lorg/json/JSONObject;
    .end local v6    # "djo":Lorg/json/JSONObject;
    .end local v7    # "cjo":Lorg/json/JSONObject;
    goto :goto_1

    .line 858
    :catch_0
    move-exception v1

    .line 859
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 859
    .end local v1    # "e":Lorg/json/JSONException;
    goto :goto_2

    .line 856
    :catch_1
    move-exception v1

    .line 857
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 857
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 854
    :catch_2
    move-exception v1

    .line 855
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 860
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    :goto_1
    nop

    .line 862
    :goto_2
    return-object v0
.end method

.method public final deleteObsolote(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1116
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1117
    return v1

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    return v1

    .line 1122
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1126
    .local v0, "rc":Z
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v1

    .line 1127
    .local v1, "libDir":Ljava/io/File;
    invoke-static {v1}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->clear(Ljava/io/File;)V

    .line 1128
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 946
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 947
    return v0

    .line 950
    :cond_0
    if-ne p0, p1, :cond_1

    .line 951
    const/4 v0, 0x1

    return v0

    .line 954
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 955
    return v0

    .line 958
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 961
    .local v1, "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    :try_start_0
    iget-object v2, v1, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 962
    :catch_0
    move-exception v2

    .line 963
    .local v2, "e":Ljava/lang/Exception;
    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "ali"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApkDir()Ljava/lang/String;
    .locals 3

    .line 378
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 380
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isPnPlugin()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 381
    const-string v1, "plugins_v3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 381
    .local v1, "dir":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 382
    .end local v1    # "dir":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getIsPendingCover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    const-string v1, "p_c"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 385
    :cond_1
    const-string v1, "p_a"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 388
    .restart local v1    # "dir":Ljava/io/File;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getApkFile()Ljava/io/File;
    .locals 4

    .line 368
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->makeInstalledFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDexFile()Ljava/io/File;
    .locals 4

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexParentDir()Ljava/io/File;

    move-result-object v0

    .line 481
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->makeInstalledFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".odex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 483
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexParentDir()Ljava/io/File;

    move-result-object v0

    .line 484
    .restart local v0    # "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->makeInstalledFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getDexParentDir()Ljava/io/File;
    .locals 4

    .line 449
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 451
    .local v0, "context":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    .line 452
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "oat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qihoo360/loader2/VMRuntimeCompat;->getArtOatCpuType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isPnPlugin()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 455
    const-string v1, "plugins_v3_odex"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getIsPendingCover()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    const-string v1, "p_c"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 459
    :cond_2
    const-string v1, "p_od"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public getExtraDexDir()Ljava/io/File;
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexParentDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "_ed"

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExtraOdexDir()Ljava/io/File;
    .locals 2

    .line 430
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexParentDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "_eod"

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFrameworkVersion()I
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "frm_ver"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHighInterfaceApi()I
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "high"

    sget v2, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsPendingCover()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mIsPendingCover:Z

    return v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLowInterfaceApi()I
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "low"

    sget v2, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeLibsDir()Ljava/io/File;
    .locals 4

    .line 498
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 500
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isPnPlugin()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 501
    const-string v1, "plugins_v3_libs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 501
    .local v1, "dir":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 502
    .end local v1    # "dir":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getIsPendingCover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    const-string v1, "p_c"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 505
    :cond_1
    const-string v1, "p_n"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 507
    .restart local v1    # "dir":Ljava/io/File;
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->makeInstalledFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "pkgname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentInfo()Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mParentInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendingCover()Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingCover:Lcom/qihoo360/replugin/model/PluginInfo;

    return-object v0
.end method

.method public getPendingDelete()Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingDelete:Lcom/qihoo360/replugin/model/PluginInfo;

    return-object v0
.end method

.method public getPendingUpdate()Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingUpdate:Lcom/qihoo360/replugin/model/PluginInfo;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getV5Index()I
    .locals 3

    .line 1200
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getV5Length()I
    .locals 3

    .line 1218
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5length"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getV5MD5()Ljava/lang/String;
    .locals 2

    .line 1227
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5md5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getV5Offset()I
    .locals 3

    .line 1209
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5offset"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getV5Type()I
    .locals 3

    .line 1191
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "v5type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersionValue()J
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "verv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDexExtracted()Z
    .locals 6

    .line 355
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v0

    .line 357
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNeedCover()Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingCover:Lcom/qihoo360/replugin/model/PluginInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedUninstall()Z
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingDelete:Lcom/qihoo360/replugin/model/PluginInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedUpdate()Z
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingUpdate:Lcom/qihoo360/replugin/model/PluginInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPnPlugin()Z
    .locals 3

    .line 1181
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v0

    .line 1182
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isUsed()Z
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isPnPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isDexExtracted()Z

    move-result v0

    return v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getParentInfo()Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getParentInfo()Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->isUsed()Z

    move-result v0

    return v0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "used"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public makeInstalledFileName()Ljava/lang/String;
    .locals 3

    .line 715
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->isPnPlugin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "n":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, -0x58

    .line 725
    .local v1, "h":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 716
    .end local v0    # "n":Ljava/lang/String;
    .end local v1    # "h":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->formatName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final match()Z
    .locals 3

    .line 1153
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qihoo360/replugin/RePluginCallbacks;->isPluginBlocked(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v0

    .line 1155
    .local v0, "isBlocked":Z
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 1156
    if-eqz v0, :cond_0

    .line 1157
    const-string v1, "ws001"

    const-string v2, "match result: plugin is blocked"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public setFrameworkVersion(I)V
    .locals 3
    .param p1, "version"    # I

    .line 680
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "frm_ver"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    return-void
.end method

.method public setFrameworkVersionByMeta(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "meta"    # Landroid/os/Bundle;

    .line 690
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getDefaultFrameworkVersion()I

    move-result v0

    .line 691
    .local v0, "dfv":I
    const/4 v1, 0x0

    .line 692
    .local v1, "frameVer":I
    if-eqz p1, :cond_0

    .line 693
    const-string v2, "com.qihoo360.framework.ver"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 695
    :cond_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 696
    move v1, v0

    .line 698
    :cond_1
    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->setFrameworkVersion(I)V

    .line 699
    return-void
.end method

.method public setIsPendingCover(Z)V
    .locals 3
    .param p1, "coverInfo"    # Z

    .line 639
    iput-boolean p1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mIsPendingCover:Z

    .line 640
    iget-boolean v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mIsPendingCover:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "cover"

    iget-boolean v2, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mIsPendingCover:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 645
    :goto_0
    return-void
.end method

.method public setIsUsed(Z)V
    .locals 3
    .param p1, "used"    # Z

    .line 339
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "used"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public setParentInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 0
    .param p1, "parent"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 755
    iput-object p1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mParentInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 756
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "path"

    invoke-static {v0, v1, p1}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public setPendingCover(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 616
    iput-object p1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingCover:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 617
    if-eqz p1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "coverinfo"

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "coverinfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    :goto_0
    return-void
.end method

.method public setPendingDelete(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 583
    iput-object p1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingDelete:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 584
    if-eqz p1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "delinfo"

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "delinfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 589
    :goto_0
    return-void
.end method

.method public setPendingUpdate(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 550
    iput-object p1, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mPendingUpdate:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 551
    if-eqz p1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "upinfo"

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "upinfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 556
    :goto_0
    return-void
.end method

.method public setType(I)V
    .locals 3
    .param p1, "type"    # I

    .line 522
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public final to(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1102
    const-string v0, "name"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    const-string v0, "low"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1104
    const-string v0, "high"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1105
    const-string v0, "ver"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1107
    const-string v0, "v5type"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Type()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    const-string v0, "path"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v0, "v5index"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Index()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1110
    const-string v0, "v5offset"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Offset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1111
    const-string v0, "v5length"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1112
    const-string v0, "v5md5"

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5MD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    return-void
.end method

.method final to(Landroid/database/MatrixCursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/MatrixCursor;

    .line 1096
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getLowInterfaceApi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getHighInterfaceApi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 1097
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 1098
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Offset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5Length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getV5MD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1099
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "PInfo { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/model/PluginInfo;->toContentString(Ljava/lang/StringBuilder;)V

    .line 881
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 737
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/model/PluginInfo;->setVersion(I)V

    .line 738
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/model/PluginInfo;->setPath(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/model/PluginInfo;->setType(I)V

    .line 740
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/model/PluginInfo;->setPackageName(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/model/PluginInfo;->setAlias(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 872
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfo;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    return-void
.end method
