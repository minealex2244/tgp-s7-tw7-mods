.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 448
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 449
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 448
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 454
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 453
    :goto_0
    return-void

    .line 456
    :sswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 458
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileDescriptor;

    .line 459
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 458
    invoke-virtual {v4, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_1
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v2

    .line 464
    :try_start_1
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 466
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 467
    return-void

    .line 460
    :catch_0
    move-exception v9

    .line 461
    .local v9, "e":Ljava/lang/RuntimeException;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 470
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/InputBindResult;

    .line 474
    .local v10, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 475
    :try_start_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v5, v10, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v0, v5, :cond_2

    .line 476
    :cond_0
    const-string/jumbo v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring onBind: cur seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v3, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    const-string/jumbo v3, ", given seq="

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    iget v3, v10, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, v10, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v2, :cond_1

    .line 479
    iget-object v0, v10, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v4

    .line 481
    return-void

    .line 484
    :cond_2
    :try_start_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 485
    const/4 v5, 0x0

    .line 484
    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-set1(Landroid/view/inputmethod/InputMethodManager;I)I

    .line 487
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v10, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 488
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v10, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 489
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v10, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v10, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v5, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    .line 492
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x5

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 494
    return-void

    .line 474
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 497
    .end local v10    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_2
    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 499
    .local v11, "sequence":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 505
    .local v1, "reason":I
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 506
    :try_start_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v0, v11, :cond_3

    monitor-exit v4

    .line 507
    return-void

    .line 509
    :cond_3
    :try_start_5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 512
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 515
    :cond_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v12, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .local v12, "startInput":Z
    monitor-exit v4

    .line 517
    if-eqz v12, :cond_6

    .line 518
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_5

    .line 519
    const-string/jumbo v0, "InputMethodManager"

    const-string/jumbo v4, "MSG_UNBIND startInputInner is called with null IBinder "

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 523
    const/4 v1, 0x6

    move v4, v3

    move v5, v3

    .line 522
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 526
    .end local v1    # "reason":I
    :cond_6
    return-void

    .line 505
    .end local v12    # "startInput":Z
    .restart local v1    # "reason":I
    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    .line 529
    .end local v1    # "reason":I
    .end local v11    # "sequence":I
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_b

    const/4 v6, 0x1

    .line 530
    .local v6, "active":Z
    :goto_2
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_7

    .line 531
    const-string/jumbo v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage: MSG_SET_ACTIVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v3, v3, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v13, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v13

    .line 534
    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v6, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 535
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 536
    if-nez v6, :cond_8

    .line 540
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 544
    :try_start_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v0}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 550
    :cond_8
    :goto_3
    :try_start_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 551
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v2, v2, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-wrap0(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 552
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v0, :cond_9

    .line 553
    const-string/jumbo v0, "InputMethodManager"

    const-string/jumbo v2, "MSG_SET_ACTIVE startInputInner is called with null IBinder "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_9
    if-eqz v6, :cond_c

    .line 556
    const/4 v1, 0x7

    .line 558
    .restart local v1    # "reason":I
    :goto_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v1    # "reason":I
    :cond_a
    monitor-exit v13

    .line 562
    return-void

    .line 529
    .end local v6    # "active":Z
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "active":Z
    goto/16 :goto_2

    .line 557
    :cond_c
    const/16 v1, 0x8

    .restart local v1    # "reason":I
    goto :goto_4

    .line 533
    .end local v1    # "reason":I
    :catchall_3
    move-exception v0

    monitor-exit v13

    throw v0

    .line 565
    .end local v6    # "active":Z
    :sswitch_4
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 566
    return-void

    .line 569
    :sswitch_5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 570
    return-void

    .line 573
    :sswitch_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 574
    return-void

    .line 577
    :sswitch_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 578
    :try_start_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->-set0(Landroid/view/inputmethod/InputMethodManager;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    monitor-exit v2

    .line 580
    return-void

    .line 577
    :catchall_4
    move-exception v0

    monitor-exit v2

    throw v0

    .line 586
    :sswitch_8
    :try_start_a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 587
    :catch_1
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 593
    .end local v8    # "e":Landroid/os/RemoteException;
    :sswitch_9
    :try_start_b
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 594
    :catch_2
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 545
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v6    # "active":Z
    :catch_3
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 454
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
    .end sparse-switch
.end method