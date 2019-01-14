.class public Lcom/j256/ormlite/logger/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    }
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Lcom/j256/ormlite/logger/Log$Level;

.field public static final LOCAL_LOG_FILE_PROPERTY:Ljava/lang/String; = "com.j256.ormlite.logger.file"

.field public static final LOCAL_LOG_LEVEL_PROPERTY:Ljava/lang/String; = "com.j256.ormlite.logger.level"

.field public static final LOCAL_LOG_PROPERTIES_FILE:Ljava/lang/String; = "/ormliteLocalLog.properties"

.field private static final classLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/logger/LocalLog$PatternLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormatThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static printStream:Ljava/io/PrintStream;


# instance fields
.field private final className:Ljava/lang/String;

.field private final level:Lcom/j256/ormlite/logger/Log$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sput-object v0, Lcom/j256/ormlite/logger/LocalLog;->DEFAULT_LEVEL:Lcom/j256/ormlite/logger/Log$Level;

    .line 52
    new-instance v0, Lcom/j256/ormlite/logger/LocalLog$1;

    invoke-direct {v0}, Lcom/j256/ormlite/logger/LocalLog$1;-><init>()V

    sput-object v0, Lcom/j256/ormlite/logger/LocalLog;->dateFormatThreadLocal:Ljava/lang/ThreadLocal;

    .line 65
    const-class v0, Lcom/j256/ormlite/logger/LocalLog;

    const-string v1, "/ormliteLocalLog.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 66
    .local v0, "stream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/j256/ormlite/logger/LocalLog;->readLevelResourceFile(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "levels":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    sput-object v1, Lcom/j256/ormlite/logger/LocalLog;->classLevels:Ljava/util/List;

    .line 73
    const-string v2, "com.j256.ormlite.logger.file"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "logPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/j256/ormlite/logger/LocalLog;->openLogFile(Ljava/lang/String;)V

    .line 75
    .end local v0    # "stream":Ljava/io/InputStream;
    .end local v1    # "levels":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    .end local v2    # "logPath":Ljava/lang/String;
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "className"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/j256/ormlite/logger/LoggerFactory;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/logger/LocalLog;->className:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "level":Lcom/j256/ormlite/logger/Log$Level;
    sget-object v1, Lcom/j256/ormlite/logger/LocalLog;->classLevels:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 83
    sget-object v1, Lcom/j256/ormlite/logger/LocalLog;->classLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;

    .line 84
    .local v2, "patternLevel":Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    iget-object v3, v2, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    if-eqz v0, :cond_0

    iget-object v3, v2, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->level:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v3}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v3

    invoke-virtual {v0}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 87
    :cond_0
    iget-object v0, v2, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->level:Lcom/j256/ormlite/logger/Log$Level;

    .line 90
    .end local v2    # "patternLevel":Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    :cond_1
    goto :goto_0

    .line 93
    :cond_2
    if-nez v0, :cond_4

    .line 95
    const-string v1, "com.j256.ormlite.logger.level"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "levelName":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 97
    sget-object v0, Lcom/j256/ormlite/logger/LocalLog;->DEFAULT_LEVEL:Lcom/j256/ormlite/logger/Log$Level;

    goto :goto_2

    .line 102
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v2, "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    goto :goto_1

    .line 103
    .end local v2    # "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    :try_start_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .local v3, "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    nop

    .line 108
    move-object v2, v3

    .line 111
    .end local v3    # "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    .local v2, "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    :goto_1
    move-object v0, v2

    .line 111
    .end local v1    # "levelName":Ljava/lang/String;
    .end local v2    # "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    goto :goto_2

    .line 107
    .restart local v1    # "levelName":Ljava/lang/String;
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 108
    .local v3, "e2":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Level \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' was not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 114
    .end local v1    # "levelName":Ljava/lang/String;
    .end local v2    # "e1":Ljava/lang/IllegalArgumentException;
    .end local v3    # "e2":Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/j256/ormlite/logger/LocalLog;->level:Lcom/j256/ormlite/logger/Log$Level;

    .line 115
    return-void
.end method

.method private static configureClassLevels(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/logger/LocalLog$PatternLevel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 174
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 178
    nop

    .line 199
    .end local v2    # "line":Ljava/lang/String;
    return-object v1

    .line 181
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_2

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 186
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Line is not in the format of \'pattern = level\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    goto :goto_0

    .line 189
    :cond_3
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 192
    .local v3, "pattern":Ljava/util/regex/Pattern;
    const/4 v5, 0x1

    :try_start_0
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/j256/ormlite/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 196
    .local v5, "level":Lcom/j256/ormlite/logger/Log$Level;
    nop

    .line 195
    nop

    .line 197
    new-instance v6, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;

    invoke-direct {v6, v3, v5}, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;-><init>(Ljava/util/regex/Pattern;Lcom/j256/ormlite/logger/Log$Level;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v5    # "level":Lcom/j256/ormlite/logger/Log$Level;
    goto :goto_0

    .line 193
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "pattern":Ljava/util/regex/Pattern;
    .restart local v4    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 194
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Level \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' was not found"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    goto :goto_0
.end method

.method public static openLogFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "logPath"    # Ljava/lang/String;

    .line 121
    if-nez p0, :cond_0

    .line 122
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;

    goto :goto_0

    .line 125
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 130
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private printMessage(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 203
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/logger/LocalLog;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/j256/ormlite/logger/LocalLog;->dateFormatThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    .line 208
    .local v1, "dateFormat":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v2, p0, Lcom/j256/ormlite/logger/LocalLog;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    if-eqz p3, :cond_1

    .line 214
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;

    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 216
    :cond_1
    return-void
.end method

.method static readLevelResourceFile(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/logger/LocalLog$PatternLevel;",
            ">;"
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "levels":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    if-eqz p0, :cond_0

    .line 161
    :try_start_0
    invoke-static {p0}, Lcom/j256/ormlite/logger/LocalLog;->configureClassLevels(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 166
    :goto_0
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    goto :goto_2

    .line 166
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception reading the log properties file \'/ormliteLocalLog.properties\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 166
    :goto_1
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 169
    :cond_0
    :goto_2
    return-object v0
.end method


# virtual methods
.method flush()V
    .locals 1

    .line 151
    sget-object v0, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 152
    return-void
.end method

.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;

    .line 134
    iget-object v0, p0, Lcom/j256/ormlite/logger/LocalLog;->level:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/logger/Log$Level;->isEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/logger/LocalLog;->printMessage(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/logger/LocalLog;->printMessage(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method
