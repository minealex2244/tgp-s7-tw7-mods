.class public Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ExperienceGuide.java"


# static fields
.field public static final DOWN:I = 0x3

.field private static final GUIDE_ALPHA_VALUE:F = 0.85f

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExperienceGuide"

.field public static final UNKNOWN_DIRECTION:I = 0x4

.field public static final UP:I = 0x2


# instance fields
.field private final ARROW_HEIGHT:F

.field private final ARROW_MARGIN:F

.field private final ARROW_WIDTH:F

.field private final BACKGROUND_DOWN_PADDING:F

.field private final BACKGROUND_UP_PADDING:F

.field private final BACKGROUND_WIDTH:F

.field private final BASEMENU_GROUP_WIDTH:F

.field private final BEAUTY_MENU_BUTTON_WIDTH:F

.field private final EXPERIENCE_BACKGROUND_BOTTOM_MARGIN:F

.field private final EXPERIENCE_BACKGROUND_LAND_BOTTOM_MARGIN:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final TEXT_COLOR:I

.field private final TEXT_LINE_SPACING:F

.field private final TEXT_SIZE:F

.field private final TEXT_WIDTH:F

.field private final TITLE_FONT_SIZE:F

.field private mArrowDirection:[I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentOrientation:I

.field private mDescription:Ljava/lang/String;

.field private mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

.field private mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

.field private mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

.field private mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

.field private mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

.field private mHeight:F

.field private mLeft:F

.field private mTextHeight:F

.field private mTitle:Ljava/lang/String;

.field private mTop:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFFILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "orientation"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "arrowDirection"    # I
    .param p8, "title"    # Ljava/lang/String;
    .param p9, "description"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 43
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->SCREEN_WIDTH:I

    .line 44
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->SCREEN_HEIGHT:I

    .line 45
    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BASEMENU_GROUP_WIDTH:F

    .line 46
    const v1, 0x7f0a025f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BEAUTY_MENU_BUTTON_WIDTH:F

    .line 47
    const v1, 0x7f0a0320

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_WIDTH:F

    .line 48
    const v1, 0x7f0a031f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_UP_PADDING:F

    .line 49
    const v1, 0x7f0a031e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_DOWN_PADDING:F

    .line 50
    const v1, 0x7f0a0324

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_BOTTOM_MARGIN:F

    .line 51
    const v1, 0x7f0a0325

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_LAND_BOTTOM_MARGIN:F

    .line 52
    const v1, 0x7f0a0321

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_SIZE:F

    .line 53
    const v1, 0x7f0a0322

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    .line 54
    const v1, 0x7f0a0323

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TITLE_FONT_SIZE:F

    .line 55
    const v1, 0x7f0d000e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_COLOR:I

    .line 56
    const v1, 0x7f0a031a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_LINE_SPACING:F

    .line 57
    const v1, 0x7f0a031d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_WIDTH:F

    .line 58
    const v1, 0x7f0a031b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    .line 59
    const v1, 0x7f0a031c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_MARGIN:F

    .line 62
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    .line 63
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    .line 64
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    .line 65
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    .line 66
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/glview/GLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mLeft:F

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mWidth:F

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    .line 72
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTitle:Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mDescription:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 81
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTitle:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mDescription:Ljava/lang/String;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 84
    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public isExperienceGuideEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 89
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCurrentOrientation:I

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 109
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCurrentOrientation:I

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 108
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    .end local v0    # "i":I
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 112
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 117
    return-void

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExperienceGuideEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 131
    const-string v0, "ExperienceGuide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExperienceGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "arrowDirection"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    .line 138
    .local v3, "glContext":Lcom/samsung/android/glview/GLContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 139
    const/4 v12, 0x0

    .line 140
    .local v12, "arrowLeft":F
    const/4 v13, 0x0

    .line 141
    .local v13, "arrowTop":F
    const/4 v14, 0x0

    .line 142
    .local v14, "backGroundLeft":F
    const/4 v15, 0x0

    .line 144
    .local v15, "backGroundTop":F
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mLeft:F

    .line 145
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    .line 146
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mWidth:F

    .line 147
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aput p6, v2, p1

    .line 151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TITLE_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-static {v0, v2, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v18

    .line 152
    .local v18, "titleStringHeight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-static {v0, v2, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v16

    .line 153
    .local v16, "descriptionHeight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-static {v2, v0, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v17

    .line 154
    .local v17, "rows":I
    move/from16 v0, v17

    int-to-float v2, v0

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_LINE_SPACING:F

    add-int/lit8 v5, v17, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v2, v2, p1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v2, v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 157
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_UP_PADDING:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_DOWN_PADDING:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    .line 162
    :goto_0
    if-nez p1, :cond_a

    .line 163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_BOTTOM_MARGIN:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    .line 170
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    if-nez v2, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mLeft:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v2, v8, p1

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 175
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    if-nez v2, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v2, v8, p1

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f020001

    const v5, 0x3f59999a    # 0.85f

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(IF)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    add-float v5, v5, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v6, v6, p1

    .line 179
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 178
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 182
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v2, v2, p1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    if-nez v2, :cond_4

    .line 184
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    const/4 v8, 0x1

    const/high16 v9, 0x7f020000

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    aput-object v2, v10, p1

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    const v4, 0x3f59999a    # 0.85f

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 189
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mArrowDirection:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    .line 223
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    if-eqz v2, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    invoke-virtual {v2, v12, v13}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2, v14, v15}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    if-nez v2, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v19, v0

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TITLE_FONT_SIZE:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_COLOR:I

    const/4 v11, 0x0

    move/from16 v7, v18

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v2, v19, p1

    .line 233
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    if-nez v2, :cond_7

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v19, v0

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_LINE_SPACING:F

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mDescription:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_SIZE:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->TEXT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v2, v19, p1

    .line 236
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideTitleText:[Lcom/samsung/android/glview/GLText;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideDescriptionText:[Lcom/samsung/android/glview/GLText;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, p1

    if-eqz v2, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 247
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 248
    return-void

    .line 159
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTextHeight:F

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_UP_PADDING:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_DOWN_PADDING:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    goto/16 :goto_0

    .line 164
    :cond_a
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 165
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_LAND_BOTTOM_MARGIN:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mTop:F

    goto/16 :goto_1

    .line 166
    :cond_b
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BEAUTY_MENU_BUTTON_WIDTH:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->EXPERIENCE_BACKGROUND_BOTTOM_MARGIN:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mLeft:F

    goto/16 :goto_1

    .line 191
    :pswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    .line 192
    const/4 v15, 0x0

    .line 193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    neg-float v12, v2

    .line 194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_MARGIN:F

    sub-float v13, v2, v4

    .line 195
    goto/16 :goto_2

    .line 197
    :pswitch_1
    const/4 v14, 0x0

    .line 198
    const/4 v15, 0x0

    .line 199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->BACKGROUND_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v12, v2, v4

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v2

    .line 201
    goto/16 :goto_2

    .line 203
    :pswitch_2
    const/4 v14, 0x0

    .line 204
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mExperienceGuideBackGround:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v2

    .line 206
    const/4 v13, 0x0

    .line 207
    goto/16 :goto_2

    .line 209
    :pswitch_3
    const/4 v14, 0x0

    .line 210
    const/4 v15, 0x0

    .line 211
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_MARGIN:F

    .line 212
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->mHeight:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->ARROW_HEIGHT:F

    sub-float v13, v2, v4

    .line 213
    goto/16 :goto_2

    .line 215
    :pswitch_4
    const/4 v12, 0x0

    .line 216
    const/4 v13, 0x0

    .line 217
    const/4 v14, 0x0

    .line 218
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
