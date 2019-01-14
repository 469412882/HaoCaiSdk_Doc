.class Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlHandler.java"


# instance fields
.field private activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            ">;"
        }
    .end annotation
.end field

.field private curActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private curCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

.field private curDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private curFilter:Landroid/content/IntentFilter;

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private pkg:Ljava/lang/String;

.field private receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            ">;"
        }
    .end annotation
.end field

.field private services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private repairAttrName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .line 202
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    return-object p1

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 139
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x62b40cf1

    if-eq v0, v1, :cond_3

    const v1, -0x3d616837

    if-eq v0, v1, :cond_2

    const v1, -0x30341611

    if-eq v0, v1, :cond_1

    const v1, 0x7643c6b5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "service"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "receiver"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "intent-filter"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "activity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->receivers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->services:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    goto/16 :goto_6

    .line 183
    :pswitch_2
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->activities:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    goto/16 :goto_6

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curActions:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    .end local v1    # "action":Ljava/lang/String;
    goto :goto_2

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curCategories:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, "cate":Ljava/lang/String;
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 151
    .end local v1    # "cate":Ljava/lang/String;
    goto :goto_3

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curDataBeans:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 155
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;

    .line 156
    .local v1, "bean":Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;
    iget-object v2, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 157
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curFilter:Landroid/content/IntentFilter;

    iget-object v3, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    :cond_7
    iget-object v2, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->port:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 161
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curFilter:Landroid/content/IntentFilter;

    iget-object v3, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->host:Ljava/lang/String;

    iget-object v4, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->port:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_8
    iget-object v2, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 165
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curFilter:Landroid/content/IntentFilter;

    iget-object v3, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->path:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->getPatternMatcherType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 169
    :cond_9
    :try_start_0
    iget-object v2, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 170
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curFilter:Landroid/content/IntentFilter;

    iget-object v3, v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_a
    goto :goto_5

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    .line 175
    .end local v1    # "bean":Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_5
    goto :goto_4

    .line 178
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curActions:Ljava/util/List;

    .line 179
    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curCategories:Ljava/util/List;

    .line 180
    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curDataBeans:Ljava/util/List;

    .line 181
    nop

    .line 192
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->activities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->receivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->services:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 65
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "service"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "manifest"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "category"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "data"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "receiver"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "intent-filter"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "action"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "activity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curDataBeans:Ljava/util/List;

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curDataBeans:Ljava/util/List;

    .line 123
    :cond_1
    new-instance v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;

    invoke-direct {v0}, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;-><init>()V

    .line 124
    .local v0, "bean":Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;
    const-string v1, "android:scheme"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->scheme:Ljava/lang/String;

    .line 125
    const-string v1, "android:mimeType"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->mimeType:Ljava/lang/String;

    .line 126
    const-string v1, "android:host"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->host:Ljava/lang/String;

    .line 127
    const-string v1, "android:port"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->port:Ljava/lang/String;

    .line 128
    const-string v1, "android:path"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->path:Ljava/lang/String;

    .line 129
    const-string v1, "android:pathPattern"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->pathPattern:Ljava/lang/String;

    .line 130
    const-string v1, "android:pathPrefix"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->pathPrefix:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curDataBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v0    # "bean":Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;
    goto/16 :goto_2

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curCategories:Ljava/util/List;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curCategories:Ljava/util/List;

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curCategories:Ljava/util/List;

    const-string v1, "android:name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    goto/16 :goto_2

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curActions:Ljava/util/List;

    if-nez v0, :cond_3

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curActions:Ljava/util/List;

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curActions:Ljava/util/List;

    const-string v1, "android:name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    goto/16 :goto_2

    .line 101
    :pswitch_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curFilter:Landroid/content/IntentFilter;

    .line 102
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->filters:Ljava/util/List;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curFilter:Landroid/content/IntentFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    goto/16 :goto_2

    .line 91
    :pswitch_4
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->receivers:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->receivers:Ljava/util/ArrayList;

    .line 94
    :cond_4
    new-instance v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    invoke-direct {v0}, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->filters:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->filters:Ljava/util/List;

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->intentFilters:Ljava/util/List;

    .line 97
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    const-string v1, "android:name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->repairAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->name:Ljava/lang/String;

    .line 98
    goto :goto_2

    .line 81
    :pswitch_5
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->services:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->services:Ljava/util/ArrayList;

    .line 84
    :cond_5
    new-instance v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    invoke-direct {v0}, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->filters:Ljava/util/List;

    .line 86
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->filters:Ljava/util/List;

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->intentFilters:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    const-string v1, "android:name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->repairAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->name:Ljava/lang/String;

    .line 88
    goto :goto_2

    .line 71
    :pswitch_6
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->activities:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->activities:Ljava/util/ArrayList;

    .line 74
    :cond_6
    new-instance v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    invoke-direct {v0}, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->filters:Ljava/util/List;

    .line 76
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->filters:Ljava/util/List;

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->intentFilters:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->curComponent:Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    const-string v1, "android:name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->repairAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->name:Ljava/lang/String;

    .line 78
    goto :goto_2

    .line 67
    :pswitch_7
    const-string v0, "package"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->pkg:Ljava/lang/String;

    .line 68
    nop

    .line 135
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_7
        -0x54d081ca -> :sswitch_6
        -0x3d616837 -> :sswitch_5
        -0x30341611 -> :sswitch_4
        0x2eefaa -> :sswitch_3
        0x302bcfe -> :sswitch_2
        0x7c92e2f -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
