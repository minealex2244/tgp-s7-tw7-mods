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

.field protected static mApplicationContext:Landroid/content/Context;

.field private static final mFrameLock:Ljava/lang/Object;

.field private static final mInitLock:Ljava/lang/Object;

.field private static mIsFixedOrientation:Z

.field private static mLastOrientation:I

.field private static mOrientationCompensationValue:I

.field private static final mOrientationUpdateLock:Ljava/lang/Object;

.field private static mResources:Landroid/content/res/Resources;

.field private static mScreenHeight:I

.field private static mScreenWidth:I


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAccumulatedTime:J

.field private mAlignToPixel:Z

.field private mAutoOrientationStatus:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

.field private mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

.field private mCursorColorObserver:Landroid/database/ContentObserver;

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

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xe6

    const/4 v2, 0x0

    .line 112
    const/16 v0, 0xff

    invoke-static {v3, v2, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    .line 113
    const/16 v0, 0x4c

    const/16 v1, 0xe8

    invoke-static {v3, v2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLContext;->HOVER_INDICATOR_DEFAULT_COLOR:I

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mInitLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/glview/GLContext;->mOrientationUpdateLock:Ljava/lang/Object;

    .line 130
    sput v2, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    .line 131
    sput v2, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    .line 132
    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    .line 133
    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    .line 134
    sput-boolean v2, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/glview/GLContext$GLInitializeListener;Landroid/opengl/GLSurfaceView;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/glview/GLContext$GLInitializeListener;
    .param p3, "surfaceView"    # Landroid/opengl/GLSurfaceView;
    .param p4, "isFixedOrienation"    # Z

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    .line 147
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 148
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mAutoOrientationStatus:Z

    .line 149
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 150
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 154
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    .line 155
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    .line 159
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    .line 163
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    .line 167
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    .line 171
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    .line 175
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 183
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    .line 184
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 185
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 186
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 187
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    .line 188
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    .line 189
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    .line 190
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 191
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    .line 193
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 194
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 195
    sget v1, Lcom/samsung/android/glview/GLContext;->HOVER_INDICATOR_DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    .line 196
    sget v1, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorColor:I

    .line 197
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    .line 198
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    .line 199
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    .line 200
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 201
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 202
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 203
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    .line 204
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    .line 205
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    .line 206
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 207
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 208
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    .line 209
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    .line 210
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    .line 211
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 212
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 213
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    .line 217
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 221
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 225
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    .line 234
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 238
    new-instance v1, Lcom/samsung/android/glview/GLContext$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$1;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v1, Lcom/samsung/android/glview/GLContext$2;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$2;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    .line 271
    new-instance v1, Lcom/samsung/android/glview/GLContext$3;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$3;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    .line 280
    new-instance v1, Lcom/samsung/android/glview/GLContext$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$4;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 294
    new-instance v1, Lcom/samsung/android/glview/GLContext$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$5;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    .line 310
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 320
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mInitLock:Ljava/lang/Object;

    monitor-enter v2

    .line 321
    :try_start_0
    sput-object p1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    .line 322
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    .line 323
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iput-object p2, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    .line 325
    iput-object p3, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 327
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    .line 328
    sput-boolean p4, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->setOrientationListener()V

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    .line 336
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 337
    .local v0, "outValue":Landroid/util/TypedValue;
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101042c

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 338
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 340
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    .line 341
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_cursor_color"

    sget v3, Lcom/samsung/android/glview/GLContext;->FOCUS_INDICATOR_DEFAULT_COLOR:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    .line 342
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_large_cursor"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    .line 344
    new-instance v1, Lcom/samsung/android/glview/GLContext$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$6;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->startFrameHandlerThread()V

    .line 356
    return-void

    .line 323
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLContext;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/glview/GLContext;Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # Landroid/view/Choreographer;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/glview/GLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/glview/GLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/glview/GLContext;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/glview/GLContext;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V

    return-void
.end method

.method private disableAccessibilityService(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1814
    iget-boolean v12, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    if-nez v12, :cond_0

    .line 1886
    :goto_0
    return-void

    .line 1818
    :cond_0
    const-string v12, "GLContext"

    const-string v13, "disableAccessibilityService"

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const/16 v0, 0x3a

    .line 1820
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v10, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v12, 0x3a

    invoke-direct {v10, v12}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1821
    .local v10, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/glview/GLContext;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 1822
    .local v5, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    if-ne v5, v12, :cond_1

    .line 1823
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1826
    .restart local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    const-string v12, "com.sec.android.app.camera/com.samsung.android.glview.AccessibilityGestureHandler"

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 1827
    .local v11, "toggledService":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 1829
    .local v1, "accessibilityEnabled":Z
    invoke-interface {v5, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1832
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1833
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

    .line 1834
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1836
    const/4 v1, 0x1

    .line 1842
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1847
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

    .line 1848
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1852
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 1853
    .local v7, "enabledServicesBuilderLength":I
    if-lez v7, :cond_5

    .line 1854
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1857
    :cond_5
    const/4 v8, 0x0

    .line 1858
    .local v8, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1859
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enabled_accessibility_services"

    invoke-static {v12, v13, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1861
    if-eqz v8, :cond_7

    .line 1862
    move-object v2, v10

    .line 1863
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1865
    :cond_6
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1866
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1867
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1869
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_6

    .line 1870
    const/4 v1, 0x1

    .line 1876
    .end local v2    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_7
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isKNOXMode()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1877
    const/4 v1, 0x0

    .line 1881
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accessibility_enabled"

    if-eqz v1, :cond_9

    const/4 v12, 0x1

    :goto_2
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1883
    sget-object v12, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1885
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    goto/16 :goto_0

    .line 1881
    :cond_9
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private disableOrientationListener()V
    .locals 2

    .prologue
    .line 1892
    const-string v0, "GLContext"

    const-string v1, "disableOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 1898
    :goto_0
    return-void

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method private enableAccessibilityService(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 1904
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    if-eqz v7, :cond_0

    .line 1942
    :goto_0
    return-void

    .line 1908
    :cond_0
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    .line 1910
    const-string v7, "GLContext"

    const-string v8, "enableAccessibilityService"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const/16 v0, 0x3a

    .line 1912
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 1913
    .local v2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    if-ne v2, v7, :cond_1

    .line 1914
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1917
    .restart local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    const-string v7, "com.sec.android.app.camera/com.samsung.android.glview.AccessibilityGestureHandler"

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1919
    .local v6, "toggledService":Landroid/content/ComponentName;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1923
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

    .line 1924
    .local v1, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1928
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1929
    .local v4, "enabledServicesBuilderLength":I
    if-lez v4, :cond_3

    .line 1930
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1933
    :cond_3
    const/4 v5, 0x0

    .line 1934
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1936
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1938
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_enabled"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1940
    sget-object v7, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.samsung.android.glview.ACCESSIBILITY_GESTURE_DETECTED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method protected static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAudioSoundOfTapDirection()I
    .locals 1

    .prologue
    .line 1945
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    packed-switch v0, :pswitch_data_0

    .line 1955
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1947
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1949
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1951
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1953
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1945
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
    .line 359
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDimension(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 363
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
    .line 482
    const/16 v0, 0x3a

    .line 484
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 486
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 488
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 503
    :cond_0
    return-object v4

    .line 491
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 492
    .local v4, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .line 493
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 495
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 496
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 498
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    .line 499
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInteger(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 367
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLastOrientation()I
    .locals 1

    .prologue
    .line 376
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    return v0
.end method

.method public static getOrientationCompensationValue()I
    .locals 1

    .prologue
    .line 386
    sget v0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    return v0
.end method

.method public static getScreenHeightPixels()I
    .locals 1

    .prologue
    .line 399
    sget v0, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    return v0
.end method

.method public static getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 408
    sget v0, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 412
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 1964
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1965
    const-string v1, "GLContext"

    const-string v2, "handleOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1969
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 1970
    .local v0, "newOrientation":I
    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    if-ne v1, v0, :cond_2

    sget-boolean v1, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    if-nez v1, :cond_0

    .line 1971
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->setLastOrientation(I)V

    .line 1972
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 1973
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

    .line 1974
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 1975
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method

.method private handlingKeyEventTap()Z
    .locals 11

    .prologue
    const/16 v9, 0x42

    const/high16 v10, 0x40000000    # 2.0f

    .line 1985
    const/4 v4, 0x0

    .line 1987
    .local v4, "result":Z
    const/4 v5, 0x0

    .line 1989
    .local v5, "tempView":Lcom/samsung/android/glview/GLView;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1990
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2012
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    .line 2013
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 2014
    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 2015
    const/4 v4, 0x1

    .line 2077
    :cond_1
    :goto_1
    return v4

    .line 1992
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getNextFocusForwardId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 1994
    if-nez v5, :cond_0

    .line 1995
    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1997
    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 1998
    goto :goto_0

    .line 2000
    :pswitch_1
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x11

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2001
    goto :goto_0

    .line 2003
    :pswitch_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x82

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2004
    goto :goto_0

    .line 2006
    :pswitch_3
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    goto :goto_0

    .line 2017
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

    .line 2018
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

    .line 2020
    .local v1, "centerY":F
    const/4 v2, 0x0

    .line 2021
    .local v2, "left":F
    const/4 v6, 0x0

    .line 2022
    .local v6, "top":F
    const v3, 0x3c23d70a    # 0.01f

    .line 2024
    .local v3, "margin":F
    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_1

    .line 2043
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v7, v8, v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2045
    if-eqz v5, :cond_4

    .line 2046
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 2047
    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 2048
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2026
    :pswitch_4
    const/4 v2, 0x0

    .line 2027
    add-float v6, v1, v3

    .line 2028
    goto :goto_2

    .line 2030
    :pswitch_5
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    .line 2031
    sub-float v6, v1, v3

    .line 2032
    goto :goto_2

    .line 2034
    :pswitch_6
    sub-float v2, v0, v3

    .line 2035
    const/4 v6, 0x0

    .line 2036
    goto :goto_2

    .line 2038
    :pswitch_7
    add-float v2, v0, v3

    .line 2039
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    goto :goto_2

    .line 2050
    :cond_4
    sget v7, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v7, :pswitch_data_2

    .line 2068
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v7, v8, v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    .line 2069
    if-eqz v5, :cond_1

    .line 2070
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 2071
    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 2072
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2052
    :pswitch_8
    const/4 v2, 0x0

    .line 2053
    const/4 v6, 0x0

    .line 2054
    goto :goto_3

    .line 2056
    :pswitch_9
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    .line 2057
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    .line 2058
    goto :goto_3

    .line 2060
    :pswitch_a
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v2

    .line 2061
    const/4 v6, 0x0

    .line 2062
    goto :goto_3

    .line 2064
    :pswitch_b
    const/4 v2, 0x0

    .line 2065
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v6

    goto :goto_3

    .line 1995
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 2024
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 2050
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

    .line 421
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 430
    .local v0, "config":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 425
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 426
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 427
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFixedOrientation()Z
    .locals 1

    .prologue
    .line 434
    sget-boolean v0, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    return v0
.end method

.method public static isScreenOrientationLandscape()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public static isTalkBackEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 452
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 466
    .local v0, "accesibilityService":Ljava/lang/String;
    .local v1, "talkbackEnabled":Z
    :goto_0
    return v2

    .line 456
    .end local v0    # "accesibilityService":Ljava/lang/String;
    .end local v1    # "talkbackEnabled":Z
    :cond_0
    const/4 v1, 0x0

    .line 457
    .restart local v1    # "talkbackEnabled":Z
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .restart local v0    # "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 462
    const-string v3, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 463
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 466
    goto :goto_0

    :cond_3
    move v1, v2

    .line 463
    goto :goto_1
.end method

.method private registerTouchExplorationStateChangeListener()V
    .locals 3

    .prologue
    .line 2084
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2085
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 2086
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 2088
    :cond_0
    return-void
.end method

.method public static setFixedOrientation(Z)V
    .locals 0
    .param p0, "isFixed"    # Z

    .prologue
    .line 438
    sput-boolean p0, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    .line 439
    return-void
.end method

.method private setLastOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 380
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mOrientationUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    sput p1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    .line 382
    monitor-exit v1

    .line 383
    return-void

    .line 382
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
    .line 390
    sput p0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    .line 391
    return-void
.end method

.method private setOrientationListener()V
    .locals 3

    .prologue
    .line 2094
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2095
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2097
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 2098
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    .line 2099
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    .line 2103
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v1, :cond_1

    .line 2104
    const-string v1, "GLContext"

    const-string v2, "using SemContextListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :goto_0
    return-void

    .line 2106
    :cond_1
    const-string v1, "GLContext"

    const-string v2, "using OrientationEventListener of android"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    new-instance v1, Lcom/samsung/android/glview/GLContext$7;

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$7;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method private startFrameHandlerThread()V
    .locals 2

    .prologue
    .line 2122
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GLContextFrameHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    .line 2123
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2124
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    .line 2125
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/glview/GLContext$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$8;-><init>(Lcom/samsung/android/glview/GLContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2131
    return-void
.end method

.method private unregisterTouchExplorationStateChangeListener()V
    .locals 3

    .prologue
    .line 2137
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2138
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 2139
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 2141
    :cond_0
    return-void
.end method

.method private updateScreenSize()V
    .locals 5

    .prologue
    .line 2144
    sget-boolean v2, Lcom/samsung/android/glview/GLContext;->mIsFixedOrientation:Z

    if-eqz v2, :cond_1

    .line 2145
    const-string v2, "GLContext"

    const-string v3, "updateScreenSize"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2147
    .local v1, "tempWidth":I
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2148
    .local v0, "tempHeight":I
    if-le v1, v0, :cond_0

    .line 2149
    sput v1, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    .line 2150
    sput v0, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    .line 2160
    .end local v0    # "tempHeight":I
    .end local v1    # "tempWidth":I
    :goto_0
    return-void

    .line 2152
    .restart local v0    # "tempHeight":I
    .restart local v1    # "tempWidth":I
    :cond_0
    sput v0, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    .line 2153
    sput v1, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    goto :goto_0

    .line 2156
    .end local v0    # "tempHeight":I
    .end local v1    # "tempWidth":I
    :cond_1
    const-string v2, "GLContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenSize : w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenWidth:I

    .line 2158
    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    sput v2, Lcom/samsung/android/glview/GLContext;->mScreenHeight:I

    goto :goto_0
.end method

.method private updateTouchExplorationEnabled()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2163
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2164
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    .line 2165
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 2166
    return-void

    .line 2164
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTextureToDelete(Lcom/samsung/android/glview/GLTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/samsung/android/glview/GLTexture;

    .prologue
    .line 507
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    monitor-exit v1

    .line 510
    return-void

    .line 509
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

    .line 516
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 518
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 520
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    .line 522
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 524
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 528
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    .line 529
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 531
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mFrameHandlerThread:Landroid/os/HandlerThread;

    .line 533
    :cond_1
    return-void

    .line 524
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

    .line 536
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 538
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 542
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 544
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 545
    return-void
.end method

.method public disableFocusNavigation()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 549
    return-void
.end method

.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 557
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 560
    monitor-exit v1

    .line 561
    return-void

    .line 560
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
    .line 564
    const-string v0, "GLContext"

    const-string v1, "=======================DUMP_START======================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->dumpViewHierarchy(I)V

    .line 568
    :cond_0
    const-string v0, "GLContext"

    const-string v1, "=======================DUMP_END======================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void
.end method

.method public enableAccessibilityNode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    .line 577
    return-void
.end method

.method public enableFocusNavigation()V
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 581
    return-void
.end method

.method protected enableOrientationListener()V
    .locals 2

    .prologue
    .line 1781
    const-string v0, "GLContext"

    const-string v1, "enableOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 1787
    :goto_0
    return-void

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public enableRippleEffect(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    .line 590
    return-void
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 2
    .param p1, "rootView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p3, "direction"    # I

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "resultView":Lcom/samsung/android/glview/GLView;
    if-nez p1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 599
    :goto_0
    return-object v0

    .line 597
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 612
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
    .line 622
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 625
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
    .line 635
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewByTag(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 638
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAlignToPixel()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    return v0
.end method

.method public getEstimatedFPS()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    return v0
.end method

.method public getFocusIndicatorColor()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorColor:I

    return v0
.end method

.method public getFocusIndicatorThickness()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    return v0
.end method

.method public getGLPreviewData()Lcom/samsung/android/glview/GLPreviewData;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    return-object v0
.end method

.method public getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getHoverBaseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverIndicatorColor()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    return v0
.end method

.method public getHoverIndicatorThickness()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    return v0
.end method

.method public getLastHoverView()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    return-object v0
.end method

.method public getProjMatrix()[F
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    return-object v0
.end method

.method public getRippleEffectColor()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    return v0
.end method

.method public getRootView()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getScreenAspectRatio()F
    .locals 2

    .prologue
    .line 770
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
    .line 1795
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getTts()Landroid/speech/tts/TextToSpeech;
    .locals 4

    .prologue
    .line 782
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 785
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

    .line 786
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    .line 787
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 788
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 789
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 786
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public isEnableAccessibilityNode()Z
    .locals 3

    .prologue
    .line 798
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 799
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 800
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 801
    :cond_0
    const/4 v1, 0x0

    .line 803
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
    .line 807
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    return v0
.end method

.method public isFocusNavigationEnabled()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    return v0
.end method

.method public isHoveringEnabled()Z
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method protected isHoveringPointerEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1799
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_pointer"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isRippleEffectEnabled()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    return v0
.end method

.method public isShowButtonBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method protected notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1803
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 1804
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

    .line 1805
    .local v0, "observer":Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;->onHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1807
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

    .line 1808
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v12, 0x5

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 847
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    if-nez v5, :cond_0

    .line 849
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v6

    .line 850
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

    .line 851
    .local v4, "texture":Lcom/samsung/android/glview/GLTexture;
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLTexture;->clearTexture()V

    goto :goto_0

    .line 854
    .end local v4    # "texture":Lcom/samsung/android/glview/GLTexture;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 853
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 854
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v5, :cond_3

    .line 891
    :cond_2
    :goto_1
    return-void

    .line 859
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 861
    const/16 v5, 0x4100

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 870
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    sub-long v2, v0, v6

    .line 872
    .local v2, "interval":J
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    const-wide/16 v6, 0x64

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    .line 873
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 874
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 875
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 876
    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    .line 878
    :cond_4
    iput-wide v0, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    .line 879
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    cmp-long v5, v6, v12

    if-gez v5, :cond_5

    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 881
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

    .line 884
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v5, :cond_6

    .line 885
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->draw([FLandroid/graphics/Rect;)V

    .line 888
    :cond_6
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    cmp-long v5, v6, v12

    if-gez v5, :cond_2

    .line 889
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

    .line 894
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 897
    :cond_0
    if-eqz p1, :cond_1

    .line 898
    invoke-virtual {p1, v2}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 900
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 901
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    if-nez p1, :cond_4

    .line 903
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 906
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 911
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 912
    return-void

    .line 908
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

    .line 916
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v0

    .line 919
    :cond_1
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 920
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 926
    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_4

    .line 930
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 932
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 934
    :cond_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 935
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 936
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTtsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 938
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 939
    .local v0, "vibrator":Landroid/os/Vibrator;
    const v1, 0xc369

    const/4 v2, -0x1

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 941
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 942
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 943
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 945
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_5

    .line 947
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 949
    :cond_5
    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 950
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "orientation"    # I

    .prologue
    const/4 v5, 0x1

    .line 955
    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    iget v3, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    invoke-static {p1, p2, v2, v3}, Lcom/samsung/android/glview/GLUtil;->transformEventByGLOrientation(Landroid/view/MotionEvent;III)V

    .line 957
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_0

    .line 958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 959
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 960
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_2

    .line 961
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 962
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 1003
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    :cond_1
    return v5

    .line 964
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    .line 966
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 971
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 972
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 973
    .local v1, "tempView":Lcom/samsung/android/glview/GLView;
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eq v1, v2, :cond_1

    .line 976
    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 977
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_4

    .line 978
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 979
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 980
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    .line 981
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 985
    .end local v1    # "tempView":Lcom/samsung/android/glview/GLView;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 987
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 991
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 992
    .restart local v1    # "tempView":Lcom/samsung/android/glview/GLView;
    if-nez v1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 994
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 995
    .local v0, "originEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/glview/GLContext;->notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 996
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

    .line 1011
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 1012
    sparse-switch p1, :sswitch_data_0

    .line 1024
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1025
    sparse-switch p1, :sswitch_data_1

    .line 1092
    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1093
    return-void

    .line 1017
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus(I)Z

    goto :goto_0

    .line 1027
    :sswitch_1
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1029
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1032
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1035
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1038
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1043
    :sswitch_2
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1045
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1048
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1051
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1054
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1059
    :sswitch_3
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 1061
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1064
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1067
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1070
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 1075
    :sswitch_4
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    .line 1077
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1080
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1083
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1086
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1012
    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x41 -> :sswitch_0
        0x52 -> :sswitch_0
        0x62 -> :sswitch_0
    .end sparse-switch

    .line 1025
    :sswitch_data_1
    .sparse-switch
        0x31 -> :sswitch_1
        0x41 -> :sswitch_3
        0x52 -> :sswitch_4
        0x62 -> :sswitch_2
    .end sparse-switch

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1043
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 1059
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 1075
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

    .line 1108
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v6, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return v4

    .line 1112
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1114
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

    .line 1115
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

    .line 1116
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_1
    move v4, v5

    .line 1120
    goto :goto_0

    .line 1117
    :cond_3
    if-ne v0, v5, :cond_2

    .line 1118
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1123
    :cond_4
    if-nez v0, :cond_5

    .line 1124
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1126
    :cond_5
    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    .line 1127
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    .line 1128
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1130
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1131
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1133
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    if-nez v6, :cond_7

    move v3, v5

    .line 1134
    .local v3, "isZooming":Z
    :goto_2
    if-nez v3, :cond_0

    move v4, v5

    .line 1137
    goto :goto_0

    .end local v3    # "isZooming":Z
    :cond_7
    move v3, v4

    .line 1133
    goto :goto_2

    .line 1139
    :cond_8
    if-ne v0, v5, :cond_c

    .line 1140
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-nez v6, :cond_9

    .line 1141
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v4, v5

    .line 1142
    goto/16 :goto_0

    .line 1145
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_b

    .line 1146
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v6, :cond_a

    .line 1147
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

    .line 1148
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

    .line 1150
    .local v2, "currentHoverFocusedViewY":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1151
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1154
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1155
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1165
    iput-object v9, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v4, v5

    .line 1166
    goto/16 :goto_0

    .line 1157
    .end local v1    # "currentHoverFocusedViewX":F
    .end local v2    # "currentHoverFocusedViewY":F
    :cond_a
    iput-object v9, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 1161
    :cond_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1167
    :cond_c
    const/4 v6, 0x6

    if-ne v0, v6, :cond_d

    .line 1168
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 1172
    :cond_d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v4, v5

    .line 1173
    goto/16 :goto_0
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1178
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

    .line 1181
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1182
    :cond_0
    const/4 v2, 0x0

    .line 1364
    :goto_0
    return v2

    .line 1184
    :cond_1
    const/4 v2, 0x0

    .line 1185
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 1187
    .local v1, "res":Z
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v5, :cond_2

    .line 1188
    sparse-switch p1, :sswitch_data_0

    .line 1206
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v5, :cond_5

    .line 1208
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    if-nez v5, :cond_3

    .line 1209
    sparse-switch p1, :sswitch_data_1

    .line 1224
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/glview/GLView;->keyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1225
    if-nez v2, :cond_4

    .line 1226
    sparse-switch p1, :sswitch_data_2

    .line 1319
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 1320
    sparse-switch p1, :sswitch_data_3

    .line 1338
    :cond_5
    :goto_2
    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    .line 1339
    :cond_6
    sget-object v5, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1340
    .local v0, "audioManager":Landroid/media/AudioManager;
    sparse-switch p1, :sswitch_data_4

    .line 1363
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_7
    :goto_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 1197
    :sswitch_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1198
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1199
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1200
    const/4 v2, 0x0

    goto :goto_0

    .line 1202
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 1218
    :sswitch_1
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1219
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1220
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v2, v4

    .line 1221
    goto :goto_0

    .line 1228
    :sswitch_2
    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1229
    const/4 v1, 0x1

    .line 1230
    goto :goto_1

    .line 1232
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->handlingKeyEventTap()Z

    move-result v1

    .line 1233
    goto :goto_1

    :sswitch_4
    move v2, v4

    .line 1235
    goto :goto_0

    .line 1237
    :sswitch_5
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1238
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1239
    goto :goto_1

    .line 1241
    :cond_9
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 1243
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1244
    goto :goto_1

    .line 1246
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1247
    goto :goto_1

    .line 1249
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1250
    goto :goto_1

    .line 1252
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1257
    :sswitch_6
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1258
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1259
    goto/16 :goto_1

    .line 1261
    :cond_a
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    .line 1263
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1264
    goto/16 :goto_1

    .line 1266
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1267
    goto/16 :goto_1

    .line 1269
    :pswitch_6
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1270
    goto/16 :goto_1

    .line 1272
    :pswitch_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1277
    :sswitch_7
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1278
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1279
    goto/16 :goto_1

    .line 1281
    :cond_b
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_1

    .line 1283
    :pswitch_8
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1284
    goto/16 :goto_1

    .line 1286
    :pswitch_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1287
    goto/16 :goto_1

    .line 1289
    :pswitch_a
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1290
    goto/16 :goto_1

    .line 1292
    :pswitch_b
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1297
    :sswitch_8
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1298
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1299
    goto/16 :goto_1

    .line 1301
    :cond_c
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 1303
    :pswitch_c
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1304
    goto/16 :goto_1

    .line 1306
    :pswitch_d
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1307
    goto/16 :goto_1

    .line 1309
    :pswitch_e
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1310
    goto/16 :goto_1

    .line 1312
    :pswitch_f
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1329
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;

    move-result-object v3

    .line 1330
    .local v3, "tempView":Lcom/samsung/android/glview/GLView;
    if-eqz v3, :cond_5

    .line 1331
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 1332
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    goto/16 :goto_2

    .line 1342
    .end local v3    # "tempView":Lcom/samsung/android/glview/GLView;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_a
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1345
    :sswitch_b
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1348
    :sswitch_c
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1351
    :sswitch_d
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1354
    :sswitch_e
    if-eqz v1, :cond_7

    .line 1355
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->getAudioSoundOfTapDirection()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1359
    :sswitch_f
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1188
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

    .line 1209
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

    .line 1226
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

    .line 1320
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

    .line 1340
    :sswitch_data_4
    .sparse-switch
        0x13 -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_a
        0x16 -> :sswitch_b
        0x3d -> :sswitch_e
        0x3e -> :sswitch_f
    .end sparse-switch

    .line 1241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1261
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 1281
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 1301
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

    .line 1368
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 1429
    :goto_0
    return v0

    .line 1371
    :cond_1
    const/4 v0, 0x0

    .line 1372
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1373
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v3, :cond_2

    .line 1374
    sparse-switch p1, :sswitch_data_0

    .line 1392
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_3

    .line 1393
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    if-nez v1, :cond_3

    .line 1394
    sparse-switch p1, :sswitch_data_1

    .line 1417
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_4

    .line 1418
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLView;->keyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1420
    :cond_4
    if-nez v0, :cond_5

    .line 1421
    packed-switch p1, :pswitch_data_0

    .line 1428
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 1383
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1384
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1385
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    move v0, v1

    .line 1386
    goto :goto_0

    :cond_6
    move v0, v1

    .line 1388
    goto :goto_0

    .line 1403
    :sswitch_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1404
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1405
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v0, v2

    .line 1406
    goto :goto_0

    .line 1411
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    if-eqz v3, :cond_3

    .line 1412
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    move v0, v1

    .line 1413
    goto :goto_0

    .line 1423
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->dumpViewHierarchy()V

    goto :goto_1

    .line 1374
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

    .line 1394
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

    .line 1421
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

    .line 1433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 1435
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1436
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    .line 1438
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getPreserveEGLContextOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1442
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    invoke-static {v0}, Lcom/samsung/android/glview/GLProgramStorage;->releaseInstance(Lcom/samsung/android/glview/GLProgramStorage;)V

    .line 1445
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->reset()V

    .line 1449
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLPreviewData;->releaseInstance()V

    .line 1451
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1453
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    .line 1456
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 1457
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1458
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1459
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1462
    :cond_2
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    .line 1463
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 1464
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 1466
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1468
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V

    .line 1469
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->unregisterTouchExplorationStateChangeListener()V

    .line 1471
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1472
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1473
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1474
    return-void

    .line 1442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1477
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    .line 1478
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "GLContextHandlerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    .line 1479
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1480
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mMainHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    .line 1482
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 1484
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 1486
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v3, v7, :cond_0

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->enableOrientationListener()V

    .line 1491
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1493
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_1

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    .line 1494
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    .line 1495
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(?i).*talkback.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1496
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1498
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_pitch"

    const/16 v6, 0x64

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 1499
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v5, 0xb

    .line 1500
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 1501
    invoke-virtual {v4, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 1502
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1499
    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 1505
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v3, :cond_2

    .line 1506
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 1509
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    .line 1511
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_3

    .line 1512
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    .line 1515
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->registerTouchExplorationStateChangeListener()V

    .line 1517
    const-string v3, "access_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1518
    .local v2, "interactioncontrolURI":Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 1519
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1522
    :cond_4
    const-string v3, "accessibility_cursor_color"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1523
    .local v0, "accessibilityCursorColorURI":Landroid/net/Uri;
    if-eqz v0, :cond_5

    .line 1524
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mCursorColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v0, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1527
    :cond_5
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_button_background"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 1528
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLContext;->mShowButtonBackgroundEnabled:Z

    .line 1531
    :cond_6
    const-string v3, "display_size_forced"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1532
    .local v1, "displaySizeForcedURI":Landroid/net/Uri;
    if-eqz v1, :cond_7

    .line 1533
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mDisplaySizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v1, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1535
    :cond_7
    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .prologue
    .line 1544
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1581
    :goto_0
    return-void

    .line 1547
    :cond_0
    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 1548
    .local v3, "scontext":Lcom/samsung/android/hardware/context/SemContext;
    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1551
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v1

    .line 1552
    .local v1, "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v0

    .line 1553
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

    .line 1554
    const/4 v2, 0x0

    .line 1555
    .local v2, "changedOrientation":I
    packed-switch v0, :pswitch_data_1

    .line 1572
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

    .line 1576
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V

    goto :goto_0

    .line 1557
    :pswitch_1
    const/4 v2, -0x1

    .line 1558
    goto :goto_1

    .line 1560
    :pswitch_2
    const/4 v2, 0x0

    .line 1561
    goto :goto_1

    .line 1563
    :pswitch_3
    const/16 v2, 0x10e

    .line 1564
    goto :goto_1

    .line 1566
    :pswitch_4
    const/16 v2, 0xb4

    .line 1567
    goto :goto_1

    .line 1569
    :pswitch_5
    const/16 v2, 0x5a

    .line 1570
    goto :goto_1

    .line 1548
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    .line 1555
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

    .line 1590
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

    .line 1592
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

    .line 1594
    iput p2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    .line 1595
    iput p3, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    .line 1596
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateScreenSize()V

    .line 1598
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

    .line 1600
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1601
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1603
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1605
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->refreshClipRect()V

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLContext$GLInitializeListener;->onGLInitialized(Lcom/samsung/android/glview/GLViewGroup;)V

    .line 1611
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1612
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 1621
    const-string v0, "GLContext"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1626
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1630
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1631
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1633
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 1634
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1635
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 1638
    invoke-static {p0}, Lcom/samsung/android/glview/GLPreviewData;->getInstance(Lcom/samsung/android/glview/GLContext;)Lcom/samsung/android/glview/GLPreviewData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    .line 1640
    invoke-static {}, Lcom/samsung/android/glview/GLProgramStorage;->getInstance()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    .line 1641
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1642
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1643
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1644
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1645
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1646
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1647
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1648
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1650
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 1651
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {v0, p0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 1653
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1662
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1663
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1666
    :cond_0
    const/4 v0, 0x0

    .line 1667
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1668
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1671
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 1672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 1673
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    .line 1674
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1675
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_3

    .line 1676
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1677
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1707
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1708
    return v0

    .line 1680
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1683
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1684
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_2

    .line 1685
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_5

    .line 1686
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1687
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1688
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 1691
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1692
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 1696
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_2

    .line 1697
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_7

    .line 1698
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1699
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1702
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
    .line 1712
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1713
    return-void
.end method

.method public refreshOrientation()V
    .locals 2

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mAutoOrientationStatus:Z

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 1721
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1723
    :cond_0
    return-void
.end method

.method public registerHoverEventChangedObserver(Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    .prologue
    .line 1726
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 1727
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    monitor-exit v1

    .line 1729
    return-void

    .line 1728
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
    .line 1732
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 1735
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1737
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 1740
    :cond_1
    return-void
.end method

.method public setAlignToPixel(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    .line 651
    return-void
.end method

.method public setDirty(Z)V
    .locals 2
    .param p1, "dirty"    # Z

    .prologue
    .line 1743
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1744
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1745
    monitor-exit v1

    .line 1753
    :goto_0
    return-void

    .line 1747
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 1748
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

    .line 1749
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 1752
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
    .line 1756
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->setLastOrientation(I)V

    .line 1757
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 1760
    :cond_0
    return-void
.end method

.method public setHoverBaseView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 696
    return-void
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    .line 1763
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLPreviewData;->setPreviewData(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1765
    :cond_0
    monitor-exit p0

    return-void

    .line 1763
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1769
    return-void
.end method

.method public setRippleEffectColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 752
    iput p1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 753
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    .line 779
    return-void
.end method

.method public unregisterHoverEventChangedObserver(Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    .prologue
    .line 1772
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 1773
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1774
    monitor-exit v1

    .line 1775
    return-void

    .line 1774
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
