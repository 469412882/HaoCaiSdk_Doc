.class public Lcom/j256/ormlite/table/DatabaseTableConfigLoader;
.super Ljava/lang/Object;
.source "DatabaseTableConfigLoader.java"


# static fields
.field private static final CONFIG_FILE_END_MARKER:Ljava/lang/String; = "# --table-end--"

.field private static final CONFIG_FILE_FIELDS_END:Ljava/lang/String; = "# --table-fields-end--"

.field private static final CONFIG_FILE_FIELDS_START:Ljava/lang/String; = "# --table-fields-start--"

.field private static final CONFIG_FILE_START_MARKER:Ljava/lang/String; = "# --table-start--"

.field private static final FIELD_NAME_DATA_CLASS:Ljava/lang/String; = "dataClass"

.field private static final FIELD_NAME_TABLE_NAME:Ljava/lang/String; = "tableName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromReader(Ljava/io/BufferedReader;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 7
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedReader;",
            ")",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>()V

    .line 48
    .local v0, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 52
    .local v2, "anything":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v3, "line":Ljava/lang/String;
    nop

    .line 54
    nop

    .line 56
    if-nez v3, :cond_1

    .line 57
    goto :goto_1

    .line 60
    :cond_1
    const-string v4, "# --table-end--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    nop

    .line 80
    .end local v3    # "line":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_2

    .line 81
    return-object v0

    .line 84
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 64
    .restart local v3    # "line":Ljava/lang/String;
    :cond_3
    const-string v4, "# --table-fields-start--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 65
    invoke-static {p0, v0}, Lcom/j256/ormlite/table/DatabaseTableConfigLoader;->readFields(Ljava/io/BufferedReader;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 66
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "# --table-start--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 70
    goto :goto_0

    .line 72
    :cond_5
    const-string v4, "="

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    .line 74
    new-instance v1, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseTableConfig reading from stream cannot parse line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_6
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v0, v5, v6}, Lcom/j256/ormlite/table/DatabaseTableConfigLoader;->readTableField(Lcom/j256/ormlite/table/DatabaseTableConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x1

    .line 78
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Could not read DatabaseTableConfig from stream"

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method public static loadDatabaseConfigFromReader(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 2
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    :goto_0
    invoke-static {p0}, Lcom/j256/ormlite/table/DatabaseTableConfigLoader;->fromReader(Ljava/io/BufferedReader;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    .line 33
    .local v1, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    if-nez v1, :cond_0

    .line 34
    nop

    .line 38
    .end local v1    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    return-object v0

    .line 36
    .restart local v1    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v1    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    goto :goto_0
.end method

.method private static readFields(Ljava/io/BufferedReader;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 3
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedReader;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 152
    .local p1, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v1, "line":Ljava/lang/String;
    nop

    .line 158
    nop

    .line 160
    if-eqz v1, :cond_2

    const-string v2, "# --table-fields-end--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    goto :goto_1

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->fromReader(Ljava/io/BufferedReader;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v2

    .line 164
    .local v2, "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-nez v2, :cond_1

    .line 165
    goto :goto_1

    .line 167
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    goto :goto_0

    .line 169
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->setFieldConfigs(Ljava/util/List;)V

    .line 170
    return-void

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Could not read next field from config file"

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method private static readTableField(Lcom/j256/ormlite/table/DatabaseTableConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 135
    .local p0, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    const-string v0, "dataClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->setDataClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown class specified for dataClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    const-string v0, "tableName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->setTableName(Ljava/lang/String;)V

    .line 146
    :cond_1
    :goto_0
    return-void
.end method

.method public static write(Ljava/io/BufferedWriter;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedWriter;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 93
    .local p1, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfigLoader;->writeConfig(Ljava/io/BufferedWriter;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Could not write config to writer"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method private static writeConfig(Ljava/io/BufferedWriter;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 3
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedWriter;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 108
    .local p1, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    const-string v0, "# --table-start--"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 109
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 110
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0x3d

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "dataClass"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 112
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "tableName"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 116
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 118
    :cond_1
    const-string v0, "# --table-fields-start--"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 119
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 120
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getFieldConfigs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getFieldConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 122
    .local v1, "field":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->write(Ljava/io/BufferedWriter;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;)V

    .line 123
    .end local v1    # "field":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    goto :goto_0

    .line 125
    :cond_2
    const-string v0, "# --table-fields-end--"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 126
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 127
    const-string v0, "# --table-end--"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 128
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 129
    return-void
.end method
