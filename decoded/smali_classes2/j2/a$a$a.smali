.class Lj2/a$a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/a$a;->e(Landroid/content/Context;Ljava/lang/String;Lj2/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lj2/a$b;

.field final synthetic c:Landroid/app/DownloadManager;

.field final synthetic d:Lj2/a$a;


# direct methods
.method constructor <init>(Lj2/a$a;JLj2/a$b;Landroid/app/DownloadManager;)V
    .locals 0

    iput-object p1, p0, Lj2/a$a$a;->d:Lj2/a$a;

    iput-wide p2, p0, Lj2/a$a$a;->a:J

    iput-object p4, p0, Lj2/a$a$a;->b:Lj2/a$b;

    iput-object p5, p0, Lj2/a$a$a;->c:Landroid/app/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iget-wide v0, p0, Lj2/a$a$a;->a:J

    cmp-long p2, v0, v6

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lj2/a$a$b;

    iget-object v4, p0, Lj2/a$a$a;->d:Lj2/a$a;

    iget-object v5, p0, Lj2/a$a$a;->b:Lj2/a$b;

    iget-object v8, p0, Lj2/a$a$a;->c:Landroid/app/DownloadManager;

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lj2/a$a$b;-><init>(Lj2/a$a;Lj2/a$b;JLandroid/app/DownloadManager;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
