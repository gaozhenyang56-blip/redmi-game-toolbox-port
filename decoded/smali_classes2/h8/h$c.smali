.class Lh8/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh8/h$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Lj8/p;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lj8/o;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_4

    :cond_1
    invoke-static {}, Li8/c;->o()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Li8/c;->n()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    invoke-static {}, Lj8/m;->n()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_0

    invoke-static {}, Lj8/m;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lj8/k;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lj8/m;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_4
    invoke-static {}, Lj8/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-static {}, Lj8/m;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    goto :goto_0

    :cond_6
    move v1, v0

    :cond_7
    :goto_4
    return v1
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lh8/h$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ld8/f$d;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld8/f$d;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lh8/h$c;->a()Z

    move-result v1

    iget-object v2, v0, Ld8/f$d;->b:Landroid/widget/ImageView;

    const-string v3, "VBFunction"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holder.iconView setSelected: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Ld8/f$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    iget-object v2, v0, Ld8/f$d;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holder.titleView setSelected: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Ld8/f$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method
