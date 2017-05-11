.class public Lcom/samsung/android/glview/GLButton;
.super Lcom/samsung/android/glview/GLView;
.source "GLButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLButton$ButtonSelectListener;,
        Lcom/samsung/android/glview/GLButton$ButtonPressListener;,
        Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_BACKGROUND_COLOR:I

.field private static final BUTTON_BACKGROUND_FILL_COLOR:I

.field private static final DRAW_HIGHLIGHT_DELAY:I = 0xc8

.field private static final DRAW_HIGHLIGHT_MINIMUM_DURATION:I = 0xc8

.field private static final HIGHLIGHTTYPE_COLOR:I = 0x2

.field private static final HIGHLIGHTTYPE_NONE:I = 0x0

.field private static final HIGHLIGHTTYPE_RESOURCE:I = 0x1

.field private static final HIGHLIGHT_FADE_OUT_ANIM_DURATION:I = 0x190

.field private static final STATE_PRESSED_MINIMUM_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "GLButton"


# instance fields
.field protected mButtonHeight:F

.field protected mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

.field protected mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

.field protected mButtonWidth:F

.field protected mDimBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mDimId:I

.field protected mDrawHighlight:Z

.field protected mDrawRipple:Z

.field protected mHighlight:Lcom/samsung/android/glview/GLTexture;

.field protected mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field protected mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

.field protected mHighlightFadeOut:Z

.field protected mHighlightId:I

.field protected mIsNinePatchButton:Z

.field protected mMute:Z

.field protected mNormalBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mNormalId:I

.field protected mNormalTextColor:I

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mPressedId:I

.field protected mPressedTextColor:I

.field private mPressedTintColor:I

.field private final mResetButtonPressed:Ljava/lang/Runnable;

.field private final mResetDrawHighlight:Ljava/lang/Runnable;

.field private final mResetDrawRippleEffect:Ljava/lang/Runnable;

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mRippleBackground:Lcom/samsung/android/glview/GLCircle;

.field private mRippleDiameter:F

.field protected mRippleEffect:Lcom/samsung/android/glview/GLCircle;

.field protected mRippleEffectColor:I

.field protected mRippleEffectEnabled:Z

.field protected mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field private mRippleRadius:F

.field private mRippleSizeGiven:Z

.field protected mSelected:Z

.field private final mSetButtonPressed:Ljava/lang/Runnable;

.field private final mSetDrawHighlight:Ljava/lang/Runnable;

.field private final mSetDrawRippleEffect:Ljava/lang/Runnable;

.field protected mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

.field private mShapeBackgroundVisibility:I

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xfa

    const/16 v1, 0x25

    .line 54
    const/16 v0, 0x4d

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLButton;->BUTTON_BACKGROUND_COLOR:I

    .line 55
    const/16 v0, 0x26

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLButton;->BUTTON_BACKGROUND_FILL_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I

    .prologue
    .line 368
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 370
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 371
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 373
    if-eqz p6, :cond_0

    .line 374
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 381
    :cond_0
    :goto_0
    if-eqz p7, :cond_1

    .line 382
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 383
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 388
    :cond_1
    :goto_1
    if-eqz p8, :cond_2

    .line 389
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 390
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 396
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 401
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 403
    :cond_5
    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 404
    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 405
    iput p8, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 407
    return-void

    .line 378
    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0

    .line 385
    :cond_7
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_1

    .line 392
    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p8}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I
    .param p9, "npHighlightId"    # I

    .prologue
    .line 423
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 425
    if-eqz p6, :cond_0

    .line 426
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 428
    :cond_0
    if-eqz p7, :cond_1

    .line 429
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 431
    :cond_1
    if-eqz p8, :cond_2

    .line 432
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 435
    :cond_2
    if-eqz p9, :cond_3

    .line 436
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 438
    :cond_3
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 439
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 441
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 442
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 444
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 445
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 447
    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 448
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    .line 449
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 450
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    .line 451
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 452
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_9

    .line 453
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 456
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_a

    .line 457
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 458
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_b

    .line 459
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 460
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_c

    .line 461
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 462
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_d

    .line 463
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 464
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 467
    :cond_d
    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 468
    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 469
    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 470
    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 472
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I
    .param p9, "highlightColor"    # I
    .param p10, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 490
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 492
    if-eqz p6, :cond_0

    .line 493
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 495
    :cond_0
    if-eqz p7, :cond_1

    .line 496
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p7

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 497
    :cond_1
    if-eqz p8, :cond_2

    .line 498
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 501
    :cond_2
    if-eqz p9, :cond_3

    .line 502
    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 504
    :cond_3
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 505
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 507
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 508
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 510
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 511
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 513
    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 514
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    .line 515
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 516
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    .line 517
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 518
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_9

    .line 519
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 522
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_a

    .line 523
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 524
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_b

    .line 525
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 526
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_c

    .line 527
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 528
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_d

    .line 529
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 530
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 533
    :cond_d
    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 534
    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 535
    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 536
    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 538
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalBitmap"    # Landroid/graphics/Bitmap;
    .param p7, "pressedBitmap"    # Landroid/graphics/Bitmap;
    .param p8, "dimmedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 305
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 92
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 307
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 308
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 310
    if-eqz p6, :cond_0

    .line 311
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 313
    :cond_0
    if-eqz p7, :cond_1

    .line 314
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p7}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 316
    :cond_1
    if-eqz p8, :cond_2

    .line 317
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p8}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 325
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 327
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 328
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 551
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 92
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 553
    if-eqz p6, :cond_0

    .line 554
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 555
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 556
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 562
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 563
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "image"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 341
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 92
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 343
    if-eqz p6, :cond_0

    .line 344
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF[BZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 345
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 346
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 353
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "npHighlightId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 577
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 92
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 579
    if-eqz p4, :cond_0

    .line 580
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 581
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 582
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 584
    :cond_0
    if-eqz p5, :cond_1

    .line 585
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 586
    :cond_1
    if-eqz p6, :cond_2

    .line 587
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 588
    :cond_2
    if-eqz p7, :cond_3

    .line 589
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 590
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 595
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 596
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 598
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 599
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 600
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 601
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 602
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 603
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 606
    :cond_7
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 607
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 608
    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 609
    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 610
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 611
    return-void

    .line 592
    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "highlightColor"    # I
    .param p8, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 628
    if-eqz p4, :cond_0

    .line 629
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 630
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 631
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 633
    :cond_0
    if-eqz p5, :cond_1

    .line 634
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 635
    :cond_1
    if-eqz p6, :cond_2

    .line 636
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 637
    :cond_2
    if-eqz p7, :cond_3

    .line 638
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    .line 639
    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v5

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 644
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    .line 645
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 646
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    .line 647
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 648
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_6

    .line 649
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 650
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    .line 651
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 652
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 655
    :cond_7
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 656
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 657
    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 658
    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 660
    return-void

    .line 641
    :cond_8
    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 671
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 92
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 673
    if-eqz p4, :cond_0

    .line 674
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 675
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 676
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 682
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 683
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF[B)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "image"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 290
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 92
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 292
    if-eqz p4, :cond_0

    .line 293
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 295
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 302
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;IIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "normalId"    # I
    .param p3, "pressedId"    # I
    .param p4, "dimmedId"    # I
    .param p5, "npHighlightId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 695
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 92
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 697
    if-eqz p2, :cond_0

    .line 698
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 699
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 700
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 702
    :cond_0
    if-eqz p3, :cond_1

    .line 703
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 704
    :cond_1
    if-eqz p4, :cond_2

    .line 705
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 706
    :cond_2
    if-eqz p5, :cond_3

    .line 707
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 708
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 713
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 715
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 716
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 717
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 718
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 719
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 720
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 721
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 724
    :cond_7
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 725
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 726
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 727
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 728
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 729
    return-void

    .line 710
    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 738
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 92
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 740
    if-eqz p2, :cond_0

    .line 741
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 742
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 743
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 748
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 749
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;[B)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "image"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 267
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 92
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 94
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 109
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 119
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 169
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 173
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 184
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 198
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 212
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 238
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 239
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 241
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 242
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 243
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 245
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 246
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    .line 269
    if-eqz p2, :cond_0

    .line 270
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 271
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 272
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 279
    return-void
.end method

.method private initButton()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2185
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 2186
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    .line 2188
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSizeGiven:Z

    if-eqz v0, :cond_0

    .line 2189
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    .line 2193
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSizeGiven:Z

    if-eqz v0, :cond_1

    .line 2194
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    .line 2196
    :cond_1
    return-void
.end method

.method private initRippleEffect()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 2202
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getRippleEffectColor()I

    move-result v6

    .line 2203
    .local v6, "color":I
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    if-eqz v0, :cond_0

    .line 2204
    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 2206
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    if-nez v0, :cond_1

    .line 2207
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 2209
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    div-float/2addr v0, v9

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 2213
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_2

    .line 2214
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    .line 2216
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_3

    .line 2217
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    .line 2219
    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    div-float/2addr v2, v9

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    div-float/2addr v3, v9

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v4, v9

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    .line 2221
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLCircle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2222
    new-instance v0, Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    div-float/2addr v2, v9

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    div-float/2addr v3, v9

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v4, v9

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    .line 2224
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLCircle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2228
    return-void
.end method

.method private initShapeBackground()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2234
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 2235
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    sget v6, Lcom/samsung/android/glview/GLButton;->BUTTON_BACKGROUND_COLOR:I

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 2236
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    sget v1, Lcom/samsung/android/glview/GLButton;->BUTTON_BACKGROUND_FILL_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setFillColor(I)V

    .line 2237
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2239
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 2240
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2241
    return-void
.end method

.method private isPossibleDrawRippleEffect()Z
    .locals 1

    .prologue
    .line 2252
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSetText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2256
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    .line 2257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 2258
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 2259
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    .line 2261
    :cond_0
    return-void
.end method

.method private startHighlightFadeOutAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2267
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v1, :cond_0

    .line 2277
    :goto_0
    return-void

    .line 2270
    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 2271
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2272
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2273
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2274
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2275
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLTexture;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2276
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->startAnimation()V

    goto :goto_0
.end method

.method private startRippleEffectFadeOutAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2283
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-nez v1, :cond_0

    .line 2296
    :goto_0
    return-void

    .line 2286
    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 2287
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2288
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2289
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2290
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2291
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2293
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    .line 2294
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLCircle;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2295
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    goto :goto_0
.end method


# virtual methods
.method protected checkShapeBackgroundDrawingCondition()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1915
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isShowButtonBackgroundEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1925
    :cond_0
    :goto_0
    return v1

    .line 1919
    :cond_1
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 1922
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v2, :cond_2

    move v1, v0

    .line 1923
    goto :goto_0

    .line 1925
    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 769
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 773
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    .line 777
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    .line 780
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 781
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    .line 784
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_7

    .line 785
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 788
    :cond_7
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    monitor-exit p0

    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRippleEffect(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 797
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 798
    return-void
.end method

.method public getLoaded()Z
    .locals 2

    .prologue
    .line 805
    const/4 v0, 0x1

    .line 806
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    const/4 v0, 0x0

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    const/4 v0, 0x0

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_2

    .line 813
    const/4 v0, 0x0

    .line 815
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_3

    .line 816
    const/4 v0, 0x0

    .line 818
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->load()Z

    move-result v1

    if-nez v1, :cond_4

    .line 819
    const/4 v0, 0x0

    .line 821
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    if-nez v1, :cond_5

    .line 822
    const/4 v0, 0x0

    .line 824
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    if-nez v1, :cond_6

    .line 825
    const/4 v0, 0x0

    .line 827
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->load()Z

    move-result v1

    if-nez v1, :cond_7

    .line 828
    const/4 v0, 0x0

    .line 830
    :cond_7
    return v0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v0, "ttsString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 843
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 850
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSubTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 853
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 856
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 844
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 866
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 868
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_1

    .line 869
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 870
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 872
    :cond_0
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 873
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 876
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_3

    .line 877
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 878
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 880
    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 881
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 884
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_5

    .line 885
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 886
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 888
    :cond_4
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 889
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 892
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_7

    .line 893
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    .line 894
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v1

    .line 896
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    .line 897
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v0

    .line 900
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 901
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 902
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    .line 904
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 905
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    .line 907
    :cond_9
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    return v0
.end method

.method public isRippleEffectEnabled()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    return v0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 943
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 948
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public mText()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 959
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 964
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 965
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 972
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 975
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 978
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->onAlphaUpdated()V

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    .line 981
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onAlphaUpdated()V

    .line 983
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 984
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onAlphaUpdated()V

    .line 986
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_7

    .line 987
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onAlphaUpdated()V

    .line 989
    :cond_7
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    .line 1939
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1940
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 1941
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 1989
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v0, :cond_2

    .line 1990
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1991
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1994
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->draw([FLandroid/graphics/Rect;)V

    .line 1996
    :cond_2
    return-void

    .line 1936
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1942
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_1

    .line 1945
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    if-eqz v0, :cond_b

    .line 1946
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_7

    .line 1947
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 1949
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1950
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isParentClippingForced()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_8

    .line 1951
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clearClip()V

    .line 1953
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLCircle;->draw([FLandroid/graphics/Rect;)V

    .line 1957
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isParentClippingForced()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_9

    .line 1958
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clip()V

    .line 1961
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    .line 1962
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1963
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1964
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1966
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_10

    .line 1967
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v0, :cond_d

    .line 1968
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 1970
    :cond_d
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1971
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isParentClippingForced()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_e

    .line 1972
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clearClip()V

    .line 1974
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLCircle;->draw([FLandroid/graphics/Rect;)V

    .line 1978
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isParentClippingForced()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_f

    .line 1979
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clip()V

    .line 1982
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1983
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1985
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1986
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1993
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto/16 :goto_2
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 993
    const/4 v0, 0x0

    .line 994
    .local v0, "result":Z
    sparse-switch p1, :sswitch_data_0

    .line 1016
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v2, :cond_1

    .line 1017
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v2, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1019
    :cond_1
    if-eqz v0, :cond_3

    .line 1022
    :cond_2
    :goto_1
    return v1

    .line 999
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    goto :goto_0

    .line 1005
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1008
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1011
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1012
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1013
    const/4 v0, 0x1

    goto :goto_0

    .line 1022
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 994
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1028
    const/4 v1, 0x0

    .line 1029
    .local v1, "result":Z
    sparse-switch p1, :sswitch_data_0

    .line 1055
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v2, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v2, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1058
    :cond_0
    if-eqz v1, :cond_6

    .line 1059
    const/4 v2, 0x1

    .line 1061
    :goto_1
    return v2

    .line 1032
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1033
    const/4 v2, 0x1

    goto :goto_1

    .line 1035
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1036
    const/4 v2, 0x1

    goto :goto_1

    .line 1038
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1039
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 1040
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1041
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1045
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_4

    .line 1046
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    if-nez v2, :cond_3

    .line 1047
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1048
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1050
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    .line 1052
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1043
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    goto :goto_2

    .line 1061
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 1029
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 2003
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 2004
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 2007
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 2008
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 2010
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 2011
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 2013
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 2014
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 2016
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 2017
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->onLayoutUpdated()V

    .line 2019
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    .line 2020
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onLayoutUpdated()V

    .line 2022
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 2023
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onLayoutUpdated()V

    .line 2025
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_7

    .line 2026
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    .line 2028
    :cond_7
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 2035
    const/4 v0, 0x1

    .line 2037
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 2040
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_1

    .line 2041
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 2043
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_2

    .line 2044
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 2046
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_3

    .line 2047
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 2049
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_4

    .line 2050
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 2052
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_5

    .line 2053
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 2055
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_6

    .line 2056
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 2058
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_7

    .line 2059
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 2061
    :cond_7
    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 1076
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->reset()V

    .line 1082
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    .line 1083
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    .line 1085
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->reset()V

    .line 1088
    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v10, 0xc8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1099
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1214
    :goto_0
    return v1

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1103
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_1

    .line 1104
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1105
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1106
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1108
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/glview/GLButton;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1110
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1113
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 1114
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    :cond_3
    move v1, v2

    .line 1116
    goto :goto_0

    .line 1118
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 1122
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1123
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1125
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v1, :cond_5

    .line 1126
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1129
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v1, :cond_6

    .line 1130
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1132
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1133
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    move v1, v2

    .line 1135
    goto :goto_0

    .line 1136
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_d

    .line 1140
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mDragging:Z

    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/glview/GLButton;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1141
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1142
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_9

    .line 1143
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1189
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_18

    .line 1190
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_c

    .line 1193
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_a

    .line 1194
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1196
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_17

    .line 1197
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v3, :cond_16

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_16

    .line 1198
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startHighlightFadeOutAnimation()V

    .line 1202
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1203
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startRippleEffectFadeOutAnimation()V

    .line 1209
    :cond_b
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1210
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    :cond_c
    move v1, v2

    .line 1212
    goto/16 :goto_0

    .line 1145
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_9

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_9

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_e

    .line 1147
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-nez v3, :cond_e

    .line 1148
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1149
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v6, v10, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1152
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_15

    .line 1153
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1154
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLButton;->mResetButtonPressed:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1159
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_f

    .line 1160
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1161
    :cond_f
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_10

    .line 1162
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startHighlightFadeOutAnimation()V

    .line 1164
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1165
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startRippleEffectFadeOutAnimation()V

    .line 1167
    :cond_11
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v3, :cond_14

    .line 1168
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    if-nez v3, :cond_12

    .line 1169
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1170
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1172
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_13

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1173
    new-instance v1, Lcom/samsung/android/glview/GLButton$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$9;-><init>(Lcom/samsung/android/glview/GLButton;)V

    .line 1183
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton$9;->start()V

    .line 1185
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v1, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    :cond_14
    move v1, v2

    .line 1187
    goto/16 :goto_0

    .line 1156
    :cond_15
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    goto :goto_3

    .line 1200
    :cond_16
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    goto/16 :goto_1

    .line 1206
    :cond_17
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1207
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    goto/16 :goto_2

    .line 1214
    :cond_18
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 2066
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 2067
    if-eqz p1, :cond_0

    .line 2068
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 2069
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 2070
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v0, :cond_0

    .line 2071
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 2072
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    .line 2073
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 2079
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 2081
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 2082
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 2084
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 2085
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 2087
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 2088
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 2090
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 2091
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->onVisibilityChanged(I)V

    .line 2093
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 2094
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->onVisibilityChanged(I)V

    .line 2096
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_7

    .line 2097
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->onVisibilityChanged(I)V

    .line 2099
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_8

    .line 2100
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->onVisibilityChanged(I)V

    .line 2102
    :cond_8
    return-void
.end method

.method public resetTint()V
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 1222
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->resetTint()V

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->resetTint()V

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->resetTint()V

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->resetTint()V

    .line 1234
    :cond_3
    return-void
.end method

.method public setButtonHighlightChangeListener(Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 1238
    return-void
.end method

.method public setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 1242
    return-void
.end method

.method protected setButtonPressed(Z)V
    .locals 2
    .param p1, "isPressed"    # Z

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2106
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 2107
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->updateTintColor()V

    .line 2108
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLButton$ButtonPressListener;->onButtonPressed(Lcom/samsung/android/glview/GLView;Z)V

    .line 2111
    :cond_0
    return-void
.end method

.method public declared-synchronized setButtonResources(IIII)V
    .locals 8
    .param p1, "normalId"    # I
    .param p2, "pressedId"    # I
    .param p3, "dimmedId"    # I
    .param p4, "npHighlightId"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1290
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1291
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 1292
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1294
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSizeGiven:Z

    if-eqz v0, :cond_c

    .line 1295
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1300
    :cond_1
    :goto_0
    if-eqz p2, :cond_e

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    if-eq v0, p2, :cond_e

    .line 1301
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 1302
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1303
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1304
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSizeGiven:Z

    if-eqz v0, :cond_d

    .line 1305
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1316
    :cond_3
    :goto_1
    if-eqz p3, :cond_10

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    if-eq v0, p3, :cond_10

    .line 1317
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 1319
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1320
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSizeGiven:Z

    if-eqz v0, :cond_f

    .line 1321
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1332
    :cond_5
    :goto_2
    if-eqz p4, :cond_11

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    if-eq v0, p4, :cond_11

    .line 1333
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 1335
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1336
    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 1345
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 1346
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1347
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1349
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    .line 1350
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1351
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1353
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    .line 1354
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1355
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1357
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    .line 1358
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    :cond_b
    monitor-exit p0

    return-void

    .line 1297
    :cond_c
    :try_start_1
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1307
    :cond_d
    :try_start_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_1

    .line 1309
    :cond_e
    if-nez p2, :cond_3

    .line 1310
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 1311
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_1

    .line 1323
    :cond_f
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_2

    .line 1325
    :cond_10
    if-nez p3, :cond_5

    .line 1326
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 1327
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 1328
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_2

    .line 1337
    :cond_11
    if-nez p4, :cond_7

    .line 1338
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 1339
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 1340
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public declared-synchronized setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V
    .locals 9
    .param p1, "normalId"    # I
    .param p2, "pressedId"    # I
    .param p3, "dimmedId"    # I
    .param p4, "highlightColor"    # I
    .param p5, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1371
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1372
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 1373
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1375
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1377
    :cond_1
    if-eqz p2, :cond_c

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    if-eq v0, p2, :cond_c

    .line 1378
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1380
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1381
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1389
    :cond_3
    :goto_0
    if-eqz p3, :cond_d

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    if-eq v0, p3, :cond_d

    .line 1390
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 1391
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 1392
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1393
    :cond_4
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1401
    :cond_5
    :goto_1
    if-eqz p4, :cond_e

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    if-eq v0, p4, :cond_e

    .line 1402
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 1403
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 1404
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1405
    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 1414
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 1415
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1416
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1418
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    .line 1419
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1422
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    .line 1423
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1424
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1426
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    :cond_b
    monitor-exit p0

    return-void

    .line 1382
    :cond_c
    if-nez p2, :cond_3

    .line 1383
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 1384
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1385
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1394
    :cond_d
    if-nez p3, :cond_5

    .line 1395
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 1396
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 1397
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_1

    .line 1406
    :cond_e
    if-nez p4, :cond_7

    .line 1407
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 1408
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 1409
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setButtonResources(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "normalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pressedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1260
    :cond_1
    if-eqz p1, :cond_2

    .line 1261
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1263
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1264
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1265
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1266
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 1270
    :cond_2
    if-eqz p2, :cond_3

    .line 1271
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1273
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1274
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1275
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1276
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    :cond_3
    monitor-exit p0

    return-void

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setButtonSelectListener(Lcom/samsung/android/glview/GLButton$ButtonSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    .line 1432
    return-void
.end method

.method public setButtonShapeVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1443
    if-eqz p1, :cond_0

    .line 1444
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    .line 1448
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    .line 1449
    return-void

    .line 1446
    :cond_0
    const/16 v0, 0x20

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackgroundVisibility:I

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1456
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setDim(Z)V

    .line 1457
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1458
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1459
    return-void
.end method

.method protected setDrawHighlight(Z)V
    .locals 2
    .param p1, "draw"    # Z

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v0, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2119
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eq v0, p1, :cond_0

    .line 2122
    if-eqz p1, :cond_2

    .line 2123
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 2124
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->cancelAnimation()V

    .line 2125
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setAlpha(F)V

    .line 2128
    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 2129
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;->onButtonHighlightChanged(Lcom/samsung/android/glview/GLView;Z)V

    goto :goto_0
.end method

.method protected setDrawRippleEffect(Z)V
    .locals 3
    .param p1, "draw"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2140
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2141
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-ne v0, p1, :cond_0

    .line 2155
    :goto_0
    return-void

    .line 2144
    :cond_0
    if-eqz p1, :cond_2

    .line 2145
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_1

    .line 2146
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->cancelAnimation()V

    .line 2147
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    .line 2149
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_2

    .line 2150
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->cancelAnimation()V

    .line 2151
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    .line 2154
    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 1463
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    .line 1464
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 1465
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    .line 1466
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1470
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 1472
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 1475
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1476
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 1478
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1479
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setHeight(F)V

    .line 1481
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    .line 1482
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setHeight(F)V

    .line 1485
    :cond_5
    return-void
.end method

.method public setHighlightVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 1494
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 1497
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 1498
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 1502
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 1504
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1506
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 1509
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1510
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 1512
    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 914
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 915
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 916
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 917
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 918
    return-void
.end method

.method public setPressedTint(I)V
    .locals 0
    .param p1, "tintColor"    # I

    .prologue
    .line 1520
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    .line 1521
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->updateTintColor()V

    .line 1522
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1532
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 1533
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 1535
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-nez v2, :cond_0

    .line 1536
    const/4 v2, 0x0

    .line 1553
    :goto_0
    return v2

    .line 1538
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    .line 1539
    .local v1, "buttonImageWidth":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    .line 1541
    .local v0, "buttonImageHeight":F
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 1542
    invoke-static {v2, v1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-static {v2, v0}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1544
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1546
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_2

    .line 1547
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1549
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_3

    .line 1550
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1553
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setRippleDiameter(F)V
    .locals 1
    .param p1, "diameter"    # F

    .prologue
    .line 1562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 1563
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 1564
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    .line 1565
    return-void
.end method

.method public setRippleEffectColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1573
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 1574
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->setColor(I)V

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->setColor(I)V

    .line 1580
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 934
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 935
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 936
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonSelectListener:Lcom/samsung/android/glview/GLButton$ButtonSelectListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLButton$ButtonSelectListener;->onButtonSelected(Lcom/samsung/android/glview/GLView;Z)V

    .line 939
    :cond_0
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 1
    .param p1, "parameter"    # F

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 1594
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1595
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 1597
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1598
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 1600
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    .line 1601
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setShaderParameter(F)V

    .line 1603
    :cond_4
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1614
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 1616
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1617
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 1619
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 1622
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    .line 1623
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setShaderProgram(I)V

    .line 1625
    :cond_4
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1
    .param p1, "step"    # F

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 1639
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1640
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 1642
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1643
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 1645
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    .line 1646
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLRectangle;->setShaderStep(F)V

    .line 1648
    :cond_4
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1652
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 1653
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 1654
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 1656
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_6

    .line 1657
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1664
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1666
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1667
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1669
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1670
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1672
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    .line 1673
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1699
    :cond_5
    :goto_0
    return-void

    .line 1678
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1679
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 1681
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 1682
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 1684
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    .line 1685
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1687
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    .line 1688
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1690
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    .line 1691
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1693
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_c

    .line 1694
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1696
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    .line 1697
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    goto/16 :goto_0
.end method

.method public setStroke(ZFI)V
    .locals 1
    .param p1, "visibility"    # Z
    .param p2, "width"    # F
    .param p3, "color"    # I

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1703
    return-void
.end method

.method public setText(Lcom/samsung/android/glview/GLText;)V
    .locals 2
    .param p1, "text"    # Lcom/samsung/android/glview/GLText;

    .prologue
    .line 1711
    if-nez p1, :cond_0

    .line 1712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 1715
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1717
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLText;->getTextColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 1718
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 1719
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1720
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1721
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 1722
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    .line 1723
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 1731
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_0

    .line 1732
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1733
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1734
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1738
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 1739
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    .line 1740
    return-void

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;FII)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "normalColor"    # I
    .param p4, "pressedColor"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    .line 1764
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1767
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1768
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9, v9}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1769
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1770
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 1771
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 1772
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 1773
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    .line 1774
    return-void
.end method

.method public setText(Ljava/lang/String;FIIZZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "normalColor"    # I
    .param p4, "pressedColor"    # I
    .param p5, "shadow"    # Z
    .param p6, "bold"    # Z

    .prologue
    .line 1777
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    .line 1778
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1780
    :cond_0
    new-instance v1, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1781
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1782
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setBold(Z)V

    .line 1783
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 1784
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v1, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1785
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 1786
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 1787
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    .line 1788
    return-void
.end method

.method public setText(Ljava/lang/String;FIZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I
    .param p4, "shadow"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 1751
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1754
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1755
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1756
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1757
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 1758
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 1759
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 1760
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->onSetText(Ljava/lang/String;)V

    .line 1761
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1800
    :cond_0
    return-void
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Typeface;

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1811
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 1820
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_0

    .line 1821
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    sub-float v1, v2, p1

    .line 1822
    .local v1, "width":F
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    sub-float v0, v2, p2

    .line 1824
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    .line 1825
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 1831
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_0
    :goto_0
    return-void

    .line 1827
    .restart local v0    # "height":F
    .restart local v1    # "width":F
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FFZ)V

    .line 1828
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 1839
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 1840
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 1841
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 1842
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initShapeBackground()V

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1845
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 1847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1854
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 1855
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    .line 1861
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1862
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    .line 1864
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1865
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    .line 1867
    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1871
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1872
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1873
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 1874
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "update"    # Z

    .prologue
    .line 1878
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1879
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1880
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 1881
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 1885
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    .line 1886
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 1887
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    .line 1888
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1892
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 1894
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1895
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 1897
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1898
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 1900
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1901
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setWidth(F)V

    .line 1903
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_5

    .line 1904
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setWidth(F)V

    .line 1907
    :cond_5
    return-void
.end method

.method protected updateTintColor()V
    .locals 2

    .prologue
    const/16 v1, 0x3e9

    .line 2161
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    if-eqz v0, :cond_3

    .line 2162
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 2163
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    .line 2182
    :cond_1
    :goto_0
    return-void

    .line 2164
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 2165
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTintColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    goto :goto_0

    .line 2168
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getTint()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2169
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 2170
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getTint()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    goto :goto_0

    .line 2171
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getTint()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    goto :goto_0

    .line 2175
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 2176
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    goto :goto_0

    .line 2177
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 2178
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    goto :goto_0
.end method
