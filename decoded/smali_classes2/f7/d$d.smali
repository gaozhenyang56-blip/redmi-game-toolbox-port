.class Lf7/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf7/d$d;->a:I

    iput-object p2, p0, Lf7/d$d;->b:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf7/d$d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lf7/d$d;->c:Landroid/content/Context;

    iget v1, p0, Lf7/d$d;->a:I

    iget-object v2, p0, Lf7/d$d;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lf7/d;->c(Landroid/content/Context;ILjava/lang/String;Z)V

    invoke-static {}, La8/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf7/d$d;->c:Landroid/content/Context;

    iget-object v1, p0, Lf7/d$d;->b:Ljava/lang/String;

    iget v2, p0, Lf7/d$d;->a:I

    invoke-static {v0, v1, v2, v3, v3}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lf7/d$d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lf7/d$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lf7/d$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Li8/c;->D0(Ljava/util/ArrayList;)V

    :try_start_0
    iget-object v0, p0, Lf7/d$d;->c:Landroid/content/Context;

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "gb.action.update_video_list"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr0/a;->d(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
