.class public Lcom/samsung/android/glview/GLAccessibilityNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "GLAccessibilityNodeProvider.java"


# instance fields
.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mListChildViewNode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "glcontext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 38
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 17
    .param p1, "virtualViewId"    # I

    .prologue
    .line 43
    const/4 v8, 0x0

    .line 45
    .local v8, "node":Lcom/samsung/android/glview/GLView;
    const/4 v15, -0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_1

    .line 46
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-static {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 47
    .local v9, "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v15, v9}, Landroid/opengl/GLSurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 48
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/opengl/GLSurfaceView;->setImportantForAccessibility(I)V

    .line 49
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    .line 50
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 51
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    .line 53
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 54
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v7

    .line 55
    .local v7, "nOrientation":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .local v2, "dimensions":Landroid/graphics/Rect;
    invoke-virtual {v9, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->getDimensionByOrientation(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 58
    .local v11, "realDimensions":Landroid/graphics/Rect;
    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityNode(Z)V

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v5, "listBaseViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/samsung/android/glview/GLViewGroup;->addAccessibilityBaseViewNode(Ljava/util/ArrayList;)V

    .line 62
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    .line 63
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v16, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "dimensions":Landroid/graphics/Rect;
    .end local v3    # "i":I
    .end local v5    # "listBaseViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    .end local v7    # "nOrientation":I
    .end local v9    # "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "realDimensions":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 72
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v8

    .line 76
    :cond_2
    if-nez v8, :cond_4

    .line 77
    const/4 v9, 0x0

    .line 159
    :cond_3
    :goto_1
    return-object v9

    .line 80
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 81
    .restart local v9    # "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v15, v9}, Landroid/opengl/GLSurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 82
    const/4 v15, 0x2

    new-array v10, v15, [I

    .line 83
    .local v10, "offset":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v15, v10}, Landroid/opengl/GLSurfaceView;->getLocationInWindow([I)V

    .line 84
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_5

    .line 85
    const/4 v9, 0x0

    goto :goto_1

    .line 86
    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .restart local v2    # "dimensions":Landroid/graphics/Rect;
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iput v15, v2, Landroid/graphics/Rect;->top:I

    .line 88
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iput v15, v2, Landroid/graphics/Rect;->left:I

    .line 89
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iput v15, v2, Landroid/graphics/Rect;->right:I

    .line 90
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 94
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->getDimensionByOrientation(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    .line 96
    .local v12, "returnDimensions":Landroid/graphics/Rect;
    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 98
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 100
    move-object v1, v12

    .line 103
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v9, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 105
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "simpleClassName":Ljava/lang/String;
    const-string v13, ""

    .line 107
    .local v13, "scrollOrientation":Ljava/lang/String;
    invoke-virtual {v9, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 108
    if-eqz v14, :cond_7

    .line 109
    const-string v15, "GLList"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "GLGridList"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    move-object v4, v8

    .line 110
    check-cast v4, Lcom/samsung/android/glview/GLAbsList;

    .line 111
    .local v4, "list":Lcom/samsung/android/glview/GLAbsList;
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 112
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 113
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLAbsList;->getScrollOrientation()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 114
    const-string v13, ":SCROLL_PORTRAIT"

    .line 120
    .end local v4    # "list":Lcom/samsung/android/glview/GLAbsList;
    :cond_7
    :goto_2
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getContentDescription()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 121
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getContentDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    :goto_3
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getObjectTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 127
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 129
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getBypassTouch()Z

    move-result v15

    if-nez v15, :cond_8

    .line 130
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 140
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    if-nez v15, :cond_9

    .line 141
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/glview/GLViewGroup;->addAccessibilityChildViewNode(Ljava/util/ArrayList;)V

    .line 144
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    .line 146
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v6, "listRemoveViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_d

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLView;->getParentId()I

    move-result v15

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 116
    .end local v3    # "i":I
    .end local v6    # "listRemoveViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    .restart local v4    # "list":Lcom/samsung/android/glview/GLAbsList;
    :cond_b
    const-string v13, ":SCROLL_LANDSCAPE"

    goto/16 :goto_2

    .line 123
    .end local v4    # "list":Lcom/samsung/android/glview/GLAbsList;
    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getObjectTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 153
    .restart local v3    # "i":I
    .restart local v6    # "listRemoveViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    .line 154
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_3

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public getDimensionByOrientation(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "dimensions"    # Landroid/graphics/Rect;

    .prologue
    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 164
    .local v0, "returnDimensions":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    .line 165
    .local v2, "screenWidth":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    .line 166
    .local v1, "screenHeight":I
    packed-switch p1, :pswitch_data_0

    .line 186
    iget v3, p2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 187
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 188
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 189
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 191
    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 169
    iget v3, p2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 170
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 171
    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 174
    :pswitch_1
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 175
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 176
    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 177
    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 180
    :pswitch_2
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 181
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 182
    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 183
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method