.class Lcom/miui/gamebooster/mutiwindow/a$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/mutiwindow/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/mutiwindow/a;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/mutiwindow/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/mutiwindow/a$c;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/mutiwindow/a$c;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {p1}, Lcom/miui/gamebooster/mutiwindow/a;->c(Lcom/miui/gamebooster/mutiwindow/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf7/b;->h(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/mutiwindow/a;->b(Lcom/miui/gamebooster/mutiwindow/a;Z)Z

    iget-object p1, p0, Lcom/miui/gamebooster/mutiwindow/a$c;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {p1}, Lcom/miui/gamebooster/mutiwindow/a;->d(Lcom/miui/gamebooster/mutiwindow/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a$c;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/a;->a(Lcom/miui/gamebooster/mutiwindow/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a$c;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/a;->e(Lcom/miui/gamebooster/mutiwindow/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a$c;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/a;->h(Lcom/miui/gamebooster/mutiwindow/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a$c;->a:Lcom/miui/gamebooster/mutiwindow/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/mutiwindow/a;->f(Lcom/miui/gamebooster/mutiwindow/a;Z)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
