.class Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v14, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string/jumbo v15, "online"

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set2(Lcom/android/server/smartclip/SpenGestureManagerService;I)I

    .line 191
    return-void

    .line 194
    :cond_0
    sget-object v14, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Receive broadcast : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string/jumbo v14, "com.samsung.pen.INSERT"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;->isInitialStickyBroadcast()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 198
    return-void

    .line 201
    :cond_1
    const-string/jumbo v14, "penInsert"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 202
    .local v8, "penInsert":Z
    const-string/jumbo v14, "isBoot"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 203
    .local v6, "isBoot":Z
    sget-object v14, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "penInsert : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".isBoot : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap0(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;

    move-result-object v10

    .line 206
    .local v10, "topMostComponent":Landroid/content/ComponentName;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, "topMostPackageName":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_5

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get12(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v16

    sub-long v4, v14, v16

    .line 211
    .local v4, "elapsed":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get12(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v14, v4, v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap5(Lcom/android/server/smartclip/SpenGestureManagerService;J)V

    .line 214
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set8(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get1()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v11, v15}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap12(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v4    # "elapsed":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v14, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set6(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 226
    sget-object v14, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Start AirCommand. #1"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 229
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v14, "action"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v15, "topComponent"

    .line 231
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 230
    :goto_2
    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v14, "batteryStatus"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v15}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get3(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string/jumbo v14, "coverOpened"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v15}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get4(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v14, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap14(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    .line 187
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v6    # "isBoot":Z
    .end local v8    # "penInsert":Z
    .end local v10    # "topMostComponent":Landroid/content/ComponentName;
    .end local v11    # "topMostPackageName":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 206
    .restart local v6    # "isBoot":Z
    .restart local v8    # "penInsert":Z
    .restart local v10    # "topMostComponent":Landroid/content/ComponentName;
    :cond_4
    const-string/jumbo v11, ""

    .restart local v11    # "topMostPackageName":Ljava/lang/String;
    goto/16 :goto_0

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set8(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get2()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v11, v15}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap12(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_6
    const-string/jumbo v14, ""

    goto :goto_2

    .line 235
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v6    # "isBoot":Z
    .end local v8    # "penInsert":Z
    .end local v10    # "topMostComponent":Landroid/content/ComponentName;
    .end local v11    # "topMostPackageName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v14, "com.samsung.cover.OPEN"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 236
    const-string/jumbo v14, "coverOpen"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 237
    .local v7, "isCoverOpen":Z
    sget-object v14, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "isCoverOpen : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v14, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set3(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto :goto_3

    .line 240
    .end local v7    # "isCoverOpen":Z
    :cond_8
    const-string/jumbo v14, "com.samsung.android.service.airviewdictionary.set"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string/jumbo v15, "active"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set4(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 242
    const-string/jumbo v14, "x"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 243
    .local v12, "x":I
    const-string/jumbo v14, "y"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 244
    .local v13, "y":I
    const-string/jumbo v14, "time"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 245
    .local v9, "time":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v14, v12, v13, v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->setHoverStayValues(III)V

    goto/16 :goto_3
.end method
