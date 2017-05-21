.class public Lcom/android/launcher3/widget/controller/WidgetStateUninstall;
.super Lcom/android/launcher3/widget/controller/WidgetState;
.source "WidgetStateUninstall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mTitleBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleBar"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetState;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    return-void
.end method

.method private uninstallWidget(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 90
    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 91
    .local v0, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/UninstallAppUtils;->startUninstallActivity(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)V

    .line 95
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "fromState"    # Lcom/android/launcher3/widget/controller/WidgetState;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBarHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->slideIn(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 41
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x16

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 43
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBarHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->slideOut(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    return-object v0
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 5
    .param p1, "titleBar"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->initTitleBar(Landroid/view/View;)V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " titlebar is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    .line 67
    const v2, 0x7f0f00e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "backButton":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v0, v3}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    .line 72
    .local v1, "hover":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 76
    .end local v1    # "hover":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f00e9

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 3

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f09007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 117
    return-void
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->uninstallWidget(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public setFocus()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;->mTitleBar:Landroid/view/View;

    const v2, 0x7f0f00e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "backButton":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 110
    return-void
.end method
