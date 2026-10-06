.class Lo2/e$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/e;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo2/e;


# direct methods
.method constructor <init>(Lo2/e;)V
    .locals 0

    iput-object p1, p0, Lo2/e$b;->a:Lo2/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lo2/e$b;->a:Lo2/e;

    invoke-static {p2}, Lo2/e;->b(Lo2/e;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lo2/e$b;->a:Lo2/e;

    invoke-static {v0}, Lo2/e;->c(Lo2/e;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/model/DangerousInfo;

    if-nez p1, :cond_1

    monitor-exit p2

    return-void

    :cond_1
    iget-object v0, p0, Lo2/e$b;->a:Lo2/e;

    invoke-static {v0, p1}, Lo2/e;->d(Lo2/e;Lcom/miui/antivirus/model/DangerousInfo;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
