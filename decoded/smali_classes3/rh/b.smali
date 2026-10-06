.class final Lrh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/lang/String;

.field private final c:Lxh/b;

.field private final d:Ljava/lang/String;

.field private final e:Lvh/a;

.field private final f:Lyh/a;

.field private final g:Lrh/f;

.field private final h:Lsh/f;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lrh/g;Lrh/f;Lsh/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrh/b;->a:Landroid/graphics/Bitmap;

    iget-object p1, p2, Lrh/g;->a:Ljava/lang/String;

    iput-object p1, p0, Lrh/b;->b:Ljava/lang/String;

    iget-object p1, p2, Lrh/g;->c:Lxh/b;

    iput-object p1, p0, Lrh/b;->c:Lxh/b;

    iget-object p1, p2, Lrh/g;->b:Ljava/lang/String;

    iput-object p1, p0, Lrh/b;->d:Ljava/lang/String;

    iget-object p1, p2, Lrh/g;->e:Lrh/c;

    invoke-virtual {p1}, Lrh/c;->x()Lvh/a;

    move-result-object p1

    iput-object p1, p0, Lrh/b;->e:Lvh/a;

    iget-object p1, p2, Lrh/g;->f:Lyh/a;

    iput-object p1, p0, Lrh/b;->f:Lyh/a;

    iput-object p3, p0, Lrh/b;->g:Lrh/f;

    iput-object p4, p0, Lrh/b;->h:Lsh/f;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lrh/b;->g:Lrh/f;

    iget-object v1, p0, Lrh/b;->c:Lxh/b;

    invoke-virtual {v0, v1}, Lrh/f;->h(Lxh/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lrh/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lrh/b;->c:Lxh/b;

    invoke-interface {v0}, Lxh/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lrh/b;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lrh/b;->f:Lyh/a;

    iget-object v1, p0, Lrh/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lrh/b;->c:Lxh/b;

    invoke-interface {v2}, Lxh/b;->a()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lyh/a;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lrh/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lrh/b;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lrh/b;->h:Lsh/f;

    aput-object v3, v0, v1

    iget-object v1, p0, Lrh/b;->d:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    invoke-static {v1, v0}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lrh/b;->e:Lvh/a;

    iget-object v1, p0, Lrh/b;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lrh/b;->c:Lxh/b;

    iget-object v3, p0, Lrh/b;->h:Lsh/f;

    invoke-interface {v0, v1, v2, v3}, Lvh/a;->a(Landroid/graphics/Bitmap;Lxh/b;Lsh/f;)V

    iget-object v0, p0, Lrh/b;->g:Lrh/f;

    iget-object v1, p0, Lrh/b;->c:Lxh/b;

    invoke-virtual {v0, v1}, Lrh/f;->d(Lxh/b;)V

    iget-object v0, p0, Lrh/b;->f:Lyh/a;

    iget-object v1, p0, Lrh/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lrh/b;->c:Lxh/b;

    invoke-interface {v2}, Lxh/b;->a()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lrh/b;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lyh/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method
