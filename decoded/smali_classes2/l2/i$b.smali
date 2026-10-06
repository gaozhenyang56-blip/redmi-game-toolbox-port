.class Ll2/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/i;->x(Ll2/g$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll2/g$a;

.field final synthetic b:Ll2/i$c;

.field final synthetic c:I

.field final synthetic d:Ll2/i;


# direct methods
.method constructor <init>(Ll2/i;Ll2/g$a;Ll2/i$c;I)V
    .locals 0

    iput-object p1, p0, Ll2/i$b;->d:Ll2/i;

    iput-object p2, p0, Ll2/i$b;->a:Ll2/g$a;

    iput-object p3, p0, Ll2/i$b;->b:Ll2/i$c;

    iput p4, p0, Ll2/i$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Ll2/i$b;->d:Ll2/i;

    iget-boolean v0, p1, Ll2/b;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Ll2/i$b;->a:Ll2/g$a;

    iget-object v0, v0, Ll2/g$a;->b:Landroid/widget/TextView;

    iget-object p1, p1, Ll2/g;->f:Landroid/content/Context;

    const v3, 0x7f120cd8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ll2/i$b;->b:Ll2/i$c;

    iget v4, v4, Ll2/i$c;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ll2/i$b;->d:Ll2/i;

    iget-object v0, p1, Ll2/g;->f:Landroid/content/Context;

    iget-object v1, p0, Ll2/i$b;->b:Ll2/i$c;

    iget-object v2, v1, Ll2/i$c;->b:Ljava/lang/String;

    iget-object v1, v1, Ll2/i$c;->i:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Ll2/i;->B(Ll2/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ll2/i$b;->a:Ll2/g$a;

    iget-object p1, p1, Ll2/g$a;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Ll2/i$b;->d:Ll2/i;

    iget v0, p0, Ll2/i$b;->c:I

    iget-object v2, p0, Ll2/i$b;->a:Ll2/g$a;

    iget-object v2, v2, Ll2/g$a;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Ll2/b;->t(IZZ)V

    :goto_0
    return-void
.end method
