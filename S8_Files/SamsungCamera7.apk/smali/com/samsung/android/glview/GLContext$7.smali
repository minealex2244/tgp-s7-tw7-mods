.class Lcom/samsung/android/glview/GLContext$7;
.super Landroid/view/View$AccessibilityDelegate;
.source "GLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLContext;-><init>(Landroid/content/Context;Lcom/samsung/android/glview/GLContext$GLInitializeListener;Landroid/opengl/GLSurfaceView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$7;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext$7;->mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$7;->mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$7;->this$0:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext$7;->this$0:Lcom/samsung/android/glview/GLContext;

    # getter for: Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->access$000(Lcom/samsung/android/glview/GLContext;)Landroid/opengl/GLSurfaceView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext$7;->mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$7;->mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method
