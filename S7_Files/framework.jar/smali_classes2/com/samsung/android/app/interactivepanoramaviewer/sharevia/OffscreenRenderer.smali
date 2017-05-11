.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;
.super Ljava/lang/Object;
.source "OffscreenRenderer.java"


# static fields
.field private static LSI_BOARD_HERO:Ljava/lang/String;

.field private static fboId:[I

.field private static mBoardType:Ljava/lang/String;

.field private static mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private static mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private static mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private static mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private static mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

.field private static renderBuffId:[I

.field private static surfaceHeight:I

.field private static surfaceWidth:I

.field private static textureId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    .line 28
    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    .line 29
    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const-string/jumbo v0, "ro.hardware"

    .line 31
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    const-string/jumbo v0, "samsungexynos8890"

    .line 32
    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static offscreenFinalize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 185
    sput-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 186
    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_1

    .line 180
    :goto_1
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0

    .line 170
    :cond_1
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :goto_2
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_1

    :cond_2
    const v0, 0x8d40

    .line 172
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 173
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 174
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 175
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    goto :goto_2
.end method

.method public static offscreenInitialize(Landroid/content/Context;IIIIIIIIIIZ)V
    .locals 16

    .prologue
    .line 36
    new-instance v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    const/4 v14, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p11

    invoke-direct/range {v2 .. v15}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;-><init>(Landroid/content/Context;IIIIIIIIIIZZ)V

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    .line 37
    sput p7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    .line 38
    sput p8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    .line 40
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 41
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x2

    .line 43
    new-array v2, v2, [I

    .line 44
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v2, 0x1

    .line 46
    new-array v7, v2, [I

    .line 47
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v2, 0x0

    .line 48
    aget v2, v7, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v2, 0x9

    .line 49
    new-array v4, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3040

    .line 50
    aput v3, v4, v2

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v4, v2

    const/4 v2, 0x2

    const/16 v3, 0x3024

    .line 51
    aput v3, v4, v2

    const/4 v2, 0x3

    const/16 v3, 0x8

    aput v3, v4, v2

    const/4 v2, 0x4

    const/16 v3, 0x3023

    .line 52
    aput v3, v4, v2

    const/4 v2, 0x5

    const/16 v3, 0x8

    aput v3, v4, v2

    const/4 v2, 0x6

    const/16 v3, 0x3022

    .line 53
    aput v3, v4, v2

    const/4 v2, 0x7

    const/16 v3, 0x8

    aput v3, v4, v2

    const/16 v2, 0x8

    const/16 v3, 0x3038

    .line 54
    aput v3, v4, v2

    .line 56
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 62
    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 65
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    .line 76
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x3057

    .line 77
    aput v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x3056

    .line 78
    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x3038

    .line 79
    aput v4, v2, v3

    const-string/jumbo v3, ""

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "offscreenInitialize: LSI_BOARD_HERO"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-interface {v3, v4, v6, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v2, :cond_3

    :cond_0
    const/4 v2, 0x0

    .line 138
    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 139
    return-void

    .line 57
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Could not find config for GLES2"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 59
    return-void

    :cond_2
    const/4 v2, 0x5

    .line 67
    :try_start_1
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x3057

    .line 68
    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xa

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x3056

    .line 69
    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xa

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x3038

    .line 70
    aput v4, v2, v3

    const-string/jumbo v3, ""

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "offscreenInitialize: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Failed to create surface"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 88
    return-void

    :cond_3
    const/4 v2, 0x3

    .line 94
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x3098

    .line 95
    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x3038

    .line 96
    aput v4, v2, v3

    .line 97
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 99
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_0

    .line 100
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 103
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 104
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 106
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    :goto_1
    return-void

    :cond_4
    const/4 v2, 0x1

    .line 109
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/4 v2, 0x1

    .line 110
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    const/4 v2, 0x1

    .line 111
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/16 v2, 0xde1

    .line 113
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x812f

    .line 114
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x812f

    .line 115
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    .line 116
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    .line 117
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move/from16 v5, p7

    move/from16 v6, p8

    .line 118
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v2, 0x8d41

    .line 120
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v2, 0x8d41

    const v3, 0x81a5

    .line 121
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v2, 0x8d40

    .line 122
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8d40

    const v3, 0x8ce0

    const/16 v4, 0xde1

    .line 123
    sget-object v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v2, 0x8d40

    const v3, 0x8d00

    const v4, 0x8d41

    .line 124
    sget-object v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    const v2, 0x8d40

    .line 125
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v2

    const v3, 0x8cd5

    .line 126
    if-ne v2, v3, :cond_5

    .line 129
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "--fbo pass"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "FBO not complete."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static offscreenTransformFrame([B[B[F)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 142
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->setImage([B[F)V

    .line 143
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 148
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 154
    invoke-virtual {v7, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 156
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    sget v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    sget v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v2, v1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0
.end method