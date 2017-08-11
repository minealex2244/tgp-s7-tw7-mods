.class public Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "ModeInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeInfoItem"


# instance fields
.field private final DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

.field private final DESCRIPTION_DIVIDER_WIDTH_PORTRAIT:F

.field private final DESCRIPTION_FONT_SIZE:F

.field private final DESCRIPTION_LINE_SPACING:F

.field private final DESCRIPTION_MARGIN:F

.field private final DESCRIPTION_PADDING:F

.field private final DESCRIPTION_POS_X:F

.field private final DESCRIPTION_WIDTH_LANDSCAPE:F

.field private final DESCRIPTION_WIDTH_PORTRAIT:F

.field private final MODE_DOWNLOAD_ICON_HEIGHT:F

.field private final MODE_INFO_BUTTON_HEIGHT:F

.field private final MODE_INFO_BUTTON_LEFT_MARGIN:F

.field private final MODE_INFO_BUTTON_WIDTH:F

.field private final MODE_INFO_DIVIDER_COLOR:I

.field private final MODE_INFO_DIVIDER_POS_X:F

.field private final MODE_INFO_DIVIDER_THICKNESS:I

.field private final MODE_INFO_ICON_POS_X:F

.field private final MODE_INFO_ICON_WIDTH:F

.field private final MODE_INFO_ITEM_HEIGHT:F

.field private final MODE_INFO_TITLE_FONT_COLOR:I

.field private final MODE_INFO_TITLE_FONT_SIZE:F

.field private final MODE_INFO_TITLE_TEXT_HEIGHT:F

.field private final MODE_INFO_TITLE_TOP_MARGIN:F

.field private final MODE_INFO_TITLE_WIDTH:F

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDescription:Lcom/samsung/android/glview/GLText;

.field private mDescriptionHeight:F

.field private mDescriptionLandscapeHeight:F

.field private mDivider:Lcom/samsung/android/glview/GLLine;

.field private mDownloadIcon:Lcom/samsung/android/glview/GLImage;

.field private mIsDownloadedShootingMode:Z

.field private final mMenuId:I

.field private final mModeId:I

.field private mModeInfoButton:Lcom/samsung/android/glview/GLButton;

.field private mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

.field private mTitleHeight:F

.field private mTitleText:Lcom/samsung/android/glview/GLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;

    .prologue
    .line 90
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 46
    const v0, 0x7f0b0126

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_POS_X:F

    .line 47
    const v0, 0x7f0b0127

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    .line 48
    const v0, 0x7f0b0120

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    .line 49
    const v0, 0x7f0b011e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_HEIGHT:F

    .line 50
    const v0, 0x7f0b011f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_LEFT_MARGIN:F

    .line 51
    const v0, 0x7f0b011b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_DOWNLOAD_ICON_HEIGHT:F

    .line 52
    const v0, 0x7f0b012b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_WIDTH:F

    .line 53
    const v0, 0x7f0b0129

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TEXT_HEIGHT:F

    .line 54
    const v0, 0x7f0b012a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    .line 55
    const v0, 0x7f0d0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_COLOR:I

    .line 56
    const v0, 0x7f0b0312

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_SIZE:F

    .line 57
    const v0, 0x7f0e0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    .line 58
    const v0, 0x7f0d0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_COLOR:I

    .line 59
    const v0, 0x7f0b0124

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    .line 60
    const v0, 0x7f0b0125

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    .line 61
    const v0, 0x7f0b0121

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    .line 62
    const v0, 0x7f0b0122

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    .line 63
    const v0, 0x7f0b0123

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    .line 64
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    .line 65
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_LANDSCAPE:F

    .line 66
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_PORTRAIT:F

    .line 67
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_LANDSCAPE:F

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

    .line 68
    const v0, 0x7f0b02c1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_LINE_SPACING:F

    .line 69
    const v0, 0x7f0b0311

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mIsDownloadedShootingMode:Z

    .line 92
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mMenuId:I

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->init()V

    .line 98
    return-void
.end method

.method private getShootingModeSubDescription(I)Ljava/lang/String;
    .locals 3
    .param p1, "shootingMode"    # I

    .prologue
    .line 478
    const-string v0, ""

    .line 479
    .local v0, "description":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 486
    :goto_0
    return-object v0

    .line 481
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method private isCurrentMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "isCurrent":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v3, :cond_0

    .line 512
    :goto_0
    return v2

    .line 500
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mIsDownloadedShootingMode:Z

    if-nez v3, :cond_3

    .line 501
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mMenuId:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_1
    :goto_1
    move v2, v0

    .line 512
    goto :goto_0

    :cond_2
    move v0, v2

    .line 501
    goto :goto_1

    .line 504
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 505
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mMenuId:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    if-ne v3, v4, :cond_4

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    .line 506
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 507
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSeparatedShootingModeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 353
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 358
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 363
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 368
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLLine;->clear()V

    .line 373
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    .line 375
    :cond_4
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method public getDescription()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method public getShootingModeDescription(I)Ljava/lang/String;
    .locals 7
    .param p1, "shootingMode"    # I

    .prologue
    .line 109
    const-string v1, "ModeInfoItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShootingModeDescription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v0, ""

    .line 112
    .local v0, "description":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 205
    :pswitch_0
    const-string v1, "ModeInfoItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShootingModeDescription : invalid shootingmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-object v0

    .line 114
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    goto :goto_0

    .line 127
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    goto :goto_0

    .line 130
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    goto :goto_0

    .line 133
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    goto :goto_0

    .line 137
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    goto :goto_0

    .line 140
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    goto/16 :goto_0

    .line 146
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    goto/16 :goto_0

    .line 151
    :pswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    goto/16 :goto_0

    .line 154
    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    goto/16 :goto_0

    .line 157
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    goto/16 :goto_0

    .line 160
    :pswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    goto/16 :goto_0

    .line 163
    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    goto/16 :goto_0

    .line 166
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    goto/16 :goto_0

    .line 169
    :pswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    goto/16 :goto_0

    .line 172
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    goto/16 :goto_0

    .line 175
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    goto/16 :goto_0

    .line 178
    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    goto/16 :goto_0

    .line 181
    :pswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    goto/16 :goto_0

    .line 184
    :pswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    goto/16 :goto_0

    .line 187
    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    goto/16 :goto_0

    .line 190
    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    goto/16 :goto_0

    .line 193
    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    goto/16 :goto_0

    .line 196
    :pswitch_1b
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    goto/16 :goto_0

    .line 199
    :pswitch_1c
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    goto/16 :goto_0

    .line 202
    :pswitch_1d
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_1b
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_18
        :pswitch_12
        :pswitch_15
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_19
        :pswitch_e
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method protected init()V
    .locals 31

    .prologue
    .line 379
    const/16 v26, 0x0

    .line 381
    .local v26, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v26

    .line 383
    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mIsDownloadedShootingMode:Z

    .line 388
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setFocusable(Z)V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 392
    .local v7, "normalBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_LEFT_MARGIN:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_HEIGHT:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    .line 396
    .end local v7    # "normalBitmap":Landroid/graphics/Bitmap;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 405
    const/16 v29, 0x0

    .line 407
    .local v29, "subDescription":Ljava/lang/String;
    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 408
    move-object/from16 v0, v26

    iget-object v14, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    .line 413
    .local v14, "description":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getShootingModeSubDescription(I)Ljava/lang/String;

    move-result-object v29

    .line 415
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v28

    .line 416
    .local v28, "stringHeight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v14, v2, v3}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v27

    .line 417
    .local v27, "rows":I
    move/from16 v0, v27

    int-to-float v1, v0

    mul-float v1, v1, v28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_LINE_SPACING:F

    add-int/lit8 v3, v27, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionHeight:F

    .line 419
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_LANDSCAPE:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v14, v2, v3}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v25

    .line 420
    .local v25, "landscapeRows":I
    move/from16 v0, v25

    int-to-float v1, v0

    mul-float v1, v1, v28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_LINE_SPACING:F

    add-int/lit8 v3, v25, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionLandscapeHeight:F

    .line 422
    new-instance v8, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionHeight:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 423
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v15, v1, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_COLOR:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 429
    const-string v1, ""

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setContentDescription(Ljava/lang/String;)V

    .line 432
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 437
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 439
    new-instance v15, Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_PORTRAIT:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_COLOR:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v0, v1

    move/from16 v22, v0

    invoke-direct/range {v15 .. v22}, Lcom/samsung/android/glview/GLLine;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLLine;->setBypassTouch(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 446
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mIsDownloadedShootingMode:Z

    if-eqz v1, :cond_8

    if-eqz v26, :cond_8

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 448
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    .line 455
    :cond_2
    :goto_3
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020107

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 463
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_WIDTH:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v30

    .line 466
    .local v30, "titleRows":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TEXT_HEIGHT:F

    move/from16 v0, v30

    int-to-float v2, v0

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    .line 467
    new-instance v15, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_LEFT_MARGIN:F

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_WIDTH:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_SIZE:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_FONT_COLOR:I

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 474
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setSizeForOrientation(I)V

    .line 475
    return-void

    .line 394
    .end local v14    # "description":Ljava/lang/String;
    .end local v25    # "landscapeRows":I
    .end local v27    # "rows":I
    .end local v28    # "stringHeight":F
    .end local v29    # "subDescription":Ljava/lang/String;
    .end local v30    # "titleRows":I
    :cond_4
    new-instance v8, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_LEFT_MARGIN:F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_0

    .line 410
    .restart local v29    # "subDescription":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->getShootingModeDescription(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "description":Ljava/lang/String;
    goto/16 :goto_1

    .line 435
    .restart local v25    # "landscapeRows":I
    .restart local v27    # "rows":I
    .restart local v28    # "stringHeight":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_2

    .line 450
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_3

    .line 459
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "ModeInfoItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->isCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;->onSelect(Lcom/samsung/android/glview/GLView;)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 229
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setSizeForOrientation(I)V

    .line 237
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->onOrientationChanged(I)V

    .line 238
    return-void
.end method

.method public final setDividerVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/glview/GLLine;->setVisibility(IZ)V

    .line 249
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDraggable(Z)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setDraggable(Z)V

    .line 261
    :cond_1
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 267
    :cond_0
    return-void
.end method

.method public setSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;

    .line 276
    return-void
.end method

.method public setSizeForOrientation(I)V
    .locals 9
    .param p1, "orientation"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "itemHeight":F
    const/4 v0, 0x0

    .line 282
    .local v0, "iconPosY":F
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 283
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_5

    .line 284
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionLandscapeHeight:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    mul-float/2addr v3, v8

    add-float v1, v2, v3

    .line 285
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 286
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    .line 288
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    sub-float/2addr v2, v3

    div-float v0, v2, v8

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_LANDSCAPE:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    mul-float/2addr v4, v8

    sub-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_LANDSCAPE:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLLine;->setLine(FFFF)V

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    .line 294
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLLine;->moveLayoutAbsolute(FF)V

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_POS_X:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 314
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setSize(FF)V

    .line 345
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 346
    return-void

    .line 305
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v7, v0}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    .line 306
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getLayoutX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    .line 308
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getLayoutY()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_DOWNLOAD_ICON_HEIGHT:F

    sub-float/2addr v4, v5

    .line 307
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v7, v3}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    goto :goto_0

    .line 316
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescriptionHeight:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    mul-float/2addr v3, v8

    add-float v1, v2, v3

    .line 317
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 318
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ITEM_HEIGHT:F

    .line 320
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    sub-float/2addr v2, v3

    div-float v0, v2, v8

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_WIDTH_PORTRAIT:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_PADDING:F

    mul-float/2addr v4, v8

    sub-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_POS_X:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_DIVIDER_WIDTH_PORTRAIT:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_DIVIDER_THICKNESS:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLLine;->setLine(FFFF)V

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_TITLE_TOP_MARGIN:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleHeight:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    .line 326
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 327
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDescription:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 328
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDivider:Lcom/samsung/android/glview/GLLine;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLLine;->moveLayoutAbsolute(FF)V

    .line 329
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    .line 330
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_7

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_POS_X:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    .line 332
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    .line 331
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 334
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->DESCRIPTION_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 343
    :goto_2
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->setSize(FF)V

    goto/16 :goto_1

    .line 336
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v7, v0}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    .line 337
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_9

    .line 338
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mDownloadIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getLayoutX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_BUTTON_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mModeInfoButton:Lcom/samsung/android/glview/GLButton;

    .line 339
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getLayoutY()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_DOWNLOAD_ICON_HEIGHT:F

    sub-float/2addr v4, v5

    .line 338
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 341
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ModeInfoItem;->MODE_INFO_ICON_WIDTH:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v7, v3}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    goto :goto_2
.end method
