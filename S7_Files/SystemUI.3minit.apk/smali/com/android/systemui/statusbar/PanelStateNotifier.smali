.class public final Lcom/android/systemui/statusbar/PanelStateNotifier;
.super Ljava/lang/Object;
.source "PanelStateNotifier.java"


# static fields
.field private static mBarState:I

.field private static mState:I

.field private static mStatusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isKeyguardState(I)Z
    .locals 2
    .param p0, "curState"    # I

    .prologue
    const/4 v0, 0x1

    .line 153
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShadeLockedState(I)Z
    .locals 2
    .param p0, "curState"    # I

    .prologue
    .line 157
    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShadeState(I)Z
    .locals 2
    .param p0, "curState"    # I

    .prologue
    const/4 v0, 0x0

    .line 161
    and-int/lit8 v1, p0, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notify(Landroid/content/Context;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    .line 55
    return-void
.end method

.method public static notify(Landroid/content/Context;IZ)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "state"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v5, 0x1

    .line 72
    const-string/jumbo v0, ""

    .line 73
    .local v0, "action":Ljava/lang/String;
    const/4 v3, 0x0

    .line 75
    .local v3, "opened":Z
    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    if-ne v4, p1, :cond_0

    .line 76
    return-void

    .line 77
    :cond_0
    if-nez p2, :cond_1

    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    return-void

    .line 85
    :cond_1
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    .line 87
    if-ne p1, v5, :cond_5

    .line 88
    const-string/jumbo v0, "com.samsung.systemui.statusbar.ANIMATING"

    .line 100
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "i":Landroid/content/Intent;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 107
    if-eq p1, v5, :cond_4

    .line 108
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_PANEL_STATE_NOTIFIER_FOR_KDDI:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.kddi.agent.action.STATUS_BAR_CONDITION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 116
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v4, :cond_3

    .line 118
    const-string/jumbo v4, "sem_statusbar"

    .line 117
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemStatusBarManager;

    sput-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 121
    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v4, :cond_4

    .line 123
    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v4, v3}, Landroid/app/SemStatusBarManager;->setPanelExpandState(Z)V

    .line 71
    :cond_4
    return-void

    .line 89
    .end local v1    # "i":Landroid/content/Intent;
    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    .line 90
    const-string/jumbo v0, "com.samsung.systemui.statusbar.EXPANDED"

    .line 91
    const/4 v3, 0x1

    goto :goto_0

    .line 92
    :cond_6
    if-nez p1, :cond_7

    .line 93
    const-string/jumbo v0, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 94
    const/4 v3, 0x0

    goto :goto_0

    .line 96
    :cond_7
    const-string/jumbo v4, "PanelStateNotifier"

    const-string/jumbo v5, "Invalid panel open state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public static setQsExpanded(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "expanded"    # Z

    .prologue
    .line 129
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    .line 128
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setStatusBarState(Landroid/content/Context;I)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "barState"    # I

    .prologue
    .line 136
    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    if-ne v1, p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    .line 140
    .local v0, "prevState":I
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    .line 145
    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    goto :goto_0
.end method
