.class Ls8/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls8/h;


# direct methods
.method constructor <init>(Ls8/h;)V
    .locals 0

    iput-object p1, p0, Ls8/h$b;->a:Ls8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ls8/h$b;->a:Ls8/h;

    invoke-static {v0}, Ls8/h;->n(Ls8/h;)Lo7/a;

    move-result-object v0

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "game_time_float_window_tag"

    invoke-static {v0}, Ll8/b;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ls8/h$b;->a:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls8/h$b;->a:Ls8/h;

    invoke-static {v1}, Ls8/h;->o(Ls8/h;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lz6/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, La8/o0;->v(Z)V

    :cond_0
    return-void
.end method
