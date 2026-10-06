.class Lcom/miui/gamebooster/ui/GameVideoActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameVideoActivity;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$b;->a:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$b;->a:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->g0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La8/q;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$b;->a:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameVideoActivity;->h0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$b;->a:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameVideoActivity;->h0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$b;->a:Lcom/miui/gamebooster/ui/GameVideoActivity;

    new-instance v1, Lcom/miui/gamebooster/ui/GameVideoActivity$b$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GameVideoActivity$b$a;-><init>(Lcom/miui/gamebooster/ui/GameVideoActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
