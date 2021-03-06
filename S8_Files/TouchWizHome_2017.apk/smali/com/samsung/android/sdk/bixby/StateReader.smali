.class Lcom/samsung/android/sdk/bixby/StateReader;
.super Ljava/lang/Object;
.source "StateReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 25
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v12, "parameterList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    :try_start_0
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v20, "obj":Lorg/json/JSONObject;
    const-string v2, "specVer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "specVer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "specVer":Ljava/lang/String;
    :goto_0
    const-string v2, "seqNum"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 39
    .local v4, "stepNum":Ljava/lang/Integer;
    const-string v2, "isExecuted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 40
    .local v5, "isExecuted":Ljava/lang/Boolean;
    const-string v2, "appName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "appName":Ljava/lang/String;
    const-string v2, "stateId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 42
    .local v8, "stateId":Ljava/lang/String;
    const-string v2, "ruleId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, "ruleId":Ljava/lang/String;
    const-string v2, "isLandingState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 44
    .local v9, "isLandingState":Ljava/lang/Boolean;
    const-string v2, "isLastState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    const-string v2, "isLastState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 50
    .local v10, "isLastState":Ljava/lang/Boolean;
    :goto_1
    const-string v2, "subIntent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    const-string v2, "subIntent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, "subIntent":Ljava/lang/String;
    :goto_2
    const-string v2, "parameters"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 58
    .local v23, "parameters":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_10

    .line 59
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 61
    .local v22, "parameterObj":Lorg/json/JSONObject;
    new-instance v21, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/android/sdk/bixby/data/Parameter;-><init>()V

    .line 63
    .local v21, "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    const-string v2, "slotType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    const-string v2, "slotType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotType(Ljava/lang/String;)V

    .line 69
    :goto_4
    const-string v2, "slotName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    const-string v2, "slotName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotName(Ljava/lang/String;)V

    .line 75
    :goto_5
    const-string v2, "slotValue"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    const-string v2, "slotValue"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    .line 81
    :goto_6
    const-string v2, "slotValueType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 82
    const-string v2, "slotValueType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    .line 87
    :goto_7
    const-string v2, "CH_ObjectType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    const-string v2, "CH_ObjectType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    .line 93
    :goto_8
    const-string v2, "CH_Objects"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 94
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v15, "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/CHObject;>;"
    const-string v2, "CH_Objects"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 97
    .local v14, "CHObjects":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_9
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_b

    .line 98
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 99
    .local v13, "CHObjectObj":Lorg/json/JSONObject;
    new-instance v16, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    .line 101
    .local v16, "chObject":Lcom/samsung/android/sdk/bixby/data/CHObject;
    const-string v2, "CH_Type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 102
    const-string v2, "CH_Type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    .line 107
    :goto_a
    const-string v2, "CH_Value"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 108
    const-string v2, "CH_Value"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    .line 113
    :goto_b
    const-string v2, "CH_ValueType"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 114
    const-string v2, "CH_ValueType"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    .line 119
    :goto_c
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 36
    .end local v3    # "specVer":Ljava/lang/String;
    .end local v4    # "stepNum":Ljava/lang/Integer;
    .end local v5    # "isExecuted":Ljava/lang/Boolean;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "ruleId":Ljava/lang/String;
    .end local v8    # "stateId":Ljava/lang/String;
    .end local v9    # "isLandingState":Ljava/lang/Boolean;
    .end local v10    # "isLastState":Ljava/lang/Boolean;
    .end local v11    # "subIntent":Ljava/lang/String;
    .end local v13    # "CHObjectObj":Lorg/json/JSONObject;
    .end local v14    # "CHObjects":Lorg/json/JSONArray;
    .end local v15    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/CHObject;>;"
    .end local v16    # "chObject":Lcom/samsung/android/sdk/bixby/data/CHObject;
    .end local v18    # "i":I
    .end local v19    # "j":I
    .end local v21    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .end local v22    # "parameterObj":Lorg/json/JSONObject;
    .end local v23    # "parameters":Lorg/json/JSONArray;
    :cond_0
    const-string v3, "1.0"

    .restart local v3    # "specVer":Ljava/lang/String;
    goto/16 :goto_0

    .line 47
    .restart local v4    # "stepNum":Ljava/lang/Integer;
    .restart local v5    # "isExecuted":Ljava/lang/Boolean;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v7    # "ruleId":Ljava/lang/String;
    .restart local v8    # "stateId":Ljava/lang/String;
    .restart local v9    # "isLandingState":Ljava/lang/Boolean;
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .restart local v10    # "isLastState":Ljava/lang/Boolean;
    goto/16 :goto_1

    .line 53
    :cond_2
    const-string v11, ""

    .restart local v11    # "subIntent":Ljava/lang/String;
    goto/16 :goto_2

    .line 66
    .restart local v18    # "i":I
    .restart local v21    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .restart local v22    # "parameterObj":Lorg/json/JSONObject;
    .restart local v23    # "parameters":Lorg/json/JSONArray;
    :cond_3
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 150
    .end local v3    # "specVer":Ljava/lang/String;
    .end local v4    # "stepNum":Ljava/lang/Integer;
    .end local v5    # "isExecuted":Ljava/lang/Boolean;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "ruleId":Ljava/lang/String;
    .end local v8    # "stateId":Ljava/lang/String;
    .end local v9    # "isLandingState":Ljava/lang/Boolean;
    .end local v10    # "isLastState":Ljava/lang/Boolean;
    .end local v11    # "subIntent":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v20    # "obj":Lorg/json/JSONObject;
    .end local v21    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .end local v22    # "parameterObj":Lorg/json/JSONObject;
    .end local v23    # "parameters":Lorg/json/JSONArray;
    :catch_0
    move-exception v17

    .line 151
    .local v17, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    .end local v17    # "e":Lorg/json/JSONException;
    .restart local v3    # "specVer":Ljava/lang/String;
    .restart local v4    # "stepNum":Ljava/lang/Integer;
    .restart local v5    # "isExecuted":Ljava/lang/Boolean;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v7    # "ruleId":Ljava/lang/String;
    .restart local v8    # "stateId":Ljava/lang/String;
    .restart local v9    # "isLandingState":Ljava/lang/Boolean;
    .restart local v10    # "isLastState":Ljava/lang/Boolean;
    .restart local v11    # "subIntent":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v20    # "obj":Lorg/json/JSONObject;
    .restart local v21    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .restart local v22    # "parameterObj":Lorg/json/JSONObject;
    .restart local v23    # "parameters":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 78
    :cond_5
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 84
    :cond_6
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 90
    :cond_7
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 104
    .restart local v13    # "CHObjectObj":Lorg/json/JSONObject;
    .restart local v14    # "CHObjects":Lorg/json/JSONArray;
    .restart local v15    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/CHObject;>;"
    .restart local v16    # "chObject":Lcom/samsung/android/sdk/bixby/data/CHObject;
    .restart local v19    # "j":I
    :cond_8
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto :goto_a

    .line 110
    :cond_9
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_b

    .line 116
    :cond_a
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_c

    .line 121
    .end local v13    # "CHObjectObj":Lorg/json/JSONObject;
    .end local v16    # "chObject":Lcom/samsung/android/sdk/bixby/data/CHObject;
    :cond_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjects(Ljava/util/List;)V

    .line 126
    .end local v14    # "CHObjects":Lorg/json/JSONArray;
    .end local v15    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/CHObject;>;"
    .end local v19    # "j":I
    :goto_d
    const-string v2, "parameterName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 127
    const-string v2, "parameterName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterName(Ljava/lang/String;)V

    .line 132
    :goto_e
    const-string v2, "parameterType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 133
    const-string v2, "parameterType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterType(Ljava/lang/String;)V

    .line 138
    :goto_f
    const-string v2, "isMandatory"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 139
    const-string v2, "isMandatory"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    .line 144
    :goto_10
    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 123
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjects(Ljava/util/List;)V

    goto :goto_d

    .line 129
    :cond_d
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterName(Ljava/lang/String;)V

    goto :goto_e

    .line 135
    :cond_e
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterType(Ljava/lang/String;)V

    goto :goto_f

    .line 141
    :cond_f
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    goto :goto_10

    .line 147
    .end local v21    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .end local v22    # "parameterObj":Lorg/json/JSONObject;
    :cond_10
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/sdk/bixby/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method
