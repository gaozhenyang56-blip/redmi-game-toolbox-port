.class Lof/i$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lof/i;->d(Landroid/content/Context;Lof/i$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lof/i$d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lof/i$d;)V
    .locals 0

    iput-object p1, p0, Lof/i$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lof/i$b;->b:Lof/i$d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    invoke-static {}, Lof/i;->a()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lof/i$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lof/i;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lof/i$b;->b:Lof/i$d;

    iget-object v1, v1, Lof/i$d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit p1

    return-object v3

    :cond_0
    invoke-static {v0, v1}, Lof/i;->c(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string v4, "id"

    iget-object v5, p0, Lof/i$b;->b:Lof/i$d;

    iget-object v5, v5, Lof/i$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lof/i$b;->b:Lof/i$d;

    iget-object v4, v4, Lof/i$d;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "action"

    iget-object v5, p0, Lof/i$b;->b:Lof/i$d;

    iget-object v5, v5, Lof/i$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lof/i$b;->b:Lof/i$d;

    iget-object v4, v4, Lof/i$d;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "text"

    iget-object v5, p0, Lof/i$b;->b:Lof/i$d;

    iget-object v5, v5, Lof/i$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "language"

    iget-object v5, p0, Lof/i$b;->b:Lof/i$d;

    iget-object v5, v5, Lof/i$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "show_time"

    iget-object v5, p0, Lof/i$b;->b:Lof/i$d;

    iget-wide v5, v5, Lof/i$d;->f:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "duration"

    iget-object v5, p0, Lof/i$b;->b:Lof/i$d;

    iget v5, v5, Lof/i$d;->g:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :cond_2
    :try_start_3
    monitor-exit p1

    return-object v3

    :cond_3
    monitor-exit p1

    return-object v3

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v2, v3

    :goto_0
    const-string v5, "NotificationLinkUilts"

    const-string v6, "create json data failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lof/i$b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/notification_linkage/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_4
    new-instance v4, Ljava/io/File;

    const-string v5, "notification_linkage_data"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v2, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_5
    const-string v5, "NotificationLinkUilts"

    const-string v6, "create data file failed"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_5
    :goto_2
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lpf/i;->u(Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {v4}, Lbl/e;->e(Ljava/io/Writer;)V

    :goto_3
    invoke-static {v2}, Lbl/e;->c(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v4, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v3

    move-object v4, v2

    :goto_4
    :try_start_a
    const-string v1, "NotificationLinkUilts"

    const-string v5, "write data failed"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-static {v4}, Lbl/e;->e(Ljava/io/Writer;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v4

    :goto_5
    invoke-static {v3}, Lbl/e;->e(Ljava/io/Writer;)V

    invoke-static {v2}, Lbl/e;->c(Ljava/io/OutputStream;)V

    throw v0

    :cond_6
    :goto_6
    monitor-exit p1

    return-object v3

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lof/i$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
