.class Lcom/android/systemui/statusbar/BaseStatusBar$6;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$6;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method

.method private getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    const/4 v1, 0x0

    .line 543
    :goto_0
    if-eqz p1, :cond_1

    .line 544
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 545
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 547
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 549
    :cond_1
    return-object v1
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 559
    const v17, 0x1020061

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    .line 560
    .local v14, "tag":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 561
    .local v8, "inputs":[Landroid/app/RemoteInput;
    instance-of v0, v14, [Landroid/app/RemoteInput;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v8, v14

    .line 562
    check-cast v8, [Landroid/app/RemoteInput;

    .line 565
    .end local v8    # "inputs":[Landroid/app/RemoteInput;
    :cond_0
    if-nez v8, :cond_1

    .line 566
    const/16 v17, 0x0

    return v17

    .line 569
    :cond_1
    const/4 v7, 0x0

    .line 571
    .local v7, "input":Landroid/app/RemoteInput;
    const/16 v17, 0x0

    array-length v0, v8

    move/from16 v18, v0

    .end local v7    # "input":Landroid/app/RemoteInput;
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v6, v8, v17

    .line 572
    .local v6, "i":Landroid/app/RemoteInput;
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 573
    move-object v7, v6

    .line 571
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 577
    .end local v6    # "i":Landroid/app/RemoteInput;
    :cond_3
    if-nez v7, :cond_4

    .line 578
    const/16 v17, 0x0

    return v17

    .line 581
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 582
    .local v9, "p":Landroid/view/ViewParent;
    const/4 v12, 0x0

    .line 583
    .local v12, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :goto_1
    if-eqz v9, :cond_5

    .line 584
    instance-of v0, v9, Landroid/view/View;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object v10, v9

    .line 585
    check-cast v10, Landroid/view/View;

    .line 586
    .local v10, "pv":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->isRootNamespace()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 587
    sget-object v17, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v12

    .end local v12    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    check-cast v12, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 593
    .end local v10    # "pv":Landroid/view/View;
    :cond_5
    const/4 v13, 0x0

    .line 594
    .local v13, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_2
    if-eqz v9, :cond_6

    .line 595
    instance-of v0, v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object v13, v9

    .line 596
    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 602
    .end local v13    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    if-eqz v12, :cond_7

    if-nez v13, :cond_a

    .line 603
    :cond_7
    const/16 v17, 0x0

    return v17

    .line 591
    .restart local v12    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_8
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    goto :goto_1

    .line 599
    .end local v12    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .restart local v13    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_9
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    goto :goto_2

    .line 606
    .end local v13    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedRemoteInputOnCover:Z

    .line 608
    const/16 v17, 0x0

    return v17

    .line 611
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllowLockscreenRemoteInput:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 616
    const/16 v17, 0x1

    return v17

    .line 618
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 619
    .local v15, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/app/KeyguardManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v17

    .line 619
    if-eqz v17, :cond_d

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v13, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 622
    const/16 v17, 0x1

    return v17

    .line 626
    .end local v15    # "userId":I
    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v2, v17, v18

    .line 628
    .local v2, "cx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v3, v17, v18

    .line 629
    .local v3, "cy":I
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getWidth()I

    move-result v16

    .line 630
    .local v16, "w":I
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v5

    .line 632
    .local v5, "h":I
    add-int v17, v2, v3

    sub-int v18, v5, v3

    add-int v18, v18, v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 633
    sub-int v18, v16, v2

    add-int v18, v18, v3

    sub-int v19, v16, v2

    sub-int v20, v5, v3

    add-int v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 631
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 635
    .local v11, "r":I
    const/16 v17, 0x0

    int-to-float v0, v11

    move/from16 v18, v0

    :try_start_0
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v2, v3, v0, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/animation/Animator;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 642
    invoke-virtual {v12, v8, v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    .line 643
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    .line 645
    const/16 v17, 0x1

    return v17

    .line 637
    :catch_0
    move-exception v4

    .line 638
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v17, "StatusBar"

    const-string/jumbo v18, "RemoteInputView is detached on Window when starting animator!"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private logActionClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 523
    .local v4, "parent":Landroid/view/ViewParent;
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 525
    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "Couldn\'t determine notification for click."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 528
    :cond_0
    const/4 v2, -0x1

    .line 530
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x1020424

    if-ne v5, v6, :cond_1

    .line 531
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 530
    if-eqz v5, :cond_1

    move-object v0, v4

    .line 532
    check-cast v0, Landroid/view/ViewGroup;

    .line 533
    .local v0, "actionGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 536
    .end local v0    # "actionGroup":Landroid/view/ViewGroup;
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v3, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 555
    const/4 v0, 0x1

    .line 554
    invoke-super {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedRemoteInputOnCover:Z

    .line 454
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    return v10

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedRemoteInputOnCover:Z

    if-eqz v0, :cond_1

    .line 460
    return v1

    .line 467
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->logActionClick(Landroid/view/View;)V

    .line 473
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 479
    const-string/jumbo v1, "com.android.systemui.statusbar.policy.notification"

    .line 480
    const-string/jumbo v4, "NO08"

    .line 478
    invoke-static {v0, v1, v4, v5, v5}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    :cond_2
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v8

    .line 484
    .local v8, "isActivity":Z
    if-eqz v8, :cond_3

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    .line 487
    .local v2, "keyguardShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 486
    invoke-static {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 488
    .local v3, "afterKeyguardGone":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$6;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v9, v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 515
    return v10

    .line 517
    .end local v2    # "keyguardShowing":Z
    .end local v3    # "afterKeyguardGone":Z
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 474
    .end local v8    # "isActivity":Z
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
