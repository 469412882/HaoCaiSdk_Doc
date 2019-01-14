.class public Lco/bxvip/android/commonlib/utils/FormAuthUtil;
.super Ljava/lang/Object;
.source "FormAuthUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .line 198
    const-string v0, ""

    .line 199
    .local v0, "hs":Ljava/lang/String;
    const-string v1, ""

    .line 200
    .local v1, "stmp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 200
    .local v2, "n":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 201
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 205
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "n":I
    :cond_1
    return-object v0
.end method

.method public static checkEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "\u90ae\u7bb1\u4e0d\u80fd\u4e3a\u7a7a"

    return-object v0

    .line 44
    :cond_0
    const-string v0, "^[a-z0-9]+([._\\\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "\u90ae\u7bb1\u7684\u683c\u5f0f\u4e0d\u5bf9"

    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "text2"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 127
    invoke-static {p0, p1}, Lco/bxvip/android/commonlib/utils/FormAuthUtil;->checkEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    return-object p2

    .line 131
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "text2"    # Ljava/lang/String;

    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkPasswd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 81
    const-string v0, "\u5bc6\u7801\u7684\u5b57\u957f\u5ea6\u4e0d\u8db36\u4f4d"

    return-object v0

    .line 83
    :cond_1
    const-string v0, "^[0-9a-zA-Z_]{6,12}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    const-string v0, "\u5bc6\u7801\u7684\u5b57\u542b\u6709\u975e\u6cd5\u5b57\u7b26"

    return-object v0

    .line 88
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 28
    const-string v0, "\u624b\u673a\u53f7\u7684\u5b57\u957f\u5ea6\u4e0d\u8db311\u4f4d"

    return-object v0

    .line 30
    :cond_1
    const-string v0, "^1[3-9]\\\\d{9}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    const-string v0, "\u624b\u673a\u53f7\u7684\u683c\u5f0f\u4e0d\u5bf9"

    return-object v0

    .line 34
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 100
    const-string v0, "\u9a8c\u8bc1\u7801\u7684\u5b57\u957f\u5ea6\u4e0d\u8db34\u4f4d"

    return-object v0

    .line 102
    :cond_1
    const-string v0, "^\\d{4,10}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    const-string v0, "\u9a8c\u8bc1\u7801\u7684\u683c\u5f0f\u4e0d\u5bf9\uff0c\u89814\u4f4d\u7684\u7eaf\u6570\u5b57"

    return-object v0

    .line 107
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 59
    const-string v0, "\u7528\u6237\u540d\u957f\u5ea6\u6700\u5c114\u4e2a\u5b57\u7b26"

    return-object v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 62
    const-string v0, "\u7528\u6237\u540d\u957f\u5ea6\u4e0d\u5141\u8bb8\u8d85\u8fc720\u4e2a\u5b57\u7b26"

    return-object v0

    .line 68
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static convertMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inStr"    # Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 169
    .local v0, "a":[C
    const/4 v1, 0x0

    .line 169
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 170
    aget-char v2, v0, v1

    xor-int/lit8 v2, v2, 0x74

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 173
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method public static encryptToSHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "digesta":[B
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 188
    .local v1, "alga":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 189
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 192
    .end local v1    # "alga":Ljava/security/MessageDigest;
    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 193
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    invoke-static {v0}, Lco/bxvip/android/commonlib/utils/FormAuthUtil;->byte2hex([B)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "rs":Ljava/lang/String;
    return-object v1
.end method

.method public static jsonToArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 218
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lco/bxvip/android/commonlib/utils/FormAuthUtil$1;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/utils/FormAuthUtil$1;-><init>()V

    .line 219
    invoke-virtual {v0}, Lco/bxvip/android/commonlib/utils/FormAuthUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 220
    .local v0, "type":Ljava/lang/reflect/Type;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 222
    .local v1, "jsonObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    .line 224
    .local v4, "jsonObject":Lcom/google/gson/JsonObject;
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v4, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v4    # "jsonObject":Lcom/google/gson/JsonObject;
    goto :goto_0

    .line 226
    :cond_0
    return-object v2
.end method

.method public static string2MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 145
    nop

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 147
    .local v1, "charArray":[C
    array-length v2, v1

    new-array v2, v2, [B

    .line 149
    .local v2, "byteArray":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 149
    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 150
    aget-char v5, v1, v4

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 152
    .local v4, "md5Bytes":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v5, "hexValue":Ljava/lang/StringBuffer;
    nop

    .line 153
    .local v3, "i":I
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_2

    .line 154
    aget-byte v6, v4, v3

    and-int/lit16 v6, v6, 0xff

    .line 155
    .local v6, "val":I
    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 156
    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    .end local v6    # "val":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 141
    .end local v1    # "charArray":[C
    .end local v2    # "byteArray":[B
    .end local v4    # "md5Bytes":[B
    .end local v5    # "hexValue":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const-string v2, ""

    return-object v2
.end method
