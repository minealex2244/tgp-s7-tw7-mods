.class public Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.super Ljava/lang/Object;
.source "QuickOptionListItem.java"


# static fields
.field static final ADD_APPS_ICON_ID:I = 0x7f0200d6

.field static final ADD_APPS_TEXT_ID:I = 0x7f080078

.field static final ADD_SHORTCUT_TO_HOME_ICON_ID:I = 0x7f0200d7

.field static final ADD_SHORTCUT_TO_HOME_TEXT_ID:I = 0x7f080079

.field static final ADD_TO_PERSONAL_ICON_ID:I = 0x7f0200d8

.field static final ADD_TO_PERSONAL_TEXT_ID:I = 0x7f08007a

.field static final APP_INFO_ICON_ID:I = 0x7f0200da

.field static final APP_INFO_TEXT_ID:I = 0x7f08007b

.field static final CLEAR_BADGE_ICON_ID:I = 0x7f0200db

.field static final CLEAR_BADGE_TEXT_ID:I = 0x7f08007d

.field static final DELETE_FOLDER_ICON_ID:I = 0x7f0200e1

.field static final DELETE_FOLDER_TEXT_ID:I = 0x7f08007e

.field static final DIMMED_DISABLE_TEXT_ID:I = 0x7f080081

.field static final DISABLE_ICON_ID:I = 0x7f0200dc

.field static final DISABLE_TEXT_ID:I = 0x7f080082

.field static final INSTALL_DUAL_IM_ICON_ID:I = 0x7f0200dd

.field static final INSTALL_DUAL_IM_TEXT_ID:I = 0x7f080083

.field static final LOCK_ICON_ID:I = 0x7f0200df

.field static final LOCK_TEXT_ID:I = 0x7f080084

.field static final MOVE_FROM_FOLDER_ICON_ID:I = 0x7f0200e0

.field static final MOVE_FROM_FOLDER_TEXT_ID:I = 0x7f080085

.field static final REMOVE_ICON_ID:I = 0x7f0200e1

.field static final REMOVE_SHORTCUT_TEXT_ID:I = 0x7f080087

.field static final REMOVE_TEXT_ID:I = 0x7f080086

.field static final SECURE_FOLDER_ICON_ID:I = 0x7f0200d9

.field static final SECURE_FOLDER_TEXT_ID:I = 0x7f080088

.field static final SELECT_ICON_ID:I = 0x7f0200e2

.field static final SELECT_TEXT_ID:I = 0x7f080089

.field static final SLEEP_ICON_ID:I = 0x7f0200e3

.field static final SLEEP_TEXT_ID:I = 0x7f08008a

.field static final UNINSTALL_ICON_ID:I = 0x7f0200e4

.field static final UNINSTALL_TEXT_ID:I = 0x7f08008c

.field static final UNLOCK_ICON_ID:I = 0x7f0200e5

.field static final UNLOCK_TEXT_ID:I = 0x7f08008d


# instance fields
.field private mCallBack:Ljava/lang/Runnable;

.field private mIconRsrId:I

.field private mTitleRsrId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mCallBack:Ljava/lang/Runnable;

    return-object v0
.end method

.method getIconRsrId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mIconRsrId:I

    return v0
.end method

.method getTitleRsrId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mTitleRsrId:I

    return v0
.end method

.method isOptionRemove()Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getIconRsrId()I

    move-result v0

    const v1, 0x7f0200e1

    if-ne v0, v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v0

    const v1, 0x7f080086

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v0

    const v1, 0x7f080087

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mCallBack:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method setIconRsrId(I)V
    .locals 0
    .param p1, "iconRsrId"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mIconRsrId:I

    .line 53
    return-void
.end method

.method setTitleRsrId(I)V
    .locals 0
    .param p1, "titleRsrId"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mTitleRsrId:I

    .line 61
    return-void
.end method
