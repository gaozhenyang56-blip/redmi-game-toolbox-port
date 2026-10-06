.class Lcom/miui/gamebooster/model/z$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/model/z$a;->j(IILcom/miui/gamebooster/model/y;ZLt5/r$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/gamebooster/model/y;

.field final synthetic c:I

.field final synthetic d:Lt5/r$c;

.field final synthetic e:I

.field final synthetic f:Lcom/miui/gamebooster/model/z$a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/model/z$a;ZLcom/miui/gamebooster/model/y;ILt5/r$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/z$a$c;->f:Lcom/miui/gamebooster/model/z$a;

    iput-boolean p2, p0, Lcom/miui/gamebooster/model/z$a$c;->a:Z

    iput-object p3, p0, Lcom/miui/gamebooster/model/z$a$c;->b:Lcom/miui/gamebooster/model/y;

    iput p4, p0, Lcom/miui/gamebooster/model/z$a$c;->c:I

    iput-object p5, p0, Lcom/miui/gamebooster/model/z$a$c;->d:Lt5/r$c;

    iput p6, p0, Lcom/miui/gamebooster/model/z$a$c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lcom/miui/gamebooster/model/z$a$c;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$c;->b:Lcom/miui/gamebooster/model/y;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/model/y;->k(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$c;->f:Lcom/miui/gamebooster/model/z$a;

    invoke-static {p1}, Lcom/miui/gamebooster/model/z$a;->b(Lcom/miui/gamebooster/model/z$a;)[Landroid/widget/CheckBox;

    move-result-object p1

    iget v0, p0, Lcom/miui/gamebooster/model/z$a$c;->c:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a$c;->b:Lcom/miui/gamebooster/model/y;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/y;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$c;->d:Lt5/r$c;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/gamebooster/model/z$a$c;->e:I

    invoke-interface {p1, v0}, Lt5/r$c;->x(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$c;->b:Lcom/miui/gamebooster/model/y;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WonderfulMomentActivity"

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a;->i0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/model/z$a$c;->f:Lcom/miui/gamebooster/model/z$a;

    invoke-static {p1}, Lcom/miui/gamebooster/model/z$a;->c(Lcom/miui/gamebooster/model/z$a;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gamebooster/model/z$a$c;->b:Lcom/miui/gamebooster/model/y;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/y;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/model/z$a$c;->f:Lcom/miui/gamebooster/model/z$a;

    iget-object v3, p0, Lcom/miui/gamebooster/model/z$a$c;->b:Lcom/miui/gamebooster/model/y;

    invoke-static {v2, v3}, Lcom/miui/gamebooster/model/z$a;->d(Lcom/miui/gamebooster/model/z$a;Lcom/miui/gamebooster/model/y;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/model/z$a$c;->b:Lcom/miui/gamebooster/model/y;

    invoke-static {v3}, La8/i2;->d(Lcom/miui/gamebooster/model/y;)Z

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Leg/i;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
