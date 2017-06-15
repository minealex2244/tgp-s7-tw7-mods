.class public Lcom/samsung/android/glview/GLContext;
.super Ljava/lang/Object;
.source "GLContext.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/samsung/android/hardware/context/SemContextListener;
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;,
        Lcom/samsung/android/glview/GLContext$GLInitializeListener;
    }
.end annotation


# static fields
.field public static final FOCUSED:I = 0x1

.field private static final FOCUS_INDICATOR_DEFAULT_COLOR:I

.field private static final FOCUS_INDICATOR_DEFAULT_THICKNESS:I = 0x1

.field private static final FPS_CALCULATION_INTERVAL_THRESHOLD:I = 0x64

.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static final HOVER_ENTER:I = 0x0

.field public static final HOVER_EXIT:I = 0x1

.field private static final HOVER_INDICATOR_DEFAULT_COLOR:I

.field private static final HOVER_INDICATOR_DEFAULT_THICKNESS:I = 0x2

.field public static final NOT_FOCUSED:I = 0x0

.field public static final ORIENTATION_CHANGE_MARGIN_IN_DEGREE:I = 0xa

.field private static final SENSORHUB_SERVICE_NAME:Ljava/lang/String; = "scontext"

.field public static final SHOW_BUTTON_BACKGROUND_SETTING_KEY:Ljava/lang/String; = "show_button_background"

.field private static final TAG:Ljava/lang/String; = "GLContext"

.field protected static final TEXTURE_SHARING:Z = true

.field protected static mApplicationContext:Landroid/content/Context;

.field private static final mFrameLock:Ljava/lang/Object;

.field private static mGLSurfaceOrientationFixed:Z

.field private static final mInitLock:Ljava/lang/Object;

.field private static mLastOrientation:I

.field private static mNavigatorHeight:I

.field private static mOrientationCompensationValue:I

.field private static final mOrientationUpdateLock:Ljava/lang/Object;

.field private static mResources:Landroid/content/res/Resources;

.field private static mScreenHeight:I

.field private static mScreenWidth:I


# instance fields
.field private mAccNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mAccViewFocusedReceiver:Landroid/content/BroadcastReceiver;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAccumulatedTime:J

.field private mAlignToPixel:Z

.field private mAutoOrientationStatus:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

.field private mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

.field private mCursorColorObserver:Landroid/database/ContentObserver;

.field private final mDeleteTexturesLock:Ljava/lang/Object;

.field private mDensity:F

.field private mDirty:Z

.field private mDisplaySizeObserver:Landroid/database/ContentObserver;

.field private mEstimatedFPS:I

.field private mFocusIndicatorColor:I

.field private mFocusIndicatorThickness:I

.field private mFocusIndicatorVisibilityChanged:Z

.field private mFrameCountForFPS:J

.field private mFrameHandler:Landroid/os/Handler;

.field private mFrameHandlerThread:Landroid/os/HandlerThread;

.field private mFrameNum:J

.field private mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

.field private mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

.field private mHeight:I

.field private mHoverBaseView:Landroid/view/View;

.field private mHoverIndicatorColor:I

.field private mHoverIndicatorThickness:I

.field private mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

.field private mIdentityMatrix:[F

.field private mIsAccessibilityNodeEnabled:Z

.field private mIsAccessibilityServiceEnabled:Z

.field private mIsFocusIndicatorVisible:Z

.field private mIsFocusNavigationEnabled:Z

.field private mIsSemContextListenerAvailable:Z

.field private mIsTouchExplorationEnabled:Z

.field private mLastHoverView:Lcom/samsung/android/glview/GLView;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mLastTouchView:Lcom/samsung/android/glview/GLView;

.field private mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mMainHandlerThread:Landroid/os/HandlerThread;

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserversLock:Ljava/lang/Object;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPaused:Z

.field private mPrevFrameTimeStamp:J

.field private mProjMatrix:[F

.field private mRenderRequested:Z

.field private mRippleEffectColor:I

.field private mRippleEffectEnabled:Z

.field private mRootView:Lcom/samsung/android/glview/GLViewGroup;

.field private mScrollBarAutoHide:Z

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSettingInteractionControlObserver:Landroid/database/ContentObserver;

.field private mShowButtonBackgroundEnabled:Z

.field private mTapDir:I

.field private mTapDirState:I

.field private mTexturesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xe6

    const/4 v2, 0x0

    .line 117
    const/16 v0, 0xff

    invoke-static {v3, v2, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    .line 118
    const/16 v0, 0x4c

    const/16 v1, 0xe8

    invoke-static {v3, v2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLContext;->HOVER_INDICATOR_DEFAULT_COLOR:I

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mInitLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mOrientationUpdateLock:Ljava/lang/Object;

    .line 135
    sput v2, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    .line 136
    sput v2, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    .line 137
    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    .line 138
    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    .line 139
    sput v2, Lcom/samsung/android/glview/GLContext;->mNavigatorHeight:I

    .line 140
    sput-boolean v2, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/glview/GLContext$GLInitializeListener;Landroid/opengl/GLSurfaceView;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/glview/GLContext$GLInitializeListener;
    .param p3, "surfaceView"    # Landroid/opengl/GLSurfaceView;
    .param p4, "isGLSurfaceOrientationFixed"    # Z

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObserversLock:Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDeleteTexturesLock:Ljava/lang/Object;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    .line 155
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 156
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mAutoOrientationStatus:Z

    .line 157
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 158
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 159
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mAccNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 163
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    .line 164
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    .line 168
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    .line 172
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    .line 176
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    .line 180
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    .line 184
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 192
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    .line 193
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 194
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 195
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 196
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    .line 197
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    .line 198
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    .line 199
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 200
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    .line 202
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 203
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 204
    sget v1, Lcom/samsung/android/glview/GLContext;->HOVER_INDICATOR_DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    .line 205
    sget v1, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorColor:I

    .line 206
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    .line 207
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    .line 208
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    .line 209
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 210
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 211
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 212
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    .line 213
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    .line 214
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    .line 215
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 216
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 217
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    .line 218
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    .line 219
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    .line 220
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 221
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 222
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    .line 230
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 234
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 238
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    .line 247
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 251
    new-instance v1, Lcom/samsung/android/glview/GLContext$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$1;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    .line 281
    new-instance v1, Lcom/samsung/android/glview/GLContext$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$2;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mAccViewFocusedReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    new-instance v1, Lcom/samsung/android/glview/GLContext$3;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$3;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    .line 306
    new-instance v1, Lcom/samsung/android/glview/GLContext$4;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$4;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    .line 315
    new-instance v1, Lcom/samsung/android/glview/GLContext$5;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$5;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    .line 336
    new-instance v1, Lcom/samsung/android/glview/GLContext$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$6;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    .line 352
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 363
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mInitLock:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_0
    sput-object p1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    .line 365
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    .line 366
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    new-instance v1, Lcom/samsung/android/glview/GLTextureStorage;

    invoke-direct {v1}, Lcom/samsung/android/glview/GLTextureStorage;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    .line 369
    iput-object p2, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    .line 370
    iput-object p3, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 372
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    .line 373
    sput-boolean p4, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->setOrientationListener()V

    .line 378
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    .line 381
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 382
    .local v0, "outValue":Landroid/util/TypedValue;
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101042c

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 383
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 385
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    .line 386
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_large_cursor"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    .line 388
    new-instance v1, Lcom/samsung/android/glview/GLContext$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$7;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->startFrameHandlerThread()V

    .line 400
    return-void

    .line 366
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLContext;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/glview/GLContext;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mAccNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/glview/GLContext;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/glview/GLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/glview/GLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/glview/GLContext;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/android/glview/GLContext;Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # Landroid/view/Choreographer;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    return-object p1
.end method

.method private disableOrientationListener()V
    .locals 2

    .prologue
    .line 2007
    const-string v0, "GLContext"

    const-string v1, "disableOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 2013
    :goto_0
    return-void

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method protected static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAudioSoundOfTapDirection()I
    .locals 1

    .prologue
    .line 2016
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    packed-switch v0, :pswitch_data_0

    .line 2026
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2018
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 2020
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 2022
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 2024
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2016
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 403
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDimension(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 407
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    const/16 v0, 0x3a

    .line 533
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 535
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 537
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 552
    :cond_0
    return-object v4

    .line 540
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 541
    .local v4, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .line 542
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 544
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 545
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 547
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    .line 548
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInteger(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 411
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLastOrientation()I
    .locals 1

    .prologue
    .line 420
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    return v0
.end method

.method public static getNavigatorHeightPixels()I
    .locals 1

    .prologue
    .line 435
    sget v0, Lcom/samsung/android/glview/GLContext;->mNavigatorHeight:I

    return v0
.end method

.method public static getOrientationCompensationValue()I
    .locals 1

    .prologue
    .line 439
    sget v0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    return v0
.end method

.method public static getScreenHeightPixels()I
    .locals 1

    .prologue
    .line 452
    sget v0, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    return v0
.end method

.method public static getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 461
    sget v0, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 465
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x1

    .line 2035
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2036
    const-string v1, "GLContext"

    const-string v2, "handleOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 2040
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 2041
    .local v0, "newOrientation":I
    if-ne v0, v4, :cond_2

    .line 2042
    const-string v1, "GLContext"

    const-string v2, "handleOrientationChanged - ignore ORIENTATION_90"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2045
    :cond_2
    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    if-ne v1, v0, :cond_3

    sget-boolean v1, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    if-nez v1, :cond_0

    .line 2046
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_4

    .line 2047
    const-string v1, "GLContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged, newOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 2049
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 2051
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->setLastOrientation(I)V

    goto :goto_0
.end method

.method private handlingKeyEventTap()Z
    .locals 11

    .prologue
    const/16 v9, 0x42

    const/high16 v10, 0x40000000    # 2.0f

    .line 2060
    const/4 v4, 0x0

    .line 2062
    .local v4, "result":Z
    const/4 v5, 0x0

    .line 2064
    .local v5, "tempView":Lcom/samsung/android/glview/GLView;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2065
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2087
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    .line 2088
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 2089
    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 2090
    const/4 v4, 0x1

    .line 2152
    :cond_1
    :goto_1
    return v4

    .line 2067
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getNextFocusForwardId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2069
    if-nez v5, :cond_0

    .line 2070
    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 2072
    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2073
    goto :goto_0

    .line 2075
    :pswitch_1
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x11

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2076
    goto :goto_0

    .line 2078
    :pswitch_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x82

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2079
    goto :goto_0

    .line 2081
    :pswitch_3
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    goto :goto_0

    .line 2092
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v0, v7, v10

    .line 2093
    .local v0, "centerX":F
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v1, v7, v10

    .line 2095
    .local v1, "centerY":F
    const/4 v2, 0x0

    .line 2096
    .local v2, "left":F
    const/4 v6, 0x0

    .line 2097
    .local v6, "top":F
    const v3, 0x3c23d70a    # 0.01f

    .line 2099
    .local v3, "margin":F
    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_1

    .line 2118
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v7, v8, v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2120
    if-eqz v5, :cond_4

    .line 2121
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 2122
    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 2123
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2101
    :pswitch_4
    const/4 v2, 0x0

    .line 2102
    add-float v6, v1, v3

    .line 2103
    goto :goto_2

    .line 2105
    :pswitch_5
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    .line 2106
    sub-float v6, v1, v3

    .line 2107
    goto :goto_2

    .line 2109
    :pswitch_6
    sub-float v2, v0, v3

    .line 2110
    const/4 v6, 0x0

    .line 2111
    goto :goto_2

    .line 2113
    :pswitch_7
    add-float v2, v0, v3

    .line 2114
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    goto :goto_2

    .line 2125
    :cond_4
    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_2

    .line 2143
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v7, v8, v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2144
    if-eqz v5, :cond_1

    .line 2145
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 2146
    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 2147
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2127
    :pswitch_8
    const/4 v2, 0x0

    .line 2128
    const/4 v6, 0x0

    .line 2129
    goto :goto_3

    .line 2131
    :pswitch_9
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    .line 2132
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    .line 2133
    goto :goto_3

    .line 2135
    :pswitch_a
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    .line 2136
    const/4 v6, 0x0

    .line 2137
    goto :goto_3

    .line 2139
    :pswitch_b
    const/4 v2, 0x0

    .line 2140
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    goto :goto_3

    .line 2070
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 2099
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 2125
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public static hasHardwareKeyPad()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 474
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 479
    .local v0, "config":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 478
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 479
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isGLSurfaceOrientationFixed()Z
    .locals 1

    .prologue
    .line 483
    sget-boolean v0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    return v0
.end method

.method public static isScreenOrientationLandscape()Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public static isTalkBackEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 501
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 515
    .local v0, "accesibilityService":Ljava/lang/String;
    .local v1, "talkbackEnabled":Z
    :goto_0
    return v2

    .line 505
    .end local v0    # "accesibilityService":Ljava/lang/String;
    .end local v1    # "talkbackEnabled":Z
    :cond_0
    const/4 v1, 0x0

    .line 506
    .restart local v1    # "talkbackEnabled":Z
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0    # "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 511
    const-string v3, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 512
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 515
    goto :goto_0

    :cond_3
    move v1, v2

    .line 512
    goto :goto_1
.end method

.method public static setFixedOrientation(Z)V
    .locals 0
    .param p0, "isFixed"    # Z

    .prologue
    .line 487
    sput-boolean p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    .line 488
    return-void
.end method

.method private setLastOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 424
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mOrientationUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    sput p1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setOrientationCompensationValue(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 443
    sput p0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    .line 444
    return-void
.end method

.method private setOrientationListener()V
    .locals 3

    .prologue
    .line 2159
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2160
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2162
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 2163
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    .line 2164
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    .line 2168
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v1, :cond_1

    .line 2169
    const-string v1, "GLContext"

    const-string v2, "using SemContextListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :goto_0
    return-void

    .line 2171
    :cond_1
    const-string v1, "GLContext"

    const-string v2, "using OrientationEventListener of android"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    new-instance v1, Lcom/samsung/android/glview/GLContext$8;

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$8;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method private startFrameHandlerThread()V
    .locals 2

    .prologue
    .line 2187
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GLContextFrameHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    .line 2188
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2189
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    .line 2190
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/glview/GLContext$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$9;-><init>(Lcom/samsung/android/glview/GLContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2196
    return-void
.end method

.method private updateScreenSize()V
    .locals 8

    .prologue
    .line 2199
    sget-boolean v4, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    if-eqz v4, :cond_2

    .line 2200
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2201
    .local v3, "tempWidth":I
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2202
    .local v2, "tempHeight":I
    if-le v3, v2, :cond_1

    .line 2203
    sput v3, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    .line 2204
    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    .line 2213
    .end local v2    # "tempHeight":I
    .end local v3    # "tempWidth":I
    :goto_0
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "config_showNavigationBar"

    const-string v6, "bool"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2214
    .local v0, "id":I
    if-lez v0, :cond_0

    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2215
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "navigation_bar_height"

    const-string v6, "dimen"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2216
    .local v1, "resourceId":I
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/samsung/android/glview/GLContext;->mNavigatorHeight:I

    .line 2219
    .end local v1    # "resourceId":I
    :cond_0
    const-string v4, "GLContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateScreenSize : w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", navi h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/glview/GLContext;->mNavigatorHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    return-void

    .line 2206
    .end local v0    # "id":I
    .restart local v2    # "tempHeight":I
    .restart local v3    # "tempWidth":I
    :cond_1
    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    .line 2207
    sput v3, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    goto :goto_0

    .line 2210
    .end local v2    # "tempHeight":I
    .end local v3    # "tempWidth":I
    :cond_2
    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    sput v4, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    .line 2211
    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    sput v4, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    goto :goto_0
.end method

.method private updateTouchExplorationEnabled()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2223
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 2224
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    .line 2226
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2224
    goto :goto_0
.end method


# virtual methods
.method public addTextureToDelete(Lcom/samsung/android/glview/GLTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/samsung/android/glview/GLTexture;

    .prologue
    .line 556
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDeleteTexturesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 567
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 569
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    .line 571
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDeleteTexturesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 573
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTextureStorage;->clear()V

    .line 575
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    .line 576
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 578
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    .line 579
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 581
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    .line 583
    :cond_1
    return-void

    .line 573
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 586
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 588
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 592
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 594
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 595
    return-void
.end method

.method public disableAccessibilityService(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    iget-boolean v12, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    if-nez v12, :cond_0

    .line 674
    :goto_0
    return-void

    .line 605
    :cond_0
    const-string v12, "GLContext"

    const-string v13, "disableAccessibilityService"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/16 v0, 0x3a

    .line 607
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v10, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v12, 0x3a

    invoke-direct {v10, v12}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 608
    .local v10, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/glview/GLContext;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 609
    .local v5, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    if-ne v5, v12, :cond_1

    .line 610
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 613
    .restart local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    const-string v12, "com.sec.android.app.camera/com.samsung.android.glview.AccessibilityGestureHandler"

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 614
    .local v11, "toggledService":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 616
    .local v1, "accessibilityEnabled":Z
    invoke-interface {v5, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 619
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 620
    .local v9, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 621
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 623
    const/4 v1, 0x1

    .line 629
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v6, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 635
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 639
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 640
    .local v7, "enabledServicesBuilderLength":I
    if-lez v7, :cond_5

    .line 641
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 644
    :cond_5
    const/4 v8, 0x0

    .line 645
    .local v8, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enabled_accessibility_services"

    invoke-static {v12, v13, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 648
    if-eqz v8, :cond_7

    .line 649
    move-object v2, v10

    .line 650
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 652
    :cond_6
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 653
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 656
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_6

    .line 657
    const/4 v1, 0x1

    .line 663
    .end local v2    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_7
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isKNOXMode()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 664
    const/4 v1, 0x0

    .line 668
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_enabled"

    if-eqz v1, :cond_9

    const/4 v12, 0x1

    :goto_2
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    sget-object v12, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 671
    sget-object v12, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/glview/GLContext;->mAccViewFocusedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 673
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    goto/16 :goto_0

    .line 668
    :cond_9
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public disableFocusNavigation()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 678
    return-void
.end method

.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 686
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 689
    monitor-exit v1

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpViewHierarchy()V
    .locals 2

    .prologue
    .line 693
    const-string v0, "GLContext"

    const-string v1, "=======================DUMP_START======================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->dumpViewHierarchy(I)V

    .line 697
    :cond_0
    const-string v0, "GLContext"

    const-string v1, "=======================DUMP_END======================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void
.end method

.method public enableAccessibilityNode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    .line 706
    return-void
.end method

.method public enableAccessibilityService(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 712
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    if-eqz v7, :cond_0

    .line 752
    :goto_0
    return-void

    .line 716
    :cond_0
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    .line 718
    const-string v7, "GLContext"

    const-string v8, "enableAccessibilityService"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/16 v0, 0x3a

    .line 720
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 721
    .local v2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    if-ne v2, v7, :cond_1

    .line 722
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 725
    .restart local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    const-string v7, "com.sec.android.app.camera/com.samsung.android.glview.AccessibilityGestureHandler"

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 727
    .local v6, "toggledService":Landroid/content/ComponentName;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v3, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 732
    .local v1, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 736
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 737
    .local v4, "enabledServicesBuilderLength":I
    if-lez v4, :cond_3

    .line 738
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 741
    :cond_3
    const/4 v5, 0x0

    .line 742
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 744
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 746
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_enabled"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 748
    sget-object v7, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.samsung.android.glview.ACCESSIBILITY_GESTURE_DETECTED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 750
    sget-object v7, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mAccViewFocusedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.samsung.android.glview.ACTION_ACCESSIBILITY_VIEW_FOCUS_GONE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0
.end method

.method public enableFocusNavigation()V
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 756
    return-void
.end method

.method protected enableOrientationListener()V
    .locals 2

    .prologue
    .line 1978
    const-string v0, "GLContext"

    const-string v1, "enableOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 1984
    :goto_0
    return-void

    .line 1982
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public enableRippleEffect(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    .line 765
    return-void
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 2
    .param p1, "rootView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p3, "direction"    # I

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, "resultView":Lcom/samsung/android/glview/GLView;
    if-nez p1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 774
    :goto_0
    return-object v0

    .line 772
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 784
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 787
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "objectTag"    # Ljava/lang/String;

    .prologue
    .line 797
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 810
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewByTag(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 813
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAlignToPixel()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    return v0
.end method

.method public getEstimatedFPS()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    return v0
.end method

.method public getFocusIndicatorColor()I
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorColor:I

    return v0
.end method

.method public getFocusIndicatorThickness()I
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    return v0
.end method

.method public getGLPreviewData()Lcom/samsung/android/glview/GLPreviewData;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    return-object v0
.end method

.method public getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getGLTextureStorage()Lcom/samsung/android/glview/GLTextureStorage;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    return-object v0
.end method

.method public getHoverBaseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverIndicatorColor()I
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    return v0
.end method

.method public getHoverIndicatorThickness()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    return v0
.end method

.method public getLastHoverView()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    return-object v0
.end method

.method public getProjMatrix()[F
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    return-object v0
.end method

.method public getRippleEffectColor()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    return v0
.end method

.method public getRootView()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getScreenAspectRatio()F
    .locals 2

    .prologue
    .line 949
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getScreenGeometry()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getTts()Landroid/speech/tts/TextToSpeech;
    .locals 4

    .prologue
    .line 961
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 962
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 964
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_pitch"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 965
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    .line 966
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 967
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 968
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 965
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public isEnableAccessibilityNode()Z
    .locals 3

    .prologue
    .line 977
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 978
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 979
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 980
    :cond_0
    const/4 v1, 0x0

    .line 982
    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    goto :goto_0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    return v0
.end method

.method public isFocusNavigationEnabled()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    return v0
.end method

.method public isHoveringEnabled()Z
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x0

    return v0
.end method

.method public isRippleEffectEnabled()Z
    .locals 1

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    return v0
.end method

.method public isShowButtonBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method protected notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1996
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mObserversLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1997
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    .line 1998
    .local v0, "observer":Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;->onHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2000
    .end local v0    # "observer":Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2001
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v12, 0x5

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 1027
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    if-nez v5, :cond_0

    .line 1030
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mDeleteTexturesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1031
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLTexture;

    .line 1032
    .local v4, "texture":Lcom/samsung/android/glview/GLTexture;
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLTexture;->clearTexture()V

    goto :goto_0

    .line 1035
    .end local v4    # "texture":Lcom/samsung/android/glview/GLTexture;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1034
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1035
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1036
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v5, :cond_3

    .line 1072
    :cond_2
    :goto_1
    return-void

    .line 1040
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 1042
    const/16 v5, 0x4100

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1051
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    sub-long v2, v0, v6

    .line 1053
    .local v2, "interval":J
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    const-wide/16 v6, 0x64

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    .line 1054
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 1055
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 1056
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 1057
    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    .line 1059
    :cond_4
    iput-wide v0, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    .line 1060
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    cmp-long v5, v6, v12

    if-gez v5, :cond_5

    .line 1061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1062
    const-string v5, "GLContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start drawing frame #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v5, :cond_6

    .line 1066
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->draw([FLandroid/graphics/Rect;)V

    .line 1069
    :cond_6
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    cmp-long v5, v6, v12

    if-gez v5, :cond_2

    .line 1070
    const-string v5, "GLContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End drawing frame #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Elapsed time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x1

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 1078
    :cond_0
    if-eqz p1, :cond_1

    .line 1079
    invoke-virtual {p1, v2}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 1081
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 1082
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1083
    if-nez p1, :cond_4

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 1087
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 1092
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1093
    return-void

    .line 1089
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1097
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return v0

    .line 1100
    :cond_1
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1101
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/glview/GLContext;->onHoverEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1107
    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_5

    .line 1111
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1113
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 1115
    :cond_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 1116
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mAccNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_3

    .line 1117
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mAccNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 1118
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mAccNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 1119
    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mAccNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1121
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1122
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTtsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 1124
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1125
    .local v0, "vibrator":Landroid/os/Vibrator;
    const v1, 0xc369

    const/4 v2, -0x1

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 1127
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 1128
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 1129
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 1131
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_6

    .line 1133
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 1135
    :cond_6
    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 1136
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "orientation"    # I

    .prologue
    const/4 v5, 0x1

    .line 1141
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1142
    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    iget v3, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    invoke-static {p1, p2, v2, v3}, Lcom/samsung/android/glview/GLUtil;->transformEventByGLOrientation(Landroid/view/MotionEvent;III)V

    .line 1145
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_1

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 1147
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 1148
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_3

    .line 1149
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 1150
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 1191
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1194
    :cond_2
    return v5

    .line 1152
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 1159
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 1160
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 1161
    .local v1, "tempView":Lcom/samsung/android/glview/GLView;
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eq v1, v2, :cond_2

    .line 1164
    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 1165
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_5

    .line 1166
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1167
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1168
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 1169
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 1173
    .end local v1    # "tempView":Lcom/samsung/android/glview/GLView;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1175
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 1176
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 1179
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 1180
    .restart local v1    # "tempView":Lcom/samsung/android/glview/GLView;
    if-nez v1, :cond_1

    .line 1181
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1182
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1183
    .local v0, "originEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/glview/GLContext;->notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 1184
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0
.end method

.method public onHoverSwipeEvent(I)V
    .locals 6
    .param p1, "hoverEvent"    # I

    .prologue
    const/16 v5, 0x62

    const/16 v4, 0x41

    const/16 v3, 0x31

    const/16 v2, 0x52

    .line 1199
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 1200
    sparse-switch p1, :sswitch_data_0

    .line 1212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1213
    sparse-switch p1, :sswitch_data_1

    .line 1280
    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1281
    return-void

    .line 1205
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus(I)Z

    goto :goto_0

    .line 1215
    :sswitch_1
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1217
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1220
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1223
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1226
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1231
    :sswitch_2
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1233
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1236
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1239
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1242
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1247
    :sswitch_3
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 1249
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1252
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1255
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1258
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1263
    :sswitch_4
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    .line 1265
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1268
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1271
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1274
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1200
    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x41 -> :sswitch_0
        0x52 -> :sswitch_0
        0x62 -> :sswitch_0
    .end sparse-switch

    .line 1213
    :sswitch_data_1
    .sparse-switch
        0x31 -> :sswitch_1
        0x41 -> :sswitch_3
        0x52 -> :sswitch_4
        0x62 -> :sswitch_2
    .end sparse-switch

    .line 1215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1231
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 1247
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 1263
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onHoverTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1296
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v6, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return v4

    .line 1300
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1302
    .local v0, "action":I
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1303
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1304
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_1
    move v4, v5

    .line 1308
    goto :goto_0

    .line 1305
    :cond_3
    if-ne v0, v5, :cond_2

    .line 1306
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1311
    :cond_4
    if-nez v0, :cond_5

    .line 1312
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1314
    :cond_5
    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    .line 1315
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    .line 1316
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1318
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1319
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1321
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    if-nez v6, :cond_7

    move v3, v5

    .line 1322
    .local v3, "isZooming":Z
    :goto_2
    if-nez v3, :cond_0

    move v4, v5

    .line 1325
    goto :goto_0

    .end local v3    # "isZooming":Z
    :cond_7
    move v3, v4

    .line 1321
    goto :goto_2

    .line 1327
    :cond_8
    if-ne v0, v5, :cond_c

    .line 1328
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-nez v6, :cond_9

    .line 1329
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v4, v5

    .line 1330
    goto/16 :goto_0

    .line 1333
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_b

    .line 1334
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v6, :cond_a

    .line 1335
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v6

    div-float v1, v4, v8

    .line 1336
    .local v1, "currentHoverFocusedViewX":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v6

    div-float v2, v4, v8

    .line 1338
    .local v2, "currentHoverFocusedViewY":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1339
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1342
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1343
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1353
    iput-object v9, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v4, v5

    .line 1354
    goto/16 :goto_0

    .line 1345
    .end local v1    # "currentHoverFocusedViewX":F
    .end local v2    # "currentHoverFocusedViewY":F
    :cond_a
    iput-object v9, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 1349
    :cond_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1355
    :cond_c
    const/4 v6, 0x6

    if-ne v0, v6, :cond_d

    .line 1356
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 1360
    :cond_d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v4, v5

    .line 1361
    goto/16 :goto_0
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1366
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v10, 0x82

    const/16 v9, 0x42

    const/16 v8, 0x21

    const/16 v7, 0x11

    const/4 v4, 0x1

    .line 1369
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1370
    :cond_0
    const/4 v2, 0x0

    .line 1552
    :goto_0
    return v2

    .line 1372
    :cond_1
    const/4 v2, 0x0

    .line 1373
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 1375
    .local v1, "res":Z
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v5, :cond_2

    .line 1376
    sparse-switch p1, :sswitch_data_0

    .line 1394
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v5, :cond_5

    .line 1396
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    if-nez v5, :cond_3

    .line 1397
    sparse-switch p1, :sswitch_data_1

    .line 1412
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/glview/GLView;->keyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1413
    if-nez v2, :cond_4

    .line 1414
    sparse-switch p1, :sswitch_data_2

    .line 1507
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 1508
    sparse-switch p1, :sswitch_data_3

    .line 1526
    :cond_5
    :goto_2
    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    .line 1527
    :cond_6
    sget-object v5, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1528
    .local v0, "audioManager":Landroid/media/AudioManager;
    sparse-switch p1, :sswitch_data_4

    .line 1551
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_7
    :goto_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 1385
    :sswitch_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1386
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1387
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1388
    const/4 v2, 0x0

    goto :goto_0

    .line 1390
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 1406
    :sswitch_1
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1407
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1408
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v2, v4

    .line 1409
    goto :goto_0

    .line 1416
    :sswitch_2
    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1417
    const/4 v1, 0x1

    .line 1418
    goto :goto_1

    .line 1420
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->handlingKeyEventTap()Z

    move-result v1

    .line 1421
    goto :goto_1

    :sswitch_4
    move v2, v4

    .line 1423
    goto :goto_0

    .line 1425
    :sswitch_5
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    if-nez v5, :cond_a

    .line 1426
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1427
    goto :goto_1

    .line 1429
    :cond_a
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 1431
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1432
    goto :goto_1

    .line 1434
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1435
    goto :goto_1

    .line 1437
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1438
    goto :goto_1

    .line 1440
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1445
    :sswitch_6
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-nez v5, :cond_b

    sget-boolean v5, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    if-nez v5, :cond_c

    .line 1446
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1447
    goto/16 :goto_1

    .line 1449
    :cond_c
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    .line 1451
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1452
    goto/16 :goto_1

    .line 1454
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1455
    goto/16 :goto_1

    .line 1457
    :pswitch_6
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1458
    goto/16 :goto_1

    .line 1460
    :pswitch_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1465
    :sswitch_7
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-nez v5, :cond_d

    sget-boolean v5, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    if-nez v5, :cond_e

    .line 1466
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1467
    goto/16 :goto_1

    .line 1469
    :cond_e
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_1

    .line 1471
    :pswitch_8
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1472
    goto/16 :goto_1

    .line 1474
    :pswitch_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1475
    goto/16 :goto_1

    .line 1477
    :pswitch_a
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1478
    goto/16 :goto_1

    .line 1480
    :pswitch_b
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1485
    :sswitch_8
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-nez v5, :cond_f

    sget-boolean v5, Lcom/samsung/android/glview/GLContext;->mGLSurfaceOrientationFixed:Z

    if-nez v5, :cond_10

    .line 1486
    :cond_f
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1487
    goto/16 :goto_1

    .line 1489
    :cond_10
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 1491
    :pswitch_c
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1492
    goto/16 :goto_1

    .line 1494
    :pswitch_d
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1495
    goto/16 :goto_1

    .line 1497
    :pswitch_e
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1498
    goto/16 :goto_1

    .line 1500
    :pswitch_f
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1517
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;

    move-result-object v3

    .line 1518
    .local v3, "tempView":Lcom/samsung/android/glview/GLView;
    if-eqz v3, :cond_5

    .line 1519
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 1520
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    goto/16 :goto_2

    .line 1530
    .end local v3    # "tempView":Lcom/samsung/android/glview/GLView;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_a
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1533
    :sswitch_b
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1536
    :sswitch_c
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1539
    :sswitch_d
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1542
    :sswitch_e
    if-eqz v1, :cond_7

    .line 1543
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->getAudioSoundOfTapDirection()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1547
    :sswitch_f
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1376
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1397
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 1414
    :sswitch_data_2
    .sparse-switch
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_4
        0x3d -> :sswitch_3
        0x3e -> :sswitch_2
    .end sparse-switch

    .line 1508
    :sswitch_data_3
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch

    .line 1528
    :sswitch_data_4
    .sparse-switch
        0x13 -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_a
        0x16 -> :sswitch_b
        0x3d -> :sswitch_e
        0x3e -> :sswitch_f
    .end sparse-switch

    .line 1429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1449
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 1469
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 1489
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1556
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 1617
    :goto_0
    return v0

    .line 1559
    :cond_1
    const/4 v0, 0x0

    .line 1560
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1561
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v3, :cond_2

    .line 1562
    sparse-switch p1, :sswitch_data_0

    .line 1580
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_3

    .line 1581
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    if-nez v1, :cond_3

    .line 1582
    sparse-switch p1, :sswitch_data_1

    .line 1605
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_4

    .line 1606
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLView;->keyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1608
    :cond_4
    if-nez v0, :cond_5

    .line 1609
    packed-switch p1, :pswitch_data_0

    .line 1616
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 1571
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1572
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1573
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    move v0, v1

    .line 1574
    goto :goto_0

    :cond_6
    move v0, v1

    .line 1576
    goto :goto_0

    .line 1591
    :sswitch_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1592
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1593
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v0, v2

    .line 1594
    goto :goto_0

    .line 1599
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    if-eqz v3, :cond_3

    .line 1600
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    move v0, v1

    .line 1601
    goto :goto_0

    .line 1611
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->dumpViewHierarchy()V

    goto :goto_1

    .line 1562
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1582
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 1609
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 1623
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1624
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    .line 1626
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getPreserveEGLContextOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDeleteTexturesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1629
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1630
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    invoke-static {v0}, Lcom/samsung/android/glview/GLProgramStorage;->releaseInstance(Lcom/samsung/android/glview/GLProgramStorage;)V

    .line 1633
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->reset()V

    .line 1637
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLPreviewData;->releaseInstance()V

    .line 1639
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1640
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1641
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 1645
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1646
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1647
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1650
    :cond_2
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    .line 1651
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 1652
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 1654
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1656
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V

    .line 1658
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1659
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1660
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1661
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1662
    return-void

    .line 1630
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1665
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    .line 1666
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "GLContextHandlerThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    .line 1667
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 1668
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    .line 1670
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 1672
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 1674
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v4, v8, :cond_0

    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_enabled"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1676
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->enableOrientationListener()V

    .line 1679
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1681
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_1

    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    .line 1682
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    .line 1683
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(?i).*talkback.*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1684
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    sget-object v5, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1686
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v5, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_pitch"

    const/16 v7, 0x64

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 1687
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v6, 0xb

    .line 1688
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 1689
    invoke-virtual {v5, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 1690
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 1687
    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 1693
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v4, :cond_2

    .line 1694
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 1697
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    .line 1699
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v4, :cond_3

    .line 1700
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    .line 1703
    :cond_3
    const-string v4, "touch_exploration_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1704
    .local v3, "touchExplorationEnabledURI":Landroid/net/Uri;
    if-eqz v3, :cond_4

    .line 1705
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1708
    :cond_4
    const-string v4, "access_control_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1709
    .local v2, "interactioncontrolURI":Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 1710
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v2, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1713
    :cond_5
    const-string v4, "accessibility_cursor_color"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1714
    .local v0, "accessibilityCursorColorURI":Landroid/net/Uri;
    if-eqz v0, :cond_6

    .line 1715
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v0, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1718
    :cond_6
    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_cursor_color"

    sget v7, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 1719
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_cursor_color"

    sget v6, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    .line 1720
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v9}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1723
    :cond_7
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_button_background"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_8

    .line 1724
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    .line 1727
    :cond_8
    const-string v4, "display_size_forced"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1728
    .local v1, "displaySizeForcedURI":Landroid/net/Uri;
    if-eqz v1, :cond_9

    .line 1729
    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v1, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1731
    :cond_9
    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .prologue
    .line 1740
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1777
    :goto_0
    return-void

    .line 1743
    :cond_0
    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 1744
    .local v3, "scontext":Lcom/samsung/android/hardware/context/SemContext;
    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1747
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v1

    .line 1748
    .local v1, "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v0

    .line 1749
    .local v0, "angle":I
    const-string v4, "GLContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSemContextChanged - angle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const/4 v2, 0x0

    .line 1751
    .local v2, "changedOrientation":I
    packed-switch v0, :pswitch_data_1

    .line 1768
    const-string v4, "GLContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This value is not defined : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V

    goto :goto_0

    .line 1753
    :pswitch_1
    const/4 v2, -0x1

    .line 1754
    goto :goto_1

    .line 1756
    :pswitch_2
    const/4 v2, 0x0

    .line 1757
    goto :goto_1

    .line 1759
    :pswitch_3
    const/16 v2, 0x10e

    .line 1760
    goto :goto_1

    .line 1762
    :pswitch_4
    const/16 v2, 0xb4

    .line 1763
    goto :goto_1

    .line 1765
    :pswitch_5
    const/16 v2, 0x5a

    .line 1766
    goto :goto_1

    .line 1744
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    .line 1751
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1786
    const-string v0, "GLContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const-string v0, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLSurfaceChanged**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iput p2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    .line 1791
    iput p3, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    .line 1792
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    .line 1794
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    iget v3, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    neg-int v5, v5

    int-to-float v6, v5

    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v7, v5

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1796
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1797
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1799
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1801
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->refreshClipRect()V

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLContext$GLInitializeListener;->onGLInitialized(Lcom/samsung/android/glview/GLViewGroup;)V

    .line 1807
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1808
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 1817
    const-string v0, "GLContext"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1822
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1826
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1827
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1829
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 1830
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1831
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 1834
    invoke-static {p0}, Lcom/samsung/android/glview/GLPreviewData;->getInstance(Lcom/samsung/android/glview/GLContext;)Lcom/samsung/android/glview/GLPreviewData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    .line 1836
    invoke-static {}, Lcom/samsung/android/glview/GLProgramStorage;->getInstance()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    .line 1837
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1838
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1839
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1840
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1841
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1842
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1843
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1844
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1845
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1847
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 1848
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {v0, p0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 1850
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1859
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1860
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1863
    :cond_0
    const/4 v0, 0x0

    .line 1864
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1865
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1868
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 1869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 1870
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    .line 1871
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1872
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_3

    .line 1873
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1874
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1904
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1905
    return v0

    .line 1877
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1880
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1881
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_2

    .line 1882
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_5

    .line 1883
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1884
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1885
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 1888
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1889
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 1893
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_2

    .line 1894
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_7

    .line 1895
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1896
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1899
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public queueGLEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/Runnable;

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1910
    return-void
.end method

.method public refreshOrientation()V
    .locals 2

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mAutoOrientationStatus:Z

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 1918
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1920
    :cond_0
    return-void
.end method

.method public registerHoverEventChangedObserver(Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    .prologue
    .line 1923
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObserversLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1924
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1925
    monitor-exit v1

    .line 1926
    return-void

    .line 1925
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rotationFocusView()V
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 1932
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1933
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 1937
    :cond_1
    return-void
.end method

.method public setAlignToPixel(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 825
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    .line 826
    return-void
.end method

.method public setDirty(Z)V
    .locals 2
    .param p1, "dirty"    # Z

    .prologue
    .line 1940
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1941
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1942
    monitor-exit v1

    .line 1950
    :goto_0
    return-void

    .line 1944
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 1945
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1946
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 1949
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFirstOrientation(I)V
    .locals 2
    .param p1, "firstOrientation"    # I

    .prologue
    .line 1953
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->setLastOrientation(I)V

    .line 1954
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 1957
    :cond_0
    return-void
.end method

.method public setHoverBaseView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 875
    return-void
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    .line 1960
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLPreviewData;->setPreviewData(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    :cond_0
    monitor-exit p0

    return-void

    .line 1960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1966
    return-void
.end method

.method public setRippleEffectColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 931
    iput p1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 932
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 957
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    .line 958
    return-void
.end method

.method public unregisterHoverEventChangedObserver(Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    .prologue
    .line 1969
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObserversLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1970
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1971
    monitor-exit v1

    .line 1972
    return-void

    .line 1971
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
