.class Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimData"
.end annotation


# instance fields
.field public simState:Lcom/android/internal/telephony/IccCardConstants$State;

.field public slotId:I

.field public subId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "slot"    # I
    .param p3, "id"    # I

    .prologue
    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1307
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 1308
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 1305
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1313
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1314
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1316
    :cond_0
    const-string/jumbo v6, "ss"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1317
    .local v4, "stateExtra":Ljava/lang/String;
    const-string/jumbo v6, "slot"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1318
    .local v2, "slotId":I
    const-string/jumbo v6, "subscription"

    .line 1319
    const/4 v7, -0x1

    .line 1318
    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1320
    .local v5, "subId":I
    const-string/jumbo v6, "ABSENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1322
    const-string/jumbo v6, "reason"

    .line 1321
    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "absentReason":Ljava/lang/String;
    const-string/jumbo v6, "PERM_DISABLED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1326
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1359
    .end local v0    # "absentReason":Ljava/lang/String;
    .local v3, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    new-instance v6, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v6, v3, v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    return-object v6

    .line 1328
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1330
    .end local v0    # "absentReason":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1331
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1332
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string/jumbo v6, "LOCKED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1334
    const-string/jumbo v6, "reason"

    .line 1333
    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1335
    .local v1, "lockedReason":Ljava/lang/String;
    const-string/jumbo v6, "PIN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1336
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1337
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string/jumbo v6, "PUK"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1338
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1339
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-boolean v6, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERSO_LOCK:Z

    if-eqz v6, :cond_6

    .line 1340
    const-string/jumbo v6, "PERSO"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1339
    if-eqz v6, :cond_6

    .line 1341
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1342
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    const-string/jumbo v6, "PERM_DISABLED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1343
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1345
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1347
    .end local v1    # "lockedReason":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8
    const-string/jumbo v6, "NETWORK"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1348
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1349
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_9
    const-string/jumbo v6, "CARD_IO_ERROR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1350
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1351
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a
    const-string/jumbo v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1352
    const-string/jumbo v6, "IMSI"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1351
    if-eqz v6, :cond_c

    .line 1355
    :cond_b
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 1357
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SimData{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method