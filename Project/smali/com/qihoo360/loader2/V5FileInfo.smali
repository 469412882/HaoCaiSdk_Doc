.class public Lcom/qihoo360/loader2/V5FileInfo;
.super Ljava/lang/Object;
.source "V5FileInfo.java"


# static fields
.field private static final EXTENSION:Ljava/lang/String; = ".jar"

.field public static final INCREMENT_PLUGIN:I = 0x3

.field private static final INCREMENT_PLUGIN_FILE_PATTERN:Ljava/lang/String; = "^v-plugin-([^.-]+).jar$"

.field private static final INCREMENT_REGEX:Ljava/util/regex/Pattern;

.field private static final INCREMENT_SINGLE_REGEX:Ljava/util/regex/Pattern;

.field public static final MULTI_PLUGIN:I = 0x4

.field private static final MULTI_PLUGIN_FILE_PATTERN:Ljava/lang/String; = "^p-m-([^.-]+).jar$"

.field private static final MULTI_REGEX:Ljava/util/regex/Pattern;

.field public static final NONE_PLUGIN:I = 0x0

.field public static final NORMAL_PLUGIN:I = 0x1

.field private static final NORMAL_PLUGIN_FILE_PATTERN:Ljava/lang/String; = "^p-n-([^.-]+).jar$"

.field private static final NORMAL_PREFIX:Ljava/lang/String; = "p-n-"

.field private static final NORMAL_REGEX:Ljava/util/regex/Pattern;

.field public static final SINGLE_PLUGIN:I = 0x2

.field private static final SINGLE_PLUGIN_FILE_PATTERN:Ljava/lang/String; = "^plugin-s-([^.-]+).jar$"

.field private static final V5_FILE_HEADER_SIZE:I = 0x10


# instance fields
.field mFile:Ljava/io/File;

.field mName:Ljava/lang/String;

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    const-string v0, "^v-plugin-([^.-]+).jar$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/loader2/V5FileInfo;->INCREMENT_REGEX:Ljava/util/regex/Pattern;

    .line 132
    const-string v0, "^plugin-s-([^.-]+).jar$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/loader2/V5FileInfo;->INCREMENT_SINGLE_REGEX:Ljava/util/regex/Pattern;

    .line 133
    const-string v0, "^p-n-([^.-]+).jar$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/loader2/V5FileInfo;->NORMAL_REGEX:Ljava/util/regex/Pattern;

    .line 134
    const-string v0, "^p-m-([^.-]+).jar$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/loader2/V5FileInfo;->MULTI_REGEX:Ljava/util/regex/Pattern;

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;
    .locals 7
    .param p0, "f"    # Ljava/io/File;
    .param p1, "type"    # I

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "fullname":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 152
    sget-object v2, Lcom/qihoo360/loader2/V5FileInfo;->INCREMENT_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 154
    sget-object v2, Lcom/qihoo360/loader2/V5FileInfo;->INCREMENT_SINGLE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 156
    sget-object v2, Lcom/qihoo360/loader2/V5FileInfo;->MULTI_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    sget-object v2, Lcom/qihoo360/loader2/V5FileInfo;->NORMAL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 160
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 168
    :cond_3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v3

    .line 169
    .local v3, "r":Ljava/util/regex/MatchResult;
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    goto :goto_2

    .line 177
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 185
    :cond_5
    new-instance v2, Lcom/qihoo360/loader2/V5FileInfo;

    invoke-direct {v2}, Lcom/qihoo360/loader2/V5FileInfo;-><init>()V

    .line 186
    .local v2, "p":Lcom/qihoo360/loader2/V5FileInfo;
    invoke-interface {v3, v5}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    .line 187
    iput-object p0, v2, Lcom/qihoo360/loader2/V5FileInfo;->mFile:Ljava/io/File;

    .line 188
    iput p1, v2, Lcom/qihoo360/loader2/V5FileInfo;->mType:I

    .line 189
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_6

    .line 190
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "V5FileInfo.build: found plugin, name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_6
    return-object v2

    .line 183
    .end local v2    # "p":Lcom/qihoo360/loader2/V5FileInfo;
    :cond_7
    :goto_1
    return-object v2

    .line 175
    :cond_8
    :goto_2
    return-object v2

    .line 166
    .end local v3    # "r":Ljava/util/regex/MatchResult;
    :cond_9
    :goto_3
    return-object v2
.end method

.method public static fetchPluginInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pName"    # Ljava/lang/String;

    .line 450
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p-n-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    .local v0, "f":Ljava/io/File;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 453
    const-string v1, "ws000"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needUpdate(): local file =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 458
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 459
    const-string v1, "ws000"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needUpdate(): file is not exists, file =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    return-object v2

    .line 464
    :cond_2
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/V5FileInfo;->build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;

    move-result-object v1

    .line 466
    .local v1, "p":Lcom/qihoo360/loader2/V5FileInfo;
    if-nez v1, :cond_3

    .line 467
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/qihoo360/loader2/V5FileInfo;->build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;

    move-result-object v1

    .line 470
    :cond_3
    if-nez v1, :cond_4

    .line 471
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/qihoo360/loader2/V5FileInfo;->build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;

    move-result-object v1

    .line 474
    :cond_4
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_5

    .line 475
    const-string v3, "ws000"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needUpdate(): localFileInfo =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_5
    if-eqz v1, :cond_6

    .line 479
    const-string v2, "plugins_v3"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/qihoo360/loader2/V5FileInfo;->updateV5FileTo(Landroid/content/Context;Ljava/io/File;ZZZ)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v2

    return-object v2

    .line 482
    :cond_6
    return-object v2
.end method

.method static final getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "plugin"    # Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p-n-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final parseName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "fullname"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 205
    sget-object v1, Lcom/qihoo360/loader2/V5FileInfo;->INCREMENT_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 207
    sget-object v1, Lcom/qihoo360/loader2/V5FileInfo;->INCREMENT_SINGLE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 209
    sget-object v1, Lcom/qihoo360/loader2/V5FileInfo;->MULTI_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_2
    sget-object v1, Lcom/qihoo360/loader2/V5FileInfo;->NORMAL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 213
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 216
    :cond_3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    .line 217
    .local v2, "r":Ljava/util/regex/MatchResult;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    goto :goto_1

    .line 220
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 218
    :cond_5
    :goto_1
    return-object v1

    .line 214
    .end local v2    # "r":Ljava/util/regex/MatchResult;
    :cond_6
    :goto_2
    return-object v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method final updateV5FileTo(Landroid/content/Context;Ljava/io/File;ZZ)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "updateNow"    # Z
    .param p4, "verifyCert"    # Z

    .line 233
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qihoo360/loader2/V5FileInfo;->updateV5FileTo(Landroid/content/Context;Ljava/io/File;ZZZ)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method final updateV5FileTo(Landroid/content/Context;Ljava/io/File;ZZZ)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "checkOverride"    # Z
    .param p4, "updateNow"    # Z
    .param p5, "verifyCert"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 239
    .local v4, "os":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    move-object v6, v5

    .line 241
    .local v6, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, v1, Lcom/qihoo360/loader2/V5FileInfo;->mFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    .line 242
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v7

    .line 243
    const/4 v7, 0x0

    .line 245
    .local v7, "pos":I
    iget v8, v1, Lcom/qihoo360/loader2/V5FileInfo;->mType:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 246
    const-wide/16 v8, 0x10

    :try_start_1
    invoke-virtual {v6, v8, v9}, Ljava/io/DataInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    add-int/lit8 v7, v7, 0x10

    goto :goto_0

    .line 433
    .end local v7    # "pos":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v26, v4

    goto/16 :goto_10

    .line 428
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v26, v4

    goto/16 :goto_f

    .line 250
    .restart local v7    # "pos":I
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 251
    .local v8, "low":I
    add-int/lit8 v7, v7, 0x4

    .line 252
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v15, v9

    .line 253
    .local v15, "high":I
    add-int/lit8 v7, v7, 0x4

    .line 254
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v14, v9

    .line 255
    .local v14, "ver":I
    add-int/lit8 v7, v7, 0x4

    .line 256
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    .line 257
    .local v13, "md5":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v10, 0x20

    if-eq v9, v10, :cond_2

    .line 258
    :try_start_3
    sget-boolean v9, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v9, :cond_1

    .line 259
    const-string v9, "ws001"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update v5 plugin: invalid md5 length: length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    :cond_1
    nop

    .line 433
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v5

    .line 263
    :cond_2
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    .line 265
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v12, v9

    .line 266
    .local v12, "custom":I
    add-int/lit8 v7, v7, 0x4

    .line 267
    int-to-long v9, v12

    invoke-virtual {v6, v9, v10}, Ljava/io/DataInputStream;->skip(J)J

    .line 268
    add-int/2addr v7, v12

    .line 270
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v11, v9

    .line 271
    .local v11, "length":I
    add-int/lit8 v7, v7, 0x4

    .line 273
    sget-boolean v9, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v9, :cond_3

    .line 274
    :try_start_5
    const-string v9, "ws001"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update v5 plugin: low="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " high="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ver="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " md5="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " custom="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " length="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 277
    :cond_3
    add-int v5, v7, v11

    int-to-long v9, v5

    :try_start_6
    iget-object v5, v1, Lcom/qihoo360/loader2/V5FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    cmp-long v5, v9, v16

    if-eqz v5, :cond_5

    .line 278
    :try_start_7
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_4

    .line 279
    const-string v5, "ws001"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update v5 plugin: invalid length: calc.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/qihoo360/loader2/V5FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    move/from16 v19, v11

    int-to-long v10, v7

    .line 279
    .end local v11    # "length":I
    .local v19, "length":I
    move/from16 v21, v12

    move-object/from16 v20, v13

    sub-long v12, v16, v10

    .line 279
    .end local v12    # "custom":I
    .end local v13    # "md5":Ljava/lang/String;
    .local v20, "md5":Ljava/lang/String;
    .local v21, "custom":I
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 281
    .end local v19    # "length":I
    .end local v20    # "md5":Ljava/lang/String;
    .end local v21    # "custom":I
    .restart local v11    # "length":I
    .restart local v12    # "custom":I
    .restart local v13    # "md5":Ljava/lang/String;
    :cond_4
    move/from16 v19, v11

    move/from16 v21, v12

    move-object/from16 v20, v13

    .line 433
    .end local v11    # "length":I
    .end local v12    # "custom":I
    .end local v13    # "md5":Ljava/lang/String;
    .restart local v19    # "length":I
    .restart local v20    # "md5":Ljava/lang/String;
    .restart local v21    # "custom":I
    :goto_1
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v5, 0x0

    return-object v5

    .line 284
    .end local v19    # "length":I
    .end local v20    # "md5":Ljava/lang/String;
    .end local v21    # "custom":I
    .restart local v11    # "length":I
    .restart local v12    # "custom":I
    .restart local v13    # "md5":Ljava/lang/String;
    :cond_5
    move/from16 v19, v11

    move/from16 v21, v12

    move-object/from16 v20, v13

    .line 284
    .end local v11    # "length":I
    .end local v12    # "custom":I
    .end local v13    # "md5":Ljava/lang/String;
    .restart local v19    # "length":I
    .restart local v20    # "md5":Ljava/lang/String;
    .restart local v21    # "custom":I
    :try_start_8
    sget v5, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-ge v8, v5, :cond_7

    .line 285
    :try_start_9
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_6

    .line 286
    const-string v5, "ws001"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update v5 plugin: not supported plugin.low="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " host.compatible.ver="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 288
    :cond_6
    nop

    .line 433
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v5, 0x0

    return-object v5

    .line 290
    :cond_7
    if-lt v15, v8, :cond_27

    sub-int v5, v15, v8

    const/16 v9, 0x400

    if-le v5, v9, :cond_8

    .line 291
    move-object/from16 v26, v4

    move/from16 v30, v7

    move/from16 v28, v14

    move v5, v15

    move/from16 v12, v19

    move-object/from16 v13, v20

    move/from16 v19, v21

    goto/16 :goto_e

    .line 297
    :cond_8
    :try_start_a
    iget-object v5, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-static {v5, v8, v15, v14}, Lcom/qihoo360/replugin/model/PluginInfo;->build(Ljava/lang/String;III)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 298
    .local v5, "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz p3, :cond_a

    :try_start_b
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/qihoo360/replugin/RePluginCallbacks;->isPluginBlocked(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 299
    sget-boolean v9, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v9, :cond_9

    .line 300
    const-string v9, "ws001"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update v5 plugin: failed, plugin is blocked, name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",low="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",high="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",ver="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 302
    :cond_9
    nop

    .line 433
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v9, 0x0

    return-object v9

    .line 306
    :cond_a
    if-nez p4, :cond_c

    .line 307
    :try_start_c
    sget-boolean v9, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v9, :cond_b

    .line 308
    :try_start_d
    const-string v9, "ws001"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update v5 plugin: delay extract f="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/qihoo360/loader2/V5FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 310
    :cond_b
    :try_start_e
    iget-object v9, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    iget v13, v1, Lcom/qihoo360/loader2/V5FileInfo;->mType:I

    iget-object v10, v1, Lcom/qihoo360/loader2/V5FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    move v10, v8

    move/from16 v12, v19

    move v11, v15

    .line 310
    .end local v19    # "length":I
    .local v12, "length":I
    move/from16 v24, v12

    move/from16 v19, v21

    move v12, v14

    .line 310
    .end local v12    # "length":I
    .end local v21    # "custom":I
    .local v19, "custom":I
    .local v24, "length":I
    move-object/from16 v25, v20

    .line 310
    .end local v20    # "md5":Ljava/lang/String;
    .local v25, "md5":Ljava/lang/String;
    move-object/from16 v26, v4

    move v4, v14

    move-object/from16 v14, v16

    .line 310
    .end local v14    # "ver":I
    .local v4, "ver":I
    .local v26, "os":Ljava/io/FileOutputStream;
    move-object/from16 v27, v5

    move v5, v15

    move/from16 v15, v17

    .line 310
    .end local v15    # "high":I
    .local v5, "high":I
    .local v27, "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    move/from16 v16, v18

    move/from16 v17, v22

    move-object/from16 v18, v23

    :try_start_f
    invoke-static/range {v9 .. v18}, Lcom/qihoo360/replugin/model/PluginInfo;->buildV5(Ljava/lang/String;IIIILjava/lang/String;IIILjava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v9
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 433
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v9

    .line 313
    .end local v24    # "length":I
    .end local v25    # "md5":Ljava/lang/String;
    .end local v26    # "os":Ljava/io/FileOutputStream;
    .end local v27    # "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    .local v4, "os":Ljava/io/FileOutputStream;
    .local v5, "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    .restart local v14    # "ver":I
    .restart local v15    # "high":I
    .local v19, "length":I
    .restart local v20    # "md5":Ljava/lang/String;
    .restart local v21    # "custom":I
    :cond_c
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move v4, v14

    move v5, v15

    move/from16 v24, v19

    move-object/from16 v25, v20

    move/from16 v19, v21

    .line 313
    .end local v14    # "ver":I
    .end local v15    # "high":I
    .end local v20    # "md5":Ljava/lang/String;
    .end local v21    # "custom":I
    .local v4, "ver":I
    .local v5, "high":I
    .local v19, "custom":I
    .restart local v24    # "length":I
    .restart local v25    # "md5":Ljava/lang/String;
    .restart local v26    # "os":Ljava/io/FileOutputStream;
    .restart local v27    # "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    :try_start_10
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-static {v11, v8, v5, v4}, Lcom/qihoo360/replugin/model/PluginInfo;->format(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".jar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    .local v9, "target":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    move/from16 v12, v24

    int-to-long v13, v12

    .line 315
    .end local v24    # "length":I
    .restart local v12    # "length":I
    cmp-long v15, v10, v13

    if-nez v15, :cond_11

    .line 316
    sget-boolean v10, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v10, :cond_d

    .line 317
    const-string v10, "ws001"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update v5 plugin: checking target ...  name="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_d
    invoke-static {v9}, Lcom/qihoo360/replugin/utils/basic/SecurityUtil;->MD5(Ljava/io/File;)[B

    move-result-object v10

    .line 320
    .local v10, "rc":[B
    if-eqz v10, :cond_e

    invoke-static {v10}, Lcom/qihoo360/loader/utils/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_e
    const-string v11, ""

    .line 321
    .local v11, "tmpMD5":Ljava/lang/String;
    :goto_2
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 322
    move-object/from16 v13, v25

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 322
    .end local v25    # "md5":Ljava/lang/String;
    .restart local v13    # "md5":Ljava/lang/String;
    if-eqz v14, :cond_10

    .line 323
    sget-boolean v14, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v14, :cond_f

    .line 324
    const-string v14, "ws001"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v4

    const-string v4, "update v5 plugin: target match name="

    .line 324
    .end local v4    # "ver":I
    .local v28, "ver":I
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 326
    .end local v28    # "ver":I
    .restart local v4    # "ver":I
    :cond_f
    move/from16 v28, v4

    .line 326
    .end local v4    # "ver":I
    .restart local v28    # "ver":I
    :goto_3
    invoke-static {v9}, Lcom/qihoo360/replugin/model/PluginInfo;->build(Ljava/io/File;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v4
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 433
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    .line 329
    .end local v10    # "rc":[B
    .end local v11    # "tmpMD5":Ljava/lang/String;
    .end local v28    # "ver":I
    .restart local v4    # "ver":I
    :cond_10
    move/from16 v28, v4

    .line 329
    .end local v4    # "ver":I
    .restart local v28    # "ver":I
    goto :goto_4

    .line 329
    .end local v13    # "md5":Ljava/lang/String;
    .end local v28    # "ver":I
    .restart local v4    # "ver":I
    .restart local v25    # "md5":Ljava/lang/String;
    :cond_11
    move/from16 v28, v4

    move-object/from16 v13, v25

    .line 329
    .end local v4    # "ver":I
    .end local v25    # "md5":Ljava/lang/String;
    .restart local v13    # "md5":Ljava/lang/String;
    .restart local v28    # "ver":I
    goto :goto_4

    .line 329
    .end local v12    # "length":I
    .end local v13    # "md5":Ljava/lang/String;
    .end local v28    # "ver":I
    .restart local v4    # "ver":I
    .restart local v24    # "length":I
    .restart local v25    # "md5":Ljava/lang/String;
    :cond_12
    move/from16 v28, v4

    move/from16 v12, v24

    move-object/from16 v13, v25

    .line 329
    .end local v4    # "ver":I
    .end local v24    # "length":I
    .end local v25    # "md5":Ljava/lang/String;
    .restart local v12    # "length":I
    .restart local v13    # "md5":Ljava/lang/String;
    .restart local v28    # "ver":I
    :goto_4
    :try_start_11
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_13

    .line 330
    const-string v4, "ws001"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update v5 plugin: extract ... name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_13
    new-instance v4, Ljava/io/File;

    const-string v10, "%s_plugin.tmp"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    aput-object v15, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    .local v4, "tmpfile":Ljava/io/File;
    invoke-static {v6, v4}, Lcom/qihoo360/replugin/utils/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 337
    const/4 v10, 0x0

    .line 340
    .local v10, "deleted":Z
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    move/from16 v29, v10

    int-to-long v10, v12

    .line 340
    .end local v10    # "deleted":Z
    .local v29, "deleted":Z
    cmp-long v16, v14, v10

    if-eqz v16, :cond_15

    .line 341
    sget-boolean v10, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v10, :cond_14

    .line 342
    const-string v10, "ws001"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update v5 plugin: extract file length="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " expected="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_14
    const/4 v10, 0x1

    .line 344
    .end local v29    # "deleted":Z
    .restart local v10    # "deleted":Z
    goto :goto_5

    .line 348
    .end local v10    # "deleted":Z
    .restart local v29    # "deleted":Z
    :cond_15
    move/from16 v10, v29

    .line 348
    .end local v29    # "deleted":Z
    .restart local v10    # "deleted":Z
    :goto_5
    if-nez v10, :cond_18

    .line 349
    invoke-static {v4}, Lcom/qihoo360/replugin/utils/basic/SecurityUtil;->MD5(Ljava/io/File;)[B

    move-result-object v11

    .line 350
    .local v11, "rc":[B
    if-eqz v11, :cond_16

    invoke-static {v11}, Lcom/qihoo360/loader/utils/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_16
    const-string v14, ""

    .line 351
    .local v14, "tmpMD5":Ljava/lang/String;
    :goto_6
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 352
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    .line 353
    sget-boolean v15, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v15, :cond_17

    .line 354
    const-string v15, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v7

    const-string v7, "update v5 plugin: extract="

    .line 354
    .end local v7    # "pos":I
    .local v30, "pos":I
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " orig="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", delete tmpfile"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 356
    .end local v30    # "pos":I
    .restart local v7    # "pos":I
    :cond_17
    move/from16 v30, v7

    .line 356
    .end local v7    # "pos":I
    .restart local v30    # "pos":I
    :goto_7
    const/4 v10, 0x1

    .line 356
    .end local v11    # "rc":[B
    .end local v14    # "tmpMD5":Ljava/lang/String;
    goto :goto_8

    .line 361
    .end local v30    # "pos":I
    .restart local v7    # "pos":I
    :cond_18
    move/from16 v30, v7

    .line 361
    .end local v7    # "pos":I
    .restart local v30    # "pos":I
    :goto_8
    if-nez v10, :cond_21

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 363
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    move-object v11, v7

    .line 365
    .local v11, "info":Landroid/content/pm/PackageInfo;
    :try_start_12
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x40

    invoke-static {v2, v7, v14}, Lcom/qihoo360/loader/utils/PackageUtils;->getPackageArchiveInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object v11, v7

    .line 370
    goto :goto_9

    .line 366
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 367
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_13
    sget-boolean v14, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v14, :cond_19

    .line 368
    const-string v14, "ws001"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_19
    :goto_9
    if-nez v11, :cond_1b

    .line 372
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_1a

    .line 373
    const-string v7, "ws001"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update v5 plugin: can\'t fetch package info:  name="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1a
    const/4 v10, 0x1

    .line 377
    :cond_1b
    if-eqz p5, :cond_1d

    .line 379
    invoke-static {v11}, Lcom/qihoo360/loader2/CertUtils;->isPluginSignatures(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-nez v14, :cond_1d

    .line 380
    sget-boolean v14, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v14, :cond_1c

    .line 381
    const-string v14, "ws001"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v2

    const-string v2, "update v5 plugin: invalid cert:  name="

    .line 381
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .local v31, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 384
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1c
    move-object/from16 v31, v2

    .line 384
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "pm":Landroid/content/pm/PackageManager;
    :goto_a
    const-string v2, "ws001"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uv5p ic n="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-boolean v2, Lcom/qihoo360/replugin/RePluginInternal;->FOR_DEV:Z

    if-nez v2, :cond_1e

    .line 388
    const/4 v2, 0x1

    .line 392
    .end local v10    # "deleted":Z
    .local v2, "deleted":Z
    move v10, v2

    goto :goto_b

    .line 392
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "deleted":Z
    :cond_1d
    move-object/from16 v31, v2

    .line 392
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "pm":Landroid/content/pm/PackageManager;
    :cond_1e
    :goto_b
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_21

    .line 393
    const-string v2, "ws001"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update v5 plugin: package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_1f

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_c

    :cond_1f
    const-string v15, ""

    :goto_c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " delete="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_20

    const-string v15, "true"

    goto :goto_d

    :cond_20
    const-string v15, "false"

    :goto_d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " name="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    :cond_21
    invoke-static {v9}, Lcom/qihoo360/replugin/model/PluginInfo;->build(Ljava/io/File;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v2

    .line 401
    .local v2, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v2, :cond_22

    .line 403
    const/4 v10, 0x1

    .line 405
    :cond_22
    if-nez v10, :cond_23

    .line 406
    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v11

    .line 407
    .local v11, "libDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/qihoo360/loader2/PluginNativeLibsHelper;->install(Ljava/lang/String;Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_23

    .line 409
    const/4 v10, 0x1

    .line 413
    .end local v11    # "libDir":Ljava/io/File;
    :cond_23
    if-eqz v10, :cond_24

    .line 414
    invoke-static {v4}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 415
    nop

    .line 433
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v11, 0x0

    return-object v11

    .line 417
    :cond_24
    :try_start_14
    sget-boolean v11, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v11, :cond_25

    .line 418
    const-string v11, "ws001"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update v5 plugin: extract success name="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/qihoo360/loader2/V5FileInfo;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_25
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_26

    .line 422
    invoke-static {v9}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 426
    :cond_26
    invoke-static {v4, v9}, Lcom/qihoo360/replugin/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 427
    nop

    .line 433
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 291
    .end local v2    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v5    # "high":I
    .end local v9    # "target":Ljava/io/File;
    .end local v10    # "deleted":Z
    .end local v12    # "length":I
    .end local v13    # "md5":Ljava/lang/String;
    .end local v26    # "os":Ljava/io/FileOutputStream;
    .end local v27    # "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v28    # "ver":I
    .end local v30    # "pos":I
    .local v4, "os":Ljava/io/FileOutputStream;
    .local v7, "pos":I
    .local v14, "ver":I
    .restart local v15    # "high":I
    .local v19, "length":I
    .restart local v20    # "md5":Ljava/lang/String;
    .restart local v21    # "custom":I
    :cond_27
    move-object/from16 v26, v4

    move/from16 v30, v7

    move/from16 v28, v14

    move v5, v15

    move/from16 v12, v19

    move-object/from16 v13, v20

    move/from16 v19, v21

    .line 291
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v7    # "pos":I
    .end local v14    # "ver":I
    .end local v15    # "high":I
    .end local v20    # "md5":Ljava/lang/String;
    .end local v21    # "custom":I
    .restart local v5    # "high":I
    .restart local v12    # "length":I
    .restart local v13    # "md5":Ljava/lang/String;
    .local v19, "custom":I
    .restart local v26    # "os":Ljava/io/FileOutputStream;
    .restart local v28    # "ver":I
    .restart local v30    # "pos":I
    :goto_e
    :try_start_15
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_28

    .line 292
    const-string v2, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update v5 plugin: invalid plugin.high="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " plugin.low="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 294
    :cond_28
    nop

    .line 433
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    return-object v2

    .line 428
    .end local v5    # "high":I
    .end local v8    # "low":I
    .end local v12    # "length":I
    .end local v13    # "md5":Ljava/lang/String;
    .end local v19    # "custom":I
    .end local v28    # "ver":I
    .end local v30    # "pos":I
    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_f

    .line 433
    .end local v26    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v26, v4

    move-object v2, v0

    .line 433
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v26    # "os":Ljava/io/FileOutputStream;
    goto :goto_10

    .line 428
    .end local v26    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object/from16 v26, v4

    move-object v2, v0

    .line 429
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/Throwable;
    .restart local v26    # "os":Ljava/io/FileOutputStream;
    :goto_f
    :try_start_16
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_29

    .line 430
    const-string v4, "ws001"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 433
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_29
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 435
    nop

    .line 437
    const/4 v2, 0x0

    return-object v2

    .line 433
    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_10
    invoke-static {v3}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    invoke-static {v6}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method
