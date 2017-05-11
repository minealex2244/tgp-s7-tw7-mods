.class Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;
.super Ljava/lang/Object;
.source "PathRuleInfoReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    .locals 13
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 20
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v11, "obj":Lorg/json/JSONObject;
    const-string v0, "pathRuleId"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "pathRuleId":Ljava/lang/String;
    const-string v0, "pathRuleName"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "pathRuleName":Ljava/lang/String;
    const-string v0, "intent"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "intent":Ljava/lang/String;
    const-string v0, "utterance"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "utterance":Ljava/lang/String;
    const-string v0, "sampleUtterance"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, "sampleUtterance":Ljava/lang/String;
    const-string v0, "apps"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 28
    .local v10, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 29
    .local v6, "apps":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 30
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 29
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "isRoot"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 34
    .local v7, "isRoot":Z
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 37
    .end local v1    # "pathRuleId":Ljava/lang/String;
    .end local v2    # "pathRuleName":Ljava/lang/String;
    .end local v3    # "intent":Ljava/lang/String;
    .end local v4    # "utterance":Ljava/lang/String;
    .end local v5    # "sampleUtterance":Ljava/lang/String;
    .end local v6    # "apps":[Ljava/lang/String;
    .end local v7    # "isRoot":Z
    .end local v9    # "idx":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 38
    .local v8, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
