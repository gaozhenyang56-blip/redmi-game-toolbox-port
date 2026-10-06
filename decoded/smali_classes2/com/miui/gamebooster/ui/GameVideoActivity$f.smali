.class Lcom/miui/gamebooster/ui/GameVideoActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameVideoActivity;->v0(Landroid/widget/ImageView;Lcom/miui/gamebooster/model/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/model/y;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/miui/gamebooster/ui/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameVideoActivity;Lcom/miui/gamebooster/model/y;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->a:Lcom/miui/gamebooster/model/y;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->a:Lcom/miui/gamebooster/model/y;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/f1;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->a:Lcom/miui/gamebooster/model/y;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/model/y;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->a:Lcom/miui/gamebooster/model/y;

    invoke-static {v0, v1}, La8/q;->n(Landroid/content/Context;Lcom/miui/gamebooster/model/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$f;->c:Lcom/miui/gamebooster/ui/GameVideoActivity;

    new-instance v1, Lcom/miui/gamebooster/ui/GameVideoActivity$f$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GameVideoActivity$f$a;-><init>(Lcom/miui/gamebooster/ui/GameVideoActivity$f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
