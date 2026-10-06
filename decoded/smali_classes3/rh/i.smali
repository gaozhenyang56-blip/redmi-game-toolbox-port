.class final Lrh/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lrh/f;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lrh/g;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lrh/f;Landroid/graphics/Bitmap;Lrh/g;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrh/i;->a:Lrh/f;

    iput-object p2, p0, Lrh/i;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lrh/i;->c:Lrh/g;

    iput-object p4, p0, Lrh/i;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lrh/i;->c:Lrh/g;

    iget-object v1, v1, Lrh/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PostProcess image before displaying [%s]"

    invoke-static {v1, v0}, Lai/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lrh/i;->c:Lrh/g;

    iget-object v0, v0, Lrh/g;->e:Lrh/c;

    invoke-virtual {v0}, Lrh/c;->E()Lzh/a;

    move-result-object v0

    iget-object v1, p0, Lrh/i;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lzh/a;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lrh/b;

    iget-object v2, p0, Lrh/i;->c:Lrh/g;

    iget-object v3, p0, Lrh/i;->a:Lrh/f;

    sget-object v4, Lsh/f;->c:Lsh/f;

    invoke-direct {v1, v0, v2, v3, v4}, Lrh/b;-><init>(Landroid/graphics/Bitmap;Lrh/g;Lrh/f;Lsh/f;)V

    iget-object v0, p0, Lrh/i;->c:Lrh/g;

    iget-object v0, v0, Lrh/g;->e:Lrh/c;

    invoke-virtual {v0}, Lrh/c;->M()Z

    move-result v0

    iget-object v2, p0, Lrh/i;->d:Landroid/os/Handler;

    iget-object v3, p0, Lrh/i;->a:Lrh/f;

    invoke-static {v1, v0, v2, v3}, Lrh/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lrh/f;)V

    return-void
.end method
