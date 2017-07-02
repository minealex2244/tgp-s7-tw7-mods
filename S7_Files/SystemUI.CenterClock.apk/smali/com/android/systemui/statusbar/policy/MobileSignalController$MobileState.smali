.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileState"
.end annotation


# instance fields
.field airplaneMode:Z

.field bluetoothTethered:Z

.field callState:I

.field carrierNetworkChangeMode:Z

.field cdmaEriIconIndex:I

.field cdmaEriIconMode:I

.field dataConnected:Z

.field dataRegState:I

.field dataSim:Z

.field evdoLevel:I

.field isCAIndicator:Z

.field isDefault:Z

.field isEmergency:Z

.field isLTEFemtoCell:Z

.field isMobileDataSettingEnabled:Z

.field isRoaming:Z

.field isSRoaming:Z

.field lteLevel:I

.field networkName:Ljava/lang/String;

.field networkNameData:Ljava/lang/String;

.field nwBoosterRilEnabled:Z

.field nwBoosterSettingEnabled:Z

.field userSetup:Z

.field voiceRegState:I

.field voiceSim:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/systemui/statusbar/policy/SignalController$State;

    .prologue
    .line 3270
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    move-object v0, p1

    .line 3271
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 3272
    .local v0, "state":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 3273
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 3274
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 3275
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 3276
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 3277
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 3278
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 3279
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 3280
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 3282
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    .line 3283
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    .line 3284
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconIndex:I

    .line 3285
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconMode:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconMode:I

    .line 3288
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    .line 3289
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterSettingEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterSettingEnabled:Z

    .line 3292
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    .line 3293
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    .line 3296
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    .line 3298
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    .line 3300
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    .line 3302
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    .line 3304
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->evdoLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->evdoLevel:I

    .line 3305
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->lteLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->lteLevel:I

    .line 3308
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    .line 3309
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataRegState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataRegState:I

    .line 3269
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 3365
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 3366
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 3365
    if-eqz v0, :cond_1

    move-object v0, p1

    .line 3367
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 3365
    if-eqz v0, :cond_1

    move-object v0, p1

    .line 3368
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3369
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3370
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3371
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3372
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3373
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3375
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3376
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3377
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconIndex:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconIndex:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3378
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconMode:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconMode:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3381
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3382
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterSettingEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterSettingEnabled:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3385
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3386
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3389
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3391
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3393
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3395
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3397
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->evdoLevel:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->evdoLevel:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3398
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->lteLevel:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->lteLevel:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3401
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 3402
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataRegState:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataRegState:I

    if-ne v0, v2, :cond_1

    .line 3404
    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 3365
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3404
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v1

    .line 3365
    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2c

    .line 3317
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 3318
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3319
    const-string/jumbo v0, "dataSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3320
    const-string/jumbo v0, "networkName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3321
    const-string/jumbo v0, "networkNameData="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3322
    const-string/jumbo v0, "dataConnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3323
    const-string/jumbo v0, "isDefault="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3324
    const-string/jumbo v0, "isEmergency="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3325
    const-string/jumbo v0, "airplaneMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3326
    const-string/jumbo v0, "carrierNetworkChangeMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3328
    const-string/jumbo v0, "userSetup="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3330
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3331
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isLTEFemtoCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3332
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cdmaEriIconIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3333
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cdmaEriIconMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3336
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "nwBoosterRilEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3337
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "nwBoosterSettingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterSettingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3340
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3341
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isMobileDataSettingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3344
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bluetoothTethered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3346
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isCAIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3348
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "voiceSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isSRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3352
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "evdoLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->evdoLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3353
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lteLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->lteLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3356
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "voiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3316
    return-void
.end method
