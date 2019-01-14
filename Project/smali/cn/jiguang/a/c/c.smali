.class public final Lcn/jiguang/a/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5000

    sput v0, Lcn/jiguang/a/c/c;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "ReportHelper"

    const-string v0, "context did not init, return"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcn/jiguang/a/a/c/d;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "ReportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package info total num - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", data size: - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcn/jiguang/a/c/c;->a:I

    if-gt v2, v3, :cond_3

    const-string v1, "app_list"

    invoke-static {v1, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {p0, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_2
    return-void

    :cond_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v4, "ReportHelper"

    const-string v5, "Got JSONException when report applist."

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcn/jiguang/a/c/c;->a:I

    if-gt v4, v5, :cond_4

    add-int/lit8 v4, v1, -0x1

    if-ne v4, v3, :cond_6

    :cond_4
    const-string v4, "app_list"

    invoke-static {v4, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-static {p0, v2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "ReportHelper"

    const-string v3, "periodTasks..."

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "ReportHelper"

    const-string v2, "periodTasks failed,isValidRegistered:false"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcn/jiguang/g/b/a;

    invoke-direct {v2}, Lcn/jiguang/g/b/a;-><init>()V

    const-string v3, "last_report_device_info"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "lbs_report_enable"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "last_collection_location"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "location_report_delay"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "location_collect_frequency"

    const-wide/32 v7, 0xdbba0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "last_check_userapp_status"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "nb_upload"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "nb_lasttime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_enable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_interval"

    const-wide/32 v10, 0x36ee80

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_last_collect_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_app_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_process_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/d/a/d;->b(Landroid/content/Context;Lcn/jiguang/g/b/a;)Lcn/jiguang/g/b/a;

    move-result-object v2

    new-instance v3, Lcn/jiguang/g/b/a;

    invoke-direct {v3}, Lcn/jiguang/g/b/a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v14, "last_report_device_info"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v16, v12, v14

    const-wide/32 v14, 0x5265c00

    cmp-long v18, v16, v14

    if-lez v18, :cond_1

    const/16 v20, 0x1

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    :goto_0
    const-string v14, "lbs_report_enable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v15, "last_collection_location"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v15, v6}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-string v6, "location_collect_frequency"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v15, v4

    if-gtz v8, :cond_2

    const-string v8, "location_report_delay"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v17, v8, v4

    if-lez v17, :cond_2

    add-long v15, v12, v8

    sub-long v8, v15, v6

    const-string v15, "last_collection_location"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v15, v10}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    goto :goto_1

    :cond_2
    move-wide v8, v15

    :goto_1
    const-string v10, "JAnalyticsCommonConfigs"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "isCollectionLocationNeeded last:"

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ",now:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v10, v12, v8

    cmp-long v8, v10, v6

    if-ltz v8, :cond_3

    const-string v6, "last_collection_location"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-string v7, "last_check_userapp_status"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "JAnalyticsCommonConfigs"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "now - appListLastReportTime:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v12, v7

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v7, 0x36ee80

    cmp-long v9, v4, v7

    if-lez v9, :cond_4

    const-string v4, "last_check_userapp_status"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    const/16 v22, 0x1

    goto :goto_3

    :cond_4
    const/16 v22, 0x0

    :goto_3
    const-string v4, "nb_upload"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static/range {p0 .. p0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "nb_lasttime"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v7, v12, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v9, v7, v4

    if-lez v9, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_4
    move/from16 v23, v4

    goto :goto_5

    :cond_7
    const-string v5, "JAnalyticsCommonConfigs"

    const-string v7, "can not allow get mobile phone number"

    invoke-static {v5, v7}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    const-string v4, "app_running_collect_enable"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v4, "app_running_last_collect_time"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v9, v4, v7

    if-gtz v9, :cond_9

    const-string v2, "app_running_last_collect_time"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    :cond_8
    const/4 v5, 0x1

    const/16 v24, 0x0

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    sub-long v7, v12, v4

    const-string v4, "app_running_collect_interval"

    const-wide/32 v9, 0x36ee80

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v9, v7, v4

    if-ltz v9, :cond_8

    const-string v4, "app_running_collect_app_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v7, "app_running_collect_process_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v4, :cond_b

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v9, 0x1

    :goto_7
    if-eqz v9, :cond_c

    const-string v7, "app_running_last_collect_time"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    :cond_c
    move/from16 v26, v2

    move/from16 v25, v4

    move/from16 v24, v9

    goto :goto_9

    :cond_d
    const/4 v5, 0x1

    move/from16 v24, v9

    :goto_8
    const/16 v25, 0x1

    const/16 v26, 0x1

    :goto_9
    invoke-static {v1, v3}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Lcn/jiguang/g/b/a;)V

    new-instance v2, Lcn/jiguang/a/b/b;

    if-eqz v14, :cond_e

    if-eqz v6, :cond_e

    const/16 v21, 0x1

    goto :goto_a

    :cond_e
    const/16 v21, 0x0

    :goto_a
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v26}, Lcn/jiguang/a/b/b;-><init>(ZZZZZII)V

    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->a:Z

    if-eqz v3, :cond_f

    invoke-static/range {p0 .. p0}, Lcn/jiguang/a/a/c/b;->c(Landroid/content/Context;)V

    :cond_f
    invoke-static {}, Lcn/jiguang/d/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/g/e;->a(Landroid/content/Context;)V

    :cond_10
    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->b:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Z)V

    :cond_11
    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->c:Z

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->d:Z

    if-eqz v3, :cond_13

    invoke-static/range {p0 .. p0}, Lcn/jiguang/a/a/c/i;->a(Landroid/content/Context;)V

    :cond_13
    invoke-static/range {p0 .. p0}, Lcn/jiguang/g/a;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static/range {p0 .. p0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcn/jiguang/a/a/a/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    const-string v3, "ReportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reportMacListInfo eroor."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_b
    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->e:Z

    if-eqz v3, :cond_15

    iget v3, v2, Lcn/jiguang/a/b/b;->f:I

    iget v2, v2, Lcn/jiguang/a/b/b;->g:I

    invoke-static {v1, v3, v2}, Lcn/jiguang/g/d;->a(Landroid/content/Context;II)V

    :cond_15
    invoke-static/range {p0 .. p1}, Lcn/jiguang/a/a/c/g;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ReportHelper"

    const-string p1, "Unexpected! JCore hasn\'t been register, give up this report"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcn/jiguang/a/a/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/jiguang/a/a/c/d;->a(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/a/a/c/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void

    :cond_1
    const-string v0, "ReportHelper"

    const-string v1, "Report User Apps Status"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jiguang/a/a/c/a;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/a/a/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/a/a/c/a;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ReportHelper"

    const-string p1, "Unexpected! JCore hasn\'t been register, give up this report"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p0, p1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string p0, "ReportHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action:reportOperation - content:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    const-string p1, "ReportHelper"

    const-string v0, "Report Location info"

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcn/jiguang/a/a/b/f;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ReportHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportLocationInfo failed error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 14

    const-string v0, "ReportHelper"

    const-string v1, "action:reportPermissionInfo"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/a/a/c/d;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v1, v0

    const-string v2, "["

    invoke-static {p0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v8, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v10, v0, v2

    if-nez v7, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    :goto_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",\""

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    const/16 v10, 0x32

    if-ge v7, v10, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3e8

    if-gt v10, v11, :cond_3

    if-ne v2, v1, :cond_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "{\"total\":%d,\"page\":%d,\"senderid\":\"%s\",\"uid\":%s,\"permission_list\":%s}"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    aput-object v7, v11, v12

    invoke-static {v8, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ReportHelper"

    invoke-static {v8, v7}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "android_permissions"

    invoke-static {v8, v7}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {p0, v7}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    add-int/lit8 v9, v9, 0x1

    const-string v7, "["

    move-object v8, v7

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_3
    const-string p0, "ReportHelper"

    const-string v0, "Can not get any pemission"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/jiguang/a/a/c/g;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;I)V

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcn/jiguang/d/h/f;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p0, "ReportHelper"

    const-string v0, "Fail to start other app caused by OutOfMemory."

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
