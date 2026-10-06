.class Lfh/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lfh/a;


# direct methods
.method constructor <init>(Lfh/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lfh/a$a;->b:Lfh/a;

    iput-object p2, p0, Lfh/a$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lfh/a$a;->b:Lfh/a;

    iget-object v1, p0, Lfh/a$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lfh/a;->a(Lfh/a;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfh/a$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lfh/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.updater"

    const-string v2, "com.android.updater.UpdateService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x17

    const-string v2, "extra_command"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lfh/a$a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lfh/a$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lw4/b;->E(Landroid/content/Context;)V

    return-void
.end method
