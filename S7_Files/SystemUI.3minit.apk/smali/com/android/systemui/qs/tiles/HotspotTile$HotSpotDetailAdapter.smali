.class final Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotSpotDetailAdapter"
.end annotation


# instance fields
.field private mConnectedDevices:[Ljava/lang/String;

.field private mConnectedListTitle:Landroid/widget/TextView;

.field private mConnectionMode:Landroid/widget/TextView;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mMobileApName:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method

.method private updateItems()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 595
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v5, :cond_0

    return-void

    .line 596
    :cond_0
    const/4 v4, 0x0

    .line 597
    .local v4, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 598
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    array-length v0, v5

    .line 599
    .local v0, "deviceCount":I
    new-array v4, v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 600
    .local v4, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 601
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    aget-object v1, v5, v2

    .line 602
    .local v1, "deviceName":Ljava/lang/String;
    new-instance v3, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v3}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 603
    .local v3, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v5, 0x7f02034b

    iput v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 604
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    .line 605
    iput-object v1, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 606
    iput-object v6, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 607
    aput-object v3, v4, v2

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "deviceCount":I
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    .end local v4    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 594
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 533
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createDetailView convertView="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " mState.value "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0400f3

    invoke-virtual {v1, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 538
    const v1, 0x7f1302ce

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    .line 539
    const v1, 0x7f1302cf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    .line 540
    const v1, 0x7f1302d0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListTitle:Landroid/widget/TextView;

    .line 541
    const v1, 0x7f1302d1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 542
    .local v0, "v":Landroid/view/ViewGroup;
    invoke-static {p1, v5, v0}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 543
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v2, "HotSpot"

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 545
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateHotSpotApInfo()V

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateConnectedDeviceList()V

    .line 549
    return-object p2

    .end local v0    # "v":Landroid/view/ViewGroup;
    :cond_2
    move v1, v2

    .line 533
    goto/16 :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 528
    const/16 v0, 0x78

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f03de

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 490
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f03dd

    goto :goto_0

    .line 491
    :cond_1
    const v0, 0x7f0f03dc

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 580
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 584
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_2

    return-void

    .line 589
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    .line 587
    return-void
.end method

.method public setToggleState(Z)Z
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    .line 505
    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v0

    .line 505
    if-eqz v0, :cond_1

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const v1, 0x7f0f03db

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap3(Lcom/android/systemui/qs/tiles/HotspotTile;I)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    return v0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get7(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-interface {v0, v3, v1}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    return v0

    .line 516
    :cond_2
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_USA_POPUP:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 517
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "send WIFIAP_ENABLE_WARNING for USA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    return v0

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap2(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setItemsVisible(Z)V

    .line 523
    return p1

    :cond_4
    move v0, v2

    .line 522
    goto :goto_0
.end method

.method public updateConnectedDeviceList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get5(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->getConnectedDeviceList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    .line 554
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected Devices = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateItems()V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setItemsVisible(Z)V

    .line 552
    return-void

    :cond_1
    move v0, v1

    .line 556
    goto :goto_0
.end method

.method public updateHotSpotApInfo()V
    .locals 4

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 567
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mobileAp Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 571
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f03df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :goto_0
    return-void

    .line 572
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 573
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f03e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 575
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method