.class public Lcom/android/launcher3/common/tray/FakeView;
.super Landroid/widget/FrameLayout;
.source "FakeView.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;,
        Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;
    }
.end annotation


# static fields
.field private static final MOVE_STAGE_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "Tray.FakeView"

.field private static final UNSET_SUPPRESS_CHANGE_STAGE_DELAY:I = 0x190


# instance fields
.field private final mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private final mChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mDescText:Landroid/widget/TextView;

.field private mDirection:I

.field private mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

.field private mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

.field private mDropView:Landroid/view/View;

.field private mIsDropEnabled:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mSuppressChangeStage:Z

.field private mTranslationCallback:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

.field private mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

.field private final mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private final mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/tray/FakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/tray/FakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 73
    new-instance v0, Lcom/android/launcher3/common/tray/FakeView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/FakeView$1;-><init>(Lcom/android/launcher3/common/tray/FakeView;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 79
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 80
    new-instance v0, Lcom/android/launcher3/common/tray/FakeView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/FakeView$2;-><init>(Lcom/android/launcher3/common/tray/FakeView;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 100
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/tray/FakeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/tray/FakeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/util/alarm/OnAlarmListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    return-object v0
.end method

.method private getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->getDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    return-object v0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/tray/FakeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 0

    .prologue
    .line 268
    return-object p0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mTranslationCallback:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    .line 113
    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 115
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    .line 227
    const-string v0, "Tray.FakeView"

    const-string v1, "onDragEnter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    iget v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->onDragEnter(I)V

    goto :goto_0
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v2, 0x0

    .line 251
    const-string v0, "Tray.FakeView"

    const-string v1, "onDragExit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 253
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    .line 254
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    iget v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->onDragExit(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 0
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 247
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 24
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 171
    const-string v2, "Tray.FakeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDrop "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/FakeView;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v20

    .line 175
    .local v20, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    if-eqz v20, :cond_0

    .line 176
    new-instance v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 177
    .local v19, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 178
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 179
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 181
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    .line 184
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;

    if-eqz v2, :cond_1

    move-object/from16 v23, v20

    .line 185
    check-cast v23, Lcom/android/launcher3/home/WorkspaceDragController;

    .line 186
    .local v23, "workspaceDragController":Lcom/android/launcher3/home/WorkspaceDragController;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->onFlingToMove(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 194
    .end local v19    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v23    # "workspaceDragController":Lcom/android/launcher3/home/WorkspaceDragController;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 196
    .local v4, "finalPos":[I
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 197
    .local v22, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->left:I

    aput v3, v4, v2

    .line 199
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aput v3, v4, v2

    .line 200
    const/high16 v5, 0x3f000000    # 0.5f

    .line 201
    .local v5, "alpha":F
    const v6, 0x3e99999a    # 0.3f

    .line 202
    .local v6, "scaleX":F
    const v7, 0x3e99999a    # 0.3f

    .line 203
    .local v7, "scaleY":F
    new-instance v9, Lcom/android/launcher3/common/tray/FakeView$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/launcher3/common/tray/FakeView$3;-><init>(Lcom/android/launcher3/common/tray/FakeView;)V

    .line 209
    .local v9, "onFinishAnimationRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v8, 0x0

    const/16 v10, 0x1e0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 213
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 214
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 215
    .local v21, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v10

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1e0

    move-object v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V

    goto :goto_1

    .line 188
    .end local v4    # "finalPos":[I
    .end local v5    # "alpha":F
    .end local v6    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v9    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    .end local v21    # "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v22    # "r":Landroid/graphics/Rect;
    .restart local v19    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 189
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 190
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/drag/DropTarget;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_0

    .line 221
    .end local v19    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 223
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 106
    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/tray/FakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropView:Landroid/view/View;

    .line 107
    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/tray/FakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    .line 108
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 288
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 289
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    .line 290
    iput-boolean v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    .line 292
    :cond_1
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    .line 119
    return-void
.end method

.method public setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    .line 139
    return-void
.end method

.method public setSuppressChangeStageOnce()V
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    iget v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->onDragExit(I)V

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mUnsetSuppressChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mUnsetSuppressChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    goto :goto_0
.end method

.method public setTranslationListener(Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mTranslationCallback:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    .line 135
    return-void
.end method

.method public setTranslationX(F)V
    .locals 2
    .param p1, "translationX"    # F

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mTranslationCallback:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mTranslationCallback:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;->onTranslateX(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;F)V

    .line 147
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 2
    .param p1, "translationY"    # F

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mTranslationCallback:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mTranslationCallback:Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;->onTranslateY(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;F)V

    .line 155
    :cond_0
    return-void
.end method

.method public setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V
    .locals 1
    .param p1, "level"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/tray/FakeView;->setTag(Ljava/lang/Object;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    .line 125
    return-void
.end method
