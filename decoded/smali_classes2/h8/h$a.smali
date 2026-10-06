.class Lh8/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh8/h;->g(Ld8/f$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld8/f$d;

.field final synthetic b:Lh8/h;


# direct methods
.method constructor <init>(Lh8/h;Ld8/f$d;)V
    .locals 0

    iput-object p1, p0, Lh8/h$a;->b:Lh8/h;

    iput-object p2, p0, Lh8/h$a;->a:Ld8/f$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh8/h$a;->a:Ld8/f$d;

    iget-object v1, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VBFunction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lh8/h$a;->a:Ld8/f$d;

    iget-object v0, v0, Ld8/f$d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lh8/h$a;->a:Ld8/f$d;

    iget-object v0, v0, Ld8/f$d;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh8/h$a;->a:Ld8/f$d;

    iget-object v1, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VBFunction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lh8/h$a;->a:Ld8/f$d;

    iget-object v0, v0, Ld8/f$d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lh8/h$a;->a:Ld8/f$d;

    iget-object v0, v0, Ld8/f$d;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method
