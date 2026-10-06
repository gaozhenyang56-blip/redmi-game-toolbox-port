.class public Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/miui/maml/data/AsyncQueryHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/miui/maml/data/AsyncQueryHandler;

    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget v7, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :cond_4
    :goto_1
    iput-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AsyncQuery"

    const-string v3, "Exception thrown during handling EVENT_ARG_QUERY"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
