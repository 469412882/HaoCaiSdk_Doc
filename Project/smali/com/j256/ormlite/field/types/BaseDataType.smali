.class public abstract Lcom/j256/ormlite/field/types/BaseDataType;
.super Lcom/j256/ormlite/field/BaseFieldConverter;
.source "BaseDataType.java"

# interfaces
.implements Lcom/j256/ormlite/field/DataPersister;


# static fields
.field private static final NO_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final classes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final sqlType:Lcom/j256/ormlite/field/SqlType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/j256/ormlite/field/types/BaseDataType;->NO_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 1
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;

    .line 54
    invoke-direct {p0}, Lcom/j256/ormlite/field/BaseFieldConverter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDataType;->sqlType:Lcom/j256/ormlite/field/SqlType;

    .line 56
    sget-object v0, Lcom/j256/ormlite/field/types/BaseDataType;->NO_CLASSES:[Ljava/lang/Class;

    iput-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 45
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/j256/ormlite/field/BaseFieldConverter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDataType;->sqlType:Lcom/j256/ormlite/field/SqlType;

    .line 47
    iput-object p2, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    .line 48
    return-void
.end method


# virtual methods
.method public convertIdNumber(Ljava/lang/Number;)Ljava/lang/Object;
    .locals 1
    .param p1, "number"    # Ljava/lang/Number;

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataIsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "fieldObj1"    # Ljava/lang/Object;
    .param p2, "fieldObj2"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 167
    if-nez p2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 168
    :cond_1
    if-nez p2, :cond_2

    .line 169
    return v0

    .line 171
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public generateId()Ljava/lang/Object;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not have tried to generate this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssociatedClassNames()[Ljava/lang/String;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssociatedClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSqlOtherType()Ljava/lang/String;
    .locals 1

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSqlType()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->sqlType:Lcom/j256/ormlite/field/SqlType;

    return-object v0
.end method

.method public isAppropriateId()Z
    .locals 1

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public isArgumentHolderRequired()Z
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public isComparable()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public isEscapedDefaultValue()Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/j256/ormlite/field/types/BaseDataType;->isEscapedValue()Z

    move-result v0

    return v0
.end method

.method public isEscapedValue()Z
    .locals 1

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfGeneratedId()Z
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 7
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 61
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 63
    return v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 66
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    return v1

    .line 65
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_2
    return v3
.end method

.method public isValidForVersion()Z
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isValidGeneratedType()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "currentValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "stringValue"    # Ljava/lang/String;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;->parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/j256/ormlite/field/types/BaseDataType;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
