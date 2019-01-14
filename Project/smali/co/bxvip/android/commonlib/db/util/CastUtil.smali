.class public Lco/bxvip/android/commonlib/db/util/CastUtil;
.super Ljava/lang/Object;
.source "CastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castModel(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 23
    .local p0, "from":Ljava/lang/Object;, "TT;"
    .local p1, "to":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 25
    .local v0, "field_obj":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 27
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, "name":Ljava/lang/String;
    const-string v5, "serialVersionUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 29
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 31
    .local v6, "value_from":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 32
    .local v7, "value_to":Ljava/lang/Object;
    const-class v8, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/j256/ormlite/field/DatabaseField;

    .line 34
    .local v8, "type":Lcom/j256/ormlite/field/DatabaseField;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lcom/j256/ormlite/field/DatabaseField;->generatedId()Z

    move-result v9

    if-nez v9, :cond_2

    .line 36
    :cond_0
    if-eqz v6, :cond_2

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 38
    .local v9, "field_toObj":Ljava/lang/reflect/Field;
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {v9, p1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value_from":Ljava/lang/Object;
    .end local v7    # "value_to":Ljava/lang/Object;
    .end local v8    # "type":Lcom/j256/ormlite/field/DatabaseField;
    .end local v9    # "field_toObj":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_3
    return-object p1

    .line 46
    .end local v0    # "field_obj":[Ljava/lang/reflect/Field;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
