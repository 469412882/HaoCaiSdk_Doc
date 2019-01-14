.class public final Lcom/qihoo360/replugin/sdk/net/h;
.super Ljava/lang/Object;
.source "h.java"


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0
    .param p1, "var1"    # Lcom/google/gson/Gson;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/h;->a:Lcom/google/gson/Gson;

    .line 26
    return-void
.end method

.method public static a()Lcom/qihoo360/replugin/sdk/net/h;
    .locals 1

    .line 13
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/net/h;->a(Lcom/google/gson/Gson;)Lcom/qihoo360/replugin/sdk/net/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/qihoo360/replugin/sdk/net/h;
    .locals 2
    .param p0, "var0"    # Lcom/google/gson/Gson;

    .line 17
    if-nez p0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    new-instance v0, Lcom/qihoo360/replugin/sdk/net/h;

    invoke-direct {v0, p0}, Lcom/qihoo360/replugin/sdk/net/h;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;)Lcom/qihoo360/replugin/sdk/net/f;
    .locals 3
    .param p1, "var1"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/qihoo360/replugin/sdk/net/f<",
            "Lcom/qihoo360/replugin/sdk/net/j;",
            "*>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/h;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 30
    .local v0, "var2":Lcom/google/gson/TypeAdapter;
    new-instance v1, Lcom/qihoo360/replugin/sdk/net/g;

    iget-object v2, p0, Lcom/qihoo360/replugin/sdk/net/h;->a:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v0}, Lcom/qihoo360/replugin/sdk/net/g;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method
