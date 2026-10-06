.class Lrh/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrh/h;->k(Lsh/b$a;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsh/b$a;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lrh/h;


# direct methods
.method constructor <init>(Lrh/h;Lsh/b$a;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lrh/h$b;->c:Lrh/h;

    iput-object p2, p0, Lrh/h$b;->a:Lsh/b$a;

    iput-object p3, p0, Lrh/h$b;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lrh/h$b;->c:Lrh/h;

    iget-object v0, v0, Lrh/h;->m:Lrh/c;

    invoke-virtual {v0}, Lrh/c;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrh/h$b;->c:Lrh/h;

    iget-object v1, v0, Lrh/h;->k:Lxh/b;

    iget-object v2, v0, Lrh/h;->m:Lrh/c;

    invoke-static {v0}, Lrh/h;->b(Lrh/h;)Lrh/e;

    move-result-object v0

    iget-object v0, v0, Lrh/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Lrh/c;->B(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Lxh/b;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    iget-object v0, p0, Lrh/h$b;->c:Lrh/h;

    iget-object v1, v0, Lrh/h;->n:Lyh/a;

    iget-object v2, v0, Lrh/h;->i:Ljava/lang/String;

    iget-object v0, v0, Lrh/h;->k:Lxh/b;

    invoke-interface {v0}, Lxh/b;->a()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lsh/b;

    iget-object v4, p0, Lrh/h$b;->a:Lsh/b$a;

    iget-object v5, p0, Lrh/h$b;->b:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lsh/b;-><init>(Lsh/b$a;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v0, v3}, Lyh/a;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lsh/b;)V

    return-void
.end method
